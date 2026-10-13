package com.superwall.sdk.store.transactions;

import android.app.Activity;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.extractor.ts.TsExtractor;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.Purchase;
import com.google.android.material.internal.ViewUtils;
import com.google.firebase.messaging.Constants;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import com.superwall.sdk.analytics.superwall.SuperwallEvents;
import com.superwall.sdk.config.options.SuperwallOptions;
import com.superwall.sdk.delegate.InternalPurchaseResult;
import com.superwall.sdk.delegate.PurchaseResult;
import com.superwall.sdk.delegate.RestorationResult;
import com.superwall.sdk.delegate.subscription_controller.PurchaseController;
import com.superwall.sdk.dependencies.AttributesFactory;
import com.superwall.sdk.dependencies.CacheFactory;
import com.superwall.sdk.dependencies.DeviceHelperFactory;
import com.superwall.sdk.dependencies.EnrichmentFactory;
import com.superwall.sdk.dependencies.HasExternalPurchaseControllerFactory;
import com.superwall.sdk.dependencies.HasInternalPurchaseControllerFactory;
import com.superwall.sdk.dependencies.OptionsFactory;
import com.superwall.sdk.dependencies.StoreTransactionFactory;
import com.superwall.sdk.dependencies.TransactionVerifierFactory;
import com.superwall.sdk.dependencies.TriggerFactory;
import com.superwall.sdk.dependencies.WebToAppFactory;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.ActivityProvider;
import com.superwall.sdk.misc.AlertControllerFactory;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.misc.ScopesKt;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallResult;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.PaywallViewState;
import com.superwall.sdk.paywall.view.delegate.PaywallLoadingState;
import com.superwall.sdk.storage.EventsQueue;
import com.superwall.sdk.storage.PurchasingProductdIds;
import com.superwall.sdk.storage.Storage;
import com.superwall.sdk.store.InternalPurchaseController;
import com.superwall.sdk.store.PurchasingObserverState;
import com.superwall.sdk.store.StoreManager;
import com.superwall.sdk.store.abstractions.product.RawStoreProduct;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.store.testmode.TestMode;
import com.superwall.sdk.store.testmode.TestModeTransactionHandler;
import com.superwall.sdk.web.OpenWebRestoreKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
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
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: TransactionManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¢\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002|}B³\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012$\b\u0002\u0010\u0010\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0011\u0012F\u0010\u0015\u001aB\b\u0001\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0016\u0012\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00140\u001e\u0012\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!\u0012\u0018\u0010#\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0$0\u001e\u0012\u001e\u0010&\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0$0'0!\u0012\u001c\u0010(\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001e\u0012\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00140!\u00126\u0010*\u001a2\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(+\u0012\u0013\u0012\u00110,¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(-\u0012\u0004\u0012\u00020\u00140\u0011\u0012]\u0010.\u001aY\b\u0001\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(0\u0012\u0015\u0012\u0013\u0018\u000101¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(2\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(3\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010/\u00123\b\u0002\u00104\u001a-\b\u0001\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(0\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0011\u0012\n\b\u0002\u00105\u001a\u0004\u0018\u000106\u0012\n\b\u0002\u00107\u001a\u0004\u0018\u000108\u0012\u0016\b\u0002\u00109\u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001e¢\u0006\u0004\b:\u0010;J \u0010G\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020H2\u0006\u0010I\u001a\u00020JH\u0080@¢\u0006\u0004\bK\u0010LJ\u0014\u0010M\u001a\u00020\u00142\f\u0010N\u001a\b\u0012\u0004\u0012\u00020\u00170OJ \u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020S2\b\b\u0002\u0010T\u001a\u00020DH\u0086@¢\u0006\u0002\u0010UJ\"\u0010V\u001a\u00020\u00142\n\b\u0002\u0010W\u001a\u0004\u0018\u00010X2\u0006\u0010R\u001a\u00020SH\u0082@¢\u0006\u0002\u0010YJ \u0010Z\u001a\u00020\u00142\u0006\u0010[\u001a\u00020\u00172\u0006\u0010W\u001a\u00020X2\u0006\u0010R\u001a\u00020SH\u0002J \u0010\\\u001a\u00020\u00142\u0006\u0010W\u001a\u00020X2\u0006\u0010]\u001a\u00020SH\u0080@¢\u0006\u0004\b^\u0010YJ:\u0010_\u001a\u00020\u00142\u0006\u0010W\u001a\u00020X2\u0006\u0010R\u001a\u00020S2\u0006\u0010`\u001a\u00020D2\n\b\u0002\u0010P\u001a\u0004\u0018\u00010a2\u0006\u0010T\u001a\u00020DH\u0082@¢\u0006\u0002\u0010bJ\u001e\u0010c\u001a\u00020\u00142\u0006\u0010W\u001a\u00020X2\u0006\u0010R\u001a\u00020SH\u0082@¢\u0006\u0002\u0010YJ\u0016\u0010d\u001a\u00020\u00142\u0006\u0010R\u001a\u00020SH\u0082@¢\u0006\u0002\u0010eJ\u0018\u0010f\u001a\u00020g2\b\u0010h\u001a\u0004\u0018\u00010iH\u0086@¢\u0006\u0002\u0010jJ\b\u0010k\u001a\u00020\u0014H\u0002J*\u0010l\u001a\u00020\u00142\n\u0010m\u001a\u00060nj\u0002`o2\u0006\u0010W\u001a\u00020X2\u0006\u0010I\u001a\u00020pH\u0082@¢\u0006\u0002\u0010qJ0\u0010r\u001a\u00020\u00142\b\u0010s\u001a\u0004\u0018\u00010t2\u0006\u0010W\u001a\u00020X2\u0006\u0010R\u001a\u00020S2\u0006\u0010`\u001a\u00020DH\u0082@¢\u0006\u0002\u0010uJ>\u0010v\u001a\u00020\u00142\b\b\u0002\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020\u00172\u0016\b\u0002\u0010z\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010'2\n\b\u0002\u0010m\u001a\u0004\u0018\u00010{H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\u0010\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0011X\u0082\u0004¢\u0006\u0004\n\u0002\u0010<RP\u0010\u0015\u001aB\b\u0001\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0016X\u0082\u0004¢\u0006\u0004\n\u0002\u0010=R\u001a\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00140\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010#\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0$0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010&\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0$0'0!X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010(\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001eX\u0082\u0004¢\u0006\u0004\n\u0002\u0010>R\u0014\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00140!X\u0082\u0004¢\u0006\u0002\n\u0000R>\u0010*\u001a2\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(+\u0012\u0013\u0012\u00110,¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(-\u0012\u0004\u0012\u00020\u00140\u0011X\u0082\u0004¢\u0006\u0002\n\u0000Rg\u0010.\u001aY\b\u0001\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(0\u0012\u0015\u0012\u0013\u0018\u000101¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(2\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(3\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010/X\u0082\u0004¢\u0006\u0004\n\u0002\u0010?R;\u00104\u001a-\b\u0001\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(0\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0011X\u0082\u0004¢\u0006\u0004\n\u0002\u0010<R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u00109\u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020B0AX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010C\u001a\u00020D8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bE\u0010F¨\u0006~"}, d2 = {"Lcom/superwall/sdk/store/transactions/TransactionManager;", "", "storeManager", "Lcom/superwall/sdk/store/StoreManager;", "purchaseController", "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;", "eventsQueue", "Lcom/superwall/sdk/storage/EventsQueue;", "storage", "Lcom/superwall/sdk/storage/Storage;", "activityProvider", "Lcom/superwall/sdk/misc/ActivityProvider;", "factory", "Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "track", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "Lkotlin/coroutines/Continuation;", "", "dismiss", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "paywallId", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "result", "showAlert", "Lkotlin/Function1;", "Lcom/superwall/sdk/misc/AlertControllerFactory$AlertProps;", "subscriptionStatus", "Lkotlin/Function0;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "entitlementsById", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "allEntitlementsByProductId", "", "showRestoreDialogForWeb", "refreshReceipt", "updateState", "cacheKey", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "update", "notifyOfTransactionComplete", "Lkotlin/Function4;", "paywallCacheKey", "", "trialEndDate", "productId", "notifyOfTransactionAbandon", "testMode", "Lcom/superwall/sdk/store/testmode/TestMode;", "testModeTransactionHandler", "Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;", "setSubscriptionStatus", "<init>", "(Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/storage/EventsQueue;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;Lkotlin/jvm/functions/Function1;)V", "Lkotlin/jvm/functions/Function2;", "Lkotlin/jvm/functions/Function3;", "Lkotlin/jvm/functions/Function1;", "Lkotlin/jvm/functions/Function4;", "transactionsInProgress", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/android/billingclient/api/ProductDetails;", "shouldObserveTransactionFinishingAutomatically", "", "getShouldObserveTransactionFinishingAutomatically", "()Z", "handle", "Lcom/superwall/sdk/delegate/InternalPurchaseResult;", "state", "Lcom/superwall/sdk/store/PurchasingObserverState;", "handle$superwall_release", "(Lcom/superwall/sdk/delegate/InternalPurchaseResult;Lcom/superwall/sdk/store/PurchasingObserverState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updatePaymentQueue", "removedTransactions", "", "purchase", "Lcom/superwall/sdk/delegate/PurchaseResult;", "purchaseSource", "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;", "shouldDismiss", "(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "didRestore", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "trackFailure", "errorMessage", "prepareToPurchase", Constants.ScionAnalytics.PARAM_SOURCE, "prepareToPurchase$superwall_release", "didPurchase", "didStartFreeTrial", "Lcom/android/billingclient/api/Purchase;", "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLcom/android/billingclient/api/Purchase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "trackCancelled", "handlePendingTransaction", "(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tryToRestorePurchases", "Lcom/superwall/sdk/delegate/RestorationResult;", "paywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "askToRestoreFromWeb", "presentAlert", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "Ljava/lang/Error;", "Lkotlin/Error;", "Lcom/superwall/sdk/paywall/view/PaywallViewState;", "(Ljava/lang/Error;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/paywall/view/PaywallViewState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "trackTransactionDidSucceed", "transaction", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;", "(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "log", "logLevel", "Lcom/superwall/sdk/logger/LogLevel;", "message", "info", "", "PurchaseSource", "Factory", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TransactionManager {
    private final ActivityProvider activityProvider;
    private final Function0<Map<String, Set<Entitlement>>> allEntitlementsByProductId;
    private final Function3<String, PaywallResult, Continuation<? super Unit>, Object> dismiss;
    private final Function1<String, Set<Entitlement>> entitlementsById;
    private final EventsQueue eventsQueue;
    private final Factory factory;
    private final IOScope ioScope;
    private final Function2<String, Continuation<? super Unit>, Object> notifyOfTransactionAbandon;
    private final Function4<String, Long, String, Continuation<? super Unit>, Object> notifyOfTransactionComplete;
    private final PurchaseController purchaseController;
    private final Function0<Unit> refreshReceipt;
    private final Function1<SubscriptionStatus, Unit> setSubscriptionStatus;
    private final Function1<AlertControllerFactory.AlertProps, Unit> showAlert;
    private final Function1<Continuation<? super Unit>, Object> showRestoreDialogForWeb;
    private final Storage storage;
    private final StoreManager storeManager;
    private final Function0<SubscriptionStatus> subscriptionStatus;
    private final TestMode testMode;
    private final TestModeTransactionHandler testModeTransactionHandler;
    private final Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> track;
    private ConcurrentHashMap<String, ProductDetails> transactionsInProgress;
    private final Function2<String, PaywallViewState.Updates, Unit> updateState;

    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;", "Lcom/superwall/sdk/dependencies/OptionsFactory;", "Lcom/superwall/sdk/dependencies/TriggerFactory;", "Lcom/superwall/sdk/dependencies/TransactionVerifierFactory;", "Lcom/superwall/sdk/dependencies/StoreTransactionFactory;", "Lcom/superwall/sdk/dependencies/DeviceHelperFactory;", "Lcom/superwall/sdk/dependencies/CacheFactory;", "Lcom/superwall/sdk/dependencies/HasExternalPurchaseControllerFactory;", "Lcom/superwall/sdk/dependencies/HasInternalPurchaseControllerFactory;", "Lcom/superwall/sdk/dependencies/WebToAppFactory;", "Lcom/superwall/sdk/dependencies/AttributesFactory;", "Lcom/superwall/sdk/dependencies/EnrichmentFactory;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Factory extends OptionsFactory, TriggerFactory, TransactionVerifierFactory, StoreTransactionFactory, DeviceHelperFactory, CacheFactory, HasExternalPurchaseControllerFactory, HasInternalPurchaseControllerFactory, WebToAppFactory, AttributesFactory, EnrichmentFactory {
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$didPurchase$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager", f = "TransactionManager.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 7}, l = {651, 655, 657, 660, 680, 684, 686, 693, 695}, m = "didPurchase", n = {"this", "product", "purchaseSource", "didStartFreeTrial", "shouldDismiss", "this", "product", "purchaseSource", "transaction", "didStartFreeTrial", "shouldDismiss", "this", "product", "purchaseSource", "shouldDismiss", "this", "product", "purchaseSource", "purchase", "transactionVerifier", "didStartFreeTrial", "this", "product", "purchaseSource", "didStartFreeTrial", "this", "product", "purchaseSource", "didStartFreeTrial", "this", "product", "purchaseSource", "transaction", "didStartFreeTrial"}, s = {"L$0", "L$1", "L$2", "Z$0", "Z$1", "L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1", "L$0", "L$1", "L$2", "Z$0", "L$0", "L$1", "L$2", "L$3", "L$4", "Z$0", "L$0", "L$1", "L$2", "Z$0", "L$0", "L$1", "L$2", "Z$0", "L$0", "L$1", "L$2", "L$3", "Z$0"})
    static final class C06091 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        C06091(Continuation<? super C06091> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransactionManager.this.didPurchase(null, null, false, null, false, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$didRestore$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager", f = "TransactionManager.kt", i = {0, 0, 0, 1, 1}, l = {444, 469, 473}, m = "didRestore", n = {"this", "product", "purchaseSource", "this", "purchaseSource"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1"})
    static final class C06101 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C06101(Continuation<? super C06101> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransactionManager.this.didRestore(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$handlePendingTransaction$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager", f = "TransactionManager.kt", i = {0}, l = {794, 822}, m = "handlePendingTransaction", n = {"this"}, s = {"L$0"})
    static final class C06111 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06111(Continuation<? super C06111> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransactionManager.this.handlePendingTransaction(null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$purchase$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager", f = "TransactionManager.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 4, 4, 4, 4, 4, 5, 6, 7, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 10, 11, 11, 11, 11, 11, 12, 13, 14}, l = {304, 305, 311, 314, 325, 329, 343, 346, 364, 366, 384, 391, TypedValues.Cycle.TYPE_CURVE_FIT, TypedValues.Cycle.TYPE_WAVE_PERIOD, 427}, m = "purchase", n = {"this", "purchaseSource", "product", "shouldDismiss", "this", "purchaseSource", "product", "shouldDismiss", "this", "purchaseSource", "product", "result", "shouldDismiss", "result", "this", "purchaseSource", "product", "result", "superwallOptions", "result", "result", "result", "this", "purchaseSource", "product", "rawStoreProduct", "productDetails", "activity", "shouldDismiss", "this", "purchaseSource", "product", "rawStoreProduct", "shouldDismiss", "result", "this", "purchaseSource", "product", "result", "shouldShowPurchaseFailureAlert", "result", "result", "result"}, s = {"L$0", "L$1", "L$2", "Z$0", "L$0", "L$1", "L$2", "Z$0", "L$0", "L$1", "L$2", "L$3", "Z$0", "L$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$0", "L$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "Z$0", "L$0", "L$1", "L$2", "L$3", "Z$0", "L$0", "L$0", "L$1", "L$2", "L$3", "Z$0", "L$0", "L$0", "L$0"})
    static final class C06151 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C06151(Continuation<? super C06151> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransactionManager.this.purchase(null, false, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$trackCancelled$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager", f = "TransactionManager.kt", i = {0, 0, 1, 1}, l = {732, 734, 763}, m = "trackCancelled", n = {"this", "paywallInfo", "this", "paywallInfo"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C06161 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C06161(Continuation<? super C06161> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransactionManager.this.trackCancelled(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$trackTransactionDidSucceed$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager", f = "TransactionManager.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 6, 6, 6, 7, 7, 7}, l = {1013, 1014, 1021, 1023, AnalyticsListener.EVENT_DRM_SESSION_RELEASED, AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED, 1049, 1050, 1058, 1063, 1070}, m = "trackTransactionDidSucceed", n = {"this", "product", "purchaseSource", "trialEnd", "paywallInfo", "didStartFreeTrial", "this", "product", "purchaseSource", "trialEnd", "paywallInfo", "didStartFreeTrial", "this", "product", "paywallInfo", "didStartFreeTrial", "this", "product", "didStartFreeTrial", "this", "product", "didStartFreeTrial"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "Z$0", "L$0", "L$1", "L$2", "L$3", "L$4", "Z$0", "L$0", "L$1", "L$2", "Z$0", "L$0", "L$1", "Z$0", "L$0", "L$1", "Z$0"})
    static final class C06211 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C06211(Continuation<? super C06211> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransactionManager.this.trackTransactionDidSucceed(null, null, null, false, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$tryToRestorePurchases$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager", f = "TransactionManager.kt", i = {0, 1, 1, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 5, 6, 6, 6, 6}, l = {838, 849, 855, 861, 877, 884, 910}, m = "tryToRestorePurchases", n = {"this", "this", "paywallView", "this", "paywallView", "this", "paywallView", "restorationResult", "status", "hasRestored", "hasEntitlements", "this", "paywallView", "restorationResult", "restorationResult", "this", "paywallView", "restorationResult", "webToAppEnabled"}, s = {"L$0", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$2", "L$3", "I$0", "I$1", "L$0", "L$1", "L$2", "L$0", "L$0", "L$1", "L$2", "Z$0"})
    static final class C06221 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C06221(Continuation<? super C06221> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransactionManager.this.tryToRestorePurchases(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TransactionManager(StoreManager storeManager, PurchaseController purchaseController, EventsQueue eventsQueue, Storage storage, ActivityProvider activityProvider, Factory factory, IOScope ioScope, Function2<? super TrackableSuperwallEvent, ? super Continuation<? super Unit>, ? extends Object> track, Function3<? super String, ? super PaywallResult, ? super Continuation<? super Unit>, ? extends Object> dismiss, Function1<? super AlertControllerFactory.AlertProps, Unit> showAlert, Function0<? extends SubscriptionStatus> subscriptionStatus, Function1<? super String, ? extends Set<Entitlement>> entitlementsById, Function0<? extends Map<String, ? extends Set<Entitlement>>> allEntitlementsByProductId, Function1<? super Continuation<? super Unit>, ? extends Object> showRestoreDialogForWeb, Function0<Unit> refreshReceipt, Function2<? super String, ? super PaywallViewState.Updates, Unit> updateState, Function4<? super String, ? super Long, ? super String, ? super Continuation<? super Unit>, ? extends Object> notifyOfTransactionComplete, Function2<? super String, ? super Continuation<? super Unit>, ? extends Object> notifyOfTransactionAbandon, TestMode testMode, TestModeTransactionHandler testModeTransactionHandler, Function1<? super SubscriptionStatus, Unit> function1) {
        Intrinsics.checkNotNullParameter(storeManager, "storeManager");
        Intrinsics.checkNotNullParameter(purchaseController, "purchaseController");
        Intrinsics.checkNotNullParameter(eventsQueue, "eventsQueue");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(activityProvider, "activityProvider");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(track, "track");
        Intrinsics.checkNotNullParameter(dismiss, "dismiss");
        Intrinsics.checkNotNullParameter(showAlert, "showAlert");
        Intrinsics.checkNotNullParameter(subscriptionStatus, "subscriptionStatus");
        Intrinsics.checkNotNullParameter(entitlementsById, "entitlementsById");
        Intrinsics.checkNotNullParameter(allEntitlementsByProductId, "allEntitlementsByProductId");
        Intrinsics.checkNotNullParameter(showRestoreDialogForWeb, "showRestoreDialogForWeb");
        Intrinsics.checkNotNullParameter(refreshReceipt, "refreshReceipt");
        Intrinsics.checkNotNullParameter(updateState, "updateState");
        Intrinsics.checkNotNullParameter(notifyOfTransactionComplete, "notifyOfTransactionComplete");
        Intrinsics.checkNotNullParameter(notifyOfTransactionAbandon, "notifyOfTransactionAbandon");
        this.storeManager = storeManager;
        this.purchaseController = purchaseController;
        this.eventsQueue = eventsQueue;
        this.storage = storage;
        this.activityProvider = activityProvider;
        this.factory = factory;
        this.ioScope = ioScope;
        this.track = track;
        this.dismiss = dismiss;
        this.showAlert = showAlert;
        this.subscriptionStatus = subscriptionStatus;
        this.entitlementsById = entitlementsById;
        this.allEntitlementsByProductId = allEntitlementsByProductId;
        this.showRestoreDialogForWeb = showRestoreDialogForWeb;
        this.refreshReceipt = refreshReceipt;
        this.updateState = updateState;
        this.notifyOfTransactionComplete = notifyOfTransactionComplete;
        this.notifyOfTransactionAbandon = notifyOfTransactionAbandon;
        this.testMode = testMode;
        this.testModeTransactionHandler = testModeTransactionHandler;
        this.setSubscriptionStatus = function1;
        this.transactionsInProgress = new ConcurrentHashMap<>();
        if (getShouldObserveTransactionFinishingAutomatically()) {
            BuildersKt__Builders_commonKt.launch$default(ioScope, null, null, new AnonymousClass4(null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$1, reason: invalid class name */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager$1", f = "TransactionManager.kt", i = {}, l = {69}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(TrackableSuperwallEvent trackableSuperwallEvent, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(trackableSuperwallEvent, continuation)).invokeSuspend(Unit.INSTANCE);
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

    public /* synthetic */ TransactionManager(StoreManager storeManager, PurchaseController purchaseController, EventsQueue eventsQueue, Storage storage, ActivityProvider activityProvider, Factory factory, IOScope iOScope, Function2 function2, Function3 function3, Function1 function1, Function0 function0, Function1 function4, Function0 function5, Function1 function6, Function0 function7, Function2 function8, Function4 function9, Function2 function10, TestMode testMode, TestModeTransactionHandler testModeTransactionHandler, Function1 function11, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(storeManager, purchaseController, eventsQueue, storage, activityProvider, factory, iOScope, (i & 128) != 0 ? new AnonymousClass1(null) : function2, function3, function1, (i & 1024) != 0 ? new Function0() { // from class: com.superwall.sdk.store.transactions.TransactionManager$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TransactionManager._init_$lambda$0();
            }
        } : function0, function4, function5, function6, function7, function8, function9, (131072 & i) != 0 ? new AnonymousClass3(null) : function10, (262144 & i) != 0 ? null : testMode, (524288 & i) != 0 ? null : testModeTransactionHandler, (i & 1048576) != 0 ? null : function11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SubscriptionStatus _init_$lambda$0() {
        return Superwall.INSTANCE.getInstance().getEntitlements().getStatus().getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$3, reason: invalid class name */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager$3", f = "TransactionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<String, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(String str, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(str, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;", "", "<init>", "()V", "Internal", "ExternalPurchase", "ObserverMode", "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;", "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;", "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class PurchaseSource {
        public /* synthetic */ PurchaseSource(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private PurchaseSource() {
        }

        /* JADX INFO: compiled from: TransactionManager.kt */
        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;", "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;", "productId", "", "state", "Lcom/superwall/sdk/paywall/view/PaywallViewState;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/paywall/view/PaywallViewState;)V", "getProductId", "()Ljava/lang/String;", "getState", "()Lcom/superwall/sdk/paywall/view/PaywallViewState;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Internal extends PurchaseSource {
            private final String productId;
            private final PaywallViewState state;

            public static /* synthetic */ Internal copy$default(Internal internal, String str, PaywallViewState paywallViewState, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = internal.productId;
                }
                if ((i & 2) != 0) {
                    paywallViewState = internal.state;
                }
                return internal.copy(str, paywallViewState);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getProductId() {
                return this.productId;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final PaywallViewState getState() {
                return this.state;
            }

            public final Internal copy(String productId, PaywallViewState state) {
                Intrinsics.checkNotNullParameter(productId, "productId");
                Intrinsics.checkNotNullParameter(state, "state");
                return new Internal(productId, state);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Internal)) {
                    return false;
                }
                Internal internal = (Internal) other;
                return Intrinsics.areEqual(this.productId, internal.productId) && Intrinsics.areEqual(this.state, internal.state);
            }

            public int hashCode() {
                return (this.productId.hashCode() * 31) + this.state.hashCode();
            }

            public String toString() {
                return "Internal(productId=" + this.productId + ", state=" + this.state + ")";
            }

            public final String getProductId() {
                return this.productId;
            }

            public final PaywallViewState getState() {
                return this.state;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Internal(String productId, PaywallViewState state) {
                super(null);
                Intrinsics.checkNotNullParameter(productId, "productId");
                Intrinsics.checkNotNullParameter(state, "state");
                this.productId = productId;
                this.state = state;
            }

            public final PaywallInfo getPaywallInfo() {
                return this.state.getInfo();
            }
        }

        /* JADX INFO: compiled from: TransactionManager.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;", "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "<init>", "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class ExternalPurchase extends PurchaseSource {
            private final StoreProduct product;

            public static /* synthetic */ ExternalPurchase copy$default(ExternalPurchase externalPurchase, StoreProduct storeProduct, int i, Object obj) {
                if ((i & 1) != 0) {
                    storeProduct = externalPurchase.product;
                }
                return externalPurchase.copy(storeProduct);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final StoreProduct getProduct() {
                return this.product;
            }

            public final ExternalPurchase copy(StoreProduct product) {
                Intrinsics.checkNotNullParameter(product, "product");
                return new ExternalPurchase(product);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof ExternalPurchase) && Intrinsics.areEqual(this.product, ((ExternalPurchase) other).product);
            }

            public int hashCode() {
                return this.product.hashCode();
            }

            public String toString() {
                return "ExternalPurchase(product=" + this.product + ")";
            }

            public final StoreProduct getProduct() {
                return this.product;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ExternalPurchase(StoreProduct product) {
                super(null);
                Intrinsics.checkNotNullParameter(product, "product");
                this.product = product;
            }
        }

        /* JADX INFO: compiled from: TransactionManager.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;", "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "<init>", "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class ObserverMode extends PurchaseSource {
            private final StoreProduct product;

            public static /* synthetic */ ObserverMode copy$default(ObserverMode observerMode, StoreProduct storeProduct, int i, Object obj) {
                if ((i & 1) != 0) {
                    storeProduct = observerMode.product;
                }
                return observerMode.copy(storeProduct);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final StoreProduct getProduct() {
                return this.product;
            }

            public final ObserverMode copy(StoreProduct product) {
                Intrinsics.checkNotNullParameter(product, "product");
                return new ObserverMode(product);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof ObserverMode) && Intrinsics.areEqual(this.product, ((ObserverMode) other).product);
            }

            public int hashCode() {
                return this.product.hashCode();
            }

            public String toString() {
                return "ObserverMode(product=" + this.product + ")";
            }

            public final StoreProduct getProduct() {
                return this.product;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ObserverMode(StoreProduct product) {
                super(null);
                Intrinsics.checkNotNullParameter(product, "product");
                this.product = product;
            }
        }
    }

    private final boolean getShouldObserveTransactionFinishingAutomatically() {
        return this.factory.makeSuperwallOptions().getShouldObservePurchases();
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$4, reason: invalid class name */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager$4", f = "TransactionManager.kt", i = {}, l = {133}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass4(Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionManager.this.new AnonymousClass4(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (FlowKt.collectLatest(FlowKt.filterNotNull(FlowKt.dropWhile(FlowKt.asSharedFlow(TransactionManager.this.storeManager.getBilling().getPurchaseResults()), new AnonymousClass1(TransactionManager.this, null))), new AnonymousClass2(TransactionManager.this, null), this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$4$1, reason: invalid class name */
        /* JADX INFO: compiled from: TransactionManager.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/delegate/InternalPurchaseResult;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager$4$1", f = "TransactionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<InternalPurchaseResult, Continuation<? super Boolean>, Object> {
            int label;
            final /* synthetic */ TransactionManager this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(TransactionManager transactionManager, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = transactionManager;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(InternalPurchaseResult internalPurchaseResult, Continuation<? super Boolean> continuation) {
                return ((AnonymousClass1) create(internalPurchaseResult, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    return Boxing.boxBoolean(this.this$0.transactionsInProgress.isEmpty());
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$4$2, reason: invalid class name */
        /* JADX INFO: compiled from: TransactionManager.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/delegate/InternalPurchaseResult;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager$4$2", f = "TransactionManager.kt", i = {}, l = {TsExtractor.TS_STREAM_TYPE_AC4}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass2 extends SuspendLambda implements Function2<InternalPurchaseResult, Continuation<? super Unit>, Object> {
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ TransactionManager this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(TransactionManager transactionManager, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.this$0 = transactionManager;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, continuation);
                anonymousClass2.L$0 = obj;
                return anonymousClass2;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(InternalPurchaseResult internalPurchaseResult, Continuation<? super Unit> continuation) {
                return ((AnonymousClass2) create(internalPurchaseResult, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Throwable th;
                PurchasingObserverState.PurchaseError purchaseError;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    InternalPurchaseResult internalPurchaseResult = (InternalPurchaseResult) this.L$0;
                    if (internalPurchaseResult instanceof InternalPurchaseResult.Purchased) {
                        InternalPurchaseResult.Purchased purchased = (InternalPurchaseResult.Purchased) internalPurchaseResult;
                        List<String> products = purchased.getPurchase().getProducts();
                        Intrinsics.checkNotNullExpressionValue(products, "getProducts(...)");
                        TransactionManager transactionManager = this.this$0;
                        Iterator<T> it = products.iterator();
                        while (it.hasNext()) {
                            transactionManager.transactionsInProgress.remove((String) it.next());
                        }
                        BillingResult billingResultBuild = BillingResult.newBuilder().setResponseCode(0).build();
                        Intrinsics.checkNotNullExpressionValue(billingResultBuild, "build(...)");
                        purchaseError = new PurchasingObserverState.PurchaseResult(billingResultBuild, CollectionsKt.listOf(purchased.getPurchase()));
                    } else if (internalPurchaseResult instanceof InternalPurchaseResult.Cancelled) {
                        Set setEntrySet = this.this$0.transactionsInProgress.entrySet();
                        Intrinsics.checkNotNullExpressionValue(setEntrySet, "<get-entries>(...)");
                        Object objLast = CollectionsKt.last(setEntrySet);
                        Intrinsics.checkNotNullExpressionValue(objLast, "last(...)");
                        this.this$0.transactionsInProgress.remove(((Map.Entry) objLast).getKey());
                        BillingResult billingResultBuild2 = BillingResult.newBuilder().setResponseCode(1).build();
                        Intrinsics.checkNotNullExpressionValue(billingResultBuild2, "build(...)");
                        purchaseError = new PurchasingObserverState.PurchaseResult(billingResultBuild2, CollectionsKt.emptyList());
                    } else {
                        Set setEntrySet2 = this.this$0.transactionsInProgress.entrySet();
                        Intrinsics.checkNotNullExpressionValue(setEntrySet2, "<get-entries>(...)");
                        Object objLast2 = CollectionsKt.last(setEntrySet2);
                        Intrinsics.checkNotNullExpressionValue(objLast2, "last(...)");
                        Map.Entry entry = (Map.Entry) objLast2;
                        this.this$0.transactionsInProgress.remove(entry.getKey());
                        InternalPurchaseResult.Failed failed = internalPurchaseResult instanceof InternalPurchaseResult.Failed ? (InternalPurchaseResult.Failed) internalPurchaseResult : null;
                        if (failed == null || (th = failed.getError()) == null) {
                            th = new Throwable("Unknown error");
                        }
                        Object value = entry.getValue();
                        Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                        purchaseError = new PurchasingObserverState.PurchaseError((ProductDetails) value, th);
                    }
                    this.label = 1;
                    if (this.this$0.handle$superwall_release(internalPurchaseResult, purchaseError, this) == coroutine_suspended) {
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

    /* JADX WARN: Code duplicated, block: B:101:0x0363  */
    /* JADX WARN: Code duplicated, block: B:103:0x0370  */
    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    /* JADX WARN: Code duplicated, block: B:91:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:94:0x032a  */
    /* JADX WARN: Code duplicated, block: B:96:0x033b  */
    /* JADX WARN: Code duplicated, block: B:99:0x0355  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x0363 -> B:102:0x0368). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0106 -> B:32:0x0127). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0167 -> B:40:0x016f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x0177 -> B:42:0x017e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x025d -> B:72:0x0282). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x02b4 -> B:80:0x02b9). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x02c2 -> B:82:0x02c7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x02ff -> B:92:0x0324). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x0355 -> B:100:0x035a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object handle$superwall_release(com.superwall.sdk.delegate.InternalPurchaseResult r24, com.superwall.sdk.store.PurchasingObserverState r25, kotlin.coroutines.Continuation<? super kotlin.Unit> r26) {
        /*
            Method dump skipped, instruction units count: 895
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.store.transactions.TransactionManager.handle$superwall_release(com.superwall.sdk.delegate.InternalPurchaseResult, com.superwall.sdk.store.PurchasingObserverState, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void updatePaymentQueue(List<String> removedTransactions) {
        ArrayList arrayListEmptyList;
        Intrinsics.checkNotNullParameter(removedTransactions, "removedTransactions");
        Set set = (Set) this.storage.read(PurchasingProductdIds.INSTANCE);
        if (set == null) {
            arrayListEmptyList = CollectionsKt.emptyList();
        } else {
            ArrayList arrayList = new ArrayList();
            for (Object obj : set) {
                String str = (String) obj;
                List<String> list = removedTransactions;
                boolean z = false;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        if (Intrinsics.areEqual((String) it.next(), str)) {
                            z = true;
                            break;
                        }
                    }
                }
                if (!z) {
                    arrayList.add(obj);
                }
            }
            arrayListEmptyList = arrayList;
        }
        this.storage.write(PurchasingProductdIds.INSTANCE, CollectionsKt.toSet(arrayListEmptyList));
    }

    public static /* synthetic */ Object purchase$default(TransactionManager transactionManager, PurchaseSource purchaseSource, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return transactionManager.purchase(purchaseSource, z, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:112:0x0350  */
    /* JADX WARN: Code duplicated, block: B:115:0x035b  */
    /* JADX WARN: Code duplicated, block: B:120:0x036d  */
    /* JADX WARN: Code duplicated, block: B:122:0x0374  */
    /* JADX WARN: Code duplicated, block: B:123:0x0376  */
    /* JADX WARN: Code duplicated, block: B:126:0x037b  */
    /* JADX WARN: Code duplicated, block: B:127:0x037d  */
    /* JADX WARN: Code duplicated, block: B:130:0x0384  */
    /* JADX WARN: Code duplicated, block: B:134:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:136:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:139:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:142:0x03e0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:148:0x0412  */
    /* JADX WARN: Code duplicated, block: B:150:0x0420  */
    /* JADX WARN: Code duplicated, block: B:152:0x0435  */
    /* JADX WARN: Code duplicated, block: B:154:0x0439  */
    /* JADX WARN: Code duplicated, block: B:157:0x044c  */
    /* JADX WARN: Code duplicated, block: B:159:0x0450  */
    /* JADX WARN: Code duplicated, block: B:162:0x0463 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:163:0x0464  */
    /* JADX WARN: Code duplicated, block: B:21:0x00d5 A[PHI: r1 r2 r3 r4 r5
      0x00d5: PHI (r1v34 java.lang.Object) = (r1v33 java.lang.Object), (r1v1 java.lang.Object) binds: [B:47:0x0184, B:20:0x00c4] A[DONT_GENERATE, DONT_INLINE]
      0x00d5: PHI (r2v21 boolean) = (r2v19 boolean), (r2v35 boolean) binds: [B:47:0x0184, B:20:0x00c4] A[DONT_GENERATE, DONT_INLINE]
      0x00d5: PHI (r3v12 com.superwall.sdk.store.abstractions.product.StoreProduct) = 
      (r3v9 com.superwall.sdk.store.abstractions.product.StoreProduct)
      (r3v17 com.superwall.sdk.store.abstractions.product.StoreProduct)
     binds: [B:47:0x0184, B:20:0x00c4] A[DONT_GENERATE, DONT_INLINE]
      0x00d5: PHI (r4v9 com.superwall.sdk.store.transactions.TransactionManager$PurchaseSource) = 
      (r4v6 com.superwall.sdk.store.transactions.TransactionManager$PurchaseSource)
      (r4v21 com.superwall.sdk.store.transactions.TransactionManager$PurchaseSource)
     binds: [B:47:0x0184, B:20:0x00c4] A[DONT_GENERATE, DONT_INLINE]
      0x00d5: PHI (r5v7 com.superwall.sdk.store.transactions.TransactionManager) = 
      (r5v4 com.superwall.sdk.store.transactions.TransactionManager)
      (r5v12 com.superwall.sdk.store.transactions.TransactionManager)
     binds: [B:47:0x0184, B:20:0x00c4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:51:0x018e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0198  */
    /* JADX WARN: Code duplicated, block: B:57:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:59:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:61:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:67:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:69:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:71:0x020b  */
    /* JADX WARN: Code duplicated, block: B:74:0x0228  */
    /* JADX WARN: Code duplicated, block: B:77:0x0246 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    /* JADX WARN: Code duplicated, block: B:84:0x0285  */
    /* JADX WARN: Code duplicated, block: B:86:0x0289  */
    /* JADX WARN: Code duplicated, block: B:89:0x029a  */
    /* JADX WARN: Code duplicated, block: B:91:0x029e  */
    /* JADX WARN: Code duplicated, block: B:94:0x02b0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:95:0x02b1  */
    public final Object purchase(PurchaseSource purchaseSource, boolean z, Continuation<? super PurchaseResult> continuation) {
        C06151 c06151;
        StoreProduct product;
        RawStoreProduct rawStoreProduct;
        Activity currentActivity;
        boolean z2;
        StoreProduct storeProduct;
        TransactionManager transactionManager;
        ProductDetails productDetails;
        PurchaseSource purchaseSource2;
        TransactionManager transactionManager2;
        PurchaseSource purchaseSource3;
        boolean z3;
        StoreProduct storeProduct2;
        TransactionManager transactionManager3;
        StoreProduct storeProduct3;
        PurchaseSource purchaseSource4;
        PurchaseResult purchaseResult;
        SuperwallOptions superwallOptionsMakeSuperwallOptions;
        Object objMakeTriggers;
        PurchaseResult purchaseResult2;
        StoreProduct storeProduct4;
        PurchaseSource purchaseSource5;
        TransactionManager transactionManager4;
        SubscriptionStatus subscriptionStatusBuildSubscriptionStatus;
        Function1<SubscriptionStatus, Unit> function1;
        boolean hasFreeTrial;
        StoreProduct storeProduct5;
        PurchaseSource purchaseSource6;
        TransactionManager transactionManager5;
        PurchaseResult purchaseResult3;
        Function3<String, PaywallResult, Continuation<? super Unit>, Object> function3;
        String cacheKey;
        PaywallResult.Purchased purchased;
        C06151 c06152;
        Object objPurchase;
        PurchaseSource purchaseSource7;
        TransactionManager transactionManager6;
        RawStoreProduct rawStoreProduct2;
        StoreProduct storeProduct6;
        PurchaseResult purchaseResult4;
        boolean z4;
        TransactionManager transactionManager7;
        boolean shouldShowPurchaseFailureAlert;
        Object objMakeTriggers2;
        PurchaseResult purchaseResult5;
        TransactionManager transactionManager8;
        boolean z5;
        if (continuation instanceof C06151) {
            c06151 = (C06151) continuation;
            if ((c06151.label & Integer.MIN_VALUE) != 0) {
                c06151.label -= Integer.MIN_VALUE;
            } else {
                c06151 = new C06151(continuation);
            }
        } else {
            c06151 = new C06151(continuation);
        }
        C06151 c06153 = c06151;
        Object objHandlePurchase = c06153.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c06153.label) {
            case 0:
                ResultKt.throwOnFailure(objHandlePurchase);
                if (purchaseSource instanceof PurchaseSource.Internal) {
                    PurchaseSource.Internal internal = (PurchaseSource.Internal) purchaseSource;
                    product = this.storeManager.getProductFromCache(internal.getProductId());
                    if (product == null) {
                        log$default(this, LogLevel.error, "Trying to purchase (" + internal.getProductId() + ") but the product has failed to load. Visit https://superwall.com/l/missing-products to diagnose.", null, null, 12, null);
                        return new PurchaseResult.Failed("Product not found");
                    }
                } else if (purchaseSource instanceof PurchaseSource.ExternalPurchase) {
                    product = ((PurchaseSource.ExternalPurchase) purchaseSource).getProduct();
                } else {
                    if (!(purchaseSource instanceof PurchaseSource.ObserverMode)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    product = ((PurchaseSource.ObserverMode) purchaseSource).getProduct();
                }
                StoreProduct storeProduct7 = product;
                TestMode testMode = this.testMode;
                if (testMode == null || !testMode.isTestMode() || this.testModeTransactionHandler == null) {
                    rawStoreProduct = storeProduct7.getRawStoreProduct();
                    if (rawStoreProduct == null) {
                        return new PurchaseResult.Failed("Missing raw store product for " + storeProduct7.getFullIdentifier());
                    }
                    log$default(this, null, "!!! Purchasing product " + rawStoreProduct.getHasFreeTrial(), null, null, 13, null);
                    ProductDetails underlyingProductDetails = rawStoreProduct.getUnderlyingProductDetails();
                    currentActivity = this.activityProvider.getCurrentActivity();
                    if (currentActivity == null) {
                        return new PurchaseResult.Failed("Activity not found - required for starting the billing flow");
                    }
                    c06153.L$0 = this;
                    c06153.L$1 = purchaseSource;
                    c06153.L$2 = storeProduct7;
                    c06153.L$3 = rawStoreProduct;
                    c06153.L$4 = underlyingProductDetails;
                    c06153.L$5 = currentActivity;
                    c06153.Z$0 = z;
                    c06153.label = 9;
                    if (prepareToPurchase$superwall_release(storeProduct7, purchaseSource, c06153) != coroutine_suspended) {
                        z2 = z;
                        storeProduct = storeProduct7;
                        transactionManager = this;
                        productDetails = underlyingProductDetails;
                        purchaseSource2 = purchaseSource;
                        Activity activity = currentActivity;
                        InternalPurchaseController purchaseController = transactionManager.storeManager.getPurchaseController();
                        String offerId$superwall_release = rawStoreProduct.getOfferId$superwall_release();
                        String basePlanId = rawStoreProduct.getBasePlanId();
                        c06153.L$0 = transactionManager;
                        c06153.L$1 = purchaseSource2;
                        c06153.L$2 = storeProduct;
                        c06153.L$3 = rawStoreProduct;
                        c06153.L$4 = null;
                        c06153.L$5 = null;
                        c06153.Z$0 = z2;
                        c06153.label = 10;
                        c06152 = c06153;
                        objPurchase = purchaseController.purchase(activity, productDetails, basePlanId, offerId$superwall_release, c06152);
                        if (objPurchase != coroutine_suspended) {
                            purchaseSource7 = purchaseSource2;
                            objHandlePurchase = objPurchase;
                            transactionManager6 = transactionManager;
                            rawStoreProduct2 = rawStoreProduct;
                            storeProduct6 = storeProduct;
                            purchaseResult4 = (PurchaseResult) objHandlePurchase;
                            if ((purchaseSource7 instanceof PurchaseSource.ExternalPurchase) || !transactionManager6.factory.makeHasExternalPurchaseController() || transactionManager6.factory.makeHasInternalPurchaseController()) {
                                if (rawStoreProduct2.getSelectedOffer() != null) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                if (purchaseResult4 instanceof PurchaseResult.Purchased) {
                                    z5 = !z4 && storeProduct6.getHasFreeTrial();
                                    c06152.L$0 = purchaseResult4;
                                    c06152.L$1 = null;
                                    c06152.L$2 = null;
                                    c06152.L$3 = null;
                                    c06152.label = 11;
                                    if (didPurchase$default(transactionManager6, storeProduct6, purchaseSource7, z5, null, z2, c06152, 8, null) == coroutine_suspended) {
                                    }
                                } else {
                                    transactionManager7 = transactionManager6;
                                    if (purchaseResult4 instanceof PurchaseResult.Failed) {
                                        shouldShowPurchaseFailureAlert = transactionManager7.factory.makeSuperwallOptions().getPaywalls().getShouldShowPurchaseFailureAlert();
                                        Factory factory = transactionManager7.factory;
                                        c06152.L$0 = transactionManager7;
                                        c06152.L$1 = purchaseSource7;
                                        c06152.L$2 = storeProduct6;
                                        c06152.L$3 = purchaseResult4;
                                        c06152.Z$0 = shouldShowPurchaseFailureAlert;
                                        c06152.label = 12;
                                        objMakeTriggers2 = factory.makeTriggers(c06152);
                                        if (objMakeTriggers2 != coroutine_suspended) {
                                            purchaseResult5 = purchaseResult4;
                                            objHandlePurchase = objMakeTriggers2;
                                            transactionManager8 = transactionManager7;
                                            boolean zContains = ((Set) objHandlePurchase).contains(SuperwallEvents.TransactionFail.getRawName());
                                            if (shouldShowPurchaseFailureAlert || zContains) {
                                                transactionManager8.trackFailure(((PurchaseResult.Failed) purchaseResult5).getErrorMessage(), storeProduct6, purchaseSource7);
                                                if (purchaseSource7 instanceof PurchaseSource.Internal) {
                                                    transactionManager8.updateState.invoke(((PurchaseSource.Internal) purchaseSource7).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                                                }
                                            } else {
                                                PurchaseResult.Failed failed = (PurchaseResult.Failed) purchaseResult5;
                                                transactionManager8.trackFailure(failed.getErrorMessage(), storeProduct6, purchaseSource7);
                                                if (purchaseSource7 instanceof PurchaseSource.Internal) {
                                                    Error error = new Error(failed.getErrorMessage());
                                                    PaywallViewState state = ((PurchaseSource.Internal) purchaseSource7).getState();
                                                    c06152.L$0 = purchaseResult5;
                                                    c06152.L$1 = null;
                                                    c06152.L$2 = null;
                                                    c06152.L$3 = null;
                                                    c06152.label = 13;
                                                    if (transactionManager8.presentAlert(error, storeProduct6, state, c06152) == coroutine_suspended) {
                                                    }
                                                }
                                            }
                                            return purchaseResult5;
                                        }
                                    } else if (purchaseResult4 instanceof PurchaseResult.Pending) {
                                        c06152.L$0 = purchaseResult4;
                                        c06152.L$1 = null;
                                        c06152.L$2 = null;
                                        c06152.L$3 = null;
                                        c06152.label = 14;
                                        if (transactionManager7.handlePendingTransaction(purchaseSource7, c06152) == coroutine_suspended) {
                                        }
                                    } else {
                                        if (!(purchaseResult4 instanceof PurchaseResult.Cancelled)) {
                                            throw new NoWhenBranchMatchedException();
                                        }
                                        c06152.L$0 = purchaseResult4;
                                        c06152.L$1 = null;
                                        c06152.L$2 = null;
                                        c06152.L$3 = null;
                                        c06152.label = 15;
                                        if (transactionManager7.trackCancelled(storeProduct6, purchaseSource7, c06152) == coroutine_suspended) {
                                        }
                                    }
                                }
                            }
                            return purchaseResult4;
                        }
                    }
                } else {
                    c06153.L$0 = this;
                    c06153.L$1 = purchaseSource;
                    c06153.L$2 = storeProduct7;
                    c06153.Z$0 = z;
                    c06153.label = 1;
                    if (prepareToPurchase$superwall_release(storeProduct7, purchaseSource, c06153) != coroutine_suspended) {
                        transactionManager2 = this;
                        purchaseSource3 = purchaseSource;
                        z3 = z;
                        storeProduct2 = storeProduct7;
                        c06153.L$0 = transactionManager2;
                        c06153.L$1 = purchaseSource3;
                        c06153.L$2 = storeProduct2;
                        c06153.Z$0 = z3;
                        c06153.label = 2;
                        objHandlePurchase = transactionManager2.testModeTransactionHandler.handlePurchase(storeProduct2, purchaseSource3, c06153);
                        if (objHandlePurchase != coroutine_suspended) {
                            transactionManager3 = transactionManager2;
                            storeProduct3 = storeProduct2;
                            purchaseSource4 = purchaseSource3;
                            purchaseResult = (PurchaseResult) objHandlePurchase;
                            if (purchaseResult instanceof PurchaseResult.Purchased) {
                                subscriptionStatusBuildSubscriptionStatus = transactionManager3.testMode.buildSubscriptionStatus();
                                function1 = transactionManager3.setSubscriptionStatus;
                                if (function1 != null) {
                                    function1.invoke(subscriptionStatusBuildSubscriptionStatus);
                                }
                                hasFreeTrial = storeProduct3.getHasFreeTrial();
                                c06153.L$0 = transactionManager3;
                                c06153.L$1 = purchaseSource4;
                                c06153.L$2 = storeProduct3;
                                c06153.L$3 = purchaseResult;
                                c06153.Z$0 = z3;
                                c06153.label = 3;
                                if (transactionManager3.trackTransactionDidSucceed(null, storeProduct3, purchaseSource4, hasFreeTrial, c06153) != coroutine_suspended) {
                                    storeProduct5 = storeProduct3;
                                    purchaseSource6 = purchaseSource4;
                                    purchaseResult3 = purchaseResult;
                                    if (z3) {
                                        transactionManager5 = transactionManager3;
                                        if ((purchaseSource6 instanceof PurchaseSource.Internal) && transactionManager5.factory.makeSuperwallOptions().getPaywalls().getAutomaticallyDismiss()) {
                                            function3 = transactionManager5.dismiss;
                                            cacheKey = ((PurchaseSource.Internal) purchaseSource6).getPaywallInfo().getCacheKey();
                                            purchased = new PaywallResult.Purchased(storeProduct5.getFullIdentifier());
                                            c06153.L$0 = purchaseResult3;
                                            c06153.L$1 = null;
                                            c06153.L$2 = null;
                                            c06153.L$3 = null;
                                            c06153.label = 4;
                                            if (function3.invoke(cacheKey, purchased, c06153) == coroutine_suspended) {
                                            }
                                        }
                                    }
                                    transactionManager5 = transactionManager3;
                                    return purchaseResult3;
                                }
                            } else {
                                if (purchaseResult instanceof PurchaseResult.Failed) {
                                    transactionManager3.trackFailure(((PurchaseResult.Failed) purchaseResult).getErrorMessage(), storeProduct3, purchaseSource4);
                                    if (purchaseSource4 instanceof PurchaseSource.Internal) {
                                        superwallOptionsMakeSuperwallOptions = transactionManager3.factory.makeSuperwallOptions();
                                        Factory factory2 = transactionManager3.factory;
                                        c06153.L$0 = transactionManager3;
                                        c06153.L$1 = purchaseSource4;
                                        c06153.L$2 = storeProduct3;
                                        c06153.L$3 = purchaseResult;
                                        c06153.L$4 = superwallOptionsMakeSuperwallOptions;
                                        c06153.label = 5;
                                        objMakeTriggers = factory2.makeTriggers(c06153);
                                        if (objMakeTriggers != coroutine_suspended) {
                                            purchaseResult2 = purchaseResult;
                                            objHandlePurchase = objMakeTriggers;
                                            storeProduct4 = storeProduct3;
                                            purchaseSource5 = purchaseSource4;
                                            transactionManager4 = transactionManager3;
                                            boolean zContains2 = ((Set) objHandlePurchase).contains(SuperwallEvents.TransactionFail.getRawName());
                                            if (superwallOptionsMakeSuperwallOptions.getPaywalls().getShouldShowPurchaseFailureAlert() || zContains2) {
                                                transactionManager4.updateState.invoke(((PurchaseSource.Internal) purchaseSource5).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                                                return purchaseResult2;
                                            }
                                            Error error2 = new Error(((PurchaseResult.Failed) purchaseResult2).getErrorMessage());
                                            PaywallViewState state2 = ((PurchaseSource.Internal) purchaseSource5).getState();
                                            c06153.L$0 = purchaseResult2;
                                            c06153.L$1 = null;
                                            c06153.L$2 = null;
                                            c06153.L$3 = null;
                                            c06153.L$4 = null;
                                            c06153.label = 6;
                                            if (transactionManager4.presentAlert(error2, storeProduct4, state2, c06153) != coroutine_suspended) {
                                                return purchaseResult2;
                                            }
                                        }
                                    }
                                    return purchaseResult;
                                }
                                if (purchaseResult instanceof PurchaseResult.Cancelled) {
                                    c06153.L$0 = purchaseResult;
                                    c06153.L$1 = null;
                                    c06153.L$2 = null;
                                    c06153.label = 7;
                                    if (transactionManager3.trackCancelled(storeProduct3, purchaseSource4, c06153) != coroutine_suspended) {
                                        return purchaseResult;
                                    }
                                } else {
                                    if (!(purchaseResult instanceof PurchaseResult.Pending)) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    c06153.L$0 = purchaseResult;
                                    c06153.L$1 = null;
                                    c06153.L$2 = null;
                                    c06153.label = 8;
                                    if (transactionManager3.handlePendingTransaction(purchaseSource4, c06153) != coroutine_suspended) {
                                        return purchaseResult;
                                    }
                                }
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 1:
                z3 = c06153.Z$0;
                storeProduct2 = (StoreProduct) c06153.L$2;
                purchaseSource3 = (PurchaseSource) c06153.L$1;
                transactionManager2 = (TransactionManager) c06153.L$0;
                ResultKt.throwOnFailure(objHandlePurchase);
                c06153.L$0 = transactionManager2;
                c06153.L$1 = purchaseSource3;
                c06153.L$2 = storeProduct2;
                c06153.Z$0 = z3;
                c06153.label = 2;
                objHandlePurchase = transactionManager2.testModeTransactionHandler.handlePurchase(storeProduct2, purchaseSource3, c06153);
                if (objHandlePurchase != coroutine_suspended) {
                    transactionManager3 = transactionManager2;
                    storeProduct3 = storeProduct2;
                    purchaseSource4 = purchaseSource3;
                    purchaseResult = (PurchaseResult) objHandlePurchase;
                    if (purchaseResult instanceof PurchaseResult.Purchased) {
                        subscriptionStatusBuildSubscriptionStatus = transactionManager3.testMode.buildSubscriptionStatus();
                        function1 = transactionManager3.setSubscriptionStatus;
                        if (function1 != null) {
                            function1.invoke(subscriptionStatusBuildSubscriptionStatus);
                        }
                        hasFreeTrial = storeProduct3.getHasFreeTrial();
                        c06153.L$0 = transactionManager3;
                        c06153.L$1 = purchaseSource4;
                        c06153.L$2 = storeProduct3;
                        c06153.L$3 = purchaseResult;
                        c06153.Z$0 = z3;
                        c06153.label = 3;
                        if (transactionManager3.trackTransactionDidSucceed(null, storeProduct3, purchaseSource4, hasFreeTrial, c06153) != coroutine_suspended) {
                            storeProduct5 = storeProduct3;
                            purchaseSource6 = purchaseSource4;
                            purchaseResult3 = purchaseResult;
                            if (z3) {
                                transactionManager5 = transactionManager3;
                                if (purchaseSource6 instanceof PurchaseSource.Internal) {
                                    function3 = transactionManager5.dismiss;
                                    cacheKey = ((PurchaseSource.Internal) purchaseSource6).getPaywallInfo().getCacheKey();
                                    purchased = new PaywallResult.Purchased(storeProduct5.getFullIdentifier());
                                    c06153.L$0 = purchaseResult3;
                                    c06153.L$1 = null;
                                    c06153.L$2 = null;
                                    c06153.L$3 = null;
                                    c06153.label = 4;
                                    if (function3.invoke(cacheKey, purchased, c06153) == coroutine_suspended) {
                                    }
                                }
                            }
                            transactionManager5 = transactionManager3;
                            return purchaseResult3;
                        }
                    } else {
                        if (purchaseResult instanceof PurchaseResult.Failed) {
                            transactionManager3.trackFailure(((PurchaseResult.Failed) purchaseResult).getErrorMessage(), storeProduct3, purchaseSource4);
                            if (purchaseSource4 instanceof PurchaseSource.Internal) {
                                superwallOptionsMakeSuperwallOptions = transactionManager3.factory.makeSuperwallOptions();
                                Factory factory3 = transactionManager3.factory;
                                c06153.L$0 = transactionManager3;
                                c06153.L$1 = purchaseSource4;
                                c06153.L$2 = storeProduct3;
                                c06153.L$3 = purchaseResult;
                                c06153.L$4 = superwallOptionsMakeSuperwallOptions;
                                c06153.label = 5;
                                objMakeTriggers = factory3.makeTriggers(c06153);
                                if (objMakeTriggers != coroutine_suspended) {
                                    purchaseResult2 = purchaseResult;
                                    objHandlePurchase = objMakeTriggers;
                                    storeProduct4 = storeProduct3;
                                    purchaseSource5 = purchaseSource4;
                                    transactionManager4 = transactionManager3;
                                    boolean zContains3 = ((Set) objHandlePurchase).contains(SuperwallEvents.TransactionFail.getRawName());
                                    if (superwallOptionsMakeSuperwallOptions.getPaywalls().getShouldShowPurchaseFailureAlert()) {
                                    }
                                    transactionManager4.updateState.invoke(((PurchaseSource.Internal) purchaseSource5).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                                    return purchaseResult2;
                                }
                            }
                            return purchaseResult;
                        }
                        if (purchaseResult instanceof PurchaseResult.Cancelled) {
                            c06153.L$0 = purchaseResult;
                            c06153.L$1 = null;
                            c06153.L$2 = null;
                            c06153.label = 7;
                            if (transactionManager3.trackCancelled(storeProduct3, purchaseSource4, c06153) != coroutine_suspended) {
                                return purchaseResult;
                            }
                        } else {
                            if (!(purchaseResult instanceof PurchaseResult.Pending)) {
                                throw new NoWhenBranchMatchedException();
                            }
                            c06153.L$0 = purchaseResult;
                            c06153.L$1 = null;
                            c06153.L$2 = null;
                            c06153.label = 8;
                            if (transactionManager3.handlePendingTransaction(purchaseSource4, c06153) != coroutine_suspended) {
                                return purchaseResult;
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 2:
                z3 = c06153.Z$0;
                storeProduct2 = (StoreProduct) c06153.L$2;
                purchaseSource3 = (PurchaseSource) c06153.L$1;
                transactionManager2 = (TransactionManager) c06153.L$0;
                ResultKt.throwOnFailure(objHandlePurchase);
                transactionManager3 = transactionManager2;
                storeProduct3 = storeProduct2;
                purchaseSource4 = purchaseSource3;
                purchaseResult = (PurchaseResult) objHandlePurchase;
                if (purchaseResult instanceof PurchaseResult.Purchased) {
                    subscriptionStatusBuildSubscriptionStatus = transactionManager3.testMode.buildSubscriptionStatus();
                    function1 = transactionManager3.setSubscriptionStatus;
                    if (function1 != null) {
                        function1.invoke(subscriptionStatusBuildSubscriptionStatus);
                    }
                    hasFreeTrial = storeProduct3.getHasFreeTrial();
                    c06153.L$0 = transactionManager3;
                    c06153.L$1 = purchaseSource4;
                    c06153.L$2 = storeProduct3;
                    c06153.L$3 = purchaseResult;
                    c06153.Z$0 = z3;
                    c06153.label = 3;
                    if (transactionManager3.trackTransactionDidSucceed(null, storeProduct3, purchaseSource4, hasFreeTrial, c06153) != coroutine_suspended) {
                        storeProduct5 = storeProduct3;
                        purchaseSource6 = purchaseSource4;
                        purchaseResult3 = purchaseResult;
                        if (z3) {
                            transactionManager5 = transactionManager3;
                            if (purchaseSource6 instanceof PurchaseSource.Internal) {
                                function3 = transactionManager5.dismiss;
                                cacheKey = ((PurchaseSource.Internal) purchaseSource6).getPaywallInfo().getCacheKey();
                                purchased = new PaywallResult.Purchased(storeProduct5.getFullIdentifier());
                                c06153.L$0 = purchaseResult3;
                                c06153.L$1 = null;
                                c06153.L$2 = null;
                                c06153.L$3 = null;
                                c06153.label = 4;
                                if (function3.invoke(cacheKey, purchased, c06153) == coroutine_suspended) {
                                }
                            }
                        }
                        transactionManager5 = transactionManager3;
                        return purchaseResult3;
                    }
                } else {
                    if (purchaseResult instanceof PurchaseResult.Failed) {
                        transactionManager3.trackFailure(((PurchaseResult.Failed) purchaseResult).getErrorMessage(), storeProduct3, purchaseSource4);
                        if (purchaseSource4 instanceof PurchaseSource.Internal) {
                            superwallOptionsMakeSuperwallOptions = transactionManager3.factory.makeSuperwallOptions();
                            Factory factory4 = transactionManager3.factory;
                            c06153.L$0 = transactionManager3;
                            c06153.L$1 = purchaseSource4;
                            c06153.L$2 = storeProduct3;
                            c06153.L$3 = purchaseResult;
                            c06153.L$4 = superwallOptionsMakeSuperwallOptions;
                            c06153.label = 5;
                            objMakeTriggers = factory4.makeTriggers(c06153);
                            if (objMakeTriggers != coroutine_suspended) {
                                purchaseResult2 = purchaseResult;
                                objHandlePurchase = objMakeTriggers;
                                storeProduct4 = storeProduct3;
                                purchaseSource5 = purchaseSource4;
                                transactionManager4 = transactionManager3;
                                boolean zContains4 = ((Set) objHandlePurchase).contains(SuperwallEvents.TransactionFail.getRawName());
                                if (superwallOptionsMakeSuperwallOptions.getPaywalls().getShouldShowPurchaseFailureAlert()) {
                                }
                                transactionManager4.updateState.invoke(((PurchaseSource.Internal) purchaseSource5).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                                return purchaseResult2;
                            }
                        }
                        return purchaseResult;
                    }
                    if (purchaseResult instanceof PurchaseResult.Cancelled) {
                        c06153.L$0 = purchaseResult;
                        c06153.L$1 = null;
                        c06153.L$2 = null;
                        c06153.label = 7;
                        if (transactionManager3.trackCancelled(storeProduct3, purchaseSource4, c06153) != coroutine_suspended) {
                            return purchaseResult;
                        }
                    } else {
                        if (!(purchaseResult instanceof PurchaseResult.Pending)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        c06153.L$0 = purchaseResult;
                        c06153.L$1 = null;
                        c06153.L$2 = null;
                        c06153.label = 8;
                        if (transactionManager3.handlePendingTransaction(purchaseSource4, c06153) != coroutine_suspended) {
                            return purchaseResult;
                        }
                    }
                }
                return coroutine_suspended;
            case 3:
                z3 = c06153.Z$0;
                purchaseResult3 = (PurchaseResult) c06153.L$3;
                storeProduct5 = (StoreProduct) c06153.L$2;
                purchaseSource6 = (PurchaseSource) c06153.L$1;
                transactionManager5 = (TransactionManager) c06153.L$0;
                ResultKt.throwOnFailure(objHandlePurchase);
                if (z3) {
                    transactionManager5 = transactionManager3;
                    if (purchaseSource6 instanceof PurchaseSource.Internal) {
                        function3 = transactionManager5.dismiss;
                        cacheKey = ((PurchaseSource.Internal) purchaseSource6).getPaywallInfo().getCacheKey();
                        purchased = new PaywallResult.Purchased(storeProduct5.getFullIdentifier());
                        c06153.L$0 = purchaseResult3;
                        c06153.L$1 = null;
                        c06153.L$2 = null;
                        c06153.L$3 = null;
                        c06153.label = 4;
                        if (function3.invoke(cacheKey, purchased, c06153) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                }
                transactionManager5 = transactionManager3;
                return purchaseResult3;
            case 4:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 14:
            case 15:
                PurchaseResult purchaseResult6 = (PurchaseResult) c06153.L$0;
                ResultKt.throwOnFailure(objHandlePurchase);
                return purchaseResult6;
            case 5:
                superwallOptionsMakeSuperwallOptions = (SuperwallOptions) c06153.L$4;
                purchaseResult2 = (PurchaseResult) c06153.L$3;
                storeProduct4 = (StoreProduct) c06153.L$2;
                purchaseSource5 = (PurchaseSource) c06153.L$1;
                transactionManager4 = (TransactionManager) c06153.L$0;
                ResultKt.throwOnFailure(objHandlePurchase);
                boolean zContains5 = ((Set) objHandlePurchase).contains(SuperwallEvents.TransactionFail.getRawName());
                if (superwallOptionsMakeSuperwallOptions.getPaywalls().getShouldShowPurchaseFailureAlert()) {
                }
                transactionManager4.updateState.invoke(((PurchaseSource.Internal) purchaseSource5).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                return purchaseResult2;
            case 9:
                z2 = c06153.Z$0;
                currentActivity = (Activity) c06153.L$5;
                ProductDetails productDetails2 = (ProductDetails) c06153.L$4;
                RawStoreProduct rawStoreProduct3 = (RawStoreProduct) c06153.L$3;
                StoreProduct storeProduct8 = (StoreProduct) c06153.L$2;
                PurchaseSource purchaseSource8 = (PurchaseSource) c06153.L$1;
                TransactionManager transactionManager9 = (TransactionManager) c06153.L$0;
                ResultKt.throwOnFailure(objHandlePurchase);
                rawStoreProduct = rawStoreProduct3;
                storeProduct = storeProduct8;
                transactionManager = transactionManager9;
                purchaseSource2 = purchaseSource8;
                productDetails = productDetails2;
                Activity activity2 = currentActivity;
                InternalPurchaseController purchaseController2 = transactionManager.storeManager.getPurchaseController();
                String offerId$superwall_release2 = rawStoreProduct.getOfferId$superwall_release();
                String basePlanId2 = rawStoreProduct.getBasePlanId();
                c06153.L$0 = transactionManager;
                c06153.L$1 = purchaseSource2;
                c06153.L$2 = storeProduct;
                c06153.L$3 = rawStoreProduct;
                c06153.L$4 = null;
                c06153.L$5 = null;
                c06153.Z$0 = z2;
                c06153.label = 10;
                c06152 = c06153;
                objPurchase = purchaseController2.purchase(activity2, productDetails, basePlanId2, offerId$superwall_release2, c06152);
                if (objPurchase != coroutine_suspended) {
                    purchaseSource7 = purchaseSource2;
                    objHandlePurchase = objPurchase;
                    transactionManager6 = transactionManager;
                    rawStoreProduct2 = rawStoreProduct;
                    storeProduct6 = storeProduct;
                    purchaseResult4 = (PurchaseResult) objHandlePurchase;
                    if (purchaseSource7 instanceof PurchaseSource.ExternalPurchase) {
                        if (rawStoreProduct2.getSelectedOffer() != null) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (purchaseResult4 instanceof PurchaseResult.Purchased) {
                            if (z4) {
                            }
                            c06152.L$0 = purchaseResult4;
                            c06152.L$1 = null;
                            c06152.L$2 = null;
                            c06152.L$3 = null;
                            c06152.label = 11;
                            if (didPurchase$default(transactionManager6, storeProduct6, purchaseSource7, z5, null, z2, c06152, 8, null) == coroutine_suspended) {
                                return purchaseResult4;
                            }
                        } else {
                            transactionManager7 = transactionManager6;
                            if (purchaseResult4 instanceof PurchaseResult.Failed) {
                                shouldShowPurchaseFailureAlert = transactionManager7.factory.makeSuperwallOptions().getPaywalls().getShouldShowPurchaseFailureAlert();
                                Factory factory5 = transactionManager7.factory;
                                c06152.L$0 = transactionManager7;
                                c06152.L$1 = purchaseSource7;
                                c06152.L$2 = storeProduct6;
                                c06152.L$3 = purchaseResult4;
                                c06152.Z$0 = shouldShowPurchaseFailureAlert;
                                c06152.label = 12;
                                objMakeTriggers2 = factory5.makeTriggers(c06152);
                                if (objMakeTriggers2 != coroutine_suspended) {
                                    purchaseResult5 = purchaseResult4;
                                    objHandlePurchase = objMakeTriggers2;
                                    transactionManager8 = transactionManager7;
                                    boolean zContains6 = ((Set) objHandlePurchase).contains(SuperwallEvents.TransactionFail.getRawName());
                                    if (shouldShowPurchaseFailureAlert) {
                                        transactionManager8.trackFailure(((PurchaseResult.Failed) purchaseResult5).getErrorMessage(), storeProduct6, purchaseSource7);
                                        if (purchaseSource7 instanceof PurchaseSource.Internal) {
                                            transactionManager8.updateState.invoke(((PurchaseSource.Internal) purchaseSource7).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                                        }
                                    } else {
                                        transactionManager8.trackFailure(((PurchaseResult.Failed) purchaseResult5).getErrorMessage(), storeProduct6, purchaseSource7);
                                        if (purchaseSource7 instanceof PurchaseSource.Internal) {
                                            transactionManager8.updateState.invoke(((PurchaseSource.Internal) purchaseSource7).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                                        }
                                    }
                                    return purchaseResult5;
                                }
                            } else if (purchaseResult4 instanceof PurchaseResult.Pending) {
                                c06152.L$0 = purchaseResult4;
                                c06152.L$1 = null;
                                c06152.L$2 = null;
                                c06152.L$3 = null;
                                c06152.label = 14;
                                if (transactionManager7.handlePendingTransaction(purchaseSource7, c06152) == coroutine_suspended) {
                                    return purchaseResult4;
                                }
                            } else {
                                if (!(purchaseResult4 instanceof PurchaseResult.Cancelled)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                c06152.L$0 = purchaseResult4;
                                c06152.L$1 = null;
                                c06152.L$2 = null;
                                c06152.L$3 = null;
                                c06152.label = 15;
                                if (transactionManager7.trackCancelled(storeProduct6, purchaseSource7, c06152) == coroutine_suspended) {
                                    return purchaseResult4;
                                }
                            }
                        }
                    } else {
                        if (rawStoreProduct2.getSelectedOffer() != null) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (purchaseResult4 instanceof PurchaseResult.Purchased) {
                            if (z4) {
                            }
                            c06152.L$0 = purchaseResult4;
                            c06152.L$1 = null;
                            c06152.L$2 = null;
                            c06152.L$3 = null;
                            c06152.label = 11;
                            if (didPurchase$default(transactionManager6, storeProduct6, purchaseSource7, z5, null, z2, c06152, 8, null) == coroutine_suspended) {
                                return purchaseResult4;
                            }
                        } else {
                            transactionManager7 = transactionManager6;
                            if (purchaseResult4 instanceof PurchaseResult.Failed) {
                                shouldShowPurchaseFailureAlert = transactionManager7.factory.makeSuperwallOptions().getPaywalls().getShouldShowPurchaseFailureAlert();
                                Factory factory6 = transactionManager7.factory;
                                c06152.L$0 = transactionManager7;
                                c06152.L$1 = purchaseSource7;
                                c06152.L$2 = storeProduct6;
                                c06152.L$3 = purchaseResult4;
                                c06152.Z$0 = shouldShowPurchaseFailureAlert;
                                c06152.label = 12;
                                objMakeTriggers2 = factory6.makeTriggers(c06152);
                                if (objMakeTriggers2 != coroutine_suspended) {
                                    purchaseResult5 = purchaseResult4;
                                    objHandlePurchase = objMakeTriggers2;
                                    transactionManager8 = transactionManager7;
                                    boolean zContains7 = ((Set) objHandlePurchase).contains(SuperwallEvents.TransactionFail.getRawName());
                                    if (shouldShowPurchaseFailureAlert) {
                                        transactionManager8.trackFailure(((PurchaseResult.Failed) purchaseResult5).getErrorMessage(), storeProduct6, purchaseSource7);
                                        if (purchaseSource7 instanceof PurchaseSource.Internal) {
                                            transactionManager8.updateState.invoke(((PurchaseSource.Internal) purchaseSource7).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                                        }
                                    } else {
                                        transactionManager8.trackFailure(((PurchaseResult.Failed) purchaseResult5).getErrorMessage(), storeProduct6, purchaseSource7);
                                        if (purchaseSource7 instanceof PurchaseSource.Internal) {
                                            transactionManager8.updateState.invoke(((PurchaseSource.Internal) purchaseSource7).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                                        }
                                    }
                                    return purchaseResult5;
                                }
                            } else if (purchaseResult4 instanceof PurchaseResult.Pending) {
                                c06152.L$0 = purchaseResult4;
                                c06152.L$1 = null;
                                c06152.L$2 = null;
                                c06152.L$3 = null;
                                c06152.label = 14;
                                if (transactionManager7.handlePendingTransaction(purchaseSource7, c06152) == coroutine_suspended) {
                                    return purchaseResult4;
                                }
                            } else {
                                if (!(purchaseResult4 instanceof PurchaseResult.Cancelled)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                c06152.L$0 = purchaseResult4;
                                c06152.L$1 = null;
                                c06152.L$2 = null;
                                c06152.L$3 = null;
                                c06152.label = 15;
                                if (transactionManager7.trackCancelled(storeProduct6, purchaseSource7, c06152) == coroutine_suspended) {
                                    return purchaseResult4;
                                }
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 10:
                z2 = c06153.Z$0;
                rawStoreProduct2 = (RawStoreProduct) c06153.L$3;
                storeProduct6 = (StoreProduct) c06153.L$2;
                purchaseSource7 = (PurchaseSource) c06153.L$1;
                transactionManager6 = (TransactionManager) c06153.L$0;
                ResultKt.throwOnFailure(objHandlePurchase);
                c06152 = c06153;
                purchaseResult4 = (PurchaseResult) objHandlePurchase;
                if (purchaseSource7 instanceof PurchaseSource.ExternalPurchase) {
                    if (rawStoreProduct2.getSelectedOffer() != null) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (purchaseResult4 instanceof PurchaseResult.Purchased) {
                        if (z4) {
                        }
                        c06152.L$0 = purchaseResult4;
                        c06152.L$1 = null;
                        c06152.L$2 = null;
                        c06152.L$3 = null;
                        c06152.label = 11;
                        if (didPurchase$default(transactionManager6, storeProduct6, purchaseSource7, z5, null, z2, c06152, 8, null) == coroutine_suspended) {
                            return purchaseResult4;
                        }
                    } else {
                        transactionManager7 = transactionManager6;
                        if (purchaseResult4 instanceof PurchaseResult.Failed) {
                            shouldShowPurchaseFailureAlert = transactionManager7.factory.makeSuperwallOptions().getPaywalls().getShouldShowPurchaseFailureAlert();
                            Factory factory7 = transactionManager7.factory;
                            c06152.L$0 = transactionManager7;
                            c06152.L$1 = purchaseSource7;
                            c06152.L$2 = storeProduct6;
                            c06152.L$3 = purchaseResult4;
                            c06152.Z$0 = shouldShowPurchaseFailureAlert;
                            c06152.label = 12;
                            objMakeTriggers2 = factory7.makeTriggers(c06152);
                            if (objMakeTriggers2 != coroutine_suspended) {
                                purchaseResult5 = purchaseResult4;
                                objHandlePurchase = objMakeTriggers2;
                                transactionManager8 = transactionManager7;
                                boolean zContains8 = ((Set) objHandlePurchase).contains(SuperwallEvents.TransactionFail.getRawName());
                                if (shouldShowPurchaseFailureAlert) {
                                    transactionManager8.trackFailure(((PurchaseResult.Failed) purchaseResult5).getErrorMessage(), storeProduct6, purchaseSource7);
                                    if (purchaseSource7 instanceof PurchaseSource.Internal) {
                                        transactionManager8.updateState.invoke(((PurchaseSource.Internal) purchaseSource7).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                                    }
                                } else {
                                    transactionManager8.trackFailure(((PurchaseResult.Failed) purchaseResult5).getErrorMessage(), storeProduct6, purchaseSource7);
                                    if (purchaseSource7 instanceof PurchaseSource.Internal) {
                                        transactionManager8.updateState.invoke(((PurchaseSource.Internal) purchaseSource7).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                                    }
                                }
                                return purchaseResult5;
                            }
                        } else if (purchaseResult4 instanceof PurchaseResult.Pending) {
                            c06152.L$0 = purchaseResult4;
                            c06152.L$1 = null;
                            c06152.L$2 = null;
                            c06152.L$3 = null;
                            c06152.label = 14;
                            if (transactionManager7.handlePendingTransaction(purchaseSource7, c06152) == coroutine_suspended) {
                                return purchaseResult4;
                            }
                        } else {
                            if (!(purchaseResult4 instanceof PurchaseResult.Cancelled)) {
                                throw new NoWhenBranchMatchedException();
                            }
                            c06152.L$0 = purchaseResult4;
                            c06152.L$1 = null;
                            c06152.L$2 = null;
                            c06152.L$3 = null;
                            c06152.label = 15;
                            if (transactionManager7.trackCancelled(storeProduct6, purchaseSource7, c06152) == coroutine_suspended) {
                                return purchaseResult4;
                            }
                        }
                    }
                } else {
                    if (rawStoreProduct2.getSelectedOffer() != null) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (purchaseResult4 instanceof PurchaseResult.Purchased) {
                        if (z4) {
                        }
                        c06152.L$0 = purchaseResult4;
                        c06152.L$1 = null;
                        c06152.L$2 = null;
                        c06152.L$3 = null;
                        c06152.label = 11;
                        if (didPurchase$default(transactionManager6, storeProduct6, purchaseSource7, z5, null, z2, c06152, 8, null) == coroutine_suspended) {
                            return purchaseResult4;
                        }
                    } else {
                        transactionManager7 = transactionManager6;
                        if (purchaseResult4 instanceof PurchaseResult.Failed) {
                            shouldShowPurchaseFailureAlert = transactionManager7.factory.makeSuperwallOptions().getPaywalls().getShouldShowPurchaseFailureAlert();
                            Factory factory8 = transactionManager7.factory;
                            c06152.L$0 = transactionManager7;
                            c06152.L$1 = purchaseSource7;
                            c06152.L$2 = storeProduct6;
                            c06152.L$3 = purchaseResult4;
                            c06152.Z$0 = shouldShowPurchaseFailureAlert;
                            c06152.label = 12;
                            objMakeTriggers2 = factory8.makeTriggers(c06152);
                            if (objMakeTriggers2 != coroutine_suspended) {
                                purchaseResult5 = purchaseResult4;
                                objHandlePurchase = objMakeTriggers2;
                                transactionManager8 = transactionManager7;
                                boolean zContains9 = ((Set) objHandlePurchase).contains(SuperwallEvents.TransactionFail.getRawName());
                                if (shouldShowPurchaseFailureAlert) {
                                    transactionManager8.trackFailure(((PurchaseResult.Failed) purchaseResult5).getErrorMessage(), storeProduct6, purchaseSource7);
                                    if (purchaseSource7 instanceof PurchaseSource.Internal) {
                                        transactionManager8.updateState.invoke(((PurchaseSource.Internal) purchaseSource7).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                                    }
                                } else {
                                    transactionManager8.trackFailure(((PurchaseResult.Failed) purchaseResult5).getErrorMessage(), storeProduct6, purchaseSource7);
                                    if (purchaseSource7 instanceof PurchaseSource.Internal) {
                                        transactionManager8.updateState.invoke(((PurchaseSource.Internal) purchaseSource7).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                                    }
                                }
                                return purchaseResult5;
                            }
                        } else if (purchaseResult4 instanceof PurchaseResult.Pending) {
                            c06152.L$0 = purchaseResult4;
                            c06152.L$1 = null;
                            c06152.L$2 = null;
                            c06152.L$3 = null;
                            c06152.label = 14;
                            if (transactionManager7.handlePendingTransaction(purchaseSource7, c06152) == coroutine_suspended) {
                                return purchaseResult4;
                            }
                        } else {
                            if (!(purchaseResult4 instanceof PurchaseResult.Cancelled)) {
                                throw new NoWhenBranchMatchedException();
                            }
                            c06152.L$0 = purchaseResult4;
                            c06152.L$1 = null;
                            c06152.L$2 = null;
                            c06152.L$3 = null;
                            c06152.label = 15;
                            if (transactionManager7.trackCancelled(storeProduct6, purchaseSource7, c06152) == coroutine_suspended) {
                                return purchaseResult4;
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 12:
                shouldShowPurchaseFailureAlert = c06153.Z$0;
                purchaseResult5 = (PurchaseResult) c06153.L$3;
                storeProduct6 = (StoreProduct) c06153.L$2;
                purchaseSource7 = (PurchaseSource) c06153.L$1;
                transactionManager8 = (TransactionManager) c06153.L$0;
                ResultKt.throwOnFailure(objHandlePurchase);
                c06152 = c06153;
                boolean zContains10 = ((Set) objHandlePurchase).contains(SuperwallEvents.TransactionFail.getRawName());
                if (shouldShowPurchaseFailureAlert) {
                    transactionManager8.trackFailure(((PurchaseResult.Failed) purchaseResult5).getErrorMessage(), storeProduct6, purchaseSource7);
                    if (purchaseSource7 instanceof PurchaseSource.Internal) {
                        transactionManager8.updateState.invoke(((PurchaseSource.Internal) purchaseSource7).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                    }
                } else {
                    transactionManager8.trackFailure(((PurchaseResult.Failed) purchaseResult5).getErrorMessage(), storeProduct6, purchaseSource7);
                    if (purchaseSource7 instanceof PurchaseSource.Internal) {
                        transactionManager8.updateState.invoke(((PurchaseSource.Internal) purchaseSource7).getPaywallInfo().getCacheKey(), new PaywallViewState.Updates.ToggleSpinner(true));
                    }
                }
                return purchaseResult5;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:28:0x009c  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:34:0x00be A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:45:0x010e  */
    /* JADX WARN: Code duplicated, block: B:54:0x0136  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x012d, code lost:
    
        if (r2.invoke(r1, r5, r3) == r4) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object didRestore(com.superwall.sdk.store.abstractions.product.StoreProduct r26, com.superwall.sdk.store.transactions.TransactionManager.PurchaseSource r27, kotlin.coroutines.Continuation<? super kotlin.Unit> r28) {
        /*
            Method dump skipped, instruction units count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.store.transactions.TransactionManager.didRestore(com.superwall.sdk.store.abstractions.product.StoreProduct, com.superwall.sdk.store.transactions.TransactionManager$PurchaseSource, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object didRestore$default(TransactionManager transactionManager, StoreProduct storeProduct, PurchaseSource purchaseSource, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            storeProduct = null;
        }
        return transactionManager.didRestore(storeProduct, purchaseSource, continuation);
    }

    private final void trackFailure(String errorMessage, StoreProduct product, PurchaseSource purchaseSource) {
        if (purchaseSource instanceof PurchaseSource.Internal) {
            log$default(this, null, "Transaction Error: " + errorMessage, MapsKt.mapOf(TuplesKt.to("product_id", product.getFullIdentifier()), TuplesKt.to("paywall_state", ((PurchaseSource.Internal) purchaseSource).getState())), null, 9, null);
            ScopesKt.launchWithTracking(this.ioScope, new C06191(purchaseSource, errorMessage, product, this, null));
        } else {
            if (!(purchaseSource instanceof PurchaseSource.ExternalPurchase) && !(purchaseSource instanceof PurchaseSource.ObserverMode)) {
                throw new NoWhenBranchMatchedException();
            }
            log$default(this, null, "Transaction Error: " + errorMessage, MapsKt.mapOf(TuplesKt.to("product_id", product.getFullIdentifier())), new Error(errorMessage), 1, null);
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C06202(errorMessage, product, purchaseSource, this, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$trackFailure$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager$trackFailure$1", f = "TransactionManager.kt", i = {}, l = {517}, m = "invokeSuspend", n = {}, s = {})
    static final class C06191 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $errorMessage;
        final /* synthetic */ StoreProduct $product;
        final /* synthetic */ PurchaseSource $purchaseSource;
        int label;
        final /* synthetic */ TransactionManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06191(PurchaseSource purchaseSource, String str, StoreProduct storeProduct, TransactionManager transactionManager, Continuation<? super C06191> continuation) {
            super(2, continuation);
            this.$purchaseSource = purchaseSource;
            this.$errorMessage = str;
            this.$product = storeProduct;
            this.this$0 = transactionManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C06191(this.$purchaseSource, this.$errorMessage, this.$product, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06191) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PaywallInfo paywallInfo = ((PurchaseSource.Internal) this.$purchaseSource).getPaywallInfo();
                InternalSuperwallEvent.Transaction.State.Fail fail = new InternalSuperwallEvent.Transaction.State.Fail(new TransactionError.Failure(this.$errorMessage, this.$product));
                boolean shouldObservePurchases = this.this$0.factory.makeSuperwallOptions().getShouldObservePurchases();
                InternalSuperwallEvent.Transaction transaction = new InternalSuperwallEvent.Transaction(fail, paywallInfo, this.$product, null, InternalSuperwallEvent.Transaction.TransactionSource.INTERNAL, shouldObservePurchases, this.this$0.factory.demandScore(), this.this$0.factory.demandTier(), null, null, ViewUtils.EDGE_TO_EDGE_FLAGS, null);
                InternalSuperwallEvent.Transaction.State state = transaction.getState();
                Intrinsics.checkNotNull(state, "null cannot be cast to non-null type com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent.Transaction.State.Fail");
                Function2 function2 = this.this$0.track;
                this.label = 1;
                if (function2.invoke(transaction, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$trackFailure$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager$trackFailure$2", f = "TransactionManager.kt", i = {}, l = {545}, m = "invokeSuspend", n = {}, s = {})
    static final class C06202 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $errorMessage;
        final /* synthetic */ StoreProduct $product;
        final /* synthetic */ PurchaseSource $purchaseSource;
        int label;
        final /* synthetic */ TransactionManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06202(String str, StoreProduct storeProduct, PurchaseSource purchaseSource, TransactionManager transactionManager, Continuation<? super C06202> continuation) {
            super(2, continuation);
            this.$errorMessage = str;
            this.$product = storeProduct;
            this.$purchaseSource = purchaseSource;
            this.this$0 = transactionManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C06202(this.$errorMessage, this.$product, this.$purchaseSource, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06202) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                InternalSuperwallEvent.Transaction.State.Fail fail = new InternalSuperwallEvent.Transaction.State.Fail(new TransactionError.Failure(this.$errorMessage, this.$product));
                PaywallInfo paywallInfoEmpty = PaywallInfo.INSTANCE.empty();
                boolean z = this.$purchaseSource instanceof PurchaseSource.ObserverMode;
                InternalSuperwallEvent.Transaction transaction = new InternalSuperwallEvent.Transaction(fail, paywallInfoEmpty, this.$product, null, InternalSuperwallEvent.Transaction.TransactionSource.EXTERNAL, z, this.this$0.factory.demandScore(), this.this$0.factory.demandTier(), null, null, ViewUtils.EDGE_TO_EDGE_FLAGS, null);
                Function2 function2 = this.this$0.track;
                this.label = 1;
                if (function2.invoke(transaction, this) == coroutine_suspended) {
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

    public final Object prepareToPurchase$superwall_release(StoreProduct storeProduct, PurchaseSource purchaseSource, Continuation<? super Unit> continuation) {
        boolean z = purchaseSource instanceof PurchaseSource.ObserverMode;
        if (purchaseSource instanceof PurchaseSource.Internal) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new TransactionManager$prepareToPurchase$2(this, purchaseSource, null), 3, null);
            StoreProduct storeProduct2 = storeProduct;
            Object objInvoke = this.track.invoke(new InternalSuperwallEvent.Transaction(new InternalSuperwallEvent.Transaction.State.Start(storeProduct2), ((PurchaseSource.Internal) purchaseSource).getPaywallInfo(), storeProduct2, null, InternalSuperwallEvent.Transaction.TransactionSource.INTERNAL, z, this.factory.demandScore(), this.factory.demandTier(), null, null, ViewUtils.EDGE_TO_EDGE_FLAGS, null), continuation);
            return objInvoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
        }
        if (!(purchaseSource instanceof PurchaseSource.ExternalPurchase) && !z) {
            throw new NoWhenBranchMatchedException();
        }
        if (z && storeProduct.getRawStoreProduct() != null) {
            ConcurrentHashMap<String, ProductDetails> concurrentHashMap = this.transactionsInProgress;
            String fullIdentifier = storeProduct.getFullIdentifier();
            RawStoreProduct rawStoreProduct = storeProduct.getRawStoreProduct();
            Intrinsics.checkNotNull(rawStoreProduct);
            concurrentHashMap.put(fullIdentifier, rawStoreProduct.getUnderlyingProductDetails());
        }
        if (!this.storeManager.hasCached(storeProduct.getFullIdentifier())) {
            this.storeManager.cacheProduct(storeProduct.getFullIdentifier(), storeProduct);
        }
        if (this.factory.makeHasExternalPurchaseController() && !this.factory.makeHasInternalPurchaseController()) {
            return Unit.INSTANCE;
        }
        if (this.factory.makeSuperwallOptions().getShouldObservePurchases() || !this.factory.makeHasExternalPurchaseController()) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new TransactionManager$prepareToPurchase$3(this, null), 3, null);
            StoreProduct storeProduct3 = storeProduct;
            Object objInvoke2 = this.track.invoke(new InternalSuperwallEvent.Transaction(new InternalSuperwallEvent.Transaction.State.Start(storeProduct3), PaywallInfo.INSTANCE.empty(), storeProduct3, null, InternalSuperwallEvent.Transaction.TransactionSource.EXTERNAL, z, this.factory.demandScore(), this.factory.demandTier(), null, null, ViewUtils.EDGE_TO_EDGE_FLAGS, null), continuation);
            return objInvoke2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke2 : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:30:0x0149  */
    /* JADX WARN: Code duplicated, block: B:34:0x0176 A[PHI: r3 r4 r5 r6 r12
      0x0176: PHI (r3v10 boolean) = (r3v8 boolean), (r3v13 boolean) binds: [B:32:0x0172, B:18:0x00a1] A[DONT_GENERATE, DONT_INLINE]
      0x0176: PHI (r4v11 com.superwall.sdk.store.transactions.TransactionManager$PurchaseSource) = 
      (r4v9 com.superwall.sdk.store.transactions.TransactionManager$PurchaseSource)
      (r4v19 com.superwall.sdk.store.transactions.TransactionManager$PurchaseSource)
     binds: [B:32:0x0172, B:18:0x00a1] A[DONT_GENERATE, DONT_INLINE]
      0x0176: PHI (r5v12 com.superwall.sdk.store.abstractions.product.StoreProduct) = 
      (r5v9 com.superwall.sdk.store.abstractions.product.StoreProduct)
      (r5v14 com.superwall.sdk.store.abstractions.product.StoreProduct)
     binds: [B:32:0x0172, B:18:0x00a1] A[DONT_GENERATE, DONT_INLINE]
      0x0176: PHI (r6v12 com.superwall.sdk.store.transactions.TransactionManager) = 
      (r6v9 com.superwall.sdk.store.transactions.TransactionManager)
      (r6v14 com.superwall.sdk.store.transactions.TransactionManager)
     binds: [B:32:0x0172, B:18:0x00a1] A[DONT_GENERATE, DONT_INLINE]
      0x0176: PHI (r12v5 com.superwall.sdk.store.transactions.TransactionManager$didPurchase$1) = 
      (r12v4 com.superwall.sdk.store.transactions.TransactionManager$didPurchase$1)
      (r12v6 com.superwall.sdk.store.transactions.TransactionManager$didPurchase$1)
     binds: [B:32:0x0172, B:18:0x00a1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:35:0x0178  */
    /* JADX WARN: Code duplicated, block: B:58:0x021d  */
    /* JADX WARN: Code duplicated, block: B:61:0x0236  */
    /* JADX WARN: Code duplicated, block: B:63:0x023c  */
    /* JADX WARN: Code duplicated, block: B:66:0x0256  */
    /* JADX WARN: Code duplicated, block: B:72:0x027f  */
    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x01aa, code lost:
    
        if (r1.invoke(r2, r3, r12) == r10) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x02a0, code lost:
    
        if (r7.trackTransactionDidSucceed(r4, r6, r5, r3, r12) == r10) goto L75;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object didPurchase(com.superwall.sdk.store.abstractions.product.StoreProduct r19, com.superwall.sdk.store.transactions.TransactionManager.PurchaseSource r20, boolean r21, com.android.billingclient.api.Purchase r22, boolean r23, kotlin.coroutines.Continuation<? super kotlin.Unit> r24) {
        /*
            Method dump skipped, instruction units count: 702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.store.transactions.TransactionManager.didPurchase(com.superwall.sdk.store.abstractions.product.StoreProduct, com.superwall.sdk.store.transactions.TransactionManager$PurchaseSource, boolean, com.android.billingclient.api.Purchase, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object didPurchase$default(TransactionManager transactionManager, StoreProduct storeProduct, PurchaseSource purchaseSource, boolean z, Purchase purchase, boolean z2, Continuation continuation, int i, Object obj) {
        if ((i & 8) != 0) {
            purchase = null;
        }
        return transactionManager.didPurchase(storeProduct, purchaseSource, z, purchase, z2, continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$didPurchase$2, reason: invalid class name */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager$didPurchase$2", f = "TransactionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ StoreProduct $product;
        final /* synthetic */ PurchaseSource $purchaseSource;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(StoreProduct storeProduct, PurchaseSource purchaseSource, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$product = storeProduct;
            this.$purchaseSource = purchaseSource;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionManager.this.new AnonymousClass2(this.$product, this.$purchaseSource, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            TransactionManager.log$default(TransactionManager.this, null, "Transaction Succeeded", MapsKt.mapOf(TuplesKt.to("product_id", this.$product.getFullIdentifier()), TuplesKt.to("paywall_state", ((PurchaseSource.Internal) this.$purchaseSource).getState())), null, 9, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00cf, code lost:
    
        if (r3.invoke(r6, r4) == r5) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0142, code lost:
    
        if (r1.invoke(r9, r4) == r5) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object trackCancelled(com.superwall.sdk.store.abstractions.product.StoreProduct r24, com.superwall.sdk.store.transactions.TransactionManager.PurchaseSource r25, kotlin.coroutines.Continuation<? super kotlin.Unit> r26) {
        /*
            Method dump skipped, instruction units count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.store.transactions.TransactionManager.trackCancelled(com.superwall.sdk.store.abstractions.product.StoreProduct, com.superwall.sdk.store.transactions.TransactionManager$PurchaseSource, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$trackCancelled$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager$trackCancelled$2", f = "TransactionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C06172 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ StoreProduct $product;
        final /* synthetic */ PurchaseSource $purchaseSource;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06172(StoreProduct storeProduct, PurchaseSource purchaseSource, Continuation<? super C06172> continuation) {
            super(2, continuation);
            this.$product = storeProduct;
            this.$purchaseSource = purchaseSource;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionManager.this.new C06172(this.$product, this.$purchaseSource, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06172) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            TransactionManager.log$default(TransactionManager.this, null, "Transaction Abandoned", MapsKt.mapOf(TuplesKt.to("product_id", this.$product.getFullIdentifier()), TuplesKt.to("paywall_state", ((PurchaseSource.Internal) this.$purchaseSource).getState())), null, 9, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$trackCancelled$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager$trackCancelled$3", f = "TransactionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C06183 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ StoreProduct $product;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06183(StoreProduct storeProduct, Continuation<? super C06183> continuation) {
            super(2, continuation);
            this.$product = storeProduct;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionManager.this.new C06183(this.$product, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06183) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            TransactionManager.log$default(TransactionManager.this, null, "Transaction Abandoned", MapsKt.mapOf(TuplesKt.to("product_id", this.$product.getFullIdentifier())), null, 9, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0121, code lost:
    
        if (r1.invoke(r7, r3) == r4) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handlePendingTransaction(com.superwall.sdk.store.transactions.TransactionManager.PurchaseSource r22, kotlin.coroutines.Continuation<? super kotlin.Unit> r23) {
        /*
            Method dump skipped, instruction units count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.store.transactions.TransactionManager.handlePendingTransaction(com.superwall.sdk.store.transactions.TransactionManager$PurchaseSource, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$handlePendingTransaction$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager$handlePendingTransaction$2", f = "TransactionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C06122 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PurchaseSource $purchaseSource;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06122(PurchaseSource purchaseSource, Continuation<? super C06122> continuation) {
            super(2, continuation);
            this.$purchaseSource = purchaseSource;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionManager.this.new C06122(this.$purchaseSource, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06122) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            TransactionManager.log$default(TransactionManager.this, null, "Transaction Pending", MapsKt.mapOf(TuplesKt.to("paywall", ((PurchaseSource.Internal) this.$purchaseSource).getPaywallInfo())), null, 9, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$handlePendingTransaction$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager$handlePendingTransaction$3", f = "TransactionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C06133 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C06133(Continuation<? super C06133> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionManager.this.new C06133(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06133) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            TransactionManager.log$default(TransactionManager.this, null, "Transaction Pending", null, null, 13, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0232  */
    /* JADX WARN: Code duplicated, block: B:107:0x0251 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:108:0x0253 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:110:0x0258  */
    /* JADX WARN: Code duplicated, block: B:112:0x025c  */
    /* JADX WARN: Code duplicated, block: B:115:0x026a  */
    /* JADX WARN: Code duplicated, block: B:119:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:123:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:127:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:129:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:131:0x02d2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:132:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:19:0x0088 A[PHI: r1 r2 r3
      0x0088: PHI (r1v18 java.lang.Object) = (r1v17 java.lang.Object), (r1v1 java.lang.Object) binds: [B:51:0x012b, B:18:0x007d] A[DONT_GENERATE, DONT_INLINE]
      0x0088: PHI (r2v18 com.superwall.sdk.paywall.view.PaywallView) = (r2v15 com.superwall.sdk.paywall.view.PaywallView), (r2v21 com.superwall.sdk.paywall.view.PaywallView) binds: [B:51:0x012b, B:18:0x007d] A[DONT_GENERATE, DONT_INLINE]
      0x0088: PHI (r3v11 com.superwall.sdk.store.transactions.TransactionManager) = 
      (r3v8 com.superwall.sdk.store.transactions.TransactionManager)
      (r3v14 com.superwall.sdk.store.transactions.TransactionManager)
     binds: [B:51:0x012b, B:18:0x007d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:34:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:36:0x00da  */
    /* JADX WARN: Code duplicated, block: B:56:0x015e  */
    /* JADX WARN: Code duplicated, block: B:59:0x016c  */
    /* JADX WARN: Code duplicated, block: B:72:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:75:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:76:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:78:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:80:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:82:0x01ce A[ADDED_TO_REGION] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v12, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    public final Object tryToRestorePurchases(PaywallView paywallView, Continuation<? super RestorationResult> continuation) {
        C06221 c06221;
        PaywallInfo paywallInfoEmpty;
        TransactionManager transactionManager;
        PaywallView paywallView2;
        PaywallViewState state;
        TestModeTransactionHandler testModeTransactionHandler;
        TransactionManager transactionManager2;
        RestorationResult restorationResult;
        SubscriptionStatus subscriptionStatusBuildSubscriptionStatus;
        Function1<SubscriptionStatus, Unit> function1;
        TransactionManager transactionManager3;
        RestorationResult restorationResult2;
        ?? r3;
        SubscriptionStatus subscriptionStatusInvoke;
        boolean z;
        StoreManager storeManager;
        Map<String, Set<Entitlement>> mapInvoke;
        PaywallView paywallView3;
        int i;
        SubscriptionStatus subscriptionStatus;
        ?? r4;
        TransactionManager transactionManager4;
        boolean zIsWebToAppEnabled;
        List listEmptyList;
        SubscriptionStatus.Active active;
        Set<Entitlement> setEmptySet;
        String localizedMessage;
        String str;
        Throwable error;
        Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> function2;
        InternalSuperwallEvent.Restore restore;
        PaywallInfo paywallInfoEmpty2;
        RestorationResult restorationResult3;
        boolean z2;
        TransactionManager transactionManager5;
        PaywallViewState state2;
        PaywallInfo paywallInfoEmpty3;
        RestorationResult restorationResult4;
        PaywallView paywallView4;
        TransactionManager transactionManager6;
        PaywallViewState state3;
        PaywallViewState state4;
        Paywall paywall;
        List<String> productIds;
        PurchaseSource.Internal internal;
        if (continuation instanceof C06221) {
            c06221 = (C06221) continuation;
            if ((c06221.label & Integer.MIN_VALUE) != 0) {
                c06221.label -= Integer.MIN_VALUE;
            } else {
                c06221 = new C06221(continuation);
            }
        } else {
            c06221 = new C06221(continuation);
        }
        C06221 c06222 = c06221;
        Object objHandleRestore = c06222.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c06222.label) {
            case 0:
                ResultKt.throwOnFailure(objHandleRestore);
                log$default(this, null, "Attempting Restore", null, null, 13, null);
                TestMode testMode = this.testMode;
                if (testMode != null && testMode.isTestMode() && (testModeTransactionHandler = this.testModeTransactionHandler) != null) {
                    c06222.L$0 = this;
                    c06222.label = 1;
                    objHandleRestore = testModeTransactionHandler.handleRestore(c06222);
                    if (objHandleRestore != coroutine_suspended) {
                        transactionManager2 = this;
                        restorationResult = (RestorationResult) objHandleRestore;
                        if (restorationResult instanceof RestorationResult.Restored) {
                            subscriptionStatusBuildSubscriptionStatus = transactionManager2.testMode.buildSubscriptionStatus();
                            function1 = transactionManager2.setSubscriptionStatus;
                            if (function1 != null) {
                                function1.invoke(subscriptionStatusBuildSubscriptionStatus);
                            }
                        }
                        return restorationResult;
                    }
                } else {
                    if (paywallView == null || (state = paywallView.getState()) == null || (paywallInfoEmpty = state.getInfo()) == null) {
                        paywallInfoEmpty = PaywallInfo.INSTANCE.empty();
                    }
                    if (paywallView != null) {
                        paywallView.updateState(new PaywallViewState.Updates.SetLoadingState(PaywallLoadingState.LoadingPurchase.INSTANCE));
                    }
                    Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> function3 = this.track;
                    InternalSuperwallEvent.Restore restore2 = new InternalSuperwallEvent.Restore(InternalSuperwallEvent.Restore.State.Start.INSTANCE, paywallInfoEmpty);
                    c06222.L$0 = this;
                    c06222.L$1 = paywallView;
                    c06222.label = 2;
                    if (function3.invoke(restore2, c06222) != coroutine_suspended) {
                        transactionManager = this;
                        paywallView2 = paywallView;
                        PurchaseController purchaseController = transactionManager.purchaseController;
                        c06222.L$0 = transactionManager;
                        c06222.L$1 = paywallView2;
                        c06222.label = 3;
                        objHandleRestore = purchaseController.restorePurchases(c06222);
                        if (objHandleRestore != coroutine_suspended) {
                            transactionManager3 = transactionManager;
                            restorationResult2 = (RestorationResult) objHandleRestore;
                            r3 = restorationResult2 instanceof RestorationResult.Restored;
                            subscriptionStatusInvoke = transactionManager3.subscriptionStatus.invoke();
                            z = subscriptionStatusInvoke instanceof SubscriptionStatus.Active;
                            storeManager = transactionManager3.storeManager;
                            mapInvoke = transactionManager3.allEntitlementsByProductId.invoke();
                            c06222.L$0 = transactionManager3;
                            c06222.L$1 = paywallView2;
                            c06222.L$2 = restorationResult2;
                            c06222.L$3 = subscriptionStatusInvoke;
                            c06222.I$0 = r3;
                            c06222.I$1 = z ? 1 : 0;
                            c06222.label = 4;
                            if (storeManager.loadPurchasedProducts(mapInvoke, c06222) != coroutine_suspended) {
                                paywallView3 = paywallView2;
                                i = z ? 1 : 0;
                                subscriptionStatus = subscriptionStatusInvoke;
                                r4 = r3;
                                transactionManager4 = transactionManager3;
                                zIsWebToAppEnabled = transactionManager4.factory.isWebToAppEnabled();
                                if (paywallView3 != null || (state4 = paywallView3.getState()) == null || (paywall = state4.getPaywall()) == null || (productIds = paywall.getProductIds()) == null) {
                                    listEmptyList = CollectionsKt.emptyList();
                                } else {
                                    List<String> list = productIds;
                                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                                    Iterator it = list.iterator();
                                    while (it.hasNext()) {
                                        arrayList.add(transactionManager4.entitlementsById.invoke((String) it.next()));
                                    }
                                    listEmptyList = CollectionsKt.flatten(arrayList);
                                    if (listEmptyList == null) {
                                        listEmptyList = CollectionsKt.emptyList();
                                    }
                                }
                                if (subscriptionStatus instanceof SubscriptionStatus.Active) {
                                    active = (SubscriptionStatus.Active) subscriptionStatus;
                                } else {
                                    active = null;
                                }
                                if (active != null || (setEmptySet = active.getEntitlements()) == null) {
                                    setEmptySet = SetsKt.emptySet();
                                }
                                if (r4 == 0 && i != 0) {
                                    if (setEmptySet.containsAll(listEmptyList) || !zIsWebToAppEnabled) {
                                        log$default(transactionManager4, null, "Transactions Restored", null, null, 13, null);
                                        Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> function4 = transactionManager4.track;
                                        InternalSuperwallEvent.Restore.State.Complete complete = InternalSuperwallEvent.Restore.State.Complete.INSTANCE;
                                        if (paywallView3 == null || (state3 = paywallView3.getState()) == null || (paywallInfoEmpty3 = state3.getInfo()) == null) {
                                            paywallInfoEmpty3 = PaywallInfo.INSTANCE.empty();
                                        }
                                        InternalSuperwallEvent.Restore restore3 = new InternalSuperwallEvent.Restore(complete, paywallInfoEmpty3);
                                        c06222.L$0 = transactionManager4;
                                        c06222.L$1 = paywallView3;
                                        c06222.L$2 = restorationResult2;
                                        c06222.L$3 = null;
                                        c06222.label = 5;
                                        if (function4.invoke(restore3, c06222) != coroutine_suspended) {
                                            restorationResult4 = restorationResult2;
                                            paywallView4 = paywallView3;
                                            transactionManager6 = transactionManager4;
                                            if (paywallView4 != null) {
                                                internal = new PurchaseSource.Internal("", paywallView4.getState());
                                                c06222.L$0 = restorationResult4;
                                                c06222.L$1 = null;
                                                c06222.L$2 = null;
                                                c06222.label = 6;
                                                if (transactionManager6.didRestore(null, internal, c06222) == coroutine_suspended) {
                                                }
                                            }
                                            return restorationResult4;
                                        }
                                    } else {
                                        if (paywallView3 != null) {
                                            paywallView3.updateState(new PaywallViewState.Updates.SetLoadingState(PaywallLoadingState.Ready.INSTANCE));
                                        }
                                        transactionManager4.askToRestoreFromWeb();
                                        return restorationResult2;
                                    }
                                } else {
                                    if (r4 == 0 && i == 0) {
                                        str = " The user's subscription status is \"inactive\", but the restoration result is \"restored\". Ensure the subscription status is active before confirming successful restoration.";
                                    } else {
                                        if ((restorationResult2 instanceof RestorationResult.Failed) || (error = ((RestorationResult.Failed) restorationResult2).getError()) == null) {
                                            localizedMessage = null;
                                        } else {
                                            localizedMessage = error.getLocalizedMessage();
                                        }
                                        str = " Original restoration error message: " + localizedMessage;
                                    }
                                    String str2 = "Transactions Failed to Restore." + str;
                                    log$default(transactionManager4, null, str2, null, null, 13, null);
                                    function2 = transactionManager4.track;
                                    InternalSuperwallEvent.Restore.State.Failure failure = new InternalSuperwallEvent.Restore.State.Failure(str2);
                                    if (paywallView3 != null || (state2 = paywallView3.getState()) == null || (paywallInfoEmpty2 = state2.getInfo()) == null) {
                                        paywallInfoEmpty2 = PaywallInfo.INSTANCE.empty();
                                    }
                                    restore = new InternalSuperwallEvent.Restore(failure, paywallInfoEmpty2);
                                    c06222.L$0 = transactionManager4;
                                    c06222.L$1 = paywallView3;
                                    c06222.L$2 = restorationResult2;
                                    c06222.L$3 = null;
                                    c06222.Z$0 = zIsWebToAppEnabled;
                                    c06222.label = 7;
                                    if (function2.invoke(restore, c06222) != coroutine_suspended) {
                                        restorationResult3 = restorationResult2;
                                        z2 = zIsWebToAppEnabled;
                                        transactionManager5 = transactionManager4;
                                        if (z2) {
                                            transactionManager5.askToRestoreFromWeb();
                                            return restorationResult3;
                                        }
                                        if (paywallView3 != null) {
                                            PaywallView.showAlert$default(paywallView3, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getTitle(), transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getMessage(), null, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getCloseButtonTitle(), null, null, 52, null);
                                        }
                                        return restorationResult3;
                                    }
                                }
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 1:
                transactionManager2 = (TransactionManager) c06222.L$0;
                ResultKt.throwOnFailure(objHandleRestore);
                restorationResult = (RestorationResult) objHandleRestore;
                if (restorationResult instanceof RestorationResult.Restored) {
                    subscriptionStatusBuildSubscriptionStatus = transactionManager2.testMode.buildSubscriptionStatus();
                    function1 = transactionManager2.setSubscriptionStatus;
                    if (function1 != null) {
                        function1.invoke(subscriptionStatusBuildSubscriptionStatus);
                    }
                }
                return restorationResult;
            case 2:
                paywallView2 = (PaywallView) c06222.L$1;
                transactionManager = (TransactionManager) c06222.L$0;
                ResultKt.throwOnFailure(objHandleRestore);
                PurchaseController purchaseController2 = transactionManager.purchaseController;
                c06222.L$0 = transactionManager;
                c06222.L$1 = paywallView2;
                c06222.label = 3;
                objHandleRestore = purchaseController2.restorePurchases(c06222);
                if (objHandleRestore != coroutine_suspended) {
                    transactionManager3 = transactionManager;
                    restorationResult2 = (RestorationResult) objHandleRestore;
                    r3 = restorationResult2 instanceof RestorationResult.Restored;
                    subscriptionStatusInvoke = transactionManager3.subscriptionStatus.invoke();
                    z = subscriptionStatusInvoke instanceof SubscriptionStatus.Active;
                    storeManager = transactionManager3.storeManager;
                    mapInvoke = transactionManager3.allEntitlementsByProductId.invoke();
                    c06222.L$0 = transactionManager3;
                    c06222.L$1 = paywallView2;
                    c06222.L$2 = restorationResult2;
                    c06222.L$3 = subscriptionStatusInvoke;
                    c06222.I$0 = r3;
                    c06222.I$1 = z ? 1 : 0;
                    c06222.label = 4;
                    if (storeManager.loadPurchasedProducts(mapInvoke, c06222) != coroutine_suspended) {
                        paywallView3 = paywallView2;
                        i = z ? 1 : 0;
                        subscriptionStatus = subscriptionStatusInvoke;
                        r4 = r3;
                        transactionManager4 = transactionManager3;
                        zIsWebToAppEnabled = transactionManager4.factory.isWebToAppEnabled();
                        if (paywallView3 != null) {
                            listEmptyList = CollectionsKt.emptyList();
                        } else {
                            listEmptyList = CollectionsKt.emptyList();
                        }
                        if (subscriptionStatus instanceof SubscriptionStatus.Active) {
                            active = (SubscriptionStatus.Active) subscriptionStatus;
                        } else {
                            active = null;
                        }
                        if (active != null) {
                            setEmptySet = SetsKt.emptySet();
                        } else {
                            setEmptySet = SetsKt.emptySet();
                        }
                        if (r4 == 0) {
                            if (r4 == 0) {
                                if (restorationResult2 instanceof RestorationResult.Failed) {
                                    localizedMessage = null;
                                } else {
                                    localizedMessage = null;
                                }
                                str = " Original restoration error message: " + localizedMessage;
                            } else {
                                if (restorationResult2 instanceof RestorationResult.Failed) {
                                    localizedMessage = null;
                                } else {
                                    localizedMessage = null;
                                }
                                str = " Original restoration error message: " + localizedMessage;
                            }
                            String str3 = "Transactions Failed to Restore." + str;
                            log$default(transactionManager4, null, str3, null, null, 13, null);
                            function2 = transactionManager4.track;
                            InternalSuperwallEvent.Restore.State.Failure failure2 = new InternalSuperwallEvent.Restore.State.Failure(str3);
                            if (paywallView3 != null) {
                                paywallInfoEmpty2 = PaywallInfo.INSTANCE.empty();
                            } else {
                                paywallInfoEmpty2 = PaywallInfo.INSTANCE.empty();
                            }
                            restore = new InternalSuperwallEvent.Restore(failure2, paywallInfoEmpty2);
                            c06222.L$0 = transactionManager4;
                            c06222.L$1 = paywallView3;
                            c06222.L$2 = restorationResult2;
                            c06222.L$3 = null;
                            c06222.Z$0 = zIsWebToAppEnabled;
                            c06222.label = 7;
                            if (function2.invoke(restore, c06222) != coroutine_suspended) {
                                restorationResult3 = restorationResult2;
                                z2 = zIsWebToAppEnabled;
                                transactionManager5 = transactionManager4;
                                if (z2) {
                                    transactionManager5.askToRestoreFromWeb();
                                    return restorationResult3;
                                }
                                if (paywallView3 != null) {
                                    PaywallView.showAlert$default(paywallView3, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getTitle(), transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getMessage(), null, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getCloseButtonTitle(), null, null, 52, null);
                                }
                                return restorationResult3;
                            }
                        } else {
                            if (r4 == 0) {
                                if (restorationResult2 instanceof RestorationResult.Failed) {
                                    localizedMessage = null;
                                } else {
                                    localizedMessage = null;
                                }
                                str = " Original restoration error message: " + localizedMessage;
                            } else {
                                if (restorationResult2 instanceof RestorationResult.Failed) {
                                    localizedMessage = null;
                                } else {
                                    localizedMessage = null;
                                }
                                str = " Original restoration error message: " + localizedMessage;
                            }
                            String str4 = "Transactions Failed to Restore." + str;
                            log$default(transactionManager4, null, str4, null, null, 13, null);
                            function2 = transactionManager4.track;
                            InternalSuperwallEvent.Restore.State.Failure failure3 = new InternalSuperwallEvent.Restore.State.Failure(str4);
                            if (paywallView3 != null) {
                                paywallInfoEmpty2 = PaywallInfo.INSTANCE.empty();
                            } else {
                                paywallInfoEmpty2 = PaywallInfo.INSTANCE.empty();
                            }
                            restore = new InternalSuperwallEvent.Restore(failure3, paywallInfoEmpty2);
                            c06222.L$0 = transactionManager4;
                            c06222.L$1 = paywallView3;
                            c06222.L$2 = restorationResult2;
                            c06222.L$3 = null;
                            c06222.Z$0 = zIsWebToAppEnabled;
                            c06222.label = 7;
                            if (function2.invoke(restore, c06222) != coroutine_suspended) {
                                restorationResult3 = restorationResult2;
                                z2 = zIsWebToAppEnabled;
                                transactionManager5 = transactionManager4;
                                if (z2) {
                                    transactionManager5.askToRestoreFromWeb();
                                    return restorationResult3;
                                }
                                if (paywallView3 != null) {
                                    PaywallView.showAlert$default(paywallView3, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getTitle(), transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getMessage(), null, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getCloseButtonTitle(), null, null, 52, null);
                                }
                                return restorationResult3;
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 3:
                paywallView2 = (PaywallView) c06222.L$1;
                transactionManager = (TransactionManager) c06222.L$0;
                ResultKt.throwOnFailure(objHandleRestore);
                transactionManager3 = transactionManager;
                restorationResult2 = (RestorationResult) objHandleRestore;
                r3 = restorationResult2 instanceof RestorationResult.Restored;
                subscriptionStatusInvoke = transactionManager3.subscriptionStatus.invoke();
                z = subscriptionStatusInvoke instanceof SubscriptionStatus.Active;
                storeManager = transactionManager3.storeManager;
                mapInvoke = transactionManager3.allEntitlementsByProductId.invoke();
                c06222.L$0 = transactionManager3;
                c06222.L$1 = paywallView2;
                c06222.L$2 = restorationResult2;
                c06222.L$3 = subscriptionStatusInvoke;
                c06222.I$0 = r3;
                c06222.I$1 = z ? 1 : 0;
                c06222.label = 4;
                if (storeManager.loadPurchasedProducts(mapInvoke, c06222) != coroutine_suspended) {
                    paywallView3 = paywallView2;
                    i = z ? 1 : 0;
                    subscriptionStatus = subscriptionStatusInvoke;
                    r4 = r3;
                    transactionManager4 = transactionManager3;
                    zIsWebToAppEnabled = transactionManager4.factory.isWebToAppEnabled();
                    if (paywallView3 != null) {
                        listEmptyList = CollectionsKt.emptyList();
                    } else {
                        listEmptyList = CollectionsKt.emptyList();
                    }
                    if (subscriptionStatus instanceof SubscriptionStatus.Active) {
                        active = (SubscriptionStatus.Active) subscriptionStatus;
                    } else {
                        active = null;
                    }
                    if (active != null) {
                        setEmptySet = SetsKt.emptySet();
                    } else {
                        setEmptySet = SetsKt.emptySet();
                    }
                    if (r4 == 0) {
                        if (r4 == 0) {
                            if (restorationResult2 instanceof RestorationResult.Failed) {
                                localizedMessage = null;
                            } else {
                                localizedMessage = null;
                            }
                            str = " Original restoration error message: " + localizedMessage;
                        } else {
                            if (restorationResult2 instanceof RestorationResult.Failed) {
                                localizedMessage = null;
                            } else {
                                localizedMessage = null;
                            }
                            str = " Original restoration error message: " + localizedMessage;
                        }
                        String str5 = "Transactions Failed to Restore." + str;
                        log$default(transactionManager4, null, str5, null, null, 13, null);
                        function2 = transactionManager4.track;
                        InternalSuperwallEvent.Restore.State.Failure failure4 = new InternalSuperwallEvent.Restore.State.Failure(str5);
                        if (paywallView3 != null) {
                            paywallInfoEmpty2 = PaywallInfo.INSTANCE.empty();
                        } else {
                            paywallInfoEmpty2 = PaywallInfo.INSTANCE.empty();
                        }
                        restore = new InternalSuperwallEvent.Restore(failure4, paywallInfoEmpty2);
                        c06222.L$0 = transactionManager4;
                        c06222.L$1 = paywallView3;
                        c06222.L$2 = restorationResult2;
                        c06222.L$3 = null;
                        c06222.Z$0 = zIsWebToAppEnabled;
                        c06222.label = 7;
                        if (function2.invoke(restore, c06222) != coroutine_suspended) {
                            restorationResult3 = restorationResult2;
                            z2 = zIsWebToAppEnabled;
                            transactionManager5 = transactionManager4;
                            if (z2) {
                                transactionManager5.askToRestoreFromWeb();
                                return restorationResult3;
                            }
                            if (paywallView3 != null) {
                                PaywallView.showAlert$default(paywallView3, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getTitle(), transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getMessage(), null, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getCloseButtonTitle(), null, null, 52, null);
                            }
                            return restorationResult3;
                        }
                    } else {
                        if (r4 == 0) {
                            if (restorationResult2 instanceof RestorationResult.Failed) {
                                localizedMessage = null;
                            } else {
                                localizedMessage = null;
                            }
                            str = " Original restoration error message: " + localizedMessage;
                        } else {
                            if (restorationResult2 instanceof RestorationResult.Failed) {
                                localizedMessage = null;
                            } else {
                                localizedMessage = null;
                            }
                            str = " Original restoration error message: " + localizedMessage;
                        }
                        String str6 = "Transactions Failed to Restore." + str;
                        log$default(transactionManager4, null, str6, null, null, 13, null);
                        function2 = transactionManager4.track;
                        InternalSuperwallEvent.Restore.State.Failure failure5 = new InternalSuperwallEvent.Restore.State.Failure(str6);
                        if (paywallView3 != null) {
                            paywallInfoEmpty2 = PaywallInfo.INSTANCE.empty();
                        } else {
                            paywallInfoEmpty2 = PaywallInfo.INSTANCE.empty();
                        }
                        restore = new InternalSuperwallEvent.Restore(failure5, paywallInfoEmpty2);
                        c06222.L$0 = transactionManager4;
                        c06222.L$1 = paywallView3;
                        c06222.L$2 = restorationResult2;
                        c06222.L$3 = null;
                        c06222.Z$0 = zIsWebToAppEnabled;
                        c06222.label = 7;
                        if (function2.invoke(restore, c06222) != coroutine_suspended) {
                            restorationResult3 = restorationResult2;
                            z2 = zIsWebToAppEnabled;
                            transactionManager5 = transactionManager4;
                            if (z2) {
                                transactionManager5.askToRestoreFromWeb();
                                return restorationResult3;
                            }
                            if (paywallView3 != null) {
                                PaywallView.showAlert$default(paywallView3, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getTitle(), transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getMessage(), null, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getCloseButtonTitle(), null, null, 52, null);
                            }
                            return restorationResult3;
                        }
                    }
                }
                return coroutine_suspended;
            case 4:
                i = c06222.I$1;
                int i2 = c06222.I$0;
                SubscriptionStatus subscriptionStatus2 = (SubscriptionStatus) c06222.L$3;
                RestorationResult restorationResult5 = (RestorationResult) c06222.L$2;
                PaywallView paywallView5 = (PaywallView) c06222.L$1;
                transactionManager3 = (TransactionManager) c06222.L$0;
                ResultKt.throwOnFailure(objHandleRestore);
                restorationResult2 = restorationResult5;
                subscriptionStatus = subscriptionStatus2;
                paywallView3 = paywallView5;
                r4 = i2;
                transactionManager4 = transactionManager3;
                zIsWebToAppEnabled = transactionManager4.factory.isWebToAppEnabled();
                if (paywallView3 != null) {
                    listEmptyList = CollectionsKt.emptyList();
                } else {
                    listEmptyList = CollectionsKt.emptyList();
                }
                if (subscriptionStatus instanceof SubscriptionStatus.Active) {
                    active = (SubscriptionStatus.Active) subscriptionStatus;
                } else {
                    active = null;
                }
                if (active != null) {
                    setEmptySet = SetsKt.emptySet();
                } else {
                    setEmptySet = SetsKt.emptySet();
                }
                if (r4 == 0) {
                    if (r4 == 0) {
                        if (restorationResult2 instanceof RestorationResult.Failed) {
                            localizedMessage = null;
                        } else {
                            localizedMessage = null;
                        }
                        str = " Original restoration error message: " + localizedMessage;
                    } else {
                        if (restorationResult2 instanceof RestorationResult.Failed) {
                            localizedMessage = null;
                        } else {
                            localizedMessage = null;
                        }
                        str = " Original restoration error message: " + localizedMessage;
                    }
                    String str7 = "Transactions Failed to Restore." + str;
                    log$default(transactionManager4, null, str7, null, null, 13, null);
                    function2 = transactionManager4.track;
                    InternalSuperwallEvent.Restore.State.Failure failure6 = new InternalSuperwallEvent.Restore.State.Failure(str7);
                    if (paywallView3 != null) {
                        paywallInfoEmpty2 = PaywallInfo.INSTANCE.empty();
                    } else {
                        paywallInfoEmpty2 = PaywallInfo.INSTANCE.empty();
                    }
                    restore = new InternalSuperwallEvent.Restore(failure6, paywallInfoEmpty2);
                    c06222.L$0 = transactionManager4;
                    c06222.L$1 = paywallView3;
                    c06222.L$2 = restorationResult2;
                    c06222.L$3 = null;
                    c06222.Z$0 = zIsWebToAppEnabled;
                    c06222.label = 7;
                    if (function2.invoke(restore, c06222) != coroutine_suspended) {
                        restorationResult3 = restorationResult2;
                        z2 = zIsWebToAppEnabled;
                        transactionManager5 = transactionManager4;
                        if (z2) {
                            transactionManager5.askToRestoreFromWeb();
                            return restorationResult3;
                        }
                        if (paywallView3 != null) {
                            PaywallView.showAlert$default(paywallView3, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getTitle(), transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getMessage(), null, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getCloseButtonTitle(), null, null, 52, null);
                        }
                        return restorationResult3;
                    }
                } else {
                    if (r4 == 0) {
                        if (restorationResult2 instanceof RestorationResult.Failed) {
                            localizedMessage = null;
                        } else {
                            localizedMessage = null;
                        }
                        str = " Original restoration error message: " + localizedMessage;
                    } else {
                        if (restorationResult2 instanceof RestorationResult.Failed) {
                            localizedMessage = null;
                        } else {
                            localizedMessage = null;
                        }
                        str = " Original restoration error message: " + localizedMessage;
                    }
                    String str8 = "Transactions Failed to Restore." + str;
                    log$default(transactionManager4, null, str8, null, null, 13, null);
                    function2 = transactionManager4.track;
                    InternalSuperwallEvent.Restore.State.Failure failure7 = new InternalSuperwallEvent.Restore.State.Failure(str8);
                    if (paywallView3 != null) {
                        paywallInfoEmpty2 = PaywallInfo.INSTANCE.empty();
                    } else {
                        paywallInfoEmpty2 = PaywallInfo.INSTANCE.empty();
                    }
                    restore = new InternalSuperwallEvent.Restore(failure7, paywallInfoEmpty2);
                    c06222.L$0 = transactionManager4;
                    c06222.L$1 = paywallView3;
                    c06222.L$2 = restorationResult2;
                    c06222.L$3 = null;
                    c06222.Z$0 = zIsWebToAppEnabled;
                    c06222.label = 7;
                    if (function2.invoke(restore, c06222) != coroutine_suspended) {
                        restorationResult3 = restorationResult2;
                        z2 = zIsWebToAppEnabled;
                        transactionManager5 = transactionManager4;
                        if (z2) {
                            transactionManager5.askToRestoreFromWeb();
                            return restorationResult3;
                        }
                        if (paywallView3 != null) {
                            PaywallView.showAlert$default(paywallView3, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getTitle(), transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getMessage(), null, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getCloseButtonTitle(), null, null, 52, null);
                        }
                        return restorationResult3;
                    }
                }
                return coroutine_suspended;
            case 5:
                restorationResult4 = (RestorationResult) c06222.L$2;
                paywallView4 = (PaywallView) c06222.L$1;
                transactionManager6 = (TransactionManager) c06222.L$0;
                ResultKt.throwOnFailure(objHandleRestore);
                if (paywallView4 != null) {
                    internal = new PurchaseSource.Internal("", paywallView4.getState());
                    c06222.L$0 = restorationResult4;
                    c06222.L$1 = null;
                    c06222.L$2 = null;
                    c06222.label = 6;
                    if (transactionManager6.didRestore(null, internal, c06222) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return restorationResult4;
            case 6:
                RestorationResult restorationResult6 = (RestorationResult) c06222.L$0;
                ResultKt.throwOnFailure(objHandleRestore);
                return restorationResult6;
            case 7:
                z2 = c06222.Z$0;
                restorationResult3 = (RestorationResult) c06222.L$2;
                paywallView3 = (PaywallView) c06222.L$1;
                transactionManager5 = (TransactionManager) c06222.L$0;
                ResultKt.throwOnFailure(objHandleRestore);
                if (z2) {
                    transactionManager5.askToRestoreFromWeb();
                    return restorationResult3;
                }
                if (paywallView3 != null) {
                    PaywallView.showAlert$default(paywallView3, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getTitle(), transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getMessage(), null, transactionManager5.factory.makeSuperwallOptions().getPaywalls().getRestoreFailed().getCloseButtonTitle(), null, null, 52, null);
                }
                return restorationResult3;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final void askToRestoreFromWeb() {
        boolean zIsEmpty = Superwall.INSTANCE.getInstance().getEntitlements().getActiveDeviceEntitlements$superwall_release().isEmpty();
        this.showAlert.invoke(new AlertControllerFactory.AlertProps(!zIsEmpty ? "Restore via the web?" : "No Subscription Found", !zIsEmpty ? "Your Play Store subscriptions were restored. Would you like to check for more on the web?" : "No Play Store subscription found, would you like to check on the web?", "Yes", "Close", new Function0() { // from class: com.superwall.sdk.store.transactions.TransactionManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TransactionManager.askToRestoreFromWeb$lambda$15();
            }
        }, null, 32, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit askToRestoreFromWeb$lambda$15() {
        OpenWebRestoreKt.openRestoreOnWeb(Superwall.INSTANCE.getInstance());
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.transactions.TransactionManager$presentAlert$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager$presentAlert$2", f = "TransactionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C06142 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Error $error;
        final /* synthetic */ StoreProduct $product;
        final /* synthetic */ PaywallViewState $state;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06142(StoreProduct storeProduct, PaywallViewState paywallViewState, Error error, Continuation<? super C06142> continuation) {
            super(2, continuation);
            this.$product = storeProduct;
            this.$state = paywallViewState;
            this.$error = error;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionManager.this.new C06142(this.$product, this.$state, this.$error, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06142) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            TransactionManager.log$default(TransactionManager.this, null, "Transaction Error", MapsKt.mapOf(TuplesKt.to("product_id", this.$product.getFullIdentifier()), TuplesKt.to("paywall_state", this.$state)), this.$error, 1, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object presentAlert(Error error, StoreProduct storeProduct, PaywallViewState paywallViewState, Continuation<? super Unit> continuation) {
        BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C06142(storeProduct, paywallViewState, error, null), 3, null);
        Function1<AlertControllerFactory.AlertProps, Unit> function1 = this.showAlert;
        String message = error.getMessage();
        if (message == null) {
            message = "Unknown error";
        }
        function1.invoke(new AlertControllerFactory.AlertProps("An error occurred", message, null, null, null, null, 60, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:36:0x0151  */
    /* JADX WARN: Code duplicated, block: B:39:0x015c  */
    /* JADX WARN: Code duplicated, block: B:44:0x017b  */
    /* JADX WARN: Code duplicated, block: B:47:0x01a2 A[DONT_INVERT, PHI: r1 r2 r3 r7
      0x01a2: PHI (r1v10 boolean) = (r1v5 boolean), (r1v15 boolean) binds: [B:45:0x019e, B:19:0x0076] A[DONT_GENERATE, DONT_INLINE]
      0x01a2: PHI (r2v15 com.superwall.sdk.paywall.presentation.PaywallInfo) = (r2v11 com.superwall.sdk.paywall.presentation.PaywallInfo), (r2v19 com.superwall.sdk.paywall.presentation.PaywallInfo) binds: [B:45:0x019e, B:19:0x0076] A[DONT_GENERATE, DONT_INLINE]
      0x01a2: PHI (r3v11 com.superwall.sdk.store.abstractions.product.StoreProduct) = 
      (r3v6 com.superwall.sdk.store.abstractions.product.StoreProduct)
      (r3v15 com.superwall.sdk.store.abstractions.product.StoreProduct)
     binds: [B:45:0x019e, B:19:0x0076] A[DONT_GENERATE, DONT_INLINE]
      0x01a2: PHI (r7v20 com.superwall.sdk.store.transactions.TransactionManager) = 
      (r7v16 com.superwall.sdk.store.transactions.TransactionManager)
      (r7v22 com.superwall.sdk.store.transactions.TransactionManager)
     binds: [B:45:0x019e, B:19:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:48:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:53:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:71:0x0248  */
    /* JADX WARN: Code duplicated, block: B:74:0x0254  */
    /* JADX WARN: Code duplicated, block: B:79:0x0273 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    /* JADX WARN: Code duplicated, block: B:80:0x0275  */
    /* JADX WARN: Code duplicated, block: B:85:0x0294  */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0174, code lost:
    
        if (r2.invoke(r1, r5) == r6) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01b8, code lost:
    
        if (r2.invoke(r1, r5) == r6) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01d3, code lost:
    
        if (r2.invoke(r1, r5) == r6) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x026d, code lost:
    
        if (r2.invoke(r1, r5) == r6) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x028e, code lost:
    
        if (r2.invoke(r1, r5) == r6) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02ad, code lost:
    
        if (r2.invoke(r1, r5) == r6) goto L87;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object trackTransactionDidSucceed(com.superwall.sdk.store.abstractions.transactions.StoreTransaction r28, com.superwall.sdk.store.abstractions.product.StoreProduct r29, com.superwall.sdk.store.transactions.TransactionManager.PurchaseSource r30, boolean r31, kotlin.coroutines.Continuation<? super kotlin.Unit> r32) {
        /*
            Method dump skipped, instruction units count: 720
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.store.transactions.TransactionManager.trackTransactionDidSucceed(com.superwall.sdk.store.abstractions.transactions.StoreTransaction, com.superwall.sdk.store.abstractions.product.StoreProduct, com.superwall.sdk.store.transactions.TransactionManager$PurchaseSource, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void log$default(TransactionManager transactionManager, LogLevel logLevel, String str, Map map, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            logLevel = LogLevel.debug;
        }
        if ((i & 4) != 0) {
            map = null;
        }
        if ((i & 8) != 0) {
            th = null;
        }
        transactionManager.log(logLevel, str, map, th);
    }

    private final void log(LogLevel logLevel, String message, Map<String, ? extends Object> info, Throwable error) {
        Logger.INSTANCE.debug(logLevel, LogScope.paywallTransactions, message, info, error);
    }
}
