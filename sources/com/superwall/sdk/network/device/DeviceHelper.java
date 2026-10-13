package com.superwall.sdk.network.device;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.os.PowerManager;
import android.provider.Settings;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.facebook.hermes.intl.Constants;
import com.superwall.sdk.BuildConfig;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.DefaultClassifierDataFactory;
import com.superwall.sdk.analytics.DeviceClassifier;
import com.superwall.sdk.analytics.Tier;
import com.superwall.sdk.dependencies.ActiveEntitlementsFactory;
import com.superwall.sdk.dependencies.CustomerInfoFactory;
import com.superwall.sdk.dependencies.ExperimentalPropertiesFactory;
import com.superwall.sdk.dependencies.IdentityInfoFactory;
import com.superwall.sdk.dependencies.IdentityManagerFactory;
import com.superwall.sdk.dependencies.LocaleIdentifierFactory;
import com.superwall.sdk.dependencies.OptionsFactory;
import com.superwall.sdk.dependencies.StoreTransactionFactory;
import com.superwall.sdk.identity.IdentityInfo;
import com.superwall.sdk.identity.IdentityManager;
import com.superwall.sdk.identity.PublicIdentityKt;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.EitherKt;
import com.superwall.sdk.models.config.ComputedPropertyRequest;
import com.superwall.sdk.models.enrichment.Enrichment;
import com.superwall.sdk.models.enrichment.EnrichmentRequest;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.internal.DeviceVendorId;
import com.superwall.sdk.models.internal.VendorId;
import com.superwall.sdk.network.JsonFactory;
import com.superwall.sdk.network.NetworkError;
import com.superwall.sdk.network.SuperwallAPI;
import com.superwall.sdk.paywall.view.webview.templating.models.DeviceTemplate;
import com.superwall.sdk.storage.LastPaywallView;
import com.superwall.sdk.storage.LatestEnrichment;
import com.superwall.sdk.storage.LocalStorage;
import com.superwall.sdk.storage.ReviewCount;
import com.superwall.sdk.storage.ReviewData;
import com.superwall.sdk.storage.TotalPaywallViews;
import com.superwall.sdk.storage.core_data.ConvertersKt;
import com.superwall.sdk.storage.core_data.CoreDataManager;
import com.superwall.sdk.utilities.DateUtils;
import com.superwall.sdk.utilities.DateUtilsKt;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import expo.modules.notifications.service.NotificationsService;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Currency;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import kotlin.KotlinVersion;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import org.threeten.bp.Duration;
import org.threeten.bp.Instant;

