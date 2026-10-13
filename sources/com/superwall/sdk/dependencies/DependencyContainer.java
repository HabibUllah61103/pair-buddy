package com.superwall.sdk.dependencies;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.util.Base64;
import android.webkit.WebSettings;
import androidx.compose.material3.internal.CalendarModelKt;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import com.android.billingclient.api.Purchase;
import com.google.common.net.HttpHeaders;
import com.superwall.sdk.SdkContextImpl;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.AttributionManager;
import com.superwall.sdk.analytics.CPUInfo;
import com.superwall.sdk.analytics.ClassifierDataFactory;
import com.superwall.sdk.analytics.DefaultClassifierDataFactory;
import com.superwall.sdk.analytics.DeviceClassifier;
import com.superwall.sdk.analytics.SessionEventsManager;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.TrackingResult;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.analytics.internal.trackable.Trackable;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import com.superwall.sdk.analytics.session.AppManagerDelegate;
import com.superwall.sdk.analytics.session.AppSession;
import com.superwall.sdk.analytics.session.AppSessionManager;
import com.superwall.sdk.billing.GoogleBillingWrapper;
import com.superwall.sdk.config.Assignments;
import com.superwall.sdk.config.ConfigLogic;
import com.superwall.sdk.config.ConfigManager;
import com.superwall.sdk.config.PaywallPreload;
import com.superwall.sdk.config.models.ConfigState;
import com.superwall.sdk.config.options.SuperwallOptions;
import com.superwall.sdk.customer.CustomerInfoManager;
import com.superwall.sdk.debug.DebugManager;
import com.superwall.sdk.debug.DebugView;
import com.superwall.sdk.deeplinks.DeepLinkRouter;
import com.superwall.sdk.delegate.SuperwallDelegateAdapter;
import com.superwall.sdk.delegate.subscription_controller.PurchaseController;
import com.superwall.sdk.identity.IdentityInfo;
import com.superwall.sdk.identity.IdentityManager;
import com.superwall.sdk.identity.IdentityManagerActorKt;
import com.superwall.sdk.identity.IdentityPendingInterceptor;
import com.superwall.sdk.identity.IdentityPersistenceInterceptor;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.ActivityProvider;
import com.superwall.sdk.misc.AlertControllerFactory;
import com.superwall.sdk.misc.AppLifecycleObserver;
import com.superwall.sdk.misc.CurrentActivityTracker;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.misc.MainScope;
import com.superwall.sdk.misc.primitives.SequentialActor;
import com.superwall.sdk.models.attribution.AttributionProvider;
import com.superwall.sdk.models.config.ComputedPropertyRequest;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.config.FeatureFlags;
import com.superwall.sdk.models.config.WebToAppConfig;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.internal.DeviceVendorId;
import com.superwall.sdk.models.internal.RedemptionResult;
import com.superwall.sdk.models.internal.UserId;
import com.superwall.sdk.models.internal.VendorId;
import com.superwall.sdk.models.paywall.LocalNotification;
import com.superwall.sdk.models.paywall.LocalNotificationType;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.product.ProductVariable;
import com.superwall.sdk.models.serialization.DateSerializer;
import com.superwall.sdk.network.Api;
import com.superwall.sdk.network.BaseHostService;
import com.superwall.sdk.network.CollectorService;
import com.superwall.sdk.network.EnrichmentService;
import com.superwall.sdk.network.JsonFactory;
import com.superwall.sdk.network.Network;
import com.superwall.sdk.network.NetworkError;
import com.superwall.sdk.network.RequestExecutor;
import com.superwall.sdk.network.SubscriptionService;
import com.superwall.sdk.network.device.DeviceHelper;
import com.superwall.sdk.network.device.DeviceInfo;
import com.superwall.sdk.network.session.CustomHttpUrlConnection;
import com.superwall.sdk.paywall.manager.PaywallManager;
import com.superwall.sdk.paywall.manager.PaywallViewCache;
import com.superwall.sdk.paywall.presentation.CustomCallbackRegistry;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.presentation.PublicPresentationKt;
import com.superwall.sdk.paywall.presentation.get_presentation_result.PublicGetPresentationResultKt;
import com.superwall.sdk.paywall.presentation.internal.DefaultGetPaywallComponentsFactory;
import com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory;
import com.superwall.sdk.paywall.presentation.internal.InternalPresentationKt;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequestType;
import com.superwall.sdk.paywall.presentation.internal.operators.StorePresentationObjectsKt;
import com.superwall.sdk.paywall.presentation.internal.request.PaywallOverrides;
import com.superwall.sdk.paywall.presentation.internal.request.PresentationInfo;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallResult;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import com.superwall.sdk.paywall.presentation.rule_logic.cel.SuperscriptEvaluator;
import com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.CombinedExpressionEvaluator;
import com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating;
import com.superwall.sdk.paywall.presentation.rule_logic.javascript.RuleEvaluator;
import com.superwall.sdk.paywall.request.PaywallRequest;
import com.superwall.sdk.paywall.request.PaywallRequestManager;
import com.superwall.sdk.paywall.request.PaywallRequestManagerDepFactory;
import com.superwall.sdk.paywall.request.ResponseIdentifiers;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.PaywallViewState;
import com.superwall.sdk.paywall.view.SuperwallPaywallActivity;
import com.superwall.sdk.paywall.view.SuperwallStoreOwner;
import com.superwall.sdk.paywall.view.ViewModelFactory;
import com.superwall.sdk.paywall.view.ViewStorageViewModel;
import com.superwall.sdk.paywall.view.delegate.PaywallViewDelegateAdapter;
import com.superwall.sdk.paywall.view.webview.WebviewChecker;
import com.superwall.sdk.paywall.view.webview.messaging.PaywallMessage;
import com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler;
import com.superwall.sdk.paywall.view.webview.templating.models.JsonVariables;
import com.superwall.sdk.paywall.view.webview.templating.models.Variables;
import com.superwall.sdk.permissions.UserPermissions;
import com.superwall.sdk.permissions.UserPermissionsImpl;
import com.superwall.sdk.review.MockReviewManager;
import com.superwall.sdk.review.ReviewManager;
import com.superwall.sdk.review.ReviewManagerImpl;
import com.superwall.sdk.storage.EventsQueue;
import com.superwall.sdk.storage.IntegrationAttributes;
import com.superwall.sdk.storage.LocalStorage;
import com.superwall.sdk.store.AutomaticPurchaseController;
import com.superwall.sdk.store.Entitlements;
import com.superwall.sdk.store.InternalPurchaseController;
import com.superwall.sdk.store.StoreManager;
import com.superwall.sdk.store.abstractions.product.receipt.ReceiptManager;
import com.superwall.sdk.store.abstractions.transactions.GoogleBillingPurchaseTransaction;
import com.superwall.sdk.store.abstractions.transactions.StoreTransaction;
import com.superwall.sdk.store.testmode.TestMode;
import com.superwall.sdk.store.testmode.TestModeTransactionHandler;
import com.superwall.sdk.store.testmode.models.SuperwallProductsResponse;
import com.superwall.sdk.store.transactions.TransactionManager;
import com.superwall.sdk.utilities.DateUtils;
import com.superwall.sdk.utilities.DateUtilsKt;
import com.superwall.sdk.utilities.ErrorTracker;
import com.superwall.sdk.web.DeepLinkReferrer;
import com.superwall.sdk.web.WebPaywallRedeemer;
import java.lang.ref.WeakReference;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Charsets;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.serialization.json.ClassDiscriminatorMode;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import kotlinx.serialization.modules.SerializersModuleBuilder;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* JADX INFO: compiled from: DependencyContainer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¸\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\f2\u00020\r2\u00020\u000e2\u00020\u000f2\u00020\u00102\u00020\u00112\u00020\u00122\u00020\u00132\u00020\u00142\u00020\u00152\u00020\u00162\u00020\u00172\u00020\u00182\u00020\u00192\u00020\u001a2\u00020\u001b2\u00020\u001c2\u00020\u001d2\u00020\u001e2\u00020\u001f2\u00020 2\u00020!2\u00020\"B7\u0012\u0006\u0010#\u001a\u00020$\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&\u0012\b\u0010'\u001a\u0004\u0018\u00010(\u0012\b\u0010)\u001a\u0004\u0018\u00010*\u0012\u0006\u0010+\u001a\u00020,¢\u0006\u0004\b-\u0010.J0\u0010ä\u0001\u001a\u000f\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020,0å\u00012\b\u0010æ\u0001\u001a\u00030ç\u00012\u0007\u0010è\u0001\u001a\u00020,H\u0096@¢\u0006\u0003\u0010é\u0001J3\u0010ì\u0001\u001a\u00030í\u00012\b\u0010î\u0001\u001a\u00030ï\u00012\n\u0010ð\u0001\u001a\u0005\u0018\u00010ñ\u00012\n\u0010ò\u0001\u001a\u0005\u0018\u00010ó\u0001H\u0096@¢\u0006\u0003\u0010ô\u0001J\u0015\u0010õ\u0001\u001a\u00030ö\u00012\t\u0010÷\u0001\u001a\u0004\u0018\u00010,H\u0016J\n\u0010ø\u0001\u001a\u00030ñ\u0001H\u0016J\u000b\u0010ù\u0001\u001a\u0004\u0018\u00010,H\u0016J\n\u0010ú\u0001\u001a\u00030û\u0001H\u0016J\n\u0010ü\u0001\u001a\u00030ý\u0001H\u0016J\n\u0010þ\u0001\u001a\u00030ç\u0001H\u0016J0\u0010ÿ\u0001\u001a\"\u0012\u0004\u0012\u00020,\u0012\u0005\u0012\u00030\u0081\u00020\u0080\u0002j\u0010\u0012\u0004\u0012\u00020,\u0012\u0005\u0012\u00030\u0081\u0002`\u0082\u0002H\u0096@¢\u0006\u0003\u0010\u0083\u0002J\n\u0010\u0084\u0002\u001a\u00030\u0085\u0002H\u0016J\n\u0010\u0086\u0002\u001a\u00030ç\u0001H\u0016J\n\u0010\u0087\u0002\u001a\u00030ç\u0001H\u0016J\n\u0010\u0088\u0002\u001a\u00030ç\u0001H\u0016J\t\u0010\u0089\u0002\u001a\u00020,H\u0016J\u001b\u0010\u008a\u0002\u001a\u00030\u008b\u00022\b\u0010\u008c\u0002\u001a\u00030\u008d\u0002H\u0096@¢\u0006\u0003\u0010\u008e\u0002JA\u0010\u008f\u0002\u001a\u00030\u0090\u00022\n\u0010\u0091\u0002\u001a\u0005\u0018\u00010\u0092\u00022\b\u0010\u0093\u0002\u001a\u00030\u0094\u00022\n\u0010\u0095\u0002\u001a\u0005\u0018\u00010\u0096\u00022\b\u0010\u0097\u0002\u001a\u00030ç\u00012\t\u0010\u0098\u0002\u001a\u0004\u0018\u00010,H\u0016Jg\u0010\u0099\u0002\u001a\u00030\u009a\u00022\b\u0010\u009b\u0002\u001a\u00030\u009c\u00022\n\u0010\u009d\u0002\u001a\u0005\u0018\u00010\u009e\u00022\n\u0010\u009f\u0002\u001a\u0005\u0018\u00010 \u00022\n\u0010\u0097\u0002\u001a\u0005\u0018\u00010ç\u00012\u0013\u0010¡\u0002\u001a\u000e\u0012\u0007\u0012\u0005\u0018\u00010£\u0002\u0018\u00010¢\u00022\b\u0010¤\u0002\u001a\u00030ç\u00012\b\u0010¥\u0002\u001a\u00030¦\u0002H\u0016¢\u0006\u0003\u0010§\u0002J!\u0010¨\u0002\u001a\u0005\u0018\u00010ï\u00012\t\u0010©\u0002\u001a\u0004\u0018\u00010,2\b\u0010\u0097\u0002\u001a\u00030ç\u0001H\u0016J;\u0010ª\u0002\u001a\u0010\u0012\u0004\u0012\u00020,\u0012\u0005\u0012\u00030\u0081\u00020å\u00012\n\u0010«\u0002\u001a\u0005\u0018\u00010\u0092\u00022\u000f\u0010¬\u0002\u001a\n\u0012\u0005\u0012\u00030®\u00020\u00ad\u0002H\u0096@¢\u0006\u0003\u0010¯\u0002J\f\u0010°\u0002\u001a\u0005\u0018\u00010±\u0002H\u0016J\u0011\u0010²\u0002\u001a\n\u0012\u0005\u0012\u00030®\u00020\u00ad\u0002H\u0016J\u0011\u0010³\u0002\u001a\u00030´\u0002H\u0096@¢\u0006\u0003\u0010\u0083\u0002J\u000b\u0010µ\u0002\u001a\u0004\u0018\u00010,H\u0016JA\u0010¶\u0002\u001a\u00030·\u00022\u0011\u0010¸\u0002\u001a\f\u0012\u0005\u0012\u00030¹\u0002\u0018\u00010\u00ad\u00022\u000f\u0010¬\u0002\u001a\n\u0012\u0005\u0012\u00030®\u00020\u00ad\u00022\n\u0010«\u0002\u001a\u0005\u0018\u00010\u0092\u0002H\u0096@¢\u0006\u0003\u0010º\u0002J\u001b\u0010»\u0002\u001a\u00030¼\u00022\b\u0010½\u0002\u001a\u00030¾\u0002H\u0096@¢\u0006\u0003\u0010¿\u0002J\u0017\u0010À\u0002\u001a\t\u0012\u0004\u0012\u00020,0\u00ad\u0002H\u0096@¢\u0006\u0003\u0010\u0083\u0002J\u0010\u0010Á\u0002\u001a\u00020\\H\u0096@¢\u0006\u0003\u0010\u0083\u0002J\n\u0010Â\u0002\u001a\u00030\u009c\u0001H\u0016J\t\u0010Ã\u0002\u001a\u00020(H\u0016J\u0017\u0010Ä\u0002\u001a\t\u0012\u0004\u0012\u00020,0Å\u0002H\u0096@¢\u0006\u0003\u0010\u0083\u0002J\u0019\u0010Æ\u0002\u001a\u00030Ç\u00022\u0006\u0010#\u001a\u00020$H\u0096@¢\u0006\u0003\u0010È\u0002J\n\u0010É\u0002\u001a\u00030Ê\u0002H\u0016J\n\u0010Õ\u0002\u001a\u00030Ö\u0002H\u0016J\n\u0010Ù\u0002\u001a\u00030Æ\u0001H\u0016J\n\u0010É\u0001\u001a\u00030Ê\u0001H\u0016J\n\u0010Ú\u0002\u001a\u00030\u008b\u0002H\u0002J\u0013\u0010Û\u0002\u001a\u00030\u008b\u00022\u0007\u0010Ü\u0002\u001a\u00020,H\u0002J\b\u0010#\u001a\u00020$H\u0016J\u0017\u0010Ý\u0002\u001a\u0010\u0012\u0004\u0012\u00020,\u0012\u0005\u0012\u00030\u0081\u00020å\u0001H\u0016J\u0017\u0010Þ\u0002\u001a\u0010\u0012\u0004\u0012\u00020,\u0012\u0005\u0012\u00030\u0081\u00020å\u0001H\u0016J\u000b\u0010ß\u0002\u001a\u0004\u0018\u00010,H\u0016J\u0012\u0010à\u0002\u001a\u0005\u0018\u00010á\u0002H\u0016¢\u0006\u0003\u0010â\u0002J%\u0010ã\u0002\u001a\n\u0012\u0005\u0012\u00030å\u00020ä\u00022\b\u0010«\u0002\u001a\u00030æ\u0002H\u0096@¢\u0006\u0006\bç\u0002\u0010è\u0002J\t\u0010ò\u0001\u001a\u00020tH\u0016J\u0011\u0010é\u0002\u001a\n\u0012\u0005\u0012\u00030û\u00010¢\u0002H\u0016J\u0011\u0010ê\u0002\u001a\n\u0012\u0005\u0012\u00030ë\u00020Å\u0002H\u0016J\u0014\u0010ì\u0002\u001a\u00030\u008b\u00022\b\u0010í\u0002\u001a\u00030î\u0002H\u0016J.\u0010ï\u0002\u001a\u00030\u008b\u00022\n\u0010ð\u0002\u001a\u0005\u0018\u00010\u009a\u00022\u000f\u0010ñ\u0002\u001a\n\u0012\u0005\u0012\u00030ó\u00020ò\u0002H\u0096@¢\u0006\u0003\u0010ô\u0002J%\u0010õ\u0002\u001a\u00030\u008b\u00022\b\u0010«\u0002\u001a\u00030ö\u00022\b\u0010÷\u0002\u001a\u00030ç\u0001H\u0096@¢\u0006\u0003\u0010ø\u0002J\n\u0010ù\u0002\u001a\u00030\u008b\u0002H\u0016J\u0014\u0010ú\u0002\u001a\u00030\u008b\u00022\b\u0010û\u0002\u001a\u00030ü\u0002H\u0016J\n\u0010ý\u0002\u001a\u00030þ\u0002H\u0016J\u0011\u0010ÿ\u0002\u001a\n\u0012\u0005\u0012\u00030ë\u00020Å\u0002H\u0016J\u0014\u0010\u0080\u0003\u001a\u0005\u0018\u00010\u0081\u0003H\u0016¢\u0006\u0005\b\u0082\u0003\u00106J\n\u0010\u0083\u0003\u001a\u00030\u0084\u0003H\u0016J\u000b\u0010\u0085\u0003\u001a\u0004\u0018\u00010,H\u0016J\u001b\u0010ã\u0002\u001a\u00030\u008b\u00022\b\u0010«\u0002\u001a\u00030ö\u0002H\u0096@¢\u0006\u0003\u0010\u0086\u0003J\u0014\u0010\u0087\u0003\u001a\u00030\u008b\u00022\b\u0010\u0088\u0003\u001a\u00030£\u0002H\u0016J\u0011\u0010\u0089\u0003\u001a\u00030ç\u0001H\u0096@¢\u0006\u0003\u0010\u0083\u0002J\u0011\u0010\u008a\u0003\u001a\u00030\u008b\u0002H\u0096@¢\u0006\u0003\u0010\u0083\u0002J\u0011\u0010\u008b\u0003\u001a\n\u0012\u0005\u0012\u00030ë\u00020Å\u0002H\u0016J\n\u0010\u008c\u0003\u001a\u00030î\u0002H\u0016J\u0013\u0010\u008d\u0003\u001a\u00030\u008b\u00022\u0007\u0010Ü\u0002\u001a\u00020,H\u0016J\u0018\u0010\u008e\u0003\u001a\n\u0012\u0005\u0012\u00030\u008f\u00030\u00ad\u0002H\u0096@¢\u0006\u0003\u0010\u0083\u0002J\t\u0010\u0090\u0003\u001a\u00020,H\u0016J\u0017\u0010\u0091\u0003\u001a\u0010\u0012\u0004\u0012\u00020,\u0012\u0005\u0012\u00030\u0081\u00020å\u0001H\u0016J\n\u0010\u0092\u0003\u001a\u00030\u008b\u0002H\u0016J\n\u0010\u0093\u0003\u001a\u00030ç\u0001H\u0016R\u0011\u0010#\u001a\u00020$¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u001c\u0010)\u001a\u0004\u0018\u00010*X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u0011\u0010+\u001a\u00020,¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u001b\u00107\u001a\u0002088@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b9\u0010:R\u001a\u0010=\u001a\u00020>X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u001a\u0010C\u001a\u00020DX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\u001a\u0010I\u001a\u00020JX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR\u001a\u0010O\u001a\u00020PX\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u001a\u0010U\u001a\u00020VX\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u001a\u0010[\u001a\u00020\\X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\u001a\u0010a\u001a\u00020bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bc\u0010d\"\u0004\be\u0010fR\u001a\u0010g\u001a\u00020hX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR\u001a\u0010m\u001a\u00020nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bo\u0010p\"\u0004\bq\u0010rR\u001a\u0010s\u001a\u00020tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bu\u0010v\"\u0004\bw\u0010xR\u001a\u0010y\u001a\u00020zX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b{\u0010|\"\u0004\b}\u0010~R\u001f\u0010\u007f\u001a\u00030\u0080\u0001X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001R \u0010\u0085\u0001\u001a\u00030\u0086\u0001X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001\"\u0006\b\u0089\u0001\u0010\u008a\u0001R \u0010\u008b\u0001\u001a\u00030\u008c\u0001X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001\"\u0006\b\u008f\u0001\u0010\u0090\u0001R \u0010\u0091\u0001\u001a\u00030\u0092\u0001X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001\"\u0006\b\u0095\u0001\u0010\u0096\u0001R\u0015\u0010\u0097\u0001\u001a\u00030\u0098\u0001¢\u0006\n\n\u0000\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001R\u0015\u0010\u009b\u0001\u001a\u00030\u009c\u0001¢\u0006\n\n\u0000\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001R\u0018\u0010\u009f\u0001\u001a\u00030 \u0001X\u0080\u0004¢\u0006\n\n\u0000\u001a\u0006\b¡\u0001\u0010¢\u0001R\u0018\u0010£\u0001\u001a\u00030¤\u0001X\u0080\u0004¢\u0006\n\n\u0000\u001a\u0006\b¥\u0001\u0010¦\u0001R\u0018\u0010§\u0001\u001a\u00030¨\u0001X\u0080\u0004¢\u0006\n\n\u0000\u001a\u0006\b©\u0001\u0010ª\u0001R \u0010«\u0001\u001a\u00030¬\u0001X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u00ad\u0001\u0010®\u0001\"\u0006\b¯\u0001\u0010°\u0001R\u0018\u0010±\u0001\u001a\u00030²\u0001X\u0080\u0004¢\u0006\n\n\u0000\u001a\u0006\b³\u0001\u0010´\u0001R\u0018\u0010µ\u0001\u001a\u00030¶\u0001X\u0080\u0004¢\u0006\n\n\u0000\u001a\u0006\b·\u0001\u0010¸\u0001R \u0010¹\u0001\u001a\u00030º\u0001X\u0080.¢\u0006\u0012\n\u0000\u001a\u0006\b»\u0001\u0010¼\u0001\"\u0006\b½\u0001\u0010¾\u0001R \u0010¿\u0001\u001a\u00030À\u0001X\u0086.¢\u0006\u0012\n\u0000\u001a\u0006\bÁ\u0001\u0010Â\u0001\"\u0006\bÃ\u0001\u0010Ä\u0001R\u0018\u0010Å\u0001\u001a\u00030Æ\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\bÇ\u0001\u0010È\u0001R\u0018\u0010É\u0001\u001a\u00030Ê\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\bË\u0001\u0010Ì\u0001R \u0010Í\u0001\u001a\u00030Î\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bÑ\u0001\u0010<\u001a\u0006\bÏ\u0001\u0010Ð\u0001R\u0018\u0010Ò\u0001\u001a\u00030Ó\u0001X\u0080\u0004¢\u0006\n\n\u0000\u001a\u0006\bÔ\u0001\u0010Õ\u0001R\u0010\u0010Ö\u0001\u001a\u00030×\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010Ø\u0001\u001a\u00030Ù\u0001X\u0080\u0004¢\u0006\n\n\u0000\u001a\u0006\bÚ\u0001\u0010Û\u0001R\u0018\u0010Ü\u0001\u001a\u00030Ý\u0001X\u0080\u0004¢\u0006\n\n\u0000\u001a\u0006\bÞ\u0001\u0010ß\u0001R\u0018\u0010à\u0001\u001a\u00030á\u0001X\u0080\u0004¢\u0006\n\n\u0000\u001a\u0006\bâ\u0001\u0010ã\u0001R\u0010\u0010ê\u0001\u001a\u00030ë\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010Ë\u0002\u001a\u00030Ì\u00028BX\u0082\u0004¢\u0006\b\u001a\u0006\bÍ\u0002\u0010Î\u0002R\u0018\u0010Ï\u0002\u001a\u00030Ð\u00028BX\u0082\u0004¢\u0006\b\u001a\u0006\bÑ\u0002\u0010Ò\u0002R\u0010\u0010Ó\u0002\u001a\u00030Ô\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010×\u0002\u001a\u0005\u0018\u00010Æ\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010Ø\u0002\u001a\u0005\u0018\u00010Ê\u0001X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0094\u0003"}, d2 = {"Lcom/superwall/sdk/dependencies/DependencyContainer;", "Lcom/superwall/sdk/dependencies/ApiFactory;", "Lcom/superwall/sdk/dependencies/DeviceInfoFactory;", "Lcom/superwall/sdk/analytics/session/AppManagerDelegate;", "Lcom/superwall/sdk/dependencies/RequestFactory;", "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;", "Lcom/superwall/sdk/network/device/DeviceHelper$Factory;", "Lcom/superwall/sdk/dependencies/CacheFactory;", "Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;", "Lcom/superwall/sdk/dependencies/VariablesFactory;", "Lcom/superwall/sdk/dependencies/StoreTransactionFactory;", "Lcom/superwall/sdk/storage/LocalStorage$Factory;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest$Factory;", "Lcom/superwall/sdk/dependencies/ViewFactory;", "Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;", "Lcom/superwall/sdk/dependencies/OptionsFactory;", "Lcom/superwall/sdk/dependencies/TriggerFactory;", "Lcom/superwall/sdk/dependencies/TransactionVerifierFactory;", "Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;", "Lcom/superwall/sdk/paywall/view/PaywallView$Factory;", "Lcom/superwall/sdk/config/ConfigManager$Factory;", "Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;", "Lcom/superwall/sdk/debug/DebugView$Factory;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/javascript/RuleEvaluator$Factory;", "Lcom/superwall/sdk/network/JsonFactory;", "Lcom/superwall/sdk/dependencies/ConfigAttributesFactory;", "Lcom/superwall/sdk/config/PaywallPreload$Factory;", "Lcom/superwall/sdk/dependencies/ViewStoreFactory;", "Lcom/superwall/sdk/dependencies/SuperwallScopeFactory;", "Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;", "Lcom/superwall/sdk/analytics/ClassifierDataFactory;", "Lcom/superwall/sdk/dependencies/ExperimentalPropertiesFactory;", "Lcom/superwall/sdk/dependencies/CustomerInfoFactory;", "Lcom/superwall/sdk/dependencies/ActiveEntitlementsFactory;", "Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;", "context", "Landroid/content/Context;", "purchaseController", "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;", "options", "Lcom/superwall/sdk/config/options/SuperwallOptions;", "activityProvider", "Lcom/superwall/sdk/misc/ActivityProvider;", "apiKey", "", "<init>", "(Landroid/content/Context;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Ljava/lang/String;)V", "getContext", "()Landroid/content/Context;", "getActivityProvider", "()Lcom/superwall/sdk/misc/ActivityProvider;", "setActivityProvider", "(Lcom/superwall/sdk/misc/ActivityProvider;)V", "getApiKey", "()Ljava/lang/String;", "getPaywallComponentsFactory", "Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;", "getGetPaywallComponentsFactory$superwall_release", "()Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;", "getPaywallComponentsFactory$delegate", "Lkotlin/Lazy;", "network", "Lcom/superwall/sdk/network/Network;", "getNetwork", "()Lcom/superwall/sdk/network/Network;", "setNetwork", "(Lcom/superwall/sdk/network/Network;)V", "api", "Lcom/superwall/sdk/network/Api;", "getApi", "()Lcom/superwall/sdk/network/Api;", "setApi", "(Lcom/superwall/sdk/network/Api;)V", "deviceHelper", "Lcom/superwall/sdk/network/device/DeviceHelper;", "getDeviceHelper", "()Lcom/superwall/sdk/network/device/DeviceHelper;", "setDeviceHelper", "(Lcom/superwall/sdk/network/device/DeviceHelper;)V", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "getStorage", "()Lcom/superwall/sdk/storage/LocalStorage;", "setStorage", "(Lcom/superwall/sdk/storage/LocalStorage;)V", "configManager", "Lcom/superwall/sdk/config/ConfigManager;", "getConfigManager", "()Lcom/superwall/sdk/config/ConfigManager;", "setConfigManager", "(Lcom/superwall/sdk/config/ConfigManager;)V", "identityManager", "Lcom/superwall/sdk/identity/IdentityManager;", "getIdentityManager", "()Lcom/superwall/sdk/identity/IdentityManager;", "setIdentityManager", "(Lcom/superwall/sdk/identity/IdentityManager;)V", "appLifecycleObserver", "Lcom/superwall/sdk/misc/AppLifecycleObserver;", "getAppLifecycleObserver", "()Lcom/superwall/sdk/misc/AppLifecycleObserver;", "setAppLifecycleObserver", "(Lcom/superwall/sdk/misc/AppLifecycleObserver;)V", "appSessionManager", "Lcom/superwall/sdk/analytics/session/AppSessionManager;", "getAppSessionManager", "()Lcom/superwall/sdk/analytics/session/AppSessionManager;", "setAppSessionManager", "(Lcom/superwall/sdk/analytics/session/AppSessionManager;)V", "sessionEventsManager", "Lcom/superwall/sdk/analytics/SessionEventsManager;", "getSessionEventsManager", "()Lcom/superwall/sdk/analytics/SessionEventsManager;", "setSessionEventsManager", "(Lcom/superwall/sdk/analytics/SessionEventsManager;)V", "delegateAdapter", "Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;", "getDelegateAdapter", "()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;", "setDelegateAdapter", "(Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;)V", "eventsQueue", "Lcom/superwall/sdk/storage/EventsQueue;", "getEventsQueue", "()Lcom/superwall/sdk/storage/EventsQueue;", "setEventsQueue", "(Lcom/superwall/sdk/storage/EventsQueue;)V", "debugManager", "Lcom/superwall/sdk/debug/DebugManager;", "getDebugManager", "()Lcom/superwall/sdk/debug/DebugManager;", "setDebugManager", "(Lcom/superwall/sdk/debug/DebugManager;)V", "paywallManager", "Lcom/superwall/sdk/paywall/manager/PaywallManager;", "getPaywallManager", "()Lcom/superwall/sdk/paywall/manager/PaywallManager;", "setPaywallManager", "(Lcom/superwall/sdk/paywall/manager/PaywallManager;)V", "paywallRequestManager", "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;", "getPaywallRequestManager", "()Lcom/superwall/sdk/paywall/request/PaywallRequestManager;", "setPaywallRequestManager", "(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)V", "storeManager", "Lcom/superwall/sdk/store/StoreManager;", "getStoreManager", "()Lcom/superwall/sdk/store/StoreManager;", "setStoreManager", "(Lcom/superwall/sdk/store/StoreManager;)V", "transactionManager", "Lcom/superwall/sdk/store/transactions/TransactionManager;", "getTransactionManager", "()Lcom/superwall/sdk/store/transactions/TransactionManager;", "googleBillingWrapper", "Lcom/superwall/sdk/billing/GoogleBillingWrapper;", "getGoogleBillingWrapper", "()Lcom/superwall/sdk/billing/GoogleBillingWrapper;", "reviewManager", "Lcom/superwall/sdk/review/ReviewManager;", "getReviewManager$superwall_release", "()Lcom/superwall/sdk/review/ReviewManager;", "userPermissions", "Lcom/superwall/sdk/permissions/UserPermissions;", "getUserPermissions$superwall_release", "()Lcom/superwall/sdk/permissions/UserPermissions;", "customCallbackRegistry", "Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;", "getCustomCallbackRegistry$superwall_release", "()Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;", "entitlements", "Lcom/superwall/sdk/store/Entitlements;", "getEntitlements", "()Lcom/superwall/sdk/store/Entitlements;", "setEntitlements", "(Lcom/superwall/sdk/store/Entitlements;)V", "testMode", "Lcom/superwall/sdk/store/testmode/TestMode;", "getTestMode$superwall_release", "()Lcom/superwall/sdk/store/testmode/TestMode;", "testModeTransactionHandler", "Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;", "getTestModeTransactionHandler$superwall_release", "()Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;", "customerInfoManager", "Lcom/superwall/sdk/customer/CustomerInfoManager;", "getCustomerInfoManager$superwall_release", "()Lcom/superwall/sdk/customer/CustomerInfoManager;", "setCustomerInfoManager$superwall_release", "(Lcom/superwall/sdk/customer/CustomerInfoManager;)V", "reedemer", "Lcom/superwall/sdk/web/WebPaywallRedeemer;", "getReedemer", "()Lcom/superwall/sdk/web/WebPaywallRedeemer;", "setReedemer", "(Lcom/superwall/sdk/web/WebPaywallRedeemer;)V", "uiScope", "Lcom/superwall/sdk/misc/MainScope;", "getUiScope", "()Lcom/superwall/sdk/misc/MainScope;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "getIoScope", "()Lcom/superwall/sdk/misc/IOScope;", "evaluator", "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/CombinedExpressionEvaluator;", "getEvaluator", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/CombinedExpressionEvaluator;", "evaluator$delegate", "assignments", "Lcom/superwall/sdk/config/Assignments;", "getAssignments$superwall_release", "()Lcom/superwall/sdk/config/Assignments;", "paywallPreload", "Lcom/superwall/sdk/config/PaywallPreload;", "errorTracker", "Lcom/superwall/sdk/utilities/ErrorTracker;", "getErrorTracker$superwall_release", "()Lcom/superwall/sdk/utilities/ErrorTracker;", "deepLinkRouter", "Lcom/superwall/sdk/deeplinks/DeepLinkRouter;", "getDeepLinkRouter$superwall_release", "()Lcom/superwall/sdk/deeplinks/DeepLinkRouter;", "attributionManager", "Lcom/superwall/sdk/analytics/AttributionManager;", "getAttributionManager$superwall_release", "()Lcom/superwall/sdk/analytics/AttributionManager;", "makeHeaders", "", "isForDebugging", "", "requestId", "(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "paywallJson", "Lkotlinx/serialization/json/Json;", "makePaywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "paywall", "Lcom/superwall/sdk/models/paywall/Paywall;", "cache", "Lcom/superwall/sdk/paywall/manager/PaywallViewCache;", "delegate", "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;", "(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "makeDebugView", "Lcom/superwall/sdk/debug/DebugView;", "id", "makeCache", "activePaywallId", "currentCustomerInfo", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "makeDeviceInfo", "Lcom/superwall/sdk/network/device/DeviceInfo;", "makeIsSandbox", "makeSessionDeviceAttributes", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "makeUserAttributesEvent", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;", "makeHasExternalPurchaseController", "makeHasInternalPurchaseController", "isWebToAppEnabled", "restoreUrl", "didUpdateAppSession", "", "appSession", "Lcom/superwall/sdk/analytics/session/AppSession;", "(Lcom/superwall/sdk/analytics/session/AppSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "makePaywallRequest", "Lcom/superwall/sdk/paywall/request/PaywallRequest;", "eventData", "Lcom/superwall/sdk/models/events/EventData;", "responseIdentifiers", "Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;", "overrides", "Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;", "isDebuggerLaunched", "presentationSourceType", "makePresentationRequest", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "presentationInfo", "Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;", "paywallOverrides", "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;", "presenter", "Landroid/app/Activity;", "subscriptionStatus", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "isPaywallPresented", "type", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;", "(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Landroid/app/Activity;Ljava/lang/Boolean;Lkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "makeStaticPaywall", "paywallId", "makeRuleAttributes", NotificationCompat.CATEGORY_EVENT, "computedPropertyRequests", "", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;", "(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "makeFeatureFlags", "Lcom/superwall/sdk/models/config/FeatureFlags;", "makeComputedPropertyRequests", "makeIdentityInfo", "Lcom/superwall/sdk/identity/IdentityInfo;", "makeLocaleIdentifier", "makeJsonVariables", "Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;", "products", "Lcom/superwall/sdk/models/product/ProductVariable;", "(Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "makeStoreTransaction", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;", "transaction", "Lcom/android/billingclient/api/Purchase;", "(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "activeProductIds", "makeIdentityManager", "makeTransactionVerifier", "makeSuperwallOptions", "makeTriggers", "", "provideRuleEvaluator", "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "makeConfigAttributes", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfigAttributes;", "storeOwner", "Lcom/superwall/sdk/paywall/view/SuperwallStoreOwner;", "getStoreOwner", "()Lcom/superwall/sdk/paywall/view/SuperwallStoreOwner;", "vmFactory", "Lcom/superwall/sdk/paywall/view/ViewModelFactory;", "getVmFactory", "()Lcom/superwall/sdk/paywall/view/ViewModelFactory;", "vmProvider", "Landroidx/lifecycle/ViewModelProvider;", "makeViewStore", "Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;", "_mainScope", "_ioScope", "mainScope", "showWebRestoreSuccesful", "trackRestorationFailure", "message", "experimentalProperties", "getCurrentUserAttributes", "demandTier", "demandScore", "", "()Ljava/lang/Integer;", "track", "Lkotlin/Result;", "Lcom/superwall/sdk/analytics/internal/TrackingResult;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "track-gIAlu-s", "(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "customerInfoFlow", "activeEntitlements", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "updatePaywallInfo", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "storePresentationObject", "request", "publisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "internallyGetPresentationResult", "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;", "isImplicit", "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "willRedeemLink", "didRedeemLink", "redemptionResult", "Lcom/superwall/sdk/models/internal/RedemptionResult;", "maxAge", "", "getActiveDeviceEntitlements", "getUserId", "Lcom/superwall/sdk/models/internal/UserId;", "getUserId-P5Wmf0A", "getDeviceId", "Lcom/superwall/sdk/models/internal/DeviceVendorId;", "getAliasId", "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "internallySetSubscriptionStatus", "status", "isPaywallVisible", "triggerRestoreInPaywall", "currentPaywallEntitlements", "getPaywallInfo", "trackRestorationFailed", "receipts", "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;", "getExternalAccountId", "getIntegrationProps", "closePaywallIfExists", "isPaymentSheetOpen", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DependencyContainer implements ApiFactory, DeviceInfoFactory, AppManagerDelegate, RequestFactory, RuleAttributesFactory, DeviceHelper.Factory, CacheFactory, PaywallRequestManagerDepFactory, VariablesFactory, StoreTransactionFactory, LocalStorage.Factory, InternalSuperwallEvent.PresentationRequest.Factory, ViewFactory, PaywallManager.Factory, OptionsFactory, TriggerFactory, TransactionVerifierFactory, TransactionManager.Factory, PaywallView.Factory, ConfigManager.Factory, AppSessionManager.Factory, DebugView.Factory, RuleEvaluator.Factory, JsonFactory, ConfigAttributesFactory, PaywallPreload.Factory, ViewStoreFactory, SuperwallScopeFactory, GoogleBillingWrapper.Factory, ClassifierDataFactory, ExperimentalPropertiesFactory, CustomerInfoFactory, ActiveEntitlementsFactory, WebPaywallRedeemer.Factory {
    private IOScope _ioScope;
    private MainScope _mainScope;
    private ActivityProvider activityProvider;
    private Api api;
    private final String apiKey;
    private AppLifecycleObserver appLifecycleObserver;
    private AppSessionManager appSessionManager;
    private final Assignments assignments;
    private final AttributionManager attributionManager;
    public ConfigManager configManager;
    private final Context context;
    private final CustomCallbackRegistry customCallbackRegistry;
    public CustomerInfoManager customerInfoManager;
    private DebugManager debugManager;
    private final DeepLinkRouter deepLinkRouter;
    private SuperwallDelegateAdapter delegateAdapter;
    private DeviceHelper deviceHelper;
    private Entitlements entitlements;
    private final ErrorTracker errorTracker;

    /* JADX INFO: renamed from: evaluator$delegate, reason: from kotlin metadata */
    private final Lazy evaluator;
    private EventsQueue eventsQueue;

    /* JADX INFO: renamed from: getPaywallComponentsFactory$delegate, reason: from kotlin metadata */
    private final Lazy getPaywallComponentsFactory;
    private final GoogleBillingWrapper googleBillingWrapper;
    private IdentityManager identityManager;
    private Network network;
    private final Json paywallJson;
    private PaywallManager paywallManager;
    private final PaywallPreload paywallPreload;
    private PaywallRequestManager paywallRequestManager;
    public WebPaywallRedeemer reedemer;
    private final ReviewManager reviewManager;
    private SessionEventsManager sessionEventsManager;
    public LocalStorage storage;
    private StoreManager storeManager;
    private final TestMode testMode;
    private final TestModeTransactionHandler testModeTransactionHandler;
    private final TransactionManager transactionManager;
    private final UserPermissions userPermissions;
    private final ViewModelProvider vmProvider;

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$makeJsonVariables$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer", f = "DependencyContainer.kt", i = {0, 0, 0}, l = {1036}, m = "makeJsonVariables", n = {"this", "products", NotificationCompat.CATEGORY_EVENT}, s = {"L$0", "L$1", "L$2"})
    static final class C04771 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C04771(Continuation<? super C04771> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DependencyContainer.this.makeJsonVariables(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$makePaywallView$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer", f = "DependencyContainer.kt", i = {}, l = {866}, m = "makePaywallView", n = {}, s = {})
    static final class C04781 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C04781(Continuation<? super C04781> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DependencyContainer.this.makePaywallView(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$makeRuleAttributes$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer", f = "DependencyContainer.kt", i = {0, 0}, l = {1005}, m = "makeRuleAttributes", n = {NotificationCompat.CATEGORY_EVENT, "userAttributes"}, s = {"L$0", "L$1"})
    static final class C04791 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C04791(Continuation<? super C04791> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DependencyContainer.this.makeRuleAttributes(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$makeSessionDeviceAttributes$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer", f = "DependencyContainer.kt", i = {}, l = {907}, m = "makeSessionDeviceAttributes", n = {}, s = {})
    static final class C04801 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C04801(Continuation<? super C04801> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DependencyContainer.this.makeSessionDeviceAttributes(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$receipts$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer", f = "DependencyContainer.kt", i = {0, 1, 1, 1, 1}, l = {1252, 1254}, m = "receipts", n = {"this", "this", "destination$iv$iv", "it", "id"}, s = {"L$0", "L$0", "L$1", "L$3", "L$4"})
    static final class C04811 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        C04811(Continuation<? super C04811> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DependencyContainer.this.receipts(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$track$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer", f = "DependencyContainer.kt", i = {}, l = {1161}, m = "track-gIAlu-s", n = {}, s = {})
    static final class C04841 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C04841(Continuation<? super C04841> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objMo10617trackgIAlus = DependencyContainer.this.mo10617trackgIAlus(null, this);
            return objMo10617trackgIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo10617trackgIAlus : Result.m11240boximpl(objMo10617trackgIAlus);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$track$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer", f = "DependencyContainer.kt", i = {}, l = {1223}, m = "track", n = {}, s = {})
    static final class C04852 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C04852(Continuation<? super C04852> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DependencyContainer.this.track(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SuperwallOptions _init_$lambda$23(SuperwallOptions superwallOptions) {
        return superwallOptions;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CurrentActivityTracker _init_$lambda$4(CurrentActivityTracker currentActivityTracker) {
        return currentActivityTracker;
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public boolean isPaymentSheetOpen() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DependencyContainer(Context context, PurchaseController purchaseController, SuperwallOptions superwallOptions, ActivityProvider activityProvider, String apiKey) {
        Context context2;
        AutomaticPurchaseController automaticPurchaseController;
        ReviewManagerImpl reviewManagerImpl;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        this.context = context;
        this.activityProvider = activityProvider;
        this.apiKey = apiKey;
        this.getPaywallComponentsFactory = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda32
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DependencyContainer.getPaywallComponentsFactory_delegate$lambda$0();
            }
        });
        this.appLifecycleObserver = new AppLifecycleObserver();
        this.evaluator = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DependencyContainer.evaluator_delegate$lambda$2(this.f$0);
            }
        });
        CoroutineScope coroutineScope = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        BuildersKt__Builders_commonKt.launch$default(getUiScope(), null, null, new AnonymousClass1(null), 3, null);
        final CurrentActivityTracker currentActivityTracker = new CurrentActivityTracker();
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(currentActivityTracker);
        CurrentActivityTracker currentActivityTracker2 = this.activityProvider;
        ActivityProvider activityProvider2 = currentActivityTracker2 == null ? currentActivityTracker : currentActivityTracker2;
        this.activityProvider = activityProvider2;
        GoogleBillingWrapper googleBillingWrapper = new GoogleBillingWrapper(context, getIoScope(), getAppLifecycleObserver(), this, null, 16, null);
        this.googleBillingWrapper = googleBillingWrapper;
        setStorage(new LocalStorage(context, json(), apiKey, this, ioScope(), null, 0 == true ? 1 : 0, 96, null));
        int i = 2;
        this.entitlements = new Entitlements(getStorage(), coroutineScope, i, objArr3 == true ? 1 : 0);
        final SuperwallOptions superwallOptions2 = superwallOptions == null ? new SuperwallOptions() : superwallOptions;
        TestMode testMode = new TestMode(getStorage(), false, new AnonymousClass2(null), this.entitlements, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.activityProvider;
            }
        }, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DependencyContainer._init_$lambda$4(currentActivityTracker);
            }
        }, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(this.f$0.makeHasExternalPurchaseController());
            }
        }, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DependencyContainer._init_$lambda$6(this.f$0);
            }
        }, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DependencyContainer._init_$lambda$7(superwallOptions2);
            }
        }, new AnonymousClass8(null), 2, null);
        this.testMode = testMode;
        TestModeTransactionHandler testModeTransactionHandler = new TestModeTransactionHandler(testMode, activityProvider2, currentActivityTracker);
        this.testModeTransactionHandler = testModeTransactionHandler;
        setCustomerInfoManager$superwall_release(new CustomerInfoManager(getStorage(), new Function1() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyContainer._init_$lambda$8((CustomerInfo) obj);
            }
        }, getIoScope(), new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(DependencyContainer._init_$lambda$9(this.f$0));
            }
        }, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DependencyContainer._init_$lambda$10(this.f$0);
            }
        }));
        if (purchaseController == null) {
            context2 = context;
            automaticPurchaseController = new AutomaticPurchaseController(context2, getIoScope(), this.entitlements, null, 8, null);
        } else {
            context2 = context;
            automaticPurchaseController = purchaseController;
        }
        InternalPurchaseController internalPurchaseController = new InternalPurchaseController(automaticPurchaseController, null, context2);
        this.storeManager = new StoreManager(internalPurchaseController, googleBillingWrapper, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda33
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DependencyContainer._init_$lambda$12(this.f$0);
            }
        }, null, testMode, 8, null);
        this.delegateAdapter = new SuperwallDelegateAdapter();
        CustomHttpUrlConnection customHttpUrlConnection = new CustomHttpUrlConnection(json(), new RequestExecutor(new DependencyContainer$httpConnection$1(this, null)), 0 == true ? 1 : 0, 4, null);
        setApi(new Api(superwallOptions2.getNetworkEnvironment()));
        DependencyContainer dependencyContainer = this;
        this.network = new Network(new BaseHostService(getApi().getBase().getHost(), Api.version1, dependencyContainer, json(), customHttpUrlConnection), new CollectorService(getApi().getCollector().getHost(), Api.version1, dependencyContainer, json(), customHttpUrlConnection), new EnrichmentService(getApi().getEnrichment().getHost(), Api.version1, dependencyContainer, customHttpUrlConnection), dependencyContainer, new SubscriptionService(getApi().getSubscription().getHost(), Api.subscriptionsv1, dependencyContainer, JsonKt.Json(json(), new Function1() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda34
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyContainer._init_$lambda$13((JsonBuilder) obj);
            }
        }), new CustomHttpUrlConnection(JsonKt.Json(json(), new Function1() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda35
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyContainer._init_$lambda$14((JsonBuilder) obj);
            }
        }), new RequestExecutor(new AnonymousClass15(null)), null, 4, null)));
        this.errorTracker = new ErrorTracker(getIoScope(), getStorage(), null, 4, null);
        PaywallRequestManager paywallRequestManager = new PaywallRequestManager(this.storeManager, this.network, this, getIoScope(), null, null, 48, 0 == true ? 1 : 0);
        this.paywallRequestManager = paywallRequestManager;
        this.paywallManager = new PaywallManager(this, paywallRequestManager);
        setDeviceHelper(new DeviceHelper(context2, getStorage(), this.network, this, new DeviceClassifier(new DefaultClassifierDataFactory(new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda36
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.context;
            }
        }))));
        Assignments assignments = new Assignments(getStorage(), this.network, getIoScope(), null, 8, null);
        this.assignments = assignments;
        PaywallPreload paywallPreload = new PaywallPreload(this, getIoScope(), getStorage(), assignments, this.paywallManager, new AnonymousClass17(null));
        this.paywallPreload = paywallPreload;
        SequentialActor sequentialActor = new SequentialActor(IdentityManagerActorKt.createInitialIdentityState(getStorage(), getDeviceHelper().getAppInstalledAtString()), objArr2 == true ? 1 : 0, i, objArr == true ? 1 : 0);
        IdentityPendingInterceptor.INSTANCE.install(sequentialActor);
        IdentityPersistenceInterceptor.INSTANCE.install(sequentialActor, getStorage());
        SdkContextImpl sdkContextImpl = new SdkContextImpl(new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda37
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.getConfigManager();
            }
        });
        final SuperwallOptions superwallOptions3 = superwallOptions2;
        setConfigManager(new ConfigManager(context, this.storeManager, this.entitlements, getStorage(), this.network, getDeviceHelper(), superwallOptions3, this.paywallManager, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.getReedemer();
            }
        }, this, assignments, paywallPreload, getIoScope(), new AnonymousClass19(null), testMode, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.getIdentityManager();
            }
        }, new Function1() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyContainer._init_$lambda$19(this.f$0, (SubscriptionStatus) obj);
            }
        }, null, new AnonymousClass22(null), new SequentialActor(ConfigState.None.INSTANCE, getIoScope()), 131072, null));
        setIdentityManager(new IdentityManager(getStorage(), getIoScope(), new Function1() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyContainer._init_$lambda$21(this.f$0, (String) obj);
            }
        }, new Function1() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyContainer._init_$lambda$22(this.f$0, (Map) obj);
            }
        }, null, null, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DependencyContainer._init_$lambda$23(superwallOptions3);
            }
        }, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.getReedemer();
            }
        }, sequentialActor, sdkContextImpl, 48, null));
        setReedemer(new WebPaywallRedeemer(context, getIoScope(), new DeepLinkReferrer(new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.context;
            }
        }, getIoScope()), this.network, getStorage(), getCustomerInfoManager$superwall_release(), this));
        this.eventsQueue = new EventsQueue(context, this.network, ioScope(), mainScope(), getConfigManager());
        this.sessionEventsManager = new SessionEventsManager(getStorage(), this.network, getConfigManager());
        this.appSessionManager = new AppSessionManager(getConfigManager(), getStorage(), this, getIoScope());
        this.debugManager = new DebugManager(context, getStorage(), this);
        BuildersKt__Builders_commonKt.launch$default(getUiScope(), null, null, new AnonymousClass28(null), 3, null);
        this.transactionManager = new TransactionManager(this.storeManager, internalPurchaseController, this.eventsQueue, getStorage(), activityProvider2, this, ioScope(), new AnonymousClass29(null), new AnonymousClass30(null), new Function1() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyContainer._init_$lambda$26((AlertControllerFactory.AlertProps) obj);
            }
        }, null, new Function1() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyContainer._init_$lambda$27(this.f$0, (String) obj);
            }
        }, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DependencyContainer._init_$lambda$28(this.f$0);
            }
        }, new AnonymousClass34(null), new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DependencyContainer._init_$lambda$29(this.f$0);
            }
        }, new Function2() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return DependencyContainer._init_$lambda$30(this.f$0, (String) obj, (PaywallViewState.Updates) obj2);
            }
        }, new AnonymousClass37(activityProvider2, null), new AnonymousClass38(null), testMode, testModeTransactionHandler, new Function1() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyContainer._init_$lambda$31(this.f$0, (SubscriptionStatus) obj);
            }
        }, 1024, null);
        if (superwallOptions3.getUseMockReviews()) {
            reviewManagerImpl = new MockReviewManager(context);
        } else {
            reviewManagerImpl = new ReviewManagerImpl(context, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Boolean.valueOf(this.f$0.makeIsSandbox());
                }
            });
        }
        this.reviewManager = reviewManagerImpl;
        this.userPermissions = new UserPermissionsImpl(context);
        this.customCallbackRegistry = new CustomCallbackRegistry();
        this.deepLinkRouter = new DeepLinkRouter(getReedemer(), getIoScope(), this.debugManager, new AnonymousClass41(null));
        this.attributionManager = new AttributionManager(getStorage(), new AnonymousClass42(null), getIoScope(), new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DependencyContainer._init_$lambda$33(this.f$0);
            }
        }, new Function0<VendorId>() { // from class: com.superwall.sdk.dependencies.DependencyContainer.44
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ VendorId invoke() {
                return VendorId.m10647boximpl(m10618invoke6xTLGo0());
            }

            /* JADX INFO: renamed from: invoke-6xTLGo0, reason: not valid java name */
            public final String m10618invoke6xTLGo0() {
                return VendorId.m10648constructorimpl(DependencyContainer.this.getDeviceHelper().getVendorId());
            }
        });
        BuildersKt__Builders_commonKt.launch$default(getIoScope(), null, null, new AnonymousClass45(null), 3, null);
        this.paywallJson = JsonKt.Json$default(null, new Function1() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyContainer.paywallJson$lambda$35((JsonBuilder) obj);
            }
        }, 1, null);
        this.vmProvider = new ViewModelProvider(getStoreOwner(), getVmFactory());
    }

    public /* synthetic */ DependencyContainer(Context context, PurchaseController purchaseController, SuperwallOptions superwallOptions, ActivityProvider activityProvider, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : purchaseController, superwallOptions, activityProvider, str);
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public long advertisedMemory() {
        return ClassifierDataFactory.DefaultImpls.advertisedMemory(this);
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public List<String> codecs() {
        return ClassifierDataFactory.DefaultImpls.codecs(this);
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public CPUInfo.Data getCpuInfo() {
        return ClassifierDataFactory.DefaultImpls.getCpuInfo(this);
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public DeviceClassifier.Orientation getOrientation() {
        return ClassifierDataFactory.DefaultImpls.getOrientation(this);
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public int getScreenHeight() {
        return ClassifierDataFactory.DefaultImpls.getScreenHeight(this);
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public double getScreenSize() {
        return ClassifierDataFactory.DefaultImpls.getScreenSize(this);
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public int getScreenWidth() {
        return ClassifierDataFactory.DefaultImpls.getScreenWidth(this);
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public boolean isTabletMinWidth() {
        return ClassifierDataFactory.DefaultImpls.isTabletMinWidth(this);
    }

    @Override // com.superwall.sdk.network.JsonFactory
    public Json json() {
        return ApiFactory.DefaultImpls.json(this);
    }

    public final Context getContext() {
        return this.context;
    }

    public final ActivityProvider getActivityProvider() {
        return this.activityProvider;
    }

    public final void setActivityProvider(ActivityProvider activityProvider) {
        this.activityProvider = activityProvider;
    }

    public final String getApiKey() {
        return this.apiKey;
    }

    public final GetPaywallComponentsFactory getGetPaywallComponentsFactory$superwall_release() {
        return (GetPaywallComponentsFactory) this.getPaywallComponentsFactory.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DefaultGetPaywallComponentsFactory getPaywallComponentsFactory_delegate$lambda$0() {
        return new DefaultGetPaywallComponentsFactory(Superwall.INSTANCE.getInstance());
    }

    public final Network getNetwork() {
        return this.network;
    }

    public final void setNetwork(Network network) {
        Intrinsics.checkNotNullParameter(network, "<set-?>");
        this.network = network;
    }

    @Override // com.superwall.sdk.dependencies.ApiFactory
    public Api getApi() {
        return this.api;
    }

    @Override // com.superwall.sdk.dependencies.ApiFactory
    public void setApi(Api api) {
        Intrinsics.checkNotNullParameter(api, "<set-?>");
        this.api = api;
    }

    @Override // com.superwall.sdk.dependencies.ApiFactory
    public DeviceHelper getDeviceHelper() {
        return this.deviceHelper;
    }

    @Override // com.superwall.sdk.dependencies.ApiFactory
    public void setDeviceHelper(DeviceHelper deviceHelper) {
        Intrinsics.checkNotNullParameter(deviceHelper, "<set-?>");
        this.deviceHelper = deviceHelper;
    }

    @Override // com.superwall.sdk.dependencies.ApiFactory
    public LocalStorage getStorage() {
        LocalStorage localStorage = this.storage;
        if (localStorage != null) {
            return localStorage;
        }
        Intrinsics.throwUninitializedPropertyAccessException("storage");
        return null;
    }

    @Override // com.superwall.sdk.dependencies.ApiFactory
    public void setStorage(LocalStorage localStorage) {
        Intrinsics.checkNotNullParameter(localStorage, "<set-?>");
        this.storage = localStorage;
    }

    @Override // com.superwall.sdk.dependencies.ApiFactory
    public ConfigManager getConfigManager() {
        ConfigManager configManager = this.configManager;
        if (configManager != null) {
            return configManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("configManager");
        return null;
    }

    @Override // com.superwall.sdk.dependencies.ApiFactory
    public void setConfigManager(ConfigManager configManager) {
        Intrinsics.checkNotNullParameter(configManager, "<set-?>");
        this.configManager = configManager;
    }

    @Override // com.superwall.sdk.dependencies.ApiFactory
    public IdentityManager getIdentityManager() {
        return this.identityManager;
    }

    @Override // com.superwall.sdk.dependencies.ApiFactory
    public void setIdentityManager(IdentityManager identityManager) {
        Intrinsics.checkNotNullParameter(identityManager, "<set-?>");
        this.identityManager = identityManager;
    }

    @Override // com.superwall.sdk.dependencies.ApiFactory
    public AppLifecycleObserver getAppLifecycleObserver() {
        return this.appLifecycleObserver;
    }

    @Override // com.superwall.sdk.dependencies.ApiFactory
    public void setAppLifecycleObserver(AppLifecycleObserver appLifecycleObserver) {
        Intrinsics.checkNotNullParameter(appLifecycleObserver, "<set-?>");
        this.appLifecycleObserver = appLifecycleObserver;
    }

    public final AppSessionManager getAppSessionManager() {
        return this.appSessionManager;
    }

    public final void setAppSessionManager(AppSessionManager appSessionManager) {
        Intrinsics.checkNotNullParameter(appSessionManager, "<set-?>");
        this.appSessionManager = appSessionManager;
    }

    public final SessionEventsManager getSessionEventsManager() {
        return this.sessionEventsManager;
    }

    public final void setSessionEventsManager(SessionEventsManager sessionEventsManager) {
        Intrinsics.checkNotNullParameter(sessionEventsManager, "<set-?>");
        this.sessionEventsManager = sessionEventsManager;
    }

    public final SuperwallDelegateAdapter getDelegateAdapter() {
        return this.delegateAdapter;
    }

    public final void setDelegateAdapter(SuperwallDelegateAdapter superwallDelegateAdapter) {
        Intrinsics.checkNotNullParameter(superwallDelegateAdapter, "<set-?>");
        this.delegateAdapter = superwallDelegateAdapter;
    }

    public final EventsQueue getEventsQueue() {
        return this.eventsQueue;
    }

    public final void setEventsQueue(EventsQueue eventsQueue) {
        Intrinsics.checkNotNullParameter(eventsQueue, "<set-?>");
        this.eventsQueue = eventsQueue;
    }

    public final DebugManager getDebugManager() {
        return this.debugManager;
    }

    public final void setDebugManager(DebugManager debugManager) {
        Intrinsics.checkNotNullParameter(debugManager, "<set-?>");
        this.debugManager = debugManager;
    }

    public final PaywallManager getPaywallManager() {
        return this.paywallManager;
    }

    public final void setPaywallManager(PaywallManager paywallManager) {
        Intrinsics.checkNotNullParameter(paywallManager, "<set-?>");
        this.paywallManager = paywallManager;
    }

    public final PaywallRequestManager getPaywallRequestManager() {
        return this.paywallRequestManager;
    }

    public final void setPaywallRequestManager(PaywallRequestManager paywallRequestManager) {
        Intrinsics.checkNotNullParameter(paywallRequestManager, "<set-?>");
        this.paywallRequestManager = paywallRequestManager;
    }

    public final StoreManager getStoreManager() {
        return this.storeManager;
    }

    public final void setStoreManager(StoreManager storeManager) {
        Intrinsics.checkNotNullParameter(storeManager, "<set-?>");
        this.storeManager = storeManager;
    }

    public final TransactionManager getTransactionManager() {
        return this.transactionManager;
    }

    public final GoogleBillingWrapper getGoogleBillingWrapper() {
        return this.googleBillingWrapper;
    }

    /* JADX INFO: renamed from: getReviewManager$superwall_release, reason: from getter */
    public final ReviewManager getReviewManager() {
        return this.reviewManager;
    }

    /* JADX INFO: renamed from: getUserPermissions$superwall_release, reason: from getter */
    public final UserPermissions getUserPermissions() {
        return this.userPermissions;
    }

    /* JADX INFO: renamed from: getCustomCallbackRegistry$superwall_release, reason: from getter */
    public final CustomCallbackRegistry getCustomCallbackRegistry() {
        return this.customCallbackRegistry;
    }

    public final Entitlements getEntitlements() {
        return this.entitlements;
    }

    public final void setEntitlements(Entitlements entitlements) {
        Intrinsics.checkNotNullParameter(entitlements, "<set-?>");
        this.entitlements = entitlements;
    }

    /* JADX INFO: renamed from: getTestMode$superwall_release, reason: from getter */
    public final TestMode getTestMode() {
        return this.testMode;
    }

    /* JADX INFO: renamed from: getTestModeTransactionHandler$superwall_release, reason: from getter */
    public final TestModeTransactionHandler getTestModeTransactionHandler() {
        return this.testModeTransactionHandler;
    }

    public final CustomerInfoManager getCustomerInfoManager$superwall_release() {
        CustomerInfoManager customerInfoManager = this.customerInfoManager;
        if (customerInfoManager != null) {
            return customerInfoManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("customerInfoManager");
        return null;
    }

    public final void setCustomerInfoManager$superwall_release(CustomerInfoManager customerInfoManager) {
        Intrinsics.checkNotNullParameter(customerInfoManager, "<set-?>");
        this.customerInfoManager = customerInfoManager;
    }

    public final WebPaywallRedeemer getReedemer() {
        WebPaywallRedeemer webPaywallRedeemer = this.reedemer;
        if (webPaywallRedeemer != null) {
            return webPaywallRedeemer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("reedemer");
        return null;
    }

    public final void setReedemer(WebPaywallRedeemer webPaywallRedeemer) {
        Intrinsics.checkNotNullParameter(webPaywallRedeemer, "<set-?>");
        this.reedemer = webPaywallRedeemer;
    }

    private final MainScope getUiScope() {
        return mainScope();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IOScope getIoScope() {
        return ioScope();
    }

    private final CombinedExpressionEvaluator getEvaluator() {
        return (CombinedExpressionEvaluator) this.evaluator.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CombinedExpressionEvaluator evaluator_delegate$lambda$2(DependencyContainer dependencyContainer) {
        return new CombinedExpressionEvaluator(dependencyContainer.getStorage(), new SuperscriptEvaluator(JsonKt.Json(dependencyContainer.json(), new Function1() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda30
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyContainer.evaluator_delegate$lambda$2$lambda$1((JsonBuilder) obj);
            }
        }), dependencyContainer.getIoScope(), dependencyContainer.getStorage().getCoreDataManager(), dependencyContainer, null, 16, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit evaluator_delegate$lambda$2$lambda$1(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setClassDiscriminatorMode(ClassDiscriminatorMode.POLYMORPHIC);
        Json.setClassDiscriminator("type");
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: getAssignments$superwall_release, reason: from getter */
    public final Assignments getAssignments() {
        return this.assignments;
    }

    /* JADX INFO: renamed from: getErrorTracker$superwall_release, reason: from getter */
    public final ErrorTracker getErrorTracker() {
        return this.errorTracker;
    }

    /* JADX INFO: renamed from: getDeepLinkRouter$superwall_release, reason: from getter */
    public final DeepLinkRouter getDeepLinkRouter() {
        return this.deepLinkRouter;
    }

    /* JADX INFO: renamed from: getAttributionManager$superwall_release, reason: from getter */
    public final AttributionManager getAttributionManager() {
        return this.attributionManager;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$1, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$1", f = "DependencyContainer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DependencyContainer.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ProcessLifecycleOwner.INSTANCE.get().getLifecycle().addObserver(DependencyContainer.this.getAppLifecycleObserver());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$2, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/store/testmode/models/SuperwallProductsResponse;", "Lcom/superwall/sdk/network/NetworkError;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$2", f = "DependencyContainer.kt", i = {}, l = {283}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function1<Continuation<? super Either<? extends SuperwallProductsResponse, NetworkError>>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return DependencyContainer.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Either<? extends SuperwallProductsResponse, NetworkError>> continuation) {
            return invoke2((Continuation<? super Either<SuperwallProductsResponse, NetworkError>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Continuation<? super Either<SuperwallProductsResponse, NetworkError>> continuation) {
            return ((AnonymousClass2) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            Object superwallProducts = DependencyContainer.this.getNetwork().getSuperwallProducts(this);
            return superwallProducts == coroutine_suspended ? coroutine_suspended : superwallProducts;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$6(DependencyContainer dependencyContainer) {
        return dependencyContainer.getStorage().getApiKey();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$7(SuperwallOptions superwallOptions) {
        return superwallOptions.getNetworkEnvironment() instanceof SuperwallOptions.NetworkEnvironment.Developer ? "https://superwall.dev" : "https://superwall.com";
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$8, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$8", f = "DependencyContainer.kt", i = {}, l = {295}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass8 extends SuspendLambda implements Function2<InternalSuperwallEvent, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass8(Continuation<? super AnonymousClass8> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass8 anonymousClass8 = new AnonymousClass8(continuation);
            anonymousClass8.L$0 = obj;
            return anonymousClass8;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(InternalSuperwallEvent internalSuperwallEvent, Continuation<? super Unit> continuation) {
            return ((AnonymousClass8) create(internalSuperwallEvent, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                InternalSuperwallEvent internalSuperwallEvent = (InternalSuperwallEvent) this.L$0;
                this.label = 1;
                if (TrackingKt.track(Superwall.INSTANCE.getInstance(), internalSuperwallEvent, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$8(CustomerInfo it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Superwall.INSTANCE.getInstance().get_customerInfo$superwall_release().setValue(it);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$9(DependencyContainer dependencyContainer) {
        return dependencyContainer.storeManager.getPurchaseController().getHasExternalPurchaseController();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SubscriptionStatus _init_$lambda$10(DependencyContainer dependencyContainer) {
        return dependencyContainer.entitlements.getStatus().getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ReceiptManager _init_$lambda$12(final DependencyContainer dependencyContainer) {
        return new ReceiptManager(dependencyContainer.storeManager, dependencyContainer.googleBillingWrapper, null, dependencyContainer.getStorage(), new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda29
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.getCustomerInfoManager$superwall_release();
            }
        }, null, null, 100, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$13(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setIgnoreUnknownKeys(true);
        Json.setNamingStrategy(null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$14(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setIgnoreUnknownKeys(true);
        Json.setNamingStrategy(null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$15, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "", "debugging", "", "requestId"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$15", f = "DependencyContainer.kt", i = {}, l = {376}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass15 extends SuspendLambda implements Function3<Boolean, String, Continuation<? super Map<String, ? extends String>>, Object> {
        /* synthetic */ Object L$0;
        /* synthetic */ boolean Z$0;
        int label;

        AnonymousClass15(Continuation<? super AnonymousClass15> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, String str, Continuation<? super Map<String, ? extends String>> continuation) {
            return invoke(bool.booleanValue(), str, (Continuation<? super Map<String, String>>) continuation);
        }

        public final Object invoke(boolean z, String str, Continuation<? super Map<String, String>> continuation) {
            AnonymousClass15 anonymousClass15 = DependencyContainer.this.new AnonymousClass15(continuation);
            anonymousClass15.Z$0 = z;
            anonymousClass15.L$0 = str;
            return anonymousClass15.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            boolean z = this.Z$0;
            String str = (String) this.L$0;
            this.label = 1;
            Object objMakeHeaders = DependencyContainer.this.makeHeaders(z, str, this);
            return objMakeHeaders == coroutine_suspended ? coroutine_suspended : objMakeHeaders;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$17, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$17", f = "DependencyContainer.kt", i = {}, l = {435}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass17 extends SuspendLambda implements Function2<InternalSuperwallEvent, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass17(Continuation<? super AnonymousClass17> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass17 anonymousClass17 = new AnonymousClass17(continuation);
            anonymousClass17.L$0 = obj;
            return anonymousClass17;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(InternalSuperwallEvent internalSuperwallEvent, Continuation<? super Unit> continuation) {
            return ((AnonymousClass17) create(internalSuperwallEvent, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                InternalSuperwallEvent internalSuperwallEvent = (InternalSuperwallEvent) this.L$0;
                this.label = 1;
                if (TrackingKt.track(Superwall.INSTANCE.getInstance(), internalSuperwallEvent, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$19, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$19", f = "DependencyContainer.kt", i = {}, l = {476}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass19 extends SuspendLambda implements Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass19(Continuation<? super AnonymousClass19> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass19 anonymousClass19 = new AnonymousClass19(continuation);
            anonymousClass19.L$0 = obj;
            return anonymousClass19;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(TrackableSuperwallEvent trackableSuperwallEvent, Continuation<? super Unit> continuation) {
            return ((AnonymousClass19) create(trackableSuperwallEvent, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                TrackableSuperwallEvent trackableSuperwallEvent = (TrackableSuperwallEvent) this.L$0;
                this.label = 1;
                if (TrackingKt.track(Superwall.INSTANCE.getInstance(), trackableSuperwallEvent, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$19(DependencyContainer dependencyContainer, SubscriptionStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        dependencyContainer.entitlements.setSubscriptionStatus(status);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$22, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "config", "Lcom/superwall/sdk/models/config/Config;", "justActivated", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$22", f = "DependencyContainer.kt", i = {}, l = {486}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass22 extends SuspendLambda implements Function3<Config, Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        /* synthetic */ boolean Z$0;
        int label;

        AnonymousClass22(Continuation<? super AnonymousClass22> continuation) {
            super(3, continuation);
        }

        public final Object invoke(Config config, boolean z, Continuation<? super Unit> continuation) {
            AnonymousClass22 anonymousClass22 = DependencyContainer.this.new AnonymousClass22(continuation);
            anonymousClass22.L$0 = config;
            anonymousClass22.Z$0 = z;
            return anonymousClass22.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Config config, Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(config, bool.booleanValue(), continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Config config = (Config) this.L$0;
                boolean z = this.Z$0;
                this.label = 1;
                if (DependencyContainer.this.getTestMode().activate(config, z, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$21(DependencyContainer dependencyContainer, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        byte[] bytes = dependencyContainer.toString().getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        byte[] bArrDigest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256).digest(bytes);
        Intrinsics.checkNotNull(bArrDigest);
        String str = "";
        for (byte b : bArrDigest) {
            String str2 = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            str = str + str2;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$22(DependencyContainer dependencyContainer, Map it) {
        Intrinsics.checkNotNullParameter(it, "it");
        dependencyContainer.getDelegateAdapter().userAttributesDidChange(it);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$28, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$28", f = "DependencyContainer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass28 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass28(Continuation<? super AnonymousClass28> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DependencyContainer.this.new AnonymousClass28(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass28) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ProcessLifecycleOwner.INSTANCE.get().getLifecycle().addObserver(DependencyContainer.this.getAppSessionManager());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$31(DependencyContainer dependencyContainer, SubscriptionStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        dependencyContainer.entitlements.setSubscriptionStatus(status);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$29, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$29", f = "DependencyContainer.kt", i = {}, l = {571}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass29 extends SuspendLambda implements Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass29(Continuation<? super AnonymousClass29> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass29 anonymousClass29 = new AnonymousClass29(continuation);
            anonymousClass29.L$0 = obj;
            return anonymousClass29;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(TrackableSuperwallEvent trackableSuperwallEvent, Continuation<? super Unit> continuation) {
            return ((AnonymousClass29) create(trackableSuperwallEvent, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                TrackableSuperwallEvent trackableSuperwallEvent = (TrackableSuperwallEvent) this.L$0;
                this.label = 1;
                if (TrackingKt.track(Superwall.INSTANCE.getInstance(), trackableSuperwallEvent, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$30, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "key", "", "result", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$30", f = "DependencyContainer.kt", i = {}, l = {583}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass30 extends SuspendLambda implements Function3<String, PaywallResult, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        AnonymousClass30(Continuation<? super AnonymousClass30> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(String str, PaywallResult paywallResult, Continuation<? super Unit> continuation) {
            AnonymousClass30 anonymousClass30 = DependencyContainer.this.new AnonymousClass30(continuation);
            anonymousClass30.L$0 = str;
            anonymousClass30.L$1 = paywallResult;
            return anonymousClass30.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                String str = (String) this.L$0;
                PaywallResult paywallResult = (PaywallResult) this.L$1;
                PaywallView paywallViewResolvePaywallViewForKey = ViewResolutionKt.resolvePaywallViewForKey(DependencyContainer.this.makeViewStore(), Superwall.INSTANCE.getInstance().getPaywallView(), str);
                if (paywallViewResolvePaywallViewForKey == null) {
                    return Unit.INSTANCE;
                }
                this.L$0 = null;
                this.label = 1;
                if (InternalPresentationKt.dismiss$default(paywallViewResolvePaywallViewForKey, paywallResult, null, null, this, 12, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$34, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$34", f = "DependencyContainer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass34 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass34(Continuation<? super AnonymousClass34> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return DependencyContainer.this.new AnonymousClass34(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass34) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                DependencyContainer.this.showWebRestoreSuccesful();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _init_$lambda$27(DependencyContainer dependencyContainer, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return dependencyContainer.entitlements.byProductId$superwall_release(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map _init_$lambda$28(DependencyContainer dependencyContainer) {
        return dependencyContainer.entitlements.getEntitlementsByProductId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$29(DependencyContainer dependencyContainer) {
        dependencyContainer.storeManager.refreshReceipt();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$26(AlertControllerFactory.AlertProps it) {
        Intrinsics.checkNotNullParameter(it, "it");
        PaywallView paywallView = Superwall.INSTANCE.getInstance().getPaywallView();
        if (paywallView != null) {
            paywallView.showAlert(it.getTitle(), it.getMessage(), it.getActionTitle(), it.getCloseActionTitle(), it.getAction(), it.getOnClose());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$30(DependencyContainer dependencyContainer, String key, PaywallViewState.Updates state) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(state, "state");
        PaywallView paywallViewResolvePaywallViewForKey = ViewResolutionKt.resolvePaywallViewForKey(dependencyContainer.makeViewStore(), Superwall.INSTANCE.getInstance().getPaywallView(), key);
        if (paywallViewResolvePaywallViewForKey == null) {
            return Unit.INSTANCE;
        }
        paywallViewResolvePaywallViewForKey.updateState(state);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$38, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "key", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$38", f = "DependencyContainer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass38 extends SuspendLambda implements Function2<String, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass38(Continuation<? super AnonymousClass38> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass38 anonymousClass38 = DependencyContainer.this.new AnonymousClass38(continuation);
            anonymousClass38.L$0 = obj;
            return anonymousClass38;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(String str, Continuation<? super Unit> continuation) {
            return ((AnonymousClass38) create(str, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            PaywallView paywallViewResolvePaywallViewForKey = ViewResolutionKt.resolvePaywallViewForKey(DependencyContainer.this.makeViewStore(), Superwall.INSTANCE.getInstance().getPaywallView(), (String) this.L$0);
            if (paywallViewResolvePaywallViewForKey == null) {
                return Unit.INSTANCE;
            }
            paywallViewResolvePaywallViewForKey.getWebView().getMessageHandler().handle(PaywallMessage.TransactionAbandon.INSTANCE);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$37, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "key", "", "trialEndDate", "", "id"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$37", f = "DependencyContainer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass37 extends SuspendLambda implements Function4<String, Long, String, Continuation<? super Unit>, Object> {
        final /* synthetic */ ActivityProvider $activityProvider;
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass37(ActivityProvider activityProvider, Continuation<? super AnonymousClass37> continuation) {
            super(4, continuation);
            this.$activityProvider = activityProvider;
        }

        @Override // kotlin.jvm.functions.Function4
        public final Object invoke(String str, Long l, String str2, Continuation<? super Unit> continuation) {
            AnonymousClass37 anonymousClass37 = DependencyContainer.this.new AnonymousClass37(this.$activityProvider, continuation);
            anonymousClass37.L$0 = str;
            anonymousClass37.L$1 = l;
            anonymousClass37.L$2 = str2;
            return anonymousClass37.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Activity currentActivity;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String str = (String) this.L$0;
            Long l = (Long) this.L$1;
            String str2 = (String) this.L$2;
            PaywallView paywallViewResolvePaywallViewForKey = ViewResolutionKt.resolvePaywallViewForKey(DependencyContainer.this.makeViewStore(), Superwall.INSTANCE.getInstance().getPaywallView(), str);
            if (paywallViewResolvePaywallViewForKey == null) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "No active paywall to use - did the app close?", null, null, 24, null);
                return Unit.INSTANCE;
            }
            paywallViewResolvePaywallViewForKey.getWebView().getMessageHandler().handle(new PaywallMessage.TransactionComplete(str2));
            PaywallInfo info = paywallViewResolvePaywallViewForKey.getState().getInfo();
            List<LocalNotification> localNotifications = info.getLocalNotifications();
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : localNotifications) {
                if (Intrinsics.areEqual(((LocalNotification) obj2).getType(), LocalNotificationType.TrialStarted.INSTANCE)) {
                    arrayList.add(obj2);
                }
            }
            ArrayList<LocalNotification> arrayList2 = arrayList;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
            for (LocalNotification localNotification : arrayList2) {
                arrayList3.add(LocalNotification.copy$default(localNotification, info.getIdentifier() + "_" + localNotification.getType().getRaw(), null, null, null, null, 0L, 62, null));
            }
            ArrayList arrayList4 = arrayList3;
            if (!arrayList4.isEmpty()) {
                WeakReference<Activity> encapsulatingActivity = paywallViewResolvePaywallViewForKey.getEncapsulatingActivity();
                if (encapsulatingActivity == null || (currentActivity = encapsulatingActivity.get()) == null) {
                    ActivityProvider activityProvider = this.$activityProvider;
                    currentActivity = activityProvider != null ? activityProvider.getCurrentActivity() : null;
                }
                SuperwallPaywallActivity superwallPaywallActivity = currentActivity instanceof SuperwallPaywallActivity ? (SuperwallPaywallActivity) currentActivity : null;
                if (superwallPaywallActivity != null) {
                    BuildersKt__Builders_commonKt.launch$default(DependencyContainer.this.getIoScope(), null, null, new AnonymousClass1(superwallPaywallActivity, arrayList4, DependencyContainer.this, null), 3, null);
                } else {
                    Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.paywallView, "No paywall activity available to schedule fallback notifications", null, null, 24, null);
                }
                paywallViewResolvePaywallViewForKey.getWebView().getMessageHandler().handle(new PaywallMessage.TrialStarted(l, str2));
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$37$1, reason: invalid class name */
        /* JADX INFO: compiled from: DependencyContainer.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$37$1", f = "DependencyContainer.kt", i = {}, l = {672}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ SuperwallPaywallActivity $paywallActivity;
            final /* synthetic */ List<LocalNotification> $trialNotifications;
            int label;
            final /* synthetic */ DependencyContainer this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(SuperwallPaywallActivity superwallPaywallActivity, List<LocalNotification> list, DependencyContainer dependencyContainer, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$paywallActivity = superwallPaywallActivity;
                this.$trialNotifications = list;
                this.this$0 = dependencyContainer;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$paywallActivity, this.$trialNotifications, this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (SuperwallPaywallActivity.attemptToScheduleNotifications$default(this.$paywallActivity, this.$trialNotifications, this.this$0, false, this, 4, null) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$41, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$41", f = "DependencyContainer.kt", i = {}, l = {713}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass41 extends SuspendLambda implements Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass41(Continuation<? super AnonymousClass41> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass41 anonymousClass41 = DependencyContainer.this.new AnonymousClass41(continuation);
            anonymousClass41.L$0 = obj;
            return anonymousClass41;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(TrackableSuperwallEvent trackableSuperwallEvent, Continuation<? super Unit> continuation) {
            return ((AnonymousClass41) create(trackableSuperwallEvent, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                TrackableSuperwallEvent trackableSuperwallEvent = (TrackableSuperwallEvent) this.L$0;
                this.label = 1;
                if (DependencyContainer.this.mo10617trackgIAlus(trackableSuperwallEvent, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$42, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$42", f = "DependencyContainer.kt", i = {}, l = {AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass42 extends SuspendLambda implements Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass42(Continuation<? super AnonymousClass42> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass42 anonymousClass42 = DependencyContainer.this.new AnonymousClass42(continuation);
            anonymousClass42.L$0 = obj;
            return anonymousClass42;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(TrackableSuperwallEvent trackableSuperwallEvent, Continuation<? super Unit> continuation) {
            return ((AnonymousClass42) create(trackableSuperwallEvent, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                TrackableSuperwallEvent trackableSuperwallEvent = (TrackableSuperwallEvent) this.L$0;
                this.label = 1;
                if (DependencyContainer.this.mo10617trackgIAlus(trackableSuperwallEvent, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$33(DependencyContainer dependencyContainer) {
        BuildersKt__Builders_commonKt.launch$default(dependencyContainer.getIoScope(), null, null, new DependencyContainer$43$1(dependencyContainer, null), 3, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$45, reason: invalid class name */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$45", f = "DependencyContainer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass45 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass45(Continuation<? super AnonymousClass45> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass45 anonymousClass45 = DependencyContainer.this.new AnonymousClass45(continuation);
            anonymousClass45.L$0 = obj;
            return anonymousClass45;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass45) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM11241constructorimpl;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (WebviewChecker.INSTANCE.getWebviewExists()) {
                DependencyContainer dependencyContainer = DependencyContainer.this;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM11241constructorimpl = Result.m11241constructorimpl(WebSettings.getDefaultUserAgent(dependencyContainer.getContext()));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM11241constructorimpl = Result.m11241constructorimpl(ResultKt.createFailure(th));
                }
                DependencyContainer dependencyContainer2 = DependencyContainer.this;
                if (Result.m11244exceptionOrNullimpl(objM11241constructorimpl) != null) {
                    try {
                        Result.Companion companion3 = Result.INSTANCE;
                        Result.m11241constructorimpl(WebSettings.getDefaultUserAgent(dependencyContainer2.getContext()));
                    } catch (Throwable th2) {
                        Result.Companion companion4 = Result.INSTANCE;
                        Result.m11241constructorimpl(ResultKt.createFailure(th2));
                    }
                }
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.superwall.sdk.dependencies.ApiFactory
    public Object makeHeaders(boolean z, String str, Continuation<? super Map<String, String>> continuation) {
        String gitSha;
        String buildTime;
        String buildId;
        Pair[] pairArr = new Pair[29];
        pairArr[0] = TuplesKt.to(HttpHeaders.AUTHORIZATION, "Bearer " + (z ? getStorage().getDebugKey() : getStorage().getApiKey()));
        pairArr[1] = TuplesKt.to("X-Platform", "Android");
        pairArr[2] = TuplesKt.to("X-Platform-Environment", "SDK");
        pairArr[3] = TuplesKt.to("X-Platform-Wrapper", getDeviceHelper().getPlatformWrapper());
        String appUserId = getIdentityManager().getAppUserId();
        String str2 = "";
        if (appUserId == null) {
            appUserId = "";
        }
        pairArr[4] = TuplesKt.to("X-App-User-ID", appUserId);
        pairArr[5] = TuplesKt.to("X-Alias-ID", getIdentityManager().getAliasId());
        pairArr[6] = TuplesKt.to("X-URL-Scheme", getDeviceHelper().getUrlScheme());
        pairArr[7] = TuplesKt.to("X-Vendor-ID", getDeviceHelper().getVendorId());
        pairArr[8] = TuplesKt.to("X-App-Version", getDeviceHelper().getAppVersion());
        pairArr[9] = TuplesKt.to("X-OS-Version", getDeviceHelper().getOsVersion());
        pairArr[10] = TuplesKt.to("X-Device-Model", getDeviceHelper().getModel());
        pairArr[11] = TuplesKt.to("X-Device-Locale", getDeviceHelper().getLocale());
        pairArr[12] = TuplesKt.to("X-Device-Language-Code", getDeviceHelper().getLanguageCode());
        pairArr[13] = TuplesKt.to("X-Device-Currency-Code", getDeviceHelper().getCurrencyCode());
        pairArr[14] = TuplesKt.to("X-Device-Currency-Symbol", getDeviceHelper().getCurrencySymbol());
        pairArr[15] = TuplesKt.to("X-Device-Timezone-Offset", getDeviceHelper().getSecondsFromGMT());
        pairArr[16] = TuplesKt.to("X-App-Install-Date", getDeviceHelper().getAppInstalledAtString());
        pairArr[17] = TuplesKt.to("X-Radio-Type", getDeviceHelper().getRadioType());
        pairArr[18] = TuplesKt.to("X-Device-Interface-Style", getDeviceHelper().getInterfaceStyle());
        pairArr[19] = TuplesKt.to("X-SDK-Version", getDeviceHelper().getSdkVersion());
        if (getDeviceHelper().getGitSha() != null) {
            gitSha = getDeviceHelper().getGitSha();
            Intrinsics.checkNotNull(gitSha);
        } else {
            gitSha = "";
        }
        pairArr[20] = TuplesKt.to("X-Git-Sha", gitSha);
        if (getDeviceHelper().getBuildTime() != null) {
            buildTime = getDeviceHelper().getBuildTime();
            Intrinsics.checkNotNull(buildTime);
        } else {
            buildTime = "";
        }
        pairArr[21] = TuplesKt.to("X-Build-Time", buildTime);
        pairArr[22] = TuplesKt.to("X-Bundle-ID", getDeviceHelper().getBundleId());
        pairArr[23] = TuplesKt.to("X-Low-Power-Mode", getDeviceHelper().isLowPowerModeEnabled().toString());
        pairArr[24] = TuplesKt.to("X-Is-Sandbox", String.valueOf(getDeviceHelper().isSandbox()));
        pairArr[25] = TuplesKt.to("X-Entitlement-Status", Superwall.INSTANCE.getInstance().getEntitlements().getStatus().getValue().toString());
        pairArr[26] = TuplesKt.to(HttpHeaders.CONTENT_TYPE, "application/json");
        pairArr[27] = TuplesKt.to("X-Current-Time", DateUtilsKt.dateFormat(DateUtils.INSTANCE.getISO_MILLIS()).format(new Date()));
        Config config = getConfigManager().getConfig();
        if (config != null && (buildId = config.getBuildId()) != null) {
            str2 = buildId;
        }
        pairArr[28] = TuplesKt.to("X-Static-Config-Build-Id", str2);
        return MapsKt.mapOf(pairArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit paywallJson$lambda$35(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setEncodeDefaults(true);
        SerializersModuleBuilder serializersModuleBuilder = new SerializersModuleBuilder();
        serializersModuleBuilder.contextual(Reflection.getOrCreateKotlinClass(Date.class), DateSerializer.INSTANCE);
        Json.setSerializersModule(serializersModuleBuilder.build());
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    @Override // com.superwall.sdk.dependencies.ViewFactory
    public Object makePaywallView(Paywall paywall, PaywallViewCache paywallViewCache, PaywallViewDelegateAdapter paywallViewDelegateAdapter, Continuation<? super PaywallView> continuation) {
        C04781 c04781;
        FeatureFlags featureFlags;
        if (continuation instanceof C04781) {
            c04781 = (C04781) continuation;
            if ((c04781.label & Integer.MIN_VALUE) != 0) {
                c04781.label -= Integer.MIN_VALUE;
            } else {
                c04781 = new C04781(continuation);
            }
        } else {
            c04781 = new C04781(continuation);
        }
        C04781 c04782 = c04781;
        Object objAwait = c04782.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04782.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objAwait);
            PaywallMessageHandler paywallMessageHandler = new PaywallMessageHandler(this, this, new DependencyContainer$makePaywallView$messageHandler$1(null), new Function1() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DependencyContainer.makePaywallView$lambda$36(this.f$0, (Map) obj);
                }
            }, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DependencyContainer.makePaywallView$lambda$37();
                }
            }, mainScope(), getIoScope(), this.paywallJson, new Function1() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda22
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DependencyContainer.makePaywallView$lambda$38((String) obj);
                }
            }, this.userPermissions, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$$ExternalSyntheticLambda31
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DependencyContainer.makePaywallView$lambda$39(this.f$0);
                }
            }, this.customCallbackRegistry);
            String locale = getDeviceHelper().getLocale();
            Config config = getConfigManager().getConfig();
            Deferred deferredAsync$default = BuildersKt__Builders_commonKt.async$default(getUiScope(), null, null, new DependencyContainer$makePaywallView$paywallView$1(this, paywallMessageHandler, paywallViewDelegateAdapter, paywallViewCache, new PaywallView.PaywallController(new PaywallViewState(paywall, locale, null, null, null, null, null, null, false, null, false, false, null, null, false, false, false, false, null, (config == null || (featureFlags = config.getFeatureFlags()) == null) ? false : featureFlags.getEnableMultiplePaywallUrls(), 0, null, 3670012, null)), null), 3, null);
            c04782.label = 1;
            objAwait = deferredAsync$default.await(c04782);
            if (objAwait == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objAwait);
        }
        return (PaywallView) objAwait;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PaywallView makePaywallView$lambda$37() {
        return Superwall.INSTANCE.getInstance().getPaywallView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit makePaywallView$lambda$36(DependencyContainer dependencyContainer, Map it) {
        Intrinsics.checkNotNullParameter(it, "it");
        IdentityManager.mergeAndNotify$superwall_release$default(dependencyContainer.getIdentityManager(), it, false, 2, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String makePaywallView$lambda$38(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        byte[] bytes = it.getBytes(UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        String strEncodeToString = Base64.encodeToString(bytes, 2);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Activity makePaywallView$lambda$39(DependencyContainer dependencyContainer) {
        ActivityProvider activityProvider = dependencyContainer.activityProvider;
        if (activityProvider != null) {
            return activityProvider.getCurrentActivity();
        }
        return null;
    }

    @Override // com.superwall.sdk.dependencies.ViewFactory
    public DebugView makeDebugView(String id) {
        DebugView debugView = new DebugView(this.context, this.storeManager, this.network, this.paywallRequestManager, this.paywallManager, this.debugManager, this);
        debugView.setPaywallDatabaseId$superwall_release(id);
        return debugView;
    }

    @Override // com.superwall.sdk.dependencies.CacheFactory
    public PaywallViewCache makeCache() {
        Context context = this.context;
        ViewStorageViewModel viewStorageViewModelMakeViewStore = makeViewStore();
        ActivityProvider activityProvider = this.activityProvider;
        Intrinsics.checkNotNull(activityProvider);
        return new PaywallViewCache(context, viewStorageViewModelMakeViewStore, activityProvider, getDeviceHelper());
    }

    @Override // com.superwall.sdk.paywall.request.PaywallRequestManagerDepFactory
    public String activePaywallId() {
        PaywallViewState state;
        Paywall paywall;
        PaywallView currentView = this.paywallManager.getCurrentView();
        if (currentView == null || (state = currentView.getState()) == null || (paywall = state.getPaywall()) == null) {
            return null;
        }
        return paywall.getIdentifier();
    }

    @Override // com.superwall.sdk.paywall.request.PaywallRequestManagerDepFactory
    public CustomerInfo currentCustomerInfo() {
        return Superwall.INSTANCE.getInstance().getCustomerInfo();
    }

    @Override // com.superwall.sdk.dependencies.DeviceInfoFactory, com.superwall.sdk.dependencies.DeviceHelperFactory
    public DeviceInfo makeDeviceInfo() {
        return new DeviceInfo(getDeviceHelper().getAppInstalledAtString(), getDeviceHelper().getLocale());
    }

    @Override // com.superwall.sdk.dependencies.DeviceHelperFactory
    public boolean makeIsSandbox() {
        return this.testMode.isTestMode() || getDeviceHelper().isSandbox();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.dependencies.DeviceHelperFactory
    public Object makeSessionDeviceAttributes(Continuation<? super HashMap<String, Object>> continuation) {
        C04801 c04801;
        if (continuation instanceof C04801) {
            c04801 = (C04801) continuation;
            if ((c04801.label & Integer.MIN_VALUE) != 0) {
                c04801.label -= Integer.MIN_VALUE;
            } else {
                c04801 = new C04801(continuation);
            }
        } else {
            c04801 = new C04801(continuation);
        }
        Object templateDevice = c04801.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04801.label;
        if (i == 0) {
            ResultKt.throwOnFailure(templateDevice);
            DeviceHelper deviceHelper = getDeviceHelper();
            c04801.label = 1;
            templateDevice = deviceHelper.getTemplateDevice(c04801);
            if (templateDevice == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(templateDevice);
        }
        Map mutableMap = MapsKt.toMutableMap((Map) templateDevice);
        mutableMap.remove("utcDate");
        mutableMap.remove("localDate");
        mutableMap.remove("localTime");
        mutableMap.remove("utcTime");
        mutableMap.remove("utcDateTime");
        mutableMap.remove("localDateTime");
        return new HashMap(mutableMap);
    }

    @Override // com.superwall.sdk.dependencies.UserAttributesEventFactory
    public InternalSuperwallEvent.Attributes makeUserAttributesEvent() {
        return new InternalSuperwallEvent.Attributes(getDeviceHelper().getAppInstalledAtString(), new HashMap(getIdentityManager().getUserAttributes()));
    }

    @Override // com.superwall.sdk.dependencies.HasExternalPurchaseControllerFactory
    public boolean makeHasExternalPurchaseController() {
        return this.storeManager.getPurchaseController().getHasExternalPurchaseController();
    }

    @Override // com.superwall.sdk.dependencies.HasInternalPurchaseControllerFactory
    public boolean makeHasInternalPurchaseController() {
        return this.storeManager.getPurchaseController().getHasInternalPurchaseController();
    }

    @Override // com.superwall.sdk.dependencies.WebToAppFactory, com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public boolean isWebToAppEnabled() {
        FeatureFlags featureFlags;
        Config config = getConfigManager().getConfig();
        if (config == null || (featureFlags = config.getFeatureFlags()) == null) {
            return false;
        }
        return featureFlags.getWeb2App();
    }

    @Override // com.superwall.sdk.dependencies.WebToAppFactory
    public String restoreUrl() {
        Config config;
        WebToAppConfig webToAppConfig;
        String restoreAccesUrl;
        ConfigManager configManager = getConfigManager();
        return (configManager == null || (config = configManager.getConfig()) == null || (webToAppConfig = config.getWebToAppConfig()) == null || (restoreAccesUrl = webToAppConfig.getRestoreAccesUrl()) == null) ? "" : restoreAccesUrl;
    }

    @Override // com.superwall.sdk.analytics.session.AppManagerDelegate
    public Object didUpdateAppSession(AppSession appSession, Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }

    @Override // com.superwall.sdk.dependencies.RequestFactory
    public PaywallRequest makePaywallRequest(EventData eventData, ResponseIdentifiers responseIdentifiers, PaywallRequest.Overrides overrides, boolean isDebuggerLaunched, String presentationSourceType) {
        Intrinsics.checkNotNullParameter(responseIdentifiers, "responseIdentifiers");
        if (overrides == null) {
            overrides = new PaywallRequest.Overrides(null, null);
        }
        return new PaywallRequest(eventData, responseIdentifiers, overrides, isDebuggerLaunched, presentationSourceType, 6);
    }

    @Override // com.superwall.sdk.dependencies.RequestFactory
    public PresentationRequest makePresentationRequest(PresentationInfo presentationInfo, PaywallOverrides paywallOverrides, Activity presenter, Boolean isDebuggerLaunched, StateFlow<? extends SubscriptionStatus> subscriptionStatus, boolean isPaywallPresented, PresentationRequestType type) {
        Intrinsics.checkNotNullParameter(presentationInfo, "presentationInfo");
        Intrinsics.checkNotNullParameter(type, "type");
        WeakReference weakReference = new WeakReference(presenter);
        boolean zBooleanValue = isDebuggerLaunched != null ? isDebuggerLaunched.booleanValue() : this.debugManager.getIsDebuggerLaunched();
        if (subscriptionStatus == null) {
            subscriptionStatus = Superwall.INSTANCE.getInstance().getEntitlements().getStatus();
        }
        return new PresentationRequest(presentationInfo, weakReference, paywallOverrides, new PresentationRequest.Flags(zBooleanValue, subscriptionStatus, isPaywallPresented, type));
    }

    @Override // com.superwall.sdk.dependencies.ConfigManagerFactory
    public Paywall makeStaticPaywall(String paywallId, boolean isDebuggerLaunched) {
        if (isDebuggerLaunched) {
            return null;
        }
        return ConfigLogic.INSTANCE.getStaticPaywall(paywallId, getConfigManager().getConfig(), makeDeviceInfo().getLocale());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.dependencies.RuleAttributesFactory
    public Object makeRuleAttributes(EventData eventData, List<ComputedPropertyRequest> list, Continuation<? super Map<String, ? extends Object>> continuation) {
        C04791 c04791;
        EventData eventData2;
        Map map;
        Object parameters;
        if (continuation instanceof C04791) {
            c04791 = (C04791) continuation;
            if ((c04791.label & Integer.MIN_VALUE) != 0) {
                c04791.label -= Integer.MIN_VALUE;
            } else {
                c04791 = new C04791(continuation);
            }
        } else {
            c04791 = new C04791(continuation);
        }
        Object obj = c04791.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04791.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Map mutableMap = MapsKt.toMutableMap(getIdentityManager().getUserAttributes());
            mutableMap.put("isLoggedIn", Boxing.boxBoolean(getIdentityManager().isLoggedIn()));
            DeviceHelper deviceHelper = getDeviceHelper();
            c04791.L$0 = eventData;
            c04791.L$1 = mutableMap;
            c04791.label = 1;
            Object deviceAttributes = deviceHelper.getDeviceAttributes(eventData, list, c04791);
            if (deviceAttributes == coroutine_suspended) {
                return coroutine_suspended;
            }
            eventData2 = eventData;
            map = mutableMap;
            obj = deviceAttributes;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map = (Map) c04791.L$1;
            eventData2 = (EventData) c04791.L$0;
            ResultKt.throwOnFailure(obj);
        }
        Pair[] pairArr = new Pair[3];
        pairArr[0] = TuplesKt.to("user", map);
        pairArr[1] = TuplesKt.to("device", (Map) obj);
        if (eventData2 == null || (parameters = eventData2.getParameters()) == null) {
            parameters = "";
        }
        pairArr[2] = TuplesKt.to("params", parameters);
        return MapsKt.mapOf(pairArr);
    }

    @Override // com.superwall.sdk.dependencies.FeatureFlagsFactory
    public FeatureFlags makeFeatureFlags() {
        Config config = getConfigManager().getConfig();
        if (config != null) {
            return config.getFeatureFlags();
        }
        return null;
    }

    @Override // com.superwall.sdk.dependencies.ComputedPropertyRequestsFactory
    public List<ComputedPropertyRequest> makeComputedPropertyRequests() {
        List<ComputedPropertyRequest> allComputedProperties;
        Config config = getConfigManager().getConfig();
        return (config == null || (allComputedProperties = config.getAllComputedProperties()) == null) ? CollectionsKt.emptyList() : allComputedProperties;
    }

    @Override // com.superwall.sdk.dependencies.IdentityInfoFactory
    public Object makeIdentityInfo(Continuation<? super IdentityInfo> continuation) {
        return new IdentityInfo(getIdentityManager().getAliasId(), getIdentityManager().getAppUserId());
    }

    @Override // com.superwall.sdk.dependencies.LocaleIdentifierFactory
    public String makeLocaleIdentifier() {
        SuperwallOptions options = getConfigManager().getOptions();
        if (options != null) {
            return options.getLocaleIdentifier();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.dependencies.VariablesFactory
    public Object makeJsonVariables(List<ProductVariable> list, List<ComputedPropertyRequest> list2, EventData eventData, Continuation<? super JsonVariables> continuation) {
        C04771 c04771;
        DependencyContainer dependencyContainer;
        Map<String, Object> mapEmptyMap;
        if (continuation instanceof C04771) {
            c04771 = (C04771) continuation;
            if ((c04771.label & Integer.MIN_VALUE) != 0) {
                c04771.label -= Integer.MIN_VALUE;
            } else {
                c04771 = new C04771(continuation);
            }
        } else {
            c04771 = new C04771(continuation);
        }
        Object deviceAttributes = c04771.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04771.label;
        if (i == 0) {
            ResultKt.throwOnFailure(deviceAttributes);
            DeviceHelper deviceHelper = getDeviceHelper();
            c04771.L$0 = this;
            c04771.L$1 = list;
            c04771.L$2 = eventData;
            c04771.label = 1;
            deviceAttributes = deviceHelper.getDeviceAttributes(eventData, list2, c04771);
            if (deviceAttributes == coroutine_suspended) {
                return coroutine_suspended;
            }
            dependencyContainer = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eventData = (EventData) c04771.L$2;
            list = (List) c04771.L$1;
            dependencyContainer = (DependencyContainer) c04771.L$0;
            ResultKt.throwOnFailure(deviceAttributes);
        }
        Map map = (Map) deviceAttributes;
        if (list == null) {
            list = CollectionsKt.emptyList();
        }
        if (eventData == null || (mapEmptyMap = eventData.getParameters()) == null) {
            mapEmptyMap = MapsKt.emptyMap();
        }
        return new Variables(list, mapEmptyMap, dependencyContainer.getIdentityManager().getUserAttributes(), map).templated();
    }

    @Override // com.superwall.sdk.dependencies.StoreTransactionFactory
    public Object makeStoreTransaction(Purchase purchase, Continuation<? super StoreTransaction> continuation) {
        String requestId;
        GoogleBillingPurchaseTransaction googleBillingPurchaseTransaction = new GoogleBillingPurchaseTransaction(purchase);
        Config config = getConfigManager().getConfig();
        if (config == null || (requestId = config.getRequestId()) == null) {
            requestId = "";
        }
        return new StoreTransaction(googleBillingPurchaseTransaction, requestId, this.appSessionManager.getAppSession().getId());
    }

    @Override // com.superwall.sdk.dependencies.StoreTransactionFactory
    public Object activeProductIds(Continuation<? super List<String>> continuation) {
        return CollectionsKt.toList(this.storeManager.getReceiptManager().getPurchases());
    }

    @Override // com.superwall.sdk.dependencies.IdentityManagerFactory
    public Object makeIdentityManager(Continuation<? super IdentityManager> continuation) {
        return getIdentityManager();
    }

    @Override // com.superwall.sdk.dependencies.TransactionVerifierFactory
    public GoogleBillingWrapper makeTransactionVerifier() {
        return this.googleBillingWrapper;
    }

    @Override // com.superwall.sdk.dependencies.OptionsFactory
    public SuperwallOptions makeSuperwallOptions() {
        return getConfigManager().getOptions();
    }

    @Override // com.superwall.sdk.dependencies.TriggerFactory
    public Object makeTriggers(Continuation<? super Set<String>> continuation) {
        return getConfigManager().getTriggersByEventName().keySet();
    }

    @Override // com.superwall.sdk.paywall.presentation.rule_logic.javascript.RuleEvaluator.Factory
    public Object provideRuleEvaluator(Context context, Continuation<? super ExpressionEvaluating> continuation) {
        return getEvaluator();
    }

    @Override // com.superwall.sdk.dependencies.ConfigAttributesFactory
    public InternalSuperwallEvent.ConfigAttributes makeConfigAttributes() {
        return new InternalSuperwallEvent.ConfigAttributes(getConfigManager().getOptions(), makeHasExternalPurchaseController(), (this.delegateAdapter.getKotlinDelegate() == null && this.delegateAdapter.getJavaDelegate() == null) ? false : true);
    }

    private final SuperwallStoreOwner getStoreOwner() {
        return new SuperwallStoreOwner();
    }

    private final ViewModelFactory getVmFactory() {
        return new ViewModelFactory();
    }

    @Override // com.superwall.sdk.dependencies.ViewStoreFactory
    public ViewStorageViewModel makeViewStore() {
        return (ViewStorageViewModel) this.vmProvider.get(ViewStorageViewModel.class);
    }

    @Override // com.superwall.sdk.dependencies.SuperwallScopeFactory
    public MainScope mainScope() {
        if (this._mainScope == null) {
            this._mainScope = new MainScope(null, 1, null);
        }
        MainScope mainScope = this._mainScope;
        Intrinsics.checkNotNull(mainScope);
        return mainScope;
    }

    @Override // com.superwall.sdk.dependencies.SuperwallScopeFactory
    public IOScope ioScope() {
        if (this._ioScope == null) {
            this._ioScope = new IOScope(null, 1, null);
        }
        IOScope iOScope = this._ioScope;
        Intrinsics.checkNotNull(iOScope);
        return iOScope;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showWebRestoreSuccesful() {
        PaywallView paywallView = Superwall.INSTANCE.getInstance().getPaywallView();
        if (paywallView != null) {
            BuildersKt__Builders_commonKt.launch$default(getIoScope(), null, null, new C04821(paywallView, null), 3, null);
            if (makeSuperwallOptions().getPaywalls().getAutomaticallyDismiss()) {
                BuildersKt__Builders_commonKt.launch$default(getIoScope(), null, null, new C04832(null), 3, null);
            }
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$showWebRestoreSuccesful$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$showWebRestoreSuccesful$1", f = "DependencyContainer.kt", i = {}, l = {1111}, m = "invokeSuspend", n = {}, s = {})
    static final class C04821 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PaywallView $paywallView;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04821(PaywallView paywallView, Continuation<? super C04821> continuation) {
            super(2, continuation);
            this.$paywallView = paywallView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04821(this.$paywallView, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04821) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (TrackingKt.track(Superwall.INSTANCE.getInstance(), new InternalSuperwallEvent.Restore(InternalSuperwallEvent.Restore.State.Complete.INSTANCE, this.$paywallView.getInfo()), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            this.$paywallView.handle(PaywallMessage.Restore.INSTANCE);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$showWebRestoreSuccesful$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$showWebRestoreSuccesful$2", f = "DependencyContainer.kt", i = {}, l = {1121}, m = "invokeSuspend", n = {}, s = {})
    static final class C04832 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C04832(Continuation<? super C04832> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04832(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04832) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PublicPresentationKt.dismiss(Superwall.INSTANCE.getInstance(), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    private final void trackRestorationFailure(String message) {
        PaywallView paywallView = Superwall.INSTANCE.getInstance().getPaywallView();
        SuperwallOptions superwallOptionsMakeSuperwallOptions = makeSuperwallOptions();
        if (paywallView != null) {
            BuildersKt__Builders_commonKt.launch$default(getIoScope(), null, null, new C04861(new InternalSuperwallEvent.Restore(new InternalSuperwallEvent.Restore.State.Failure(message), paywallView.getInfo()), null), 3, null);
            paywallView.handle(new PaywallMessage.RestoreFailed(message));
            PaywallView.showAlert$default(paywallView, superwallOptionsMakeSuperwallOptions.getPaywalls().getRestoreFailed().getTitle(), superwallOptionsMakeSuperwallOptions.getPaywalls().getRestoreFailed().getMessage(), null, superwallOptionsMakeSuperwallOptions.getPaywalls().getRestoreFailed().getCloseButtonTitle(), null, null, 52, null);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$trackRestorationFailure$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$trackRestorationFailure$1", f = "DependencyContainer.kt", i = {}, l = {1138}, m = "invokeSuspend", n = {}, s = {})
    static final class C04861 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ InternalSuperwallEvent.Restore $trackedEvent;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04861(InternalSuperwallEvent.Restore restore, Continuation<? super C04861> continuation) {
            super(2, continuation);
            this.$trackedEvent = restore;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04861(this.$trackedEvent, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04861) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (TrackingKt.track(Superwall.INSTANCE.getInstance(), this.$trackedEvent, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    /* JADX INFO: renamed from: context, reason: from getter */
    public Context getContext() {
        return this.context;
    }

    @Override // com.superwall.sdk.dependencies.ExperimentalPropertiesFactory
    public Map<String, Object> experimentalProperties() {
        return this.storeManager.getReceiptManager().experimentalProperties();
    }

    @Override // com.superwall.sdk.dependencies.AttributesFactory
    public Map<String, Object> getCurrentUserAttributes() {
        return getIdentityManager().getUserAttributes();
    }

    @Override // com.superwall.sdk.dependencies.EnrichmentFactory
    public String demandTier() {
        return getDeviceHelper().getDemandTier$superwall_release();
    }

    @Override // com.superwall.sdk.dependencies.EnrichmentFactory
    public Integer demandScore() {
        return getDeviceHelper().getDemandScore$superwall_release();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.dependencies.TrackingFactory
    /* JADX INFO: renamed from: track-gIAlu-s, reason: not valid java name */
    public Object mo10617trackgIAlus(TrackableSuperwallEvent trackableSuperwallEvent, Continuation<? super Result<TrackingResult>> continuation) {
        C04841 c04841;
        if (continuation instanceof C04841) {
            c04841 = (C04841) continuation;
            if ((c04841.label & Integer.MIN_VALUE) != 0) {
                c04841.label -= Integer.MIN_VALUE;
            } else {
                c04841 = new C04841(continuation);
            }
        } else {
            c04841 = new C04841(continuation);
        }
        Object obj = c04841.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04841.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return ((Result) obj).getValue();
        }
        ResultKt.throwOnFailure(obj);
        c04841.label = 1;
        Object objTrack = TrackingKt.track(Superwall.INSTANCE.getInstance(), trackableSuperwallEvent, c04841);
        return objTrack == coroutine_suspended ? coroutine_suspended : objTrack;
    }

    @Override // com.superwall.sdk.dependencies.DelegateAdapterFactory
    /* JADX INFO: renamed from: delegate, reason: from getter */
    public SuperwallDelegateAdapter getDelegateAdapter() {
        return this.delegateAdapter;
    }

    @Override // com.superwall.sdk.dependencies.CustomerInfoFactory
    public StateFlow<CustomerInfo> customerInfoFlow() {
        return Superwall.INSTANCE.getInstance().m10569getCustomerInfo();
    }

    @Override // com.superwall.sdk.dependencies.ActiveEntitlementsFactory
    public Set<Entitlement> activeEntitlements() {
        return this.entitlements.getActive();
    }

    @Override // com.superwall.sdk.dependencies.PresentationFactory
    public void updatePaywallInfo(PaywallInfo paywallInfo) {
        Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
        Superwall.INSTANCE.getInstance().getPresentationItems().setPaywallInfo(paywallInfo);
    }

    @Override // com.superwall.sdk.dependencies.PresentationFactory
    public Object storePresentationObject(PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Unit> continuation) {
        Object objStorePresentationObjects = StorePresentationObjectsKt.storePresentationObjects(Superwall.INSTANCE.getInstance(), presentationRequest, mutableSharedFlow, continuation);
        return objStorePresentationObjects == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objStorePresentationObjects : Unit.INSTANCE;
    }

    @Override // com.superwall.sdk.dependencies.PresentationFactory
    public Object internallyGetPresentationResult(Trackable trackable, boolean z, Continuation<? super Unit> continuation) {
        Object objInternallyGetPresentationResult = PublicGetPresentationResultKt.internallyGetPresentationResult(Superwall.INSTANCE.getInstance(), trackable, z, continuation);
        return objInternallyGetPresentationResult == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInternallyGetPresentationResult : Unit.INSTANCE;
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public void willRedeemLink() {
        this.delegateAdapter.willRedeemLink();
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public void didRedeemLink(RedemptionResult redemptionResult) {
        Intrinsics.checkNotNullParameter(redemptionResult, "redemptionResult");
        this.delegateAdapter.didRedeemLink(redemptionResult);
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public long maxAge() {
        WebToAppConfig webToAppConfig;
        Config config = getConfigManager().getConfig();
        return (config == null || (webToAppConfig = config.getWebToAppConfig()) == null) ? CalendarModelKt.MillisecondsIn24Hours : webToAppConfig.getEntitlementsMaxAgeMs();
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public Set<Entitlement> getActiveDeviceEntitlements() {
        return this.entitlements.getActiveDeviceEntitlements$superwall_release();
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    /* JADX INFO: renamed from: getUserId-P5Wmf0A, reason: not valid java name */
    public String mo10616getUserIdP5Wmf0A() {
        String appUserId = getIdentityManager().getAppUserId();
        if (appUserId != null) {
            return UserId.m10641constructorimpl(appUserId);
        }
        return null;
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public DeviceVendorId getDeviceId() {
        return new DeviceVendorId(VendorId.m10648constructorimpl(getDeviceHelper().getVendorId()), null);
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public String getAliasId() {
        return getIdentityManager().getAliasId();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.dependencies.ApiFactory, com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public Object track(Trackable trackable, Continuation<? super Unit> continuation) {
        C04852 c04852;
        if (continuation instanceof C04852) {
            c04852 = (C04852) continuation;
            if ((c04852.label & Integer.MIN_VALUE) != 0) {
                c04852.label -= Integer.MIN_VALUE;
            } else {
                c04852 = new C04852(continuation);
            }
        } else {
            c04852 = new C04852(continuation);
        }
        Object obj = c04852.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04852.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Superwall companion = Superwall.INSTANCE.getInstance();
            c04852.label = 1;
            if (TrackingKt.track(companion, trackable, c04852) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ((Result) obj).getValue();
        }
        return Unit.INSTANCE;
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public void internallySetSubscriptionStatus(SubscriptionStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        Superwall.INSTANCE.getInstance().internallySetSubscriptionStatus$superwall_release(status);
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public Object isPaywallVisible(Continuation<? super Boolean> continuation) {
        return Boxing.boxBoolean(Superwall.INSTANCE.getInstance().isPaywallPresented());
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public Object triggerRestoreInPaywall(Continuation<? super Unit> continuation) {
        showWebRestoreSuccesful();
        return Unit.INSTANCE;
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public Set<Entitlement> currentPaywallEntitlements() {
        PaywallViewState state;
        Paywall paywall;
        List<String> productIds;
        PaywallView paywallView = Superwall.INSTANCE.getInstance().getPaywallView();
        if (paywallView != null && (state = paywallView.getState()) != null && (paywall = state.getPaywall()) != null && (productIds = paywall.getProductIds()) != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = productIds.iterator();
            while (it.hasNext()) {
                CollectionsKt.addAll(arrayList, this.entitlements.byProductId$superwall_release((String) it.next()));
            }
            Set<Entitlement> set = CollectionsKt.toSet(arrayList);
            if (set != null) {
                return set;
            }
        }
        return SetsKt.emptySet();
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public PaywallInfo getPaywallInfo() {
        PaywallInfo info;
        PaywallView paywallView = Superwall.INSTANCE.getInstance().getPaywallView();
        return (paywallView == null || (info = paywallView.getInfo()) == null) ? PaywallInfo.INSTANCE.empty() : info;
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public void trackRestorationFailed(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        trackRestorationFailure(message);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0084  */
    /* JADX WARN: Code duplicated, block: B:25:0x009d  */
    /* JADX WARN: Code duplicated, block: B:26:0x009f  */
    /* JADX WARN: Code duplicated, block: B:29:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:35:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:38:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x009d -> B:32:0x00c5). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00ba -> B:30:0x00bb). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public java.lang.Object receipts(kotlin.coroutines.Continuation<? super java.util.List<com.superwall.sdk.models.entitlements.TransactionReceipt>> r15) {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.dependencies.DependencyContainer.receipts(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public String getExternalAccountId() {
        return getIdentityManager().getExternalAccountId();
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public Map<String, Object> getIntegrationProps() {
        Map mapEmptyMap = (Map) getStorage().read(IntegrationAttributes.INSTANCE);
        if (mapEmptyMap == null) {
            mapEmptyMap = MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(mapEmptyMap.size()));
        for (Map.Entry entry : mapEmptyMap.entrySet()) {
            linkedHashMap.put(((AttributionProvider) entry.getKey()).toString(), entry.getValue());
        }
        return linkedHashMap;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.DependencyContainer$closePaywallIfExists$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DependencyContainer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$closePaywallIfExists$1", f = "DependencyContainer.kt", i = {}, l = {1276}, m = "invokeSuspend", n = {}, s = {})
    static final class C04761 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C04761(Continuation<? super C04761> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04761(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04761) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PublicPresentationKt.dismiss(Superwall.INSTANCE.getInstance(), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.superwall.sdk.web.WebPaywallRedeemer.Factory
    public void closePaywallIfExists() {
        BuildersKt__Builders_commonKt.launch$default(getIoScope(), null, null, new C04761(null), 3, null);
    }
}