/* JADX INFO: compiled from: DeviceHelper.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0002Â\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001dJ\u000e\u0010!\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001dJ\u000e\u0010\"\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001dJ\u000e\u0010#\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001dJ\u000e\u00106\u001a\u00020\u001fH\u0086@¢\u0006\u0002\u00107J\u000f\u0010«\u0001\u001a\u00020<H\u0086@¢\u0006\u0002\u00107J:\u0010¬\u0001\u001a\u000f\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u00010\u00ad\u00012\n\u0010®\u0001\u001a\u0005\u0018\u00010¯\u00012\u000f\u0010°\u0001\u001a\n\u0012\u0005\u0012\u00030²\u00010±\u0001H\u0086@¢\u0006\u0003\u0010³\u0001J:\u0010´\u0001\u001a\u000f\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u00010\u00ad\u00012\n\u0010µ\u0001\u001a\u0005\u0018\u00010¯\u00012\u000f\u0010°\u0001\u001a\n\u0012\u0005\u0012\u00030²\u00010±\u0001H\u0082@¢\u0006\u0003\u0010³\u0001J\u001c\u0010¶\u0001\u001a\u000f\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u00010\u00ad\u0001H\u0086@¢\u0006\u0002\u00107J\u0018\u0010·\u0001\u001a\u00030¸\u00012\u0006\u0010G\u001a\u00020:H\u0000¢\u0006\u0003\b¹\u0001J\u0014\u0010º\u0001\u001a\u000f\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u00010\u00ad\u0001J3\u0010H\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0005\u0012\u00030¼\u00010»\u00012\u0007\u0010½\u0001\u001a\u00020\u001f2\b\u0010¾\u0001\u001a\u00030¿\u0001H\u0086@¢\u0006\u0006\bÀ\u0001\u0010Á\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0018\u001a\n \u001a*\u0004\u0018\u00010\u00190\u0019X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020\u001f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0014\u0010'\u001a\u00020\u001f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b(\u0010&R\u0016\u0010)\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0016\u0010,\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b-\u0010+R\u0014\u0010.\u001a\u00020\u001f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b/\u0010&R\u0014\u00100\u001a\u0002018BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b2\u00103R\u0011\u00104\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b5\u0010&R\u0016\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010:09X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010;\u001a\u0004\u0018\u00010<8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b=\u0010>R\u0016\u0010?\u001a\u0004\u0018\u00010\u001f8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b@\u0010+R\u0011\u0010A\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\bB\u0010>R\u0011\u0010C\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\bD\u0010>R\u0014\u0010E\u001a\u00020<8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bF\u0010>R\u0016\u0010G\u001a\u0004\u0018\u00010:8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bH\u0010IR\u0011\u0010J\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\bK\u0010>R\u0011\u0010L\u001a\u00020M8F¢\u0006\u0006\u001a\u0004\bL\u0010NR\u0011\u0010O\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\bP\u0010>R\u0011\u0010Q\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\bR\u0010>R\u0011\u0010S\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\bT\u0010>R\u001b\u0010U\u001a\u00020V8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\bW\u0010XR\u001a\u0010[\u001a\u00020<X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u0010>\"\u0004\b]\u0010^R\u001a\u0010_\u001a\u00020<X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b`\u0010>\"\u0004\ba\u0010^R\u000e\u0010b\u001a\u00020cX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010d\u001a\u0004\u0018\u00010e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bf\u0010gR\u0011\u0010h\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\bi\u0010>R\u0014\u0010j\u001a\u00020<8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bk\u0010>R\u0011\u0010l\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\bm\u0010>R\u0011\u0010n\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\bo\u0010>R\u0011\u0010p\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\bq\u0010>R\u0011\u0010r\u001a\u00020M8F¢\u0006\u0006\u001a\u0004\br\u0010NR\u0011\u0010s\u001a\u00020<8G¢\u0006\u0006\u001a\u0004\bt\u0010>R\u0011\u0010u\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\bv\u0010>R\u0011\u0010w\u001a\u00020M8F¢\u0006\u0006\u001a\u0004\bw\u0010NR\u0011\u0010x\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\by\u0010>R\u0011\u0010z\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\b{\u0010>R\u001e\u0010|\u001a\u0004\u0018\u00010}X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0004\b~\u0010\u007f\"\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0013\u0010\u0082\u0001\u001a\u00020<8F¢\u0006\u0007\u001a\u0005\b\u0083\u0001\u0010>R\u0013\u0010\u0084\u0001\u001a\u00020<8F¢\u0006\u0007\u001a\u0005\b\u0084\u0001\u0010>R\u0018\u0010\u0085\u0001\u001a\u00030\u0086\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001R\u0018\u0010\u0089\u0001\u001a\u00030\u0086\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u008a\u0001\u0010\u0088\u0001R\u0018\u0010\u008b\u0001\u001a\u00030\u0086\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u008c\u0001\u0010\u0088\u0001R\u0018\u0010\u008d\u0001\u001a\u00030\u0086\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u008e\u0001\u0010\u0088\u0001R\u0018\u0010\u008f\u0001\u001a\u00030\u0086\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0090\u0001\u0010\u0088\u0001R\u0018\u0010\u0091\u0001\u001a\u00030\u0086\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0092\u0001\u0010\u0088\u0001R\u0016\u0010\u0093\u0001\u001a\u00020<8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0094\u0001\u0010>R\u0016\u0010\u0095\u0001\u001a\u00020<8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0096\u0001\u0010>R\u0016\u0010\u0097\u0001\u001a\u00020<8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0098\u0001\u0010>R\u0016\u0010\u0099\u0001\u001a\u00020<8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u009a\u0001\u0010>R\u0016\u0010\u009b\u0001\u001a\u00020<8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u009c\u0001\u0010>R\u0016\u0010\u009d\u0001\u001a\u00020<8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u009e\u0001\u0010>R\u0016\u0010\u009f\u0001\u001a\u00020<8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b \u0001\u0010>R\u0013\u0010¡\u0001\u001a\u00020<8F¢\u0006\u0007\u001a\u0005\b¢\u0001\u0010>R\u0013\u0010£\u0001\u001a\u00020<8F¢\u0006\u0007\u001a\u0005\b¤\u0001\u0010>R\u0013\u0010¥\u0001\u001a\u00020<8F¢\u0006\u0007\u001a\u0005\b¦\u0001\u0010>R\u0013\u0010§\u0001\u001a\u00020<8F¢\u0006\u0007\u001a\u0005\b¨\u0001\u0010>R\u0013\u0010©\u0001\u001a\u00020<8F¢\u0006\u0007\u001a\u0005\bª\u0001\u0010>¨\u0006Ã\u0001"}, d2 = {"Lcom/superwall/sdk/network/device/DeviceHelper;", "", "context", "Landroid/content/Context;", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "network", "Lcom/superwall/sdk/network/SuperwallAPI;", "factory", "Lcom/superwall/sdk/network/device/DeviceHelper$Factory;", "classifier", "Lcom/superwall/sdk/analytics/DeviceClassifier;", "<init>", "(Landroid/content/Context;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/SuperwallAPI;Lcom/superwall/sdk/network/device/DeviceHelper$Factory;Lcom/superwall/sdk/analytics/DeviceClassifier;)V", "getStorage", "()Lcom/superwall/sdk/storage/LocalStorage;", "getNetwork", "()Lcom/superwall/sdk/network/SuperwallAPI;", "getFactory", "()Lcom/superwall/sdk/network/device/DeviceHelper$Factory;", "json", "Lkotlinx/serialization/json/Json;", "connectivityManager", "Landroid/net/ConnectivityManager;", "appInfo", "Landroid/content/pm/PackageInfo;", "kotlin.jvm.PlatformType", "Landroid/content/pm/PackageInfo;", "appInstallDate", "Ljava/util/Date;", "daysSince", "", "date", "minutesSince", "hoursSince", "monthsSince", "daysSinceInstall", "getDaysSinceInstall", "()I", "minutesSinceInstall", "getMinutesSinceInstall", "daysSinceLastPaywallView", "getDaysSinceLastPaywallView", "()Ljava/lang/Integer;", "minutesSinceLastPaywallView", "getMinutesSinceLastPaywallView", "totalPaywallViews", "getTotalPaywallViews", "reviewData", "Lcom/superwall/sdk/storage/ReviewCount;", "getReviewData", "()Lcom/superwall/sdk/storage/ReviewCount;", "reviewRequestCount", "getReviewRequestCount", "reviewRequestsTotal", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lastEnrichment", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/superwall/sdk/models/enrichment/Enrichment;", "demandTier", "", "getDemandTier$superwall_release", "()Ljava/lang/String;", "demandScore", "getDemandScore$superwall_release", Constants.LOCALE, "getLocale", "appVersion", "getAppVersion", "appVersionPadded", "getAppVersionPadded", "enrichment", "getEnrichment", "()Lcom/superwall/sdk/models/enrichment/Enrichment;", "osVersion", "getOsVersion", "isEmulator", "", "()Z", "model", "getModel", "vendorId", "getVendorId", "deviceId", "getDeviceId", "deviceTier", "Lcom/superwall/sdk/analytics/Tier;", "getDeviceTier", "()Lcom/superwall/sdk/analytics/Tier;", "deviceTier$delegate", "Lkotlin/Lazy;", "platformWrapper", "getPlatformWrapper", "setPlatformWrapper", "(Ljava/lang/String;)V", "platformWrapperVersion", "getPlatformWrapperVersion", "setPlatformWrapperVersion", "_locale", "Ljava/util/Locale;", "_currency", "Ljava/util/Currency;", "get_currency", "()Ljava/util/Currency;", "languageCode", "getLanguageCode", "regionCode", "getRegionCode", "currencyCode", "getCurrencyCode", "currencySymbol", "getCurrencySymbol", "secondsFromGMT", "getSecondsFromGMT", "isFirstAppOpen", "radioType", "getRadioType", "bundleId", "getBundleId", "isSandbox", "urlScheme", "getUrlScheme", "appInstalledAtString", "getAppInstalledAtString", "interfaceStyleOverride", "Lcom/superwall/sdk/network/device/InterfaceStyle;", "getInterfaceStyleOverride", "()Lcom/superwall/sdk/network/device/InterfaceStyle;", "setInterfaceStyleOverride", "(Lcom/superwall/sdk/network/device/InterfaceStyle;)V", "interfaceStyle", "getInterfaceStyle", "isLowPowerModeEnabled", "localDateFormat", "Ljava/text/SimpleDateFormat;", "getLocalDateFormat", "()Ljava/text/SimpleDateFormat;", "utcDateFormat", "getUtcDateFormat", "utcTimeFormat", "getUtcTimeFormat", "localDateTimeFormat", "getLocalDateTimeFormat", "localTimeFormat", "getLocalTimeFormat", "utcDateTimeFormat", "getUtcDateTimeFormat", "localDateString", "getLocalDateString", "localTimeString", "getLocalTimeString", "localDateTimeString", "getLocalDateTimeString", "utcDateString", "getUtcDateString", "utcTimeString", "getUtcTimeString", "utcDateTimeString", "getUtcDateTimeString", "sdkVersionPadded", "getSdkVersionPadded", "appBuildString", "getAppBuildString", "sdkVersion", "getSdkVersion", "buildTime", "getBuildTime", "gitSha", "getGitSha", "kotlinVersion", "getKotlinVersion", "preloadFingerprint", "getDeviceAttributes", "", "sinceEvent", "Lcom/superwall/sdk/models/events/EventData;", "computedPropertyRequests", "", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;", "(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getComputedDevicePropertiesSinceEvent", NotificationCompat.CATEGORY_EVENT, "getTemplateDevice", "setEnrichment", "", "setEnrichment$superwall_release", "latestExperimentalDeviceProperties", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/network/NetworkError;", "maxRetry", "timeout", "Lkotlin/time/Duration;", "getEnrichment-8Mi8wO0", "(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Factory", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DeviceHelper {
    private final Locale _locale;
    private final PackageInfo appInfo;
    private final Date appInstallDate;
    private final DeviceClassifier classifier;
    private final ConnectivityManager connectivityManager;
    private final Context context;

    /* JADX INFO: renamed from: deviceTier$delegate, reason: from kotlin metadata */
    private final Lazy deviceTier;
    private final Factory factory;
    private InterfaceStyle interfaceStyleOverride;
    private final Json json;
    private final MutableStateFlow<Enrichment> lastEnrichment;
    private final SuperwallAPI network;
    private String platformWrapper;
    private String platformWrapperVersion;
    private final LocalStorage storage;

    /* JADX INFO: renamed from: com.superwall.sdk.network.device.DeviceHelper$getComputedDevicePropertiesSinceEvent$1, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceHelper.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.device.DeviceHelper", f = "DeviceHelper.kt", i = {0, 0, 0, 0}, l = {533}, m = "getComputedDevicePropertiesSinceEvent", n = {"this", NotificationCompat.CATEGORY_EVENT, "output", "computedPropertyRequest"}, s = {"L$0", "L$1", "L$2", "L$4"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DeviceHelper.this.getComputedDevicePropertiesSinceEvent(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.device.DeviceHelper$getDeviceAttributes$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DeviceHelper.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.device.DeviceHelper", f = "DeviceHelper.kt", i = {0, 0, 0, 1}, l = {515, 518}, m = "getDeviceAttributes", n = {"this", "sinceEvent", "computedPropertyRequests", "dictionary"}, s = {"L$0", "L$1", "L$2", "L$0"})
    static final class C05011 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C05011(Continuation<? super C05011> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DeviceHelper.this.getDeviceAttributes(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.device.DeviceHelper$getEnrichment$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DeviceHelper.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.device.DeviceHelper", f = "DeviceHelper.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 3}, l = {669, 674, 678, 679, 681}, m = "getEnrichment-8Mi8wO0", n = {"this", "maxRetry", "timeout", "this", "userAttributes", "maxRetry", "timeout", "this", "this"}, s = {"L$0", "I$0", "J$0", "L$0", "L$1", "I$0", "J$0", "L$0", "L$0"})
    static final class C05021 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05021(Continuation<? super C05021> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DeviceHelper.this.m10697getEnrichment8Mi8wO0(0, 0L, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.device.DeviceHelper$getTemplateDevice$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DeviceHelper.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.device.DeviceHelper", f = "DeviceHelper.kt", i = {0, 1, 1, 1}, l = {547, TypedValues.Motion.TYPE_PATHMOTION_ARC}, m = "getTemplateDevice", n = {"this", "this", "aliases", "capabilities"}, s = {"L$0", "L$0", "L$1", "L$3"})
    static final class C05031 extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
        int I$3;
        Object L$0;
        Object L$1;
        Object L$10;
        Object L$11;
        Object L$12;
        Object L$13;
        Object L$14;
        Object L$15;
        Object L$16;
        Object L$17;
        Object L$18;
        Object L$19;
        Object L$2;
        Object L$20;
        Object L$21;
        Object L$22;
        Object L$23;
        Object L$24;
        Object L$25;
        Object L$26;
        Object L$27;
        Object L$28;
        Object L$29;
        Object L$3;
        Object L$30;
        Object L$31;
        Object L$32;
        Object L$33;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C05031(Continuation<? super C05031> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DeviceHelper.this.getTemplateDevice(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.device.DeviceHelper$preloadFingerprint$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DeviceHelper.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.device.DeviceHelper", f = "DeviceHelper.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {491, 492}, m = "preloadFingerprint", n = {"this", "customerInfoSnapshot", "activeEntitlements", "this", "customerInfoSnapshot", "activeEntitlements", "activeProducts"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    static final class C05041 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C05041(Continuation<? super C05041> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DeviceHelper.this.preloadFingerprint(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Context _init_$lambda$0(Context context) {
        return context;
    }

    public DeviceHelper(Context context, LocalStorage storage, SuperwallAPI network, Factory factory, DeviceClassifier classifier) throws PackageManager.NameNotFoundException {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(classifier, "classifier");
        this.context = context;
        this.storage = storage;
        this.network = network;
        this.factory = factory;
        this.classifier = classifier;
        this.json = JsonKt.Json$default(null, new Function1() { // from class: com.superwall.sdk.network.device.DeviceHelper$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DeviceHelper.json$lambda$1((JsonBuilder) obj);
            }
        }, 1, null);
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.connectivityManager = (ConnectivityManager) systemService;
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        this.appInfo = packageInfo;
        this.appInstallDate = new Date(packageInfo.firstInstallTime);
        this.lastEnrichment = StateFlowKt.MutableStateFlow(storage.read(LatestEnrichment.INSTANCE));
        this.deviceTier = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.network.device.DeviceHelper$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DeviceHelper.deviceTier_delegate$lambda$5(this.f$0);
            }
        });
        this.platformWrapper = "";
        this.platformWrapperVersion = "";
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        this._locale = locale;
    }

    public final LocalStorage getStorage() {
        return this.storage;
    }

    public final SuperwallAPI getNetwork() {
        return this.network;
    }

    public final Factory getFactory() {
        return this.factory;
    }

    /* JADX INFO: compiled from: DeviceHelper.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/network/device/DeviceHelper$Factory;", "Lcom/superwall/sdk/dependencies/IdentityInfoFactory;", "Lcom/superwall/sdk/dependencies/LocaleIdentifierFactory;", "Lcom/superwall/sdk/network/JsonFactory;", "Lcom/superwall/sdk/dependencies/StoreTransactionFactory;", "Lcom/superwall/sdk/dependencies/IdentityManagerFactory;", "Lcom/superwall/sdk/dependencies/ExperimentalPropertiesFactory;", "Lcom/superwall/sdk/dependencies/OptionsFactory;", "Lcom/superwall/sdk/dependencies/CustomerInfoFactory;", "Lcom/superwall/sdk/dependencies/ActiveEntitlementsFactory;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Factory extends IdentityInfoFactory, LocaleIdentifierFactory, JsonFactory, StoreTransactionFactory, IdentityManagerFactory, ExperimentalPropertiesFactory, OptionsFactory, CustomerInfoFactory, ActiveEntitlementsFactory {

        /* JADX INFO: compiled from: DeviceHelper.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public static final class DefaultImpls {
            public static Json json(Factory factory) {
                return JsonFactory.DefaultImpls.json(factory);
            }
        }
    }

    public /* synthetic */ DeviceHelper(final Context context, LocalStorage localStorage, SuperwallAPI superwallAPI, Factory factory, DeviceClassifier deviceClassifier, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, localStorage, superwallAPI, factory, (i & 16) != 0 ? new DeviceClassifier(new DefaultClassifierDataFactory(new Function0() { // from class: com.superwall.sdk.network.device.DeviceHelper$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DeviceHelper._init_$lambda$0(context);
            }
        })) : deviceClassifier);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit json$lambda$1(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setEncodeDefaults(true);
        Json.setExplicitNulls(true);
        return Unit.INSTANCE;
    }

    public final int daysSince(Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        return (int) Duration.between(Instant.ofEpochMilli(date.getTime()), Instant.now()).toDays();
    }

    public final int minutesSince(Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        return (int) Duration.between(Instant.ofEpochMilli(date.getTime()), Instant.now()).toMinutes();
    }

    public final int hoursSince(Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        return (int) Duration.between(Instant.ofEpochMilli(date.getTime()), Instant.now()).toHours();
    }

    public final int monthsSince(Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        return ((int) Duration.between(Instant.ofEpochMilli(date.getTime()), Instant.now()).toDays()) / 30;
    }

    private final int getDaysSinceInstall() {
        return (int) Duration.between(Instant.ofEpochMilli(this.appInstallDate.getTime()), Instant.now()).toDays();
    }

    private final int getMinutesSinceInstall() {
        return (int) Duration.between(Instant.ofEpochMilli(this.appInstallDate.getTime()), Instant.now()).toMinutes();
    }

    private final Integer getDaysSinceLastPaywallView() {
        Instant instantOfEpochMilli;
        Date date = (Date) this.storage.read(LastPaywallView.INSTANCE);
        if (date == null || (instantOfEpochMilli = Instant.ofEpochMilli(date.getTime())) == null) {
            return null;
        }
        return Integer.valueOf((int) Duration.between(instantOfEpochMilli, Instant.now()).toDays());
    }

    private final Integer getMinutesSinceLastPaywallView() {
        Instant instantOfEpochMilli;
        Date date = (Date) this.storage.read(LastPaywallView.INSTANCE);
        if (date == null || (instantOfEpochMilli = Instant.ofEpochMilli(date.getTime())) == null) {
            return null;
        }
        return Integer.valueOf((int) Duration.between(instantOfEpochMilli, Instant.now()).toMinutes());
    }

    private final int getTotalPaywallViews() {
        Integer num = (Integer) this.storage.read(TotalPaywallViews.INSTANCE);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    private final ReviewCount getReviewData() {
        ReviewCount reviewCount = (ReviewCount) this.storage.read(ReviewData.INSTANCE);
        return reviewCount == null ? new ReviewCount(0, 0L, 3, (DefaultConstructorMarker) null) : reviewCount;
    }

    public final int getReviewRequestCount() {
        return getReviewData().getTimesQueried();
    }

    public final Object reviewRequestsTotal(Continuation<? super Integer> continuation) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, 2000);
        Date time = calendar.getTime();
        Date date = new Date();
        CoreDataManager coreDataManager = this.storage.getCoreDataManager();
        Intrinsics.checkNotNull(time);
        return coreDataManager.countEventsByNameInPeriod("review_requested", time, date, continuation);
    }

    public final String getDemandTier$superwall_release() {
        Map<String, Object> device;
        Object obj;
        Enrichment value = this.lastEnrichment.getValue();
        if (value == null || (device = value.getDevice()) == null || (obj = device.get("demandTier")) == null) {
            return null;
        }
        return obj.toString();
    }

    public final Integer getDemandScore$superwall_release() {
        Map<String, Object> device;
        Object obj;
        Enrichment value = this.lastEnrichment.getValue();
        if (value == null || (device = value.getDevice()) == null || (obj = device.get("demandScore")) == null) {
            return null;
        }
        if (obj instanceof Double) {
            return Integer.valueOf((int) ((Number) obj).doubleValue());
        }
        return obj instanceof Float ? Integer.valueOf((int) ((Number) obj).floatValue()) : StringsKt.toIntOrNull(obj.toString());
    }

    public final String getLocale() {
        String strMakeLocaleIdentifier = this.factory.makeLocaleIdentifier();
        if (strMakeLocaleIdentifier != null) {
            return strMakeLocaleIdentifier;
        }
        String string = Locale.getDefault().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public final String getAppVersion() {
        try {
            String str = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0).versionName;
            return str == null ? "Unknown" : str;
        } catch (Throwable th) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.device, "DeviceHelper: Failed to load version info - " + th, null, null, 24, null);
            return "";
        }
    }

    private final String getAppVersionPadded() {
        return DeviceHelperKt.asPadded(getAppVersion());
    }

    private final Enrichment getEnrichment() {
        return this.lastEnrichment.getValue();
    }

    public final String getOsVersion() {
        String str = Build.VERSION.RELEASE;
        return str == null ? "" : str;
    }

    public final boolean isEmulator() {
        String DEVICE = Build.DEVICE;
        Intrinsics.checkNotNullExpressionValue(DEVICE, "DEVICE");
        if (StringsKt.contains$default((CharSequence) DEVICE, (CharSequence) "generic", false, 2, (Object) null)) {
            return true;
        }
        String DEVICE2 = Build.DEVICE;
        Intrinsics.checkNotNullExpressionValue(DEVICE2, "DEVICE");
        return StringsKt.contains$default((CharSequence) DEVICE2, (CharSequence) "emulator", false, 2, (Object) null);
    }

    public final String getModel() {
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        return MODEL;
    }

    public final String getVendorId() {
        String string = Settings.Secure.getString(this.context.getContentResolver(), "android_id");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    public final String getDeviceId() {
        return new DeviceVendorId(VendorId.m10648constructorimpl(getVendorId()), null).getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Tier deviceTier_delegate$lambda$5(DeviceHelper deviceHelper) {
        return deviceHelper.classifier.deviceTier();
    }

    public final Tier getDeviceTier() {
        return (Tier) this.deviceTier.getValue();
    }

    public final String getPlatformWrapper() {
        return this.platformWrapper;
    }

    public final void setPlatformWrapper(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.platformWrapper = str;
    }

    public final String getPlatformWrapperVersion() {
        return this.platformWrapperVersion;
    }

    public final void setPlatformWrapperVersion(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.platformWrapperVersion = str;
    }

    private final Currency get_currency() {
        try {
            return Currency.getInstance(this._locale);
        } catch (Throwable unused) {
            return null;
        }
    }

    public final String getLanguageCode() {
        String language = this._locale.getLanguage();
        Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
        return language;
    }

    private final String getRegionCode() {
        String country = this._locale.getCountry();
        Intrinsics.checkNotNullExpressionValue(country, "getCountry(...)");
        return country;
    }

    public final String getCurrencyCode() {
        String currencyCode;
        Currency currency = get_currency();
        return (currency == null || (currencyCode = currency.getCurrencyCode()) == null) ? "" : currencyCode;
    }

    public final String getCurrencySymbol() {
        String symbol;
        Currency currency = get_currency();
        return (currency == null || (symbol = currency.getSymbol()) == null) ? "" : symbol;
    }

    public final String getSecondsFromGMT() {
        return String.valueOf(TimeZone.getDefault().getRawOffset() / 1000);
    }

    public final boolean isFirstAppOpen() {
        return !this.storage.getDidTrackFirstSession();
    }

    public final String getRadioType() {
        if (ContextCompat.checkSelfPermission(this.context, "android.permission.ACCESS_NETWORK_STATE") != 0) {
            return "";
        }
        ConnectivityManager connectivityManager = this.connectivityManager;
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        if (networkCapabilities == null || !networkCapabilities.hasTransport(0)) {
            return (networkCapabilities == null || !networkCapabilities.hasTransport(1)) ? "" : "Wifi";
        }
        return "Cellular";
    }

    public final String getBundleId() {
        String packageName = this.context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        return packageName;
    }

    public final boolean isSandbox() {
        return (this.context.getApplicationInfo().flags & 2) != 0;
    }

    public final String getUrlScheme() {
        String packageName = this.context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        return packageName;
    }

    public final String getAppInstalledAtString() {
        Either.Failure failure;
        try {
            failure = new Either.Success(new Date(this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0).firstInstallTime));
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            failure = new Either.Failure(th);
        }
        SimpleDateFormat simpleDateFormatDateFormat = DateUtilsKt.dateFormat(DateUtils.INSTANCE.getSIMPLE());
        Date date = (Date) failure.getSuccess();
        if (date == null) {
            date = new Date();
        }
        String str = simpleDateFormatDateFormat.format(date);
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public final InterfaceStyle getInterfaceStyleOverride() {
        return this.interfaceStyleOverride;
    }

    public final void setInterfaceStyleOverride(InterfaceStyle interfaceStyle) {
        this.interfaceStyleOverride = interfaceStyle;
    }

    public final String getInterfaceStyle() {
        String rawValue;
        InterfaceStyle interfaceStyle = this.interfaceStyleOverride;
        if (interfaceStyle != null && (rawValue = interfaceStyle.getRawValue()) != null) {
            return rawValue;
        }
        int i = Build.VERSION.SDK_INT >= 29 ? this.context.getResources().getConfiguration().uiMode & 48 : 0;
        if (i == 16) {
            return "Light";
        }
        if (i == 32) {
            return "Dark";
        }
        return "Unspecified";
    }

    public final String isLowPowerModeEnabled() {
        Object systemService = this.context.getSystemService("power");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        return ((PowerManager) systemService).isPowerSaveMode() ? "true" : Constants.CASEFIRST_FALSE;
    }

    private final SimpleDateFormat getLocalDateFormat() {
        SimpleDateFormat simpleDateFormatDateFormat = DateUtilsKt.dateFormat(DateUtils.INSTANCE.getYyyy_MM_dd());
        simpleDateFormatDateFormat.setTimeZone(TimeZone.getDefault());
        return simpleDateFormatDateFormat;
    }

    private final SimpleDateFormat getUtcDateFormat() {
        SimpleDateFormat simpleDateFormatDateFormat = DateUtilsKt.dateFormat(DateUtils.INSTANCE.getYyyy_MM_dd());
        simpleDateFormatDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormatDateFormat;
    }

    private final SimpleDateFormat getUtcTimeFormat() {
        SimpleDateFormat simpleDateFormatDateFormat = DateUtilsKt.dateFormat(DateUtils.INSTANCE.getHH_mm_ss());
        simpleDateFormatDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormatDateFormat;
    }

    private final SimpleDateFormat getLocalDateTimeFormat() {
        SimpleDateFormat simpleDateFormatDateFormat = DateUtilsKt.dateFormat(DateUtils.INSTANCE.getISO_SECONDS());
        simpleDateFormatDateFormat.setTimeZone(TimeZone.getDefault());
        return simpleDateFormatDateFormat;
    }

    private final SimpleDateFormat getLocalTimeFormat() {
        SimpleDateFormat simpleDateFormatDateFormat = DateUtilsKt.dateFormat(DateUtils.INSTANCE.getHH_mm_ss());
        simpleDateFormatDateFormat.setTimeZone(TimeZone.getDefault());
        return simpleDateFormatDateFormat;
    }

    private final SimpleDateFormat getUtcDateTimeFormat() {
        SimpleDateFormat simpleDateFormatDateFormat = DateUtilsKt.dateFormat(DateUtils.INSTANCE.getISO_SECONDS());
        simpleDateFormatDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormatDateFormat;
    }

    private final String getLocalDateString() {
        String str = getLocalDateFormat().format(Long.valueOf(System.currentTimeMillis()));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final String getLocalTimeString() {
        String str = getLocalTimeFormat().format(Long.valueOf(System.currentTimeMillis()));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final String getLocalDateTimeString() {
        String str = getLocalDateTimeFormat().format(Long.valueOf(System.currentTimeMillis()));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final String getUtcDateString() {
        String str = getUtcDateFormat().format(Long.valueOf(System.currentTimeMillis()));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final String getUtcTimeString() {
        String str = getUtcTimeFormat().format(Long.valueOf(System.currentTimeMillis()));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final String getUtcDateTimeString() {
        String str = getUtcDateTimeFormat().format(Long.valueOf(System.currentTimeMillis()));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final String getSdkVersionPadded() {
        return DeviceHelperKt.asPadded(getSdkVersion());
    }

    public final String getAppBuildString() {
        return String.valueOf(this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0).versionCode);
    }

    public final String getSdkVersion() {
        return BuildConfig.SDK_VERSION;
    }

    public final String getBuildTime() {
        return BuildConfig.BUILD_TIME;
    }

    public final String getGitSha() {
        return BuildConfig.GIT_SHA;
    }

    public final String getKotlinVersion() {
        try {
            return KotlinVersion.CURRENT.toString();
        } catch (Throwable unused) {
            return "UNKNOWN";
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x011e  */
    /* JADX WARN: Code duplicated, block: B:27:0x0121  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object preloadFingerprint(Continuation<? super String> continuation) {
        C05041 c05041;
        String strJoinToString$default;
        String str;
        DeviceHelper deviceHelper;
        String str2;
        String str3;
        DeviceHelper deviceHelper2;
        String str4;
        if (continuation instanceof C05041) {
            c05041 = (C05041) continuation;
            if ((c05041.label & Integer.MIN_VALUE) != 0) {
                c05041.label -= Integer.MIN_VALUE;
            } else {
                c05041 = new C05041(continuation);
            }
        } else {
            c05041 = new C05041(continuation);
        }
        Object obj = c05041.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05041.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String string = this.factory.customerInfoFlow().getValue().toString();
            strJoinToString$default = CollectionsKt.joinToString$default(CollectionsKt.sortedWith(this.factory.activeEntitlements(), new Comparator() { // from class: com.superwall.sdk.network.device.DeviceHelper$preloadFingerprint$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(((Entitlement) t).getId(), ((Entitlement) t2).getId());
                }
            }), ",", null, null, 0, null, new Function1() { // from class: com.superwall.sdk.network.device.DeviceHelper$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return DeviceHelper.preloadFingerprint$lambda$9((Entitlement) obj2);
                }
            }, 30, null);
            Factory factory = this.factory;
            c05041.L$0 = this;
            c05041.L$1 = string;
            c05041.L$2 = strJoinToString$default;
            c05041.label = 1;
            Object objActiveProductIds = factory.activeProductIds(c05041);
            if (objActiveProductIds != coroutine_suspended) {
                str = string;
                obj = objActiveProductIds;
                deviceHelper = this;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            strJoinToString$default = (String) c05041.L$2;
            str = (String) c05041.L$1;
            deviceHelper = (DeviceHelper) c05041.L$0;
            ResultKt.throwOnFailure(obj);
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str2 = (String) c05041.L$3;
            strJoinToString$default = (String) c05041.L$2;
            str3 = (String) c05041.L$1;
            deviceHelper2 = (DeviceHelper) c05041.L$0;
            ResultKt.throwOnFailure(obj);
        }
        String strValueOf = String.valueOf(((Number) obj).intValue());
        String[] strArr = new String[13];
        strArr[0] = deviceHelper2.getLocale();
        strArr[1] = deviceHelper2.getLanguageCode();
        strArr[2] = deviceHelper2.getRegionCode();
        strArr[3] = deviceHelper2.getCurrencyCode();
        strArr[4] = deviceHelper2.getCurrencySymbol();
        strArr[5] = deviceHelper2.getSecondsFromGMT();
        strArr[6] = deviceHelper2.getInterfaceStyle();
        if (deviceHelper2.interfaceStyleOverride == null) {
            str4 = "automatic";
        } else {
            str4 = "manual";
        }
        strArr[7] = str4;
        strArr[8] = strValueOf;
        strArr[9] = strJoinToString$default;
        strArr[10] = str3;
        strArr[11] = str2;
        strArr[12] = String.valueOf(deviceHelper2.isSandbox());
        return CollectionsKt.joinToString$default(CollectionsKt.listOf((Object[]) strArr), "|", null, null, 0, null, null, 62, null);
        String strJoinToString$default2 = CollectionsKt.joinToString$default(CollectionsKt.sorted((Iterable) obj), ",", null, null, 0, null, null, 62, null);
        c05041.L$0 = deviceHelper;
        c05041.L$1 = str;
        c05041.L$2 = strJoinToString$default;
        c05041.L$3 = strJoinToString$default2;
        c05041.label = 2;
        Object objReviewRequestsTotal = deviceHelper.reviewRequestsTotal(c05041);
        if (objReviewRequestsTotal != coroutine_suspended) {
            str2 = strJoinToString$default2;
            obj = objReviewRequestsTotal;
            str3 = str;
            deviceHelper2 = deviceHelper;
            String strValueOf2 = String.valueOf(((Number) obj).intValue());
            String[] strArr2 = new String[13];
            strArr2[0] = deviceHelper2.getLocale();
            strArr2[1] = deviceHelper2.getLanguageCode();
            strArr2[2] = deviceHelper2.getRegionCode();
            strArr2[3] = deviceHelper2.getCurrencyCode();
            strArr2[4] = deviceHelper2.getCurrencySymbol();
            strArr2[5] = deviceHelper2.getSecondsFromGMT();
            strArr2[6] = deviceHelper2.getInterfaceStyle();
            if (deviceHelper2.interfaceStyleOverride == null) {
                str4 = "automatic";
            } else {
                str4 = "manual";
            }
            strArr2[7] = str4;
            strArr2[8] = strValueOf2;
            strArr2[9] = strJoinToString$default;
            strArr2[10] = str3;
            strArr2[11] = str2;
            strArr2[12] = String.valueOf(deviceHelper2.isSandbox());
            return CollectionsKt.joinToString$default(CollectionsKt.listOf((Object[]) strArr2), "|", null, null, 0, null, null, 62, null);
        }
        return coroutine_suspended;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence preloadFingerprint$lambda$9(Entitlement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getId() + ":" + it.getType().getRaw();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getDeviceAttributes(EventData eventData, List<ComputedPropertyRequest> list, Continuation<? super Map<String, ? extends Object>> continuation) {
        C05011 c05011;
        DeviceHelper deviceHelper;
        Map map;
        if (continuation instanceof C05011) {
            c05011 = (C05011) continuation;
            if ((c05011.label & Integer.MIN_VALUE) != 0) {
                c05011.label -= Integer.MIN_VALUE;
            } else {
                c05011 = new C05011(continuation);
            }
        } else {
            c05011 = new C05011(continuation);
        }
        Object templateDevice = c05011.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05011.label;
        if (i == 0) {
            ResultKt.throwOnFailure(templateDevice);
            c05011.L$0 = this;
            c05011.L$1 = eventData;
            c05011.L$2 = list;
            c05011.label = 1;
            templateDevice = getTemplateDevice(c05011);
            if (templateDevice != coroutine_suspended) {
                deviceHelper = this;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            list = (List) c05011.L$2;
            eventData = (EventData) c05011.L$1;
            deviceHelper = (DeviceHelper) c05011.L$0;
            ResultKt.throwOnFailure(templateDevice);
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map = (Map) c05011.L$0;
            ResultKt.throwOnFailure(templateDevice);
        }
        return MapsKt.plus(map, (Map) templateDevice);
        Map map2 = (Map) templateDevice;
        c05011.L$0 = map2;
        c05011.L$1 = null;
        c05011.L$2 = null;
        c05011.label = 2;
        Object computedDevicePropertiesSinceEvent = deviceHelper.getComputedDevicePropertiesSinceEvent(eventData, list, c05011);
        if (computedDevicePropertiesSinceEvent != coroutine_suspended) {
            templateDevice = computedDevicePropertiesSinceEvent;
            map = map2;
            return MapsKt.plus(map, (Map) templateDevice);
        }
        return coroutine_suspended;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x005c  */
    /* JADX WARN: Code duplicated, block: B:19:0x007a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x007b  */
    /* JADX WARN: Code duplicated, block: B:23:0x0083  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x007b -> B:21:0x007f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object getComputedDevicePropertiesSinceEvent(com.superwall.sdk.models.events.EventData r10, java.util.List<com.superwall.sdk.models.config.ComputedPropertyRequest> r11, kotlin.coroutines.Continuation<? super java.util.Map<java.lang.String, ? extends java.lang.Object>> r12) {
        /*
            r9 = this;
            boolean r0 = r12 instanceof com.superwall.sdk.network.device.DeviceHelper.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r12
            com.superwall.sdk.network.device.DeviceHelper$getComputedDevicePropertiesSinceEvent$1 r0 = (com.superwall.sdk.network.device.DeviceHelper.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r12 = r0.label
            int r12 = r12 - r2
            r0.label = r12
            goto L19
        L14:
            com.superwall.sdk.network.device.DeviceHelper$getComputedDevicePropertiesSinceEvent$1 r0 = new com.superwall.sdk.network.device.DeviceHelper$getComputedDevicePropertiesSinceEvent$1
            r0.<init>(r12)
        L19:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L46
            if (r2 != r3) goto L3e
            java.lang.Object r10 = r0.L$4
            com.superwall.sdk.models.config.ComputedPropertyRequest r10 = (com.superwall.sdk.models.config.ComputedPropertyRequest) r10
            java.lang.Object r11 = r0.L$3
            java.util.Iterator r11 = (java.util.Iterator) r11
            java.lang.Object r2 = r0.L$2
            java.util.Map r2 = (java.util.Map) r2
            java.lang.Object r4 = r0.L$1
            com.superwall.sdk.models.events.EventData r4 = (com.superwall.sdk.models.events.EventData) r4
            java.lang.Object r5 = r0.L$0
            com.superwall.sdk.network.device.DeviceHelper r5 = (com.superwall.sdk.network.device.DeviceHelper) r5
            kotlin.ResultKt.throwOnFailure(r12)
            goto L7f
        L3e:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L46:
            kotlin.ResultKt.throwOnFailure(r12)
            java.util.LinkedHashMap r12 = new java.util.LinkedHashMap
            r12.<init>()
            java.util.Map r12 = (java.util.Map) r12
            java.util.Iterator r11 = r11.iterator()
            r5 = r9
            r2 = r12
        L56:
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto Laf
            java.lang.Object r12 = r11.next()
            com.superwall.sdk.models.config.ComputedPropertyRequest r12 = (com.superwall.sdk.models.config.ComputedPropertyRequest) r12
            com.superwall.sdk.storage.LocalStorage r4 = r5.storage
            com.superwall.sdk.storage.core_data.CoreDataManager r4 = r4.getCoreDataManager()
            r0.L$0 = r5
            r0.L$1 = r10
            r0.L$2 = r2
            r0.L$3 = r11
            r0.L$4 = r12
            r0.label = r3
            java.lang.Object r4 = r4.getComputedPropertySinceEvent(r10, r12, r0)
            if (r4 != r1) goto L7b
            return r1
        L7b:
            r8 = r4
            r4 = r10
            r10 = r12
            r12 = r8
        L7f:
            java.lang.Integer r12 = (java.lang.Integer) r12
            if (r12 == 0) goto Lad
            java.lang.Number r12 = (java.lang.Number) r12
            int r12 = r12.intValue()
            java.lang.Integer r12 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r12)
            com.superwall.sdk.models.config.ComputedPropertyRequest$ComputedPropertyRequestType r6 = r10.getType()
            java.lang.String r6 = r6.getPrefix()
            java.lang.String r10 = r10.getEventName()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.StringBuilder r6 = r7.append(r6)
            java.lang.StringBuilder r10 = r6.append(r10)
            java.lang.String r10 = r10.toString()
            r2.put(r10, r12)
        Lad:
            r10 = r4
            goto L56
        Laf:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.network.device.DeviceHelper.getComputedDevicePropertiesSinceEvent(com.superwall.sdk.models.events.EventData, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:132:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:36:0x028d A[Catch: all -> 0x015a, LOOP:1: B:34:0x0287->B:36:0x028d, LOOP_END, TryCatch #3 {all -> 0x015a, blocks: (B:21:0x0154, B:30:0x0173, B:33:0x01a2, B:34:0x0287, B:36:0x028d, B:37:0x029b, B:38:0x02c0, B:40:0x02c6, B:41:0x02f9, B:43:0x030e, B:55:0x032a, B:46:0x0315, B:49:0x031c, B:52:0x0323, B:53:0x0328), top: B:128:0x0154 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x02c6 A[Catch: all -> 0x015a, LOOP:2: B:38:0x02c0->B:40:0x02c6, LOOP_END, TryCatch #3 {all -> 0x015a, blocks: (B:21:0x0154, B:30:0x0173, B:33:0x01a2, B:34:0x0287, B:36:0x028d, B:37:0x029b, B:38:0x02c0, B:40:0x02c6, B:41:0x02f9, B:43:0x030e, B:55:0x032a, B:46:0x0315, B:49:0x031c, B:52:0x0323, B:53:0x0328), top: B:128:0x0154 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x030e A[Catch: all -> 0x015a, TryCatch #3 {all -> 0x015a, blocks: (B:21:0x0154, B:30:0x0173, B:33:0x01a2, B:34:0x0287, B:36:0x028d, B:37:0x029b, B:38:0x02c0, B:40:0x02c6, B:41:0x02f9, B:43:0x030e, B:55:0x032a, B:46:0x0315, B:49:0x031c, B:52:0x0323, B:53:0x0328), top: B:128:0x0154 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0312  */
    /* JADX WARN: Code duplicated, block: B:46:0x0315 A[Catch: all -> 0x015a, TryCatch #3 {all -> 0x015a, blocks: (B:21:0x0154, B:30:0x0173, B:33:0x01a2, B:34:0x0287, B:36:0x028d, B:37:0x029b, B:38:0x02c0, B:40:0x02c6, B:41:0x02f9, B:43:0x030e, B:55:0x032a, B:46:0x0315, B:49:0x031c, B:52:0x0323, B:53:0x0328), top: B:128:0x0154 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0319  */
    /* JADX WARN: Code duplicated, block: B:49:0x031c A[Catch: all -> 0x015a, TryCatch #3 {all -> 0x015a, blocks: (B:21:0x0154, B:30:0x0173, B:33:0x01a2, B:34:0x0287, B:36:0x028d, B:37:0x029b, B:38:0x02c0, B:40:0x02c6, B:41:0x02f9, B:43:0x030e, B:55:0x032a, B:46:0x0315, B:49:0x031c, B:52:0x0323, B:53:0x0328), top: B:128:0x0154 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0320  */
    /* JADX WARN: Code duplicated, block: B:52:0x0323 A[Catch: all -> 0x015a, TryCatch #3 {all -> 0x015a, blocks: (B:21:0x0154, B:30:0x0173, B:33:0x01a2, B:34:0x0287, B:36:0x028d, B:37:0x029b, B:38:0x02c0, B:40:0x02c6, B:41:0x02f9, B:43:0x030e, B:55:0x032a, B:46:0x0315, B:49:0x031c, B:52:0x0323, B:53:0x0328), top: B:128:0x0154 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0329  */
    /* JADX WARN: Code duplicated, block: B:59:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:62:0x045c  */
    /* JADX WARN: Code duplicated, block: B:63:0x045f  */
    /* JADX WARN: Code duplicated, block: B:67:0x047e A[Catch: all -> 0x0142, LOOP:0: B:65:0x0478->B:67:0x047e, LOOP_END, TryCatch #1 {all -> 0x0142, blocks: (B:13:0x00f1, B:60:0x043c, B:64:0x0461, B:65:0x0478, B:67:0x047e, B:68:0x048c), top: B:124:0x00f1 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x04d2  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object getTemplateDevice(Continuation<? super Map<String, ? extends Object>> continuation) {
        C05031 c05031;
        DeviceHelper deviceHelper;
        Object objMakeIdentityInfo;
        DeviceHelper deviceHelper2;
        List listListOf;
        List listListOf2;
        String apiKey;
        String appUserId;
        String vendorId;
        String deviceId;
        String appVersion;
        String osVersion;
        String model;
        String locale;
        String locale2;
        String languageCode;
        String languageCode2;
        String regionCode;
        String regionCode2;
        String currencyCode;
        String currencySymbol;
        int rawOffset;
        String radioType;
        String interfaceStyle;
        boolean z;
        String bundleId;
        String appInstalledAtString;
        int daysSinceInstall;
        int minutesSinceInstall;
        Integer daysSinceLastPaywallView;
        Integer minutesSinceLastPaywallView;
        int totalPaywallViews;
        String utcDateString;
        String localDateString;
        String utcTimeString;
        String localTimeString;
        String utcDateTimeString;
        String localDateTimeString;
        String strValueOf;
        ArrayList arrayList;
        Iterator<T> it;
        ArrayList arrayList2;
        ArrayList arrayList3;
        Iterator it2;
        ArrayList arrayList4;
        SubscriptionStatus value;
        String str;
        String str2;
        String str3;
        Object objActiveProductIds;
        List list;
        List list2;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        int i;
        String str13;
        String str14;
        boolean z2;
        String str15;
        String str16;
        String str17;
        int i2;
        int i3;
        Integer num;
        Integer num2;
        int i4;
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        String str23;
        String str24;
        String str25;
        String str26;
        List list3;
        List list4;
        String str27;
        String str28;
        String str29;
        Either failure;
        Object objM11241constructorimpl;
        Object objM11241constructorimpl2;
        Map<String, Object> mapEmptyMap;
        Either.Failure failure2;
        String str30;
        ArrayList arrayList5;
        Iterator it3;
        if (continuation instanceof C05031) {
            c05031 = (C05031) continuation;
            if ((c05031.label & Integer.MIN_VALUE) != 0) {
                c05031.label -= Integer.MIN_VALUE;
            } else {
                c05031 = new C05031(continuation);
            }
        } else {
            c05031 = new C05031(continuation);
        }
        Object obj = c05031.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i5 = c05031.label;
        if (i5 == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                Factory factory = this.factory;
                c05031.L$0 = this;
                c05031.label = 1;
                objMakeIdentityInfo = factory.makeIdentityInfo(c05031);
                if (objMakeIdentityInfo == coroutine_suspended) {
                    return coroutine_suspended;
                }
                deviceHelper2 = this;
                IdentityInfo identityInfo = (IdentityInfo) objMakeIdentityInfo;
                listListOf = CollectionsKt.listOf(identityInfo.getAliasId());
                listListOf2 = CollectionsKt.listOf((Object[]) new Capability[]{new Capability.PaywallEventReceiver(), Capability.MultiplePaywallUrls.INSTANCE, Capability.ConfigCaching.INSTANCE});
                apiKey = deviceHelper2.storage.getApiKey();
                appUserId = identityInfo.getAppUserId();
                if (appUserId == null) {
                    appUserId = "";
                }
                vendorId = deviceHelper2.getVendorId();
                deviceId = deviceHelper2.getDeviceId();
                appVersion = deviceHelper2.getAppVersion();
                osVersion = deviceHelper2.getOsVersion();
                model = deviceHelper2.getModel();
                locale = deviceHelper2.getLocale();
                locale2 = deviceHelper2.getLocale();
                languageCode = deviceHelper2.getLanguageCode();
                languageCode2 = deviceHelper2.getLanguageCode();
                regionCode = deviceHelper2.getRegionCode();
                regionCode2 = deviceHelper2.getRegionCode();
                currencyCode = deviceHelper2.getCurrencyCode();
                currencySymbol = deviceHelper2.getCurrencySymbol();
                rawOffset = TimeZone.getDefault().getRawOffset() / 1000;
                radioType = deviceHelper2.getRadioType();
                interfaceStyle = deviceHelper2.getInterfaceStyle();
                z = Boolean.parseBoolean(deviceHelper2.isLowPowerModeEnabled());
                bundleId = deviceHelper2.getBundleId();
                appInstalledAtString = deviceHelper2.getAppInstalledAtString();
                daysSinceInstall = deviceHelper2.getDaysSinceInstall();
                minutesSinceInstall = deviceHelper2.getMinutesSinceInstall();
                daysSinceLastPaywallView = deviceHelper2.getDaysSinceLastPaywallView();
                minutesSinceLastPaywallView = deviceHelper2.getMinutesSinceLastPaywallView();
                totalPaywallViews = deviceHelper2.getTotalPaywallViews();
                utcDateString = deviceHelper2.getUtcDateString();
                localDateString = deviceHelper2.getLocalDateString();
                utcTimeString = deviceHelper2.getUtcTimeString();
                localTimeString = deviceHelper2.getLocalTimeString();
                utcDateTimeString = deviceHelper2.getUtcDateTimeString();
                localDateTimeString = deviceHelper2.getLocalDateTimeString();
                strValueOf = String.valueOf(deviceHelper2.isSandbox());
                Set<Entitlement> active = Superwall.INSTANCE.getInstance().getEntitlements().getActive();
                arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(active, 10));
                it = active.iterator();
                while (it.hasNext()) {
                    arrayList.add(((Entitlement) it.next()).getId());
                }
                arrayList2 = arrayList;
                Set<Entitlement> active2 = Superwall.INSTANCE.getInstance().getEntitlements().getActive();
                arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(active2, 10));
                for (it2 = active2.iterator(); it2.hasNext(); it2 = it2) {
                    Entitlement entitlement = (Entitlement) it2.next();
                    arrayList3.add(MapsKt.mapOf(TuplesKt.to(NotificationsService.IDENTIFIER_KEY, entitlement.getId()), TuplesKt.to("type", entitlement.getType().getRaw())));
                }
                arrayList4 = arrayList3;
                value = Superwall.INSTANCE.getInstance().getSubscriptionStatus().getValue();
                if (value != null) {
                    str = null;
                } else if (value instanceof SubscriptionStatus.Active) {
                    str = "ACTIVE";
                } else if (value instanceof SubscriptionStatus.Inactive) {
                    str = "INACTIVE";
                } else {
                    if (value instanceof SubscriptionStatus.Unknown) {
                        throw new NoWhenBranchMatchedException();
                    }
                    str = "UNKNOWN";
                }
                str2 = str;
                Factory factory2 = deviceHelper2.factory;
                c05031.L$0 = deviceHelper2;
                c05031.L$1 = listListOf;
                c05031.L$2 = apiKey;
                c05031.L$3 = listListOf2;
                c05031.L$4 = vendorId;
                c05031.L$5 = appUserId;
                c05031.L$6 = deviceId;
                c05031.L$7 = appVersion;
                c05031.L$8 = osVersion;
                c05031.L$9 = model;
                c05031.L$10 = locale;
                c05031.L$11 = locale2;
                str3 = appUserId;
                c05031.L$12 = languageCode;
                c05031.L$13 = languageCode2;
                c05031.L$14 = regionCode;
                c05031.L$15 = regionCode2;
                c05031.L$16 = currencyCode;
                c05031.L$17 = currencySymbol;
                c05031.L$18 = radioType;
                c05031.L$19 = interfaceStyle;
                c05031.L$20 = bundleId;
                c05031.L$21 = appInstalledAtString;
                c05031.L$22 = daysSinceLastPaywallView;
                c05031.L$23 = minutesSinceLastPaywallView;
                c05031.L$24 = utcDateString;
                c05031.L$25 = localDateString;
                c05031.L$26 = utcTimeString;
                c05031.L$27 = localTimeString;
                c05031.L$28 = utcDateTimeString;
                c05031.L$29 = localDateTimeString;
                c05031.L$30 = strValueOf;
                c05031.L$31 = arrayList4;
                c05031.L$32 = str2;
                c05031.L$33 = arrayList2;
                c05031.I$0 = rawOffset;
                c05031.Z$0 = z;
                c05031.I$1 = daysSinceInstall;
                c05031.I$2 = minutesSinceInstall;
                c05031.I$3 = totalPaywallViews;
                c05031.label = 2;
                objActiveProductIds = factory2.activeProductIds(c05031);
                if (objActiveProductIds == coroutine_suspended) {
                    return coroutine_suspended;
                }
                list = arrayList4;
                deviceHelper = deviceHelper2;
                list2 = listListOf;
                str4 = locale2;
                str5 = locale;
                str6 = deviceId;
                str7 = appVersion;
                str8 = osVersion;
                str9 = model;
                str10 = regionCode;
                str11 = regionCode2;
                str12 = currencyCode;
                i = rawOffset;
                str13 = currencySymbol;
                str14 = radioType;
                z2 = z;
                str15 = interfaceStyle;
                str16 = bundleId;
                str17 = appInstalledAtString;
                i2 = daysSinceInstall;
                i3 = minutesSinceInstall;
                num = daysSinceLastPaywallView;
                num2 = minutesSinceLastPaywallView;
                i4 = totalPaywallViews;
                str18 = utcDateString;
                str19 = localDateString;
                str20 = utcTimeString;
                str21 = localTimeString;
                str22 = utcDateTimeString;
                str23 = languageCode2;
                str24 = localDateTimeString;
                str25 = strValueOf;
                str26 = languageCode;
                list3 = arrayList2;
                list4 = listListOf2;
                str27 = apiKey;
                str28 = vendorId;
                str29 = str3;
                String str31 = str2;
                List list5 = (List) objActiveProductIds;
                boolean zIsFirstAppOpen = deviceHelper.isFirstAppOpen();
                String sdkVersion = deviceHelper.getSdkVersion();
                String sdkVersionPadded = deviceHelper.getSdkVersionPadded();
                String appBuildString = deviceHelper.getAppBuildString();
                int i6 = Integer.parseInt(deviceHelper.getAppBuildString());
                if (deviceHelper.interfaceStyleOverride == null) {
                    str30 = "automatic";
                } else {
                    str30 = "manual";
                }
                String str32 = str30;
                List list6 = list4;
                arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list6, 10));
                it3 = list6.iterator();
                while (it3.hasNext()) {
                    arrayList5.add(((Capability) it3.next()).getName());
                }
                failure = new Either.Success(new DeviceTemplate(str27, "Android", str29, list2, str28, str6, str7, deviceHelper.getAppVersionPadded(), str8, str9, str5, str4, str26, str23, str10, str11, str12, str13, i, str14, str15, z2, str16, str17, false, i2, i3, num, num2, i4, str18, str19, str20, str21, str22, str24, str25, list3, list, str31, list5, zIsFirstAppOpen, sdkVersion, sdkVersionPadded, appBuildString, Boxing.boxInt(i6), str32, arrayList5, CapabilityKt.toJson(list4), deviceHelper.platformWrapper, deviceHelper.platformWrapperVersion, deviceHelper.classifier.deviceTier().getRaw(), deviceHelper.getReviewRequestCount(), deviceHelper.getKotlinVersion()));
            } catch (Throwable th) {
                th = th;
                deviceHelper = this;
                if (ErrorTrackingKt.shouldLog(th)) {
                    ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
                }
                failure = new Either.Failure(th);
            }
        } else if (i5 == 1) {
            deviceHelper2 = (DeviceHelper) c05031.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                objMakeIdentityInfo = obj;
                IdentityInfo identityInfo2 = (IdentityInfo) objMakeIdentityInfo;
                listListOf = CollectionsKt.listOf(identityInfo2.getAliasId());
                listListOf2 = CollectionsKt.listOf((Object[]) new Capability[]{new Capability.PaywallEventReceiver(), Capability.MultiplePaywallUrls.INSTANCE, Capability.ConfigCaching.INSTANCE});
                apiKey = deviceHelper2.storage.getApiKey();
                appUserId = identityInfo2.getAppUserId();
                if (appUserId == null) {
                    appUserId = "";
                }
                vendorId = deviceHelper2.getVendorId();
                deviceId = deviceHelper2.getDeviceId();
                appVersion = deviceHelper2.getAppVersion();
                osVersion = deviceHelper2.getOsVersion();
                model = deviceHelper2.getModel();
                locale = deviceHelper2.getLocale();
                locale2 = deviceHelper2.getLocale();
                languageCode = deviceHelper2.getLanguageCode();
                languageCode2 = deviceHelper2.getLanguageCode();
                regionCode = deviceHelper2.getRegionCode();
                regionCode2 = deviceHelper2.getRegionCode();
                currencyCode = deviceHelper2.getCurrencyCode();
                currencySymbol = deviceHelper2.getCurrencySymbol();
                rawOffset = TimeZone.getDefault().getRawOffset() / 1000;
                radioType = deviceHelper2.getRadioType();
                interfaceStyle = deviceHelper2.getInterfaceStyle();
                z = Boolean.parseBoolean(deviceHelper2.isLowPowerModeEnabled());
                bundleId = deviceHelper2.getBundleId();
                appInstalledAtString = deviceHelper2.getAppInstalledAtString();
                daysSinceInstall = deviceHelper2.getDaysSinceInstall();
                minutesSinceInstall = deviceHelper2.getMinutesSinceInstall();
                daysSinceLastPaywallView = deviceHelper2.getDaysSinceLastPaywallView();
                minutesSinceLastPaywallView = deviceHelper2.getMinutesSinceLastPaywallView();
                totalPaywallViews = deviceHelper2.getTotalPaywallViews();
                utcDateString = deviceHelper2.getUtcDateString();
                localDateString = deviceHelper2.getLocalDateString();
                utcTimeString = deviceHelper2.getUtcTimeString();
                localTimeString = deviceHelper2.getLocalTimeString();
                utcDateTimeString = deviceHelper2.getUtcDateTimeString();
                localDateTimeString = deviceHelper2.getLocalDateTimeString();
                strValueOf = String.valueOf(deviceHelper2.isSandbox());
                Set<Entitlement> active3 = Superwall.INSTANCE.getInstance().getEntitlements().getActive();
                arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(active3, 10));
                it = active3.iterator();
                while (it.hasNext()) {
                    arrayList.add(((Entitlement) it.next()).getId());
                }
                arrayList2 = arrayList;
                Set<Entitlement> active4 = Superwall.INSTANCE.getInstance().getEntitlements().getActive();
                arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(active4, 10));
                while (it2.hasNext()) {
                    Entitlement entitlement2 = (Entitlement) it2.next();
                    arrayList3.add(MapsKt.mapOf(TuplesKt.to(NotificationsService.IDENTIFIER_KEY, entitlement2.getId()), TuplesKt.to("type", entitlement2.getType().getRaw())));
                }
                arrayList4 = arrayList3;
                value = Superwall.INSTANCE.getInstance().getSubscriptionStatus().getValue();
                if (value != null) {
                    str = null;
                } else if (value instanceof SubscriptionStatus.Active) {
                    str = "ACTIVE";
                } else if (value instanceof SubscriptionStatus.Inactive) {
                    str = "INACTIVE";
                } else {
                    if (value instanceof SubscriptionStatus.Unknown) {
                        throw new NoWhenBranchMatchedException();
                    }
                    str = "UNKNOWN";
                }
                str2 = str;
                Factory factory3 = deviceHelper2.factory;
                c05031.L$0 = deviceHelper2;
                c05031.L$1 = listListOf;
                c05031.L$2 = apiKey;
                c05031.L$3 = listListOf2;
                c05031.L$4 = vendorId;
                c05031.L$5 = appUserId;
                c05031.L$6 = deviceId;
                c05031.L$7 = appVersion;
                c05031.L$8 = osVersion;
                c05031.L$9 = model;
                c05031.L$10 = locale;
                c05031.L$11 = locale2;
                str3 = appUserId;
                c05031.L$12 = languageCode;
                c05031.L$13 = languageCode2;
                c05031.L$14 = regionCode;
                c05031.L$15 = regionCode2;
                c05031.L$16 = currencyCode;
                c05031.L$17 = currencySymbol;
                c05031.L$18 = radioType;
                c05031.L$19 = interfaceStyle;
                c05031.L$20 = bundleId;
                c05031.L$21 = appInstalledAtString;
                c05031.L$22 = daysSinceLastPaywallView;
                c05031.L$23 = minutesSinceLastPaywallView;
                c05031.L$24 = utcDateString;
                c05031.L$25 = localDateString;
                c05031.L$26 = utcTimeString;
                c05031.L$27 = localTimeString;
                c05031.L$28 = utcDateTimeString;
                c05031.L$29 = localDateTimeString;
                c05031.L$30 = strValueOf;
                c05031.L$31 = arrayList4;
                c05031.L$32 = str2;
                c05031.L$33 = arrayList2;
                c05031.I$0 = rawOffset;
                c05031.Z$0 = z;
                c05031.I$1 = daysSinceInstall;
                c05031.I$2 = minutesSinceInstall;
                c05031.I$3 = totalPaywallViews;
                c05031.label = 2;
                objActiveProductIds = factory3.activeProductIds(c05031);
                if (objActiveProductIds == coroutine_suspended) {
                    return coroutine_suspended;
                }
                list = arrayList4;
                deviceHelper = deviceHelper2;
                list2 = listListOf;
                str4 = locale2;
                str5 = locale;
                str6 = deviceId;
                str7 = appVersion;
                str8 = osVersion;
                str9 = model;
                str10 = regionCode;
                str11 = regionCode2;
                str12 = currencyCode;
                i = rawOffset;
                str13 = currencySymbol;
                str14 = radioType;
                z2 = z;
                str15 = interfaceStyle;
                str16 = bundleId;
                str17 = appInstalledAtString;
                i2 = daysSinceInstall;
                i3 = minutesSinceInstall;
                num = daysSinceLastPaywallView;
                num2 = minutesSinceLastPaywallView;
                i4 = totalPaywallViews;
                str18 = utcDateString;
                str19 = localDateString;
                str20 = utcTimeString;
                str21 = localTimeString;
                str22 = utcDateTimeString;
                str23 = languageCode2;
                str24 = localDateTimeString;
                str25 = strValueOf;
                str26 = languageCode;
                list3 = arrayList2;
                list4 = listListOf2;
                str27 = apiKey;
                str28 = vendorId;
                str29 = str3;
                String str33 = str2;
                List list7 = (List) objActiveProductIds;
                boolean zIsFirstAppOpen2 = deviceHelper.isFirstAppOpen();
                String sdkVersion2 = deviceHelper.getSdkVersion();
                String sdkVersionPadded2 = deviceHelper.getSdkVersionPadded();
                String appBuildString2 = deviceHelper.getAppBuildString();
                int i7 = Integer.parseInt(deviceHelper.getAppBuildString());
                if (deviceHelper.interfaceStyleOverride == null) {
                    str30 = "automatic";
                } else {
                    str30 = "manual";
                }
                String str34 = str30;
                List list8 = list4;
                arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list8, 10));
                it3 = list8.iterator();
                while (it3.hasNext()) {
                    arrayList5.add(((Capability) it3.next()).getName());
                }
                failure = new Either.Success(new DeviceTemplate(str27, "Android", str29, list2, str28, str6, str7, deviceHelper.getAppVersionPadded(), str8, str9, str5, str4, str26, str23, str10, str11, str12, str13, i, str14, str15, z2, str16, str17, false, i2, i3, num, num2, i4, str18, str19, str20, str21, str22, str24, str25, list3, list, str33, list7, zIsFirstAppOpen2, sdkVersion2, sdkVersionPadded2, appBuildString2, Boxing.boxInt(i7), str34, arrayList5, CapabilityKt.toJson(list4), deviceHelper.platformWrapper, deviceHelper.platformWrapperVersion, deviceHelper.classifier.deviceTier().getRaw(), deviceHelper.getReviewRequestCount(), deviceHelper.getKotlinVersion()));
            } catch (Throwable th2) {
                th = th2;
                deviceHelper = deviceHelper2;
                if (ErrorTrackingKt.shouldLog(th)) {
                    ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
                }
                failure = new Either.Failure(th);
            }
        } else {
            if (i5 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i8 = c05031.I$3;
            int i9 = c05031.I$2;
            int i10 = c05031.I$1;
            boolean z3 = c05031.Z$0;
            int i11 = c05031.I$0;
            List list9 = (List) c05031.L$33;
            str2 = (String) c05031.L$32;
            List list10 = (List) c05031.L$31;
            String str35 = (String) c05031.L$30;
            String str36 = (String) c05031.L$29;
            String str37 = (String) c05031.L$28;
            String str38 = (String) c05031.L$27;
            String str39 = (String) c05031.L$26;
            String str40 = (String) c05031.L$25;
            String str41 = (String) c05031.L$24;
            Integer num3 = (Integer) c05031.L$23;
            Integer num4 = (Integer) c05031.L$22;
            String str42 = (String) c05031.L$21;
            String str43 = (String) c05031.L$20;
            String str44 = (String) c05031.L$19;
            String str45 = (String) c05031.L$18;
            String str46 = (String) c05031.L$17;
            String str47 = (String) c05031.L$16;
            String str48 = (String) c05031.L$15;
            String str49 = (String) c05031.L$14;
            String str50 = (String) c05031.L$13;
            String str51 = (String) c05031.L$12;
            String str52 = (String) c05031.L$11;
            String str53 = (String) c05031.L$10;
            String str54 = (String) c05031.L$9;
            String str55 = (String) c05031.L$8;
            String str56 = (String) c05031.L$7;
            String str57 = (String) c05031.L$6;
            String str58 = (String) c05031.L$5;
            String str59 = (String) c05031.L$4;
            list4 = (List) c05031.L$3;
            String str60 = (String) c05031.L$2;
            List list11 = (List) c05031.L$1;
            deviceHelper = (DeviceHelper) c05031.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                list2 = list11;
                i4 = i8;
                i3 = i9;
                str20 = str39;
                i2 = i10;
                z2 = z3;
                i = i11;
                list3 = list9;
                list = list10;
                str25 = str35;
                str24 = str36;
                str22 = str37;
                str21 = str38;
                objActiveProductIds = obj;
                str19 = str40;
                str18 = str41;
                num2 = num3;
                num = num4;
                str17 = str42;
                str16 = str43;
                str15 = str44;
                str14 = str45;
                str13 = str46;
                str12 = str47;
                str11 = str48;
                str10 = str49;
                str23 = str50;
                str26 = str51;
                str4 = str52;
                str5 = str53;
                str9 = str54;
                str8 = str55;
                str7 = str56;
                str6 = str57;
                str29 = str58;
                str28 = str59;
                str27 = str60;
                String str310 = str2;
                List list12 = (List) objActiveProductIds;
                boolean zIsFirstAppOpen3 = deviceHelper.isFirstAppOpen();
                String sdkVersion3 = deviceHelper.getSdkVersion();
                String sdkVersionPadded3 = deviceHelper.getSdkVersionPadded();
                String appBuildString3 = deviceHelper.getAppBuildString();
                int i12 = Integer.parseInt(deviceHelper.getAppBuildString());
                if (deviceHelper.interfaceStyleOverride == null) {
                    str30 = "automatic";
                } else {
                    str30 = "manual";
                }
                String str311 = str30;
                List list13 = list4;
                arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list13, 10));
                it3 = list13.iterator();
                while (it3.hasNext()) {
                    arrayList5.add(((Capability) it3.next()).getName());
                }
                failure = new Either.Success(new DeviceTemplate(str27, "Android", str29, list2, str28, str6, str7, deviceHelper.getAppVersionPadded(), str8, str9, str5, str4, str26, str23, str10, str11, str12, str13, i, str14, str15, z2, str16, str17, false, i2, i3, num, num2, i4, str18, str19, str20, str21, str22, str24, str25, list3, list, str310, list12, zIsFirstAppOpen3, sdkVersion3, sdkVersionPadded3, appBuildString3, Boxing.boxInt(i12), str311, arrayList5, CapabilityKt.toJson(list4), deviceHelper.platformWrapper, deviceHelper.platformWrapperVersion, deviceHelper.classifier.deviceTier().getRaw(), deviceHelper.getReviewRequestCount(), deviceHelper.getKotlinVersion()));
            } catch (Throwable th3) {
                th = th3;
                if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                    ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
                }
                failure = new Either.Failure(th);
            }
        }
        if (failure instanceof Either.Success) {
            Result.Companion companion = Result.INSTANCE;
            objM11241constructorimpl = Result.m11241constructorimpl(((Either.Success) failure).getValue());
        } else {
            if (!(failure instanceof Either.Failure)) {
                throw new NoWhenBranchMatchedException();
            }
            Result.Companion companion2 = Result.INSTANCE;
            objM11241constructorimpl = Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
        }
        if (Result.m11248isSuccessimpl(objM11241constructorimpl)) {
            Result.Companion companion3 = Result.INSTANCE;
            objM11241constructorimpl = ((DeviceTemplate) objM11241constructorimpl).toDictionary(deviceHelper.json);
        }
        Object objM11241constructorimpl3 = Result.m11241constructorimpl(objM11241constructorimpl);
        if (Result.m11248isSuccessimpl(objM11241constructorimpl3)) {
            Result.Companion companion4 = Result.INSTANCE;
            Map map = (Map) objM11241constructorimpl3;
            Enrichment enrichment = deviceHelper.getEnrichment();
            if (enrichment == null || (mapEmptyMap = enrichment.getDevice()) == null) {
                mapEmptyMap = MapsKt.emptyMap();
            }
            Map mapPlus = MapsKt.plus(mapEmptyMap, map);
            try {
                failure2 = new Either.Success(deviceHelper.factory.makeSuperwallOptions().getEnableExperimentalDeviceVariables() ? MapsKt.plus(mapPlus, deviceHelper.latestExperimentalDeviceProperties()) : mapPlus);
            } catch (Throwable th4) {
                if (ErrorTrackingKt.shouldLog(th4) && Superwall.INSTANCE.getInitialized()) {
                    ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th4);
                }
                failure2 = new Either.Failure(th4);
            }
            Map map2 = (Map) failure2.getSuccess();
            if (map2 != null) {
                mapPlus = map2;
            }
            objM11241constructorimpl2 = Result.m11241constructorimpl(mapPlus);
        } else {
            objM11241constructorimpl2 = Result.m11241constructorimpl(objM11241constructorimpl3);
        }
        Throwable thM11244exceptionOrNullimpl = Result.m11244exceptionOrNullimpl(objM11241constructorimpl2);
        if (thM11244exceptionOrNullimpl == null) {
            return (Map) objM11241constructorimpl2;
        }
        Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.device, "Failed to get device template", null, thM11244exceptionOrNullimpl, 8, null);
        return MapsKt.emptyMap();
    }

    public final void setEnrichment$superwall_release(Enrichment enrichment) {
        Intrinsics.checkNotNullParameter(enrichment, "enrichment");
        this.lastEnrichment.setValue(enrichment);
    }

    public final Map<String, Object> latestExperimentalDeviceProperties() {
        return this.factory.experimentalProperties();
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00fa A[LOOP:0: B:36:0x00f4->B:38:0x00fa, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:42:0x0126 A[PHI: r12 r15
      0x0126: PHI (r12v4 com.superwall.sdk.network.device.DeviceHelper) = (r12v3 com.superwall.sdk.network.device.DeviceHelper), (r12v11 com.superwall.sdk.network.device.DeviceHelper) binds: [B:40:0x0123, B:20:0x0049] A[DONT_GENERATE, DONT_INLINE]
      0x0126: PHI (r15v20 java.lang.Object) = (r15v15 java.lang.Object), (r15v1 java.lang.Object) binds: [B:40:0x0123, B:20:0x0049] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:48:0x014e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX INFO: renamed from: getEnrichment-8Mi8wO0, reason: not valid java name */
    public final Object m10697getEnrichment8Mi8wO0(int i, long j, Continuation<? super Either<Enrichment, NetworkError>> continuation) {
        C05021 c05021;
        DeviceHelper deviceHelper;
        int i2;
        DeviceHelper deviceHelper2;
        Map map;
        long j2;
        LinkedHashMap linkedHashMap;
        Object objThen;
        if (continuation instanceof C05021) {
            c05021 = (C05021) continuation;
            if ((c05021.label & Integer.MIN_VALUE) != 0) {
                c05021.label -= Integer.MIN_VALUE;
            } else {
                c05021 = new C05021(continuation);
            }
        } else {
            c05021 = new C05021(continuation);
        }
        C05021 c05022 = c05021;
        Object objMakeIdentityManager = c05022.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c05022.label;
        if (i3 == 0) {
            ResultKt.throwOnFailure(objMakeIdentityManager);
            Factory factory = this.factory;
            c05022.L$0 = this;
            c05022.I$0 = i;
            c05022.J$0 = j;
            c05022.label = 1;
            objMakeIdentityManager = factory.makeIdentityManager(c05022);
            if (objMakeIdentityManager != coroutine_suspended) {
                deviceHelper = this;
            }
            return coroutine_suspended;
        }
        if (i3 == 1) {
            j = c05022.J$0;
            i = c05022.I$0;
            deviceHelper = (DeviceHelper) c05022.L$0;
            ResultKt.throwOnFailure(objMakeIdentityManager);
        } else {
            if (i3 == 2) {
                long j3 = c05022.J$0;
                int i4 = c05022.I$0;
                map = (Map) c05022.L$1;
                DeviceHelper deviceHelper3 = (DeviceHelper) c05022.L$0;
                ResultKt.throwOnFailure(objMakeIdentityManager);
                j2 = j3;
                deviceHelper2 = deviceHelper3;
                i2 = i4;
                Map map2 = (Map) objMakeIdentityManager;
                linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map2.size()));
                for (Map.Entry entry : map2.entrySet()) {
                    linkedHashMap.put(entry.getKey(), ConvertersKt.convertToJsonElement(entry.getValue()));
                }
                SuperwallAPI superwallAPI = deviceHelper2.network;
                EnrichmentRequest enrichmentRequest = new EnrichmentRequest(map, linkedHashMap);
                c05022.L$0 = deviceHelper2;
                c05022.L$1 = null;
                c05022.label = 3;
                objMakeIdentityManager = superwallAPI.mo10685getEnrichmentexY8QGI(enrichmentRequest, i2, j2, c05022);
                if (objMakeIdentityManager != coroutine_suspended) {
                    AnonymousClass2 anonymousClass2 = deviceHelper2.new AnonymousClass2(null);
                    c05022.L$0 = deviceHelper2;
                    c05022.label = 4;
                    objMakeIdentityManager = EitherKt.then((Either) objMakeIdentityManager, anonymousClass2, c05022);
                    if (objMakeIdentityManager != coroutine_suspended) {
                    }
                }
                return coroutine_suspended;
            }
            if (i3 == 3) {
                deviceHelper2 = (DeviceHelper) c05022.L$0;
                ResultKt.throwOnFailure(objMakeIdentityManager);
                AnonymousClass2 anonymousClass3 = deviceHelper2.new AnonymousClass2(null);
                c05022.L$0 = deviceHelper2;
                c05022.label = 4;
                objMakeIdentityManager = EitherKt.then((Either) objMakeIdentityManager, anonymousClass3, c05022);
                if (objMakeIdentityManager != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i3 != 4) {
                if (i3 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objMakeIdentityManager);
                return objMakeIdentityManager;
            }
            deviceHelper2 = (DeviceHelper) c05022.L$0;
            ResultKt.throwOnFailure(objMakeIdentityManager);
        }
        AnonymousClass3 anonymousClass4 = deviceHelper2.new AnonymousClass3(null);
        c05022.L$0 = null;
        c05022.label = 5;
        objThen = EitherKt.then((Either) objMakeIdentityManager, anonymousClass4, c05022);
        if (objThen != coroutine_suspended) {
            return coroutine_suspended;
        }
        return objThen;
        Map<String, Object> userAttributes = ((IdentityManager) objMakeIdentityManager).getUserAttributes();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(userAttributes.size()));
        Iterator<T> it = userAttributes.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            linkedHashMap2.put(entry2.getKey(), ConvertersKt.convertToJsonElement(entry2.getValue()));
        }
        c05022.L$0 = deviceHelper;
        c05022.L$1 = linkedHashMap2;
        c05022.I$0 = i;
        c05022.J$0 = j;
        c05022.label = 2;
        objMakeIdentityManager = deviceHelper.getTemplateDevice(c05022);
        if (objMakeIdentityManager != coroutine_suspended) {
            i2 = i;
            deviceHelper2 = deviceHelper;
            map = linkedHashMap2;
            j2 = j;
            Map map3 = (Map) objMakeIdentityManager;
            linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map3.size()));
            while (r14.hasNext()) {
                linkedHashMap.put(entry.getKey(), ConvertersKt.convertToJsonElement(entry.getValue()));
            }
            SuperwallAPI superwallAPI2 = deviceHelper2.network;
            EnrichmentRequest enrichmentRequest2 = new EnrichmentRequest(map, linkedHashMap);
            c05022.L$0 = deviceHelper2;
            c05022.L$1 = null;
            c05022.label = 3;
            objMakeIdentityManager = superwallAPI2.mo10685getEnrichmentexY8QGI(enrichmentRequest2, i2, j2, c05022);
            if (objMakeIdentityManager != coroutine_suspended) {
                AnonymousClass2 anonymousClass5 = deviceHelper2.new AnonymousClass2(null);
                c05022.L$0 = deviceHelper2;
                c05022.label = 4;
                objMakeIdentityManager = EitherKt.then((Either) objMakeIdentityManager, anonymousClass5, c05022);
                if (objMakeIdentityManager != coroutine_suspended) {
                    AnonymousClass3 anonymousClass6 = deviceHelper2.new AnonymousClass3(null);
                    c05022.L$0 = null;
                    c05022.label = 5;
                    objThen = EitherKt.then((Either) objMakeIdentityManager, anonymousClass6, c05022);
                    if (objThen != coroutine_suspended) {
                        return objThen;
                    }
                }
            }
        }
        return coroutine_suspended;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.device.DeviceHelper$getEnrichment$2, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceHelper.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/models/enrichment/Enrichment;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.device.DeviceHelper$getEnrichment$2", f = "DeviceHelper.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<Enrichment, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = DeviceHelper.this.new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Enrichment enrichment, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(enrichment, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                DeviceHelper.this.lastEnrichment.setValue((Enrichment) this.L$0);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.device.DeviceHelper$getEnrichment$3, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceHelper.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/models/enrichment/Enrichment;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.device.DeviceHelper$getEnrichment$3", f = "DeviceHelper.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<Enrichment, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = DeviceHelper.this.new AnonymousClass3(continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Enrichment enrichment, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(enrichment, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Enrichment enrichment = (Enrichment) this.L$0;
            DeviceHelper.this.getStorage().write(LatestEnrichment.INSTANCE, enrichment);
            PublicIdentityKt.setUserAttributes(Superwall.INSTANCE.getInstance(), MapsKt.toMap(enrichment.getUser()));
            PublicIdentityKt.setUserAttributes(Superwall.INSTANCE.getInstance(), MapsKt.toMap(enrichment.getDevice()));
            return Unit.INSTANCE;
        }
    }
}
