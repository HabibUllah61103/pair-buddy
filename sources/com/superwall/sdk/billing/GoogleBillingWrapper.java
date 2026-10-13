package com.superwall.sdk.billing;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryPurchasesParams;
import com.google.firebase.messaging.Constants;
import com.sun.jna.Callback;
import com.superwall.sdk.delegate.InternalPurchaseResult;
import com.superwall.sdk.dependencies.HasExternalPurchaseControllerFactory;
import com.superwall.sdk.dependencies.HasInternalPurchaseControllerFactory;
import com.superwall.sdk.dependencies.OptionsFactory;
import com.superwall.sdk.dependencies.StoreTransactionFactory;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.AppLifecycleObserver;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.misc.Task_RetryingKt;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.store.abstractions.transactions.StoreTransaction;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: GoogleBillingWrapper.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000à\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\b\u0018\u0000 {2\u00020\u00012\u00020\u00022\u00020\u0003:\u0003{|}B=\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010:\u001a\u00020-H\u0002J\u0014\u0010;\u001a\b\u0012\u0004\u0012\u00020=0<H\u0096@¢\u0006\u0002\u0010>J\u001e\u0010?\u001a\b\u0012\u0004\u0012\u0002070@2\u0006\u0010A\u001a\u000207H\u0096@¢\u0006\u0004\bB\u0010CJ\u0010\u0010D\u001a\u00020-2\b\b\u0002\u0010E\u001a\u00020.J\u0006\u0010F\u001a\u00020-J\"\u0010G\u001a\b\u0012\u0004\u0012\u00020I0H2\f\u0010J\u001a\b\u0012\u0004\u0012\u0002070HH\u0096@¢\u0006\u0002\u0010KJ\u001e\u0010L\u001a\u00020-2\f\u0010J\u001a\b\u0012\u0004\u0012\u0002070H2\u0006\u0010M\u001a\u00020NH\u0002JT\u0010O\u001a\u00020-2\f\u0010P\u001a\b\u0012\u0004\u0012\u0002070H2\f\u0010Q\u001a\b\u0012\u0004\u0012\u0002070H2\f\u0010R\u001a\b\u0012\u0004\u0012\u00020I0H2\u0018\u0010S\u001a\u0014\u0012\u0004\u0012\u000207\u0012\n\u0012\b\u0012\u0004\u0012\u00020V0U0T2\u0006\u0010M\u001a\u00020NH\u0002J\u0016\u0010W\u001a\u00020-2\f\u0010X\u001a\b\u0012\u0004\u0012\u00020-0YH\u0002Jf\u0010Z\u001a\u00020-2\u0006\u0010[\u001a\u0002072\f\u0010P\u001a\b\u0012\u0004\u0012\u0002070H2\u0018\u0010S\u001a\u0014\u0012\u0004\u0012\u000207\u0012\n\u0012\b\u0012\u0004\u0012\u00020V0U0T2\u0018\u0010\\\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020I0<\u0012\u0004\u0012\u00020-0\r2\u0012\u0010]\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020-0\rH\u0002J/\u0010^\u001a\u00020-2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010.2\u0014\u0010_\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010)\u0012\u0004\u0012\u00020-0\rH\u0002¢\u0006\u0002\u0010`J\b\u0010a\u001a\u00020-H\u0002J\b\u0010b\u001a\u00020-H\u0016J\u0010\u0010c\u001a\u00020-2\u0006\u0010d\u001a\u00020eH\u0016J&\u0010f\u001a\u0004\u0018\u00010-2\u0017\u0010g\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020-0\r¢\u0006\u0002\bh¢\u0006\u0002\u0010iJ \u0010j\u001a\u00020-2\u0006\u0010k\u001a\u00020e2\u000e\u0010l\u001a\n\u0012\u0004\u0012\u00020=\u0018\u00010UH\u0016J\u0018\u0010m\u001a\u0004\u0018\u00010n2\u0006\u0010\n\u001a\u00020oH\u0096@¢\u0006\u0002\u0010pJ\u0010\u0010q\u001a\u00020-2\u0006\u0010r\u001a\u00020)H\u0002J\b\u0010s\u001a\u00020-H\u0002J$\u0010t\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u000207\u0012\u0006\u0012\u0004\u0018\u00010v0u0<H\u0080@¢\u0006\u0004\bw\u0010>J$\u0010x\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020=0<0@2\u0006\u0010y\u001a\u000207H\u0086@¢\u0006\u0004\bz\u0010CR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001d\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R?\u0010&\u001a3\u0012/\u0012-\u0012!\u0012\u001f\u0012\u0015\u0012\u0013\u0018\u00010)¢\u0006\f\b*\u0012\b\b+\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020-0\r\u0012\u0006\u0012\u0004\u0018\u00010.0(0'X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020.X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010302X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u0014\u00106\u001a\u000207X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b8\u00109¨\u0006~"}, d2 = {"Lcom/superwall/sdk/billing/GoogleBillingWrapper;", "Lcom/android/billingclient/api/PurchasesUpdatedListener;", "Lcom/android/billingclient/api/BillingClientStateListener;", "Lcom/superwall/sdk/billing/Billing;", "context", "Landroid/content/Context;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "appLifecycleObserver", "Lcom/superwall/sdk/misc/AppLifecycleObserver;", "factory", "Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;", "createBillingClient", "Lkotlin/Function1;", "Lcom/android/billingclient/api/BillingClient;", "<init>", "(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/misc/AppLifecycleObserver;Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;Lkotlin/jvm/functions/Function1;)V", "getContext", "()Landroid/content/Context;", "getIoScope", "()Lcom/superwall/sdk/misc/IOScope;", "getAppLifecycleObserver", "()Lcom/superwall/sdk/misc/AppLifecycleObserver;", "getFactory", "()Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;", "getCreateBillingClient", "()Lkotlin/jvm/functions/Function1;", "threadHandler", "Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;", "shouldFinishTransactions", "", "getShouldFinishTransactions", "()Z", "billingClient", "getBillingClient", "()Lcom/android/billingclient/api/BillingClient;", "setBillingClient", "(Lcom/android/billingclient/api/BillingClient;)V", "serviceRequests", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Lkotlin/Pair;", "Lcom/superwall/sdk/billing/BillingError;", "Lkotlin/ParameterName;", "name", "connectionError", "", "", "reconnectMilliseconds", "reconnectionAlreadyScheduled", "purchaseResults", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/superwall/sdk/delegate/InternalPurchaseResult;", "getPurchaseResults", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "IN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE", "", "getIN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE$superwall_release", "()Ljava/lang/String;", "executePendingRequests", "queryAllPurchases", "", "Lcom/android/billingclient/api/Purchase;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "consume", "Lkotlin/Result;", "purchaseToken", "consume-gIAlu-s", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startConnectionOnMainThread", "delayMilliseconds", "startConnection", "awaitGetProducts", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "fullProductIds", "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProducts", Callback.METHOD_NAME, "Lcom/superwall/sdk/billing/GetStoreProductsCallback;", "getProductsOfTypes", "subscriptionIds", "types", "collectedStoreProducts", "decomposedProductIdsBySubscriptionId", "", "", "Lcom/superwall/sdk/billing/DecomposedProductIds;", "dispatch", "action", "Lkotlin/Function0;", "queryProductDetailsAsync", "productType", "onReceive", "onError", "executeRequestOnUIThread", "request", "(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V", "retryBillingServiceConnectionWithExponentialBackoff", "onBillingServiceDisconnected", "onBillingSetupFinished", "billingResult", "Lcom/android/billingclient/api/BillingResult;", "withConnectedClient", "receivingFunction", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;", "onPurchasesUpdated", "result", "purchases", "getLatestTransaction", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;", "Lcom/superwall/sdk/dependencies/StoreTransactionFactory;", "(Lcom/superwall/sdk/dependencies/StoreTransactionFactory;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendErrorsToAllPendingRequests", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "trackProductDetailsNotSupportedIfNeeded", "latestPurchase", "", "", "latestPurchase$superwall_release", "queryType", "type", "queryType-gIAlu-s", "Companion", "Factory", "Handler", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class GoogleBillingWrapper implements PurchasesUpdatedListener, BillingClientStateListener, Billing {
    private static final int QUERY_PURCHASES_MAX_RETRIES = 3;
    private static final long QUERY_PURCHASES_TIMEOUT_MS = 10000;
    private final String IN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE;
    private final AppLifecycleObserver appLifecycleObserver;
    private volatile BillingClient billingClient;
    private final Context context;
    private final Function1<PurchasesUpdatedListener, BillingClient> createBillingClient;
    private final Factory factory;
    private final IOScope ioScope;
    private final MutableStateFlow<InternalPurchaseResult> purchaseResults;
    private long reconnectMilliseconds;
    private boolean reconnectionAlreadyScheduled;
    private final ConcurrentLinkedQueue<Pair<Function1<BillingError, Unit>, Long>> serviceRequests;
    private final Handler threadHandler;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ConcurrentHashMap<String, Either<StoreProduct, Throwable>> productsCache = new ConcurrentHashMap<>();

    /* JADX INFO: compiled from: GoogleBillingWrapper.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;", "Lcom/superwall/sdk/dependencies/HasExternalPurchaseControllerFactory;", "Lcom/superwall/sdk/dependencies/HasInternalPurchaseControllerFactory;", "Lcom/superwall/sdk/dependencies/OptionsFactory;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Factory extends HasExternalPurchaseControllerFactory, HasInternalPurchaseControllerFactory, OptionsFactory {
    }

    /* JADX INFO: renamed from: com.superwall.sdk.billing.GoogleBillingWrapper$getLatestTransaction$1, reason: invalid class name */
    /* JADX INFO: compiled from: GoogleBillingWrapper.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.billing.GoogleBillingWrapper", f = "GoogleBillingWrapper.kt", i = {0, 0}, l = {TypedValues.Motion.TYPE_ANIMATE_RELATIVE_TO, TypedValues.Motion.TYPE_QUANTIZE_MOTIONSTEPS}, m = "getLatestTransaction", n = {"this", "factory"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GoogleBillingWrapper.this.getLatestTransaction(null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.billing.GoogleBillingWrapper$queryAllPurchases$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GoogleBillingWrapper.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.billing.GoogleBillingWrapper", f = "GoogleBillingWrapper.kt", i = {0, 1}, l = {145, 146}, m = "queryAllPurchases", n = {"this", "apps"}, s = {"L$0", "L$0"})
    static final class C04601 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04601(Continuation<? super C04601> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GoogleBillingWrapper.this.queryAllPurchases(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GoogleBillingWrapper(Context context, IOScope ioScope, AppLifecycleObserver appLifecycleObserver, Factory factory, Function1<? super PurchasesUpdatedListener, ? extends BillingClient> createBillingClient) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(appLifecycleObserver, "appLifecycleObserver");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(createBillingClient, "createBillingClient");
        this.context = context;
        this.ioScope = ioScope;
        this.appLifecycleObserver = appLifecycleObserver;
        this.factory = factory;
        this.createBillingClient = createBillingClient;
        this.threadHandler = new Handler(ioScope);
        this.serviceRequests = new ConcurrentLinkedQueue<>();
        this.reconnectMilliseconds = 1000L;
        this.purchaseResults = StateFlowKt.MutableStateFlow(null);
        this.IN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE = "Google Play In-app Billing API version is less than 3";
        startConnectionOnMainThread$default(this, 0L, 1, null);
    }

    public final Context getContext() {
        return this.context;
    }

    public final IOScope getIoScope() {
        return this.ioScope;
    }

    public final AppLifecycleObserver getAppLifecycleObserver() {
        return this.appLifecycleObserver;
    }

    public final Factory getFactory() {
        return this.factory;
    }

    public /* synthetic */ GoogleBillingWrapper(final Context context, IOScope iOScope, AppLifecycleObserver appLifecycleObserver, Factory factory, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, iOScope, appLifecycleObserver, factory, (i & 16) != 0 ? new Function1() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GoogleBillingWrapper._init_$lambda$0(context, (PurchasesUpdatedListener) obj);
            }
        } : function1);
    }

    public final Function1<PurchasesUpdatedListener, BillingClient> getCreateBillingClient() {
        return this.createBillingClient;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingClient _init_$lambda$0(Context context, PurchasesUpdatedListener it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return BillingClient.newBuilder(context).setListener(it).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).build();
    }

    /* JADX INFO: compiled from: GoogleBillingWrapper.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u000e\u001a\u00020\u000fH\u0001¢\u0006\u0002\b\u0010R&\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/billing/GoogleBillingWrapper$Companion;", "", "<init>", "()V", "productsCache", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "", "QUERY_PURCHASES_TIMEOUT_MS", "", "QUERY_PURCHASES_MAX_RETRIES", "", "clearProductsCache", "", "clearProductsCache$superwall_release", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void clearProductsCache$superwall_release() {
            GoogleBillingWrapper.productsCache.clear();
        }
    }

    private final boolean getShouldFinishTransactions() {
        return !this.factory.makeSuperwallOptions().getShouldObservePurchases();
    }

    public final synchronized BillingClient getBillingClient() {
        return this.billingClient;
    }

    public final synchronized void setBillingClient(BillingClient billingClient) {
        this.billingClient = billingClient;
    }

    @Override // com.superwall.sdk.billing.Billing
    public MutableStateFlow<InternalPurchaseResult> getPurchaseResults() {
        return this.purchaseResults;
    }

    /* JADX INFO: renamed from: getIN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE$superwall_release, reason: from getter */
    public final String getIN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE() {
        return this.IN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE;
    }

    /* JADX INFO: compiled from: GoogleBillingWrapper.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0014\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000bJ\u001c\u0010\f\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000b2\u0006\u0010\r\u001a\u00020\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, d2 = {"Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;", "", PermissionsResponse.SCOPE_KEY, "Lkotlinx/coroutines/CoroutineScope;", "<init>", "(Lkotlinx/coroutines/CoroutineScope;)V", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "post", "", "action", "Lkotlin/Function0;", "postDelayed", "delayMilliseconds", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Handler {
        private final CoroutineScope scope;

        public Handler(CoroutineScope scope) {
            Intrinsics.checkNotNullParameter(scope, "scope");
            this.scope = scope;
        }

        public final CoroutineScope getScope() {
            return this.scope;
        }

        public final void post(Function0<Unit> action) {
            Intrinsics.checkNotNullParameter(action, "action");
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new GoogleBillingWrapper$Handler$post$1(action, null), 3, null);
        }

        public final void postDelayed(Function0<Unit> action, long delayMilliseconds) {
            Intrinsics.checkNotNullParameter(action, "action");
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new GoogleBillingWrapper$Handler$postDelayed$1(delayMilliseconds, action, null), 3, null);
        }
    }

    private final void executePendingRequests() {
        Pair<Function1<BillingError, Unit>, Long> pairPoll;
        synchronized (this) {
            while (true) {
                BillingClient billingClient = this.billingClient;
                if (billingClient == null || !billingClient.isReady() || (pairPoll = this.serviceRequests.poll()) == null) {
                    break;
                }
                final Function1<BillingError, Unit> function1Component1 = pairPoll.component1();
                Long lComponent2 = pairPoll.component2();
                if (lComponent2 != null) {
                    this.threadHandler.postDelayed(new Function0() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return GoogleBillingWrapper.executePendingRequests$lambda$4$lambda$3$lambda$1(function1Component1);
                        }
                    }, lComponent2.longValue());
                } else {
                    this.threadHandler.post(new Function0() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return GoogleBillingWrapper.executePendingRequests$lambda$4$lambda$3$lambda$2(function1Component1);
                        }
                    });
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit executePendingRequests$lambda$4$lambda$3$lambda$1(Function1 function1) {
        function1.invoke(null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit executePendingRequests$lambda$4$lambda$3$lambda$2(Function1 function1) {
        function1.invoke(null);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x007d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0086  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.billing.Billing
    public Object queryAllPurchases(Continuation<? super List<? extends Purchase>> continuation) {
        C04601 c04601;
        GoogleBillingWrapper googleBillingWrapper;
        List listEmptyList;
        List listEmptyList2;
        if (continuation instanceof C04601) {
            c04601 = (C04601) continuation;
            if ((c04601.label & Integer.MIN_VALUE) != 0) {
                c04601.label -= Integer.MIN_VALUE;
            } else {
                c04601 = new C04601(continuation);
            }
        } else {
            c04601 = new C04601(continuation);
        }
        C04601 c04602 = c04601;
        Object objRetryOrNull$default = c04602.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04602.label;
        if (i != 0) {
            if (i == 1) {
                googleBillingWrapper = (GoogleBillingWrapper) c04602.L$0;
                ResultKt.throwOnFailure(objRetryOrNull$default);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                listEmptyList = (List) c04602.L$0;
                ResultKt.throwOnFailure(objRetryOrNull$default);
            }
            listEmptyList2 = (List) objRetryOrNull$default;
            if (listEmptyList == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            List list = listEmptyList;
            if (listEmptyList2 == null) {
                listEmptyList2 = CollectionsKt.emptyList();
            }
            return CollectionsKt.plus((Collection) list, (Iterable) listEmptyList2);
        }
        ResultKt.throwOnFailure(objRetryOrNull$default);
        GoogleBillingWrapper$queryAllPurchases$apps$1 googleBillingWrapper$queryAllPurchases$apps$1 = new GoogleBillingWrapper$queryAllPurchases$apps$1(this, null);
        c04602.L$0 = this;
        c04602.label = 1;
        objRetryOrNull$default = Task_RetryingKt.retryOrNull$default(3, null, googleBillingWrapper$queryAllPurchases$apps$1, c04602, 2, null);
        if (objRetryOrNull$default != coroutine_suspended) {
            googleBillingWrapper = this;
        }
        return coroutine_suspended;
        List list2 = (List) objRetryOrNull$default;
        GoogleBillingWrapper$queryAllPurchases$subs$1 googleBillingWrapper$queryAllPurchases$subs$1 = new GoogleBillingWrapper$queryAllPurchases$subs$1(googleBillingWrapper, null);
        c04602.L$0 = list2;
        c04602.label = 2;
        Object objRetryOrNull$default2 = Task_RetryingKt.retryOrNull$default(3, null, googleBillingWrapper$queryAllPurchases$subs$1, c04602, 2, null);
        if (objRetryOrNull$default2 != coroutine_suspended) {
            listEmptyList = list2;
            objRetryOrNull$default = objRetryOrNull$default2;
            listEmptyList2 = (List) objRetryOrNull$default;
            if (listEmptyList == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            List list3 = listEmptyList;
            if (listEmptyList2 == null) {
                listEmptyList2 = CollectionsKt.emptyList();
            }
            return CollectionsKt.plus((Collection) list3, (Iterable) listEmptyList2);
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.billing.Billing
    /* JADX INFO: renamed from: consume-gIAlu-s */
    public Object mo10575consumegIAlus(String str, Continuation<? super Result<String>> continuation) {
        GoogleBillingWrapper$consume$1 googleBillingWrapper$consume$1;
        if (continuation instanceof GoogleBillingWrapper$consume$1) {
            googleBillingWrapper$consume$1 = (GoogleBillingWrapper$consume$1) continuation;
            if ((googleBillingWrapper$consume$1.label & Integer.MIN_VALUE) != 0) {
                googleBillingWrapper$consume$1.label -= Integer.MIN_VALUE;
            } else {
                googleBillingWrapper$consume$1 = new GoogleBillingWrapper$consume$1(this, continuation);
            }
        } else {
            googleBillingWrapper$consume$1 = new GoogleBillingWrapper$consume$1(this, continuation);
        }
        Object orThrow = googleBillingWrapper$consume$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = googleBillingWrapper$consume$1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(orThrow);
            googleBillingWrapper$consume$1.L$0 = this;
            googleBillingWrapper$consume$1.L$1 = str;
            googleBillingWrapper$consume$1.label = 1;
            GoogleBillingWrapper$consume$1 googleBillingWrapper$consume$2 = googleBillingWrapper$consume$1;
            SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(googleBillingWrapper$consume$2));
            final SafeContinuation safeContinuation2 = safeContinuation;
            BillingClientUseCase.run$default(new ConsumePurchaseUseCase(new ConsumePurchaseUseCaseParams(str, this.appLifecycleObserver.isInBackground().getValue().booleanValue()), new Function1<String, Unit>() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$consume$2$useCase$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str2) {
                    invoke2(str2);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(String consumedToken) {
                    Intrinsics.checkNotNullParameter(consumedToken, "consumedToken");
                    Continuation<Result<String>> continuation2 = safeContinuation2;
                    Result.Companion companion = Result.INSTANCE;
                    Result resultM11240boximpl = Result.m11240boximpl(Result.m11241constructorimpl(consumedToken));
                    Result.Companion companion2 = Result.INSTANCE;
                    continuation2.resumeWith(Result.m11241constructorimpl(resultM11240boximpl));
                }
            }, new Function1<BillingError, Unit>() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$consume$2$useCase$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(BillingError billingError) {
                    invoke2(billingError);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(BillingError error) {
                    Intrinsics.checkNotNullParameter(error, "error");
                    Continuation<Result<String>> continuation2 = safeContinuation2;
                    Result.Companion companion = Result.INSTANCE;
                    Result resultM11240boximpl = Result.m11240boximpl(Result.m11241constructorimpl(ResultKt.createFailure(error)));
                    Result.Companion companion2 = Result.INSTANCE;
                    continuation2.resumeWith(Result.m11241constructorimpl(resultM11240boximpl));
                }
            }, new GoogleBillingWrapper$consume$2$useCase$3(this), new GoogleBillingWrapper$consume$2$useCase$4(this)), 0L, 1, null);
            orThrow = safeContinuation.getOrThrow();
            if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(googleBillingWrapper$consume$2);
            }
            if (orThrow == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(orThrow);
        }
        return ((Result) orThrow).getValue();
    }

    public static /* synthetic */ void startConnectionOnMainThread$default(GoogleBillingWrapper googleBillingWrapper, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        googleBillingWrapper.startConnectionOnMainThread(j);
    }

    public final void startConnectionOnMainThread(long delayMilliseconds) {
        this.threadHandler.postDelayed(new Function0() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GoogleBillingWrapper.startConnectionOnMainThread$lambda$6(this.f$0);
            }
        }, delayMilliseconds);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit startConnectionOnMainThread$lambda$6(GoogleBillingWrapper googleBillingWrapper) {
        googleBillingWrapper.startConnection();
        return Unit.INSTANCE;
    }

    public final void startConnection() {
        synchronized (this) {
            if (this.billingClient == null) {
                this.billingClient = this.createBillingClient.invoke(this);
            }
            this.reconnectionAlreadyScheduled = false;
            BillingClient billingClient = this.billingClient;
            if (billingClient != null) {
                if (!billingClient.isReady()) {
                    Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.productsManager, "Starting billing client", null, null, 24, null);
                    try {
                        billingClient.startConnection(this);
                    } catch (IllegalStateException e) {
                        Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.productsManager, "IllegalStateException when connecting to billing client: " + e.getMessage(), null, null, 24, null);
                        sendErrorsToAllPendingRequests(BillingError.IllegalStateException.INSTANCE);
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    @Override // com.superwall.sdk.billing.Billing
    public /* synthetic */ Object awaitGetProducts(Set set, Continuation continuation) throws Throwable {
        StoreProduct storeProduct;
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Either<StoreProduct, Throwable> either = productsCache.get((String) it.next());
            if (either == null) {
                storeProduct = null;
            } else {
                if (!(either instanceof Either.Success)) {
                    if (either instanceof Either.Failure) {
                        throw ((Either.Failure) either).getError();
                    }
                    throw new NoWhenBranchMatchedException();
                }
                storeProduct = (StoreProduct) ((Either.Success) either).getValue();
            }
            if (storeProduct != null) {
                arrayList.add(storeProduct);
            }
        }
        final Set set2 = CollectionsKt.toSet(arrayList);
        if (set2.size() == set.size()) {
            return set2;
        }
        Set set3 = set2;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(set3, 10));
        Iterator it2 = set3.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((StoreProduct) it2.next()).getFullIdentifier());
        }
        final Set<String> setMinus = SetsKt.minus(set, (Iterable) CollectionsKt.toSet(arrayList2));
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
        final SafeContinuation safeContinuation2 = safeContinuation;
        getProducts(setMinus, new GetStoreProductsCallback() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$awaitGetProducts$2$1
            @Override // com.superwall.sdk.billing.GetStoreProductsCallback
            public void onReceived(Set<StoreProduct> storeProducts) {
                Intrinsics.checkNotNullParameter(storeProducts, "storeProducts");
                Set<StoreProduct> set4 = storeProducts;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(set4, 10));
                for (StoreProduct storeProduct2 : set4) {
                    GoogleBillingWrapper.productsCache.put(storeProduct2.getFullIdentifier(), new Either.Success(storeProduct2));
                    arrayList3.add(storeProduct2.getFullIdentifier());
                }
                ArrayList arrayList4 = arrayList3;
                Set<String> set5 = setMinus;
                ArrayList<String> arrayList5 = new ArrayList();
                for (Object obj : set5) {
                    if (!arrayList4.contains((String) obj)) {
                        arrayList5.add(obj);
                    }
                }
                for (String str : arrayList5) {
                    GoogleBillingWrapper.productsCache.put(str, new Either.Failure(new Exception("Failed to query product details for " + str)));
                }
                Set setPlus = SetsKt.plus((Set) set2, (Iterable) set4);
                Continuation<Set<StoreProduct>> continuation2 = safeContinuation2;
                Result.Companion companion = Result.INSTANCE;
                continuation2.resumeWith(Result.m11241constructorimpl(setPlus));
            }

            @Override // com.superwall.sdk.billing.GetStoreProductsCallback
            public void onError(BillingError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                if (error instanceof BillingError.BillingNotAvailable) {
                    Iterator<T> it3 = setMinus.iterator();
                    while (it3.hasNext()) {
                        GoogleBillingWrapper.productsCache.put((String) it3.next(), new Either.Failure(error));
                    }
                }
                Continuation<Set<StoreProduct>> continuation2 = safeContinuation2;
                Result.Companion companion = Result.INSTANCE;
                continuation2.resumeWith(Result.m11241constructorimpl(ResultKt.createFailure(error)));
            }
        });
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    private final void getProducts(Set<String> fullProductIds, final GetStoreProductsCallback callback) {
        Set<String> of = SetsKt.setOf((Object[]) new String[]{"subs", "inapp"});
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = fullProductIds.iterator();
        while (it.hasNext()) {
            DecomposedProductIds decomposedProductIdsFrom = DecomposedProductIds.INSTANCE.from((String) it.next());
            String subscriptionId = decomposedProductIdsFrom.getSubscriptionId();
            linkedHashSet.add(subscriptionId);
            ArrayList arrayList = linkedHashMap.get(subscriptionId);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(subscriptionId, arrayList);
            }
            arrayList.add(decomposedProductIdsFrom);
        }
        getProductsOfTypes(linkedHashSet, of, SetsKt.emptySet(), linkedHashMap, new GetStoreProductsCallback() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper.getProducts.2
            @Override // com.superwall.sdk.billing.GetStoreProductsCallback
            public void onReceived(Set<StoreProduct> storeProducts) {
                Intrinsics.checkNotNullParameter(storeProducts, "storeProducts");
                callback.onReceived(storeProducts);
            }

            @Override // com.superwall.sdk.billing.GetStoreProductsCallback
            public void onError(BillingError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                callback.onError(error);
            }
        });
    }

    private final void getProductsOfTypes(final Set<String> subscriptionIds, Set<String> types, final Set<StoreProduct> collectedStoreProducts, final Map<String, List<DecomposedProductIds>> decomposedProductIdsBySubscriptionId, final GetStoreProductsCallback callback) {
        final Set mutableSet = CollectionsKt.toMutableSet(types);
        String str = (String) CollectionsKt.firstOrNull(mutableSet);
        if (str != null) {
            mutableSet.remove(str);
        } else {
            str = null;
        }
        if (str != null) {
            queryProductDetailsAsync(str, subscriptionIds, decomposedProductIdsBySubscriptionId, new Function1() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return GoogleBillingWrapper.getProductsOfTypes$lambda$20$lambda$17(this.f$0, subscriptionIds, mutableSet, collectedStoreProducts, decomposedProductIdsBySubscriptionId, callback, (List) obj);
                }
            }, new Function1() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return GoogleBillingWrapper.getProductsOfTypes$lambda$20$lambda$19(this.f$0, callback, (BillingError) obj);
                }
            });
        } else {
            callback.onReceived(collectedStoreProducts);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getProductsOfTypes$lambda$20$lambda$17(final GoogleBillingWrapper googleBillingWrapper, final Set set, final Set set2, final Set set3, final Map map, final GetStoreProductsCallback getStoreProductsCallback, final List storeProducts) {
        Intrinsics.checkNotNullParameter(storeProducts, "storeProducts");
        googleBillingWrapper.dispatch(new Function0() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GoogleBillingWrapper.getProductsOfTypes$lambda$20$lambda$17$lambda$16(this.f$0, set, set2, set3, storeProducts, map, getStoreProductsCallback);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getProductsOfTypes$lambda$20$lambda$17$lambda$16(GoogleBillingWrapper googleBillingWrapper, Set set, Set set2, Set set3, List list, Map map, GetStoreProductsCallback getStoreProductsCallback) {
        googleBillingWrapper.getProductsOfTypes(set, set2, SetsKt.plus(set3, (Iterable) list), map, getStoreProductsCallback);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getProductsOfTypes$lambda$20$lambda$19(GoogleBillingWrapper googleBillingWrapper, final GetStoreProductsCallback getStoreProductsCallback, final BillingError it) {
        Intrinsics.checkNotNullParameter(it, "it");
        googleBillingWrapper.dispatch(new Function0() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GoogleBillingWrapper.getProductsOfTypes$lambda$20$lambda$19$lambda$18(getStoreProductsCallback, it);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getProductsOfTypes$lambda$20$lambda$19$lambda$18(GetStoreProductsCallback getStoreProductsCallback, BillingError billingError) {
        getStoreProductsCallback.onError(billingError);
        return Unit.INSTANCE;
    }

    private final void dispatch(Function0<Unit> action) {
        this.threadHandler.post(action);
    }

    private final void queryProductDetailsAsync(String productType, Set<String> subscriptionIds, Map<String, List<DecomposedProductIds>> decomposedProductIdsBySubscriptionId, Function1<? super List<StoreProduct>, Unit> onReceive, Function1<? super BillingError, Unit> onError) {
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.productsManager, "Requesting products from the store with identifiers: " + CollectionsKt.joinToString$default(subscriptionIds, null, null, null, 0, null, null, 63, null), null, null, 24, null);
        BillingClientUseCase.run$default(new QueryProductDetailsUseCase(new QueryProductDetailsUseCaseParams(subscriptionIds, decomposedProductIdsBySubscriptionId, productType, this.appLifecycleObserver.isInBackground().getValue().booleanValue()), onReceive, onError, new GoogleBillingWrapper$queryProductDetailsAsync$useCase$1(this), new GoogleBillingWrapper$queryProductDetailsAsync$useCase$2(this)), 0L, 1, null);
    }

    static /* synthetic */ void executeRequestOnUIThread$default(GoogleBillingWrapper googleBillingWrapper, Long l, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            l = null;
        }
        googleBillingWrapper.executeRequestOnUIThread(l, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void executeRequestOnUIThread(Long delayMilliseconds, Function1<? super BillingError, Unit> request) {
        this.serviceRequests.add(TuplesKt.to(request, delayMilliseconds));
        BillingClient billingClient = this.billingClient;
        if (billingClient != null && !billingClient.isReady()) {
            startConnectionOnMainThread$default(this, 0L, 1, null);
        } else {
            executePendingRequests();
        }
    }

    private final void retryBillingServiceConnectionWithExponentialBackoff() {
        if (this.reconnectionAlreadyScheduled) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.productsManager, "Billing client retry already scheduled.", null, null, 24, null);
            return;
        }
        Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.productsManager, "Billing client disconnected, retrying in " + this.reconnectMilliseconds + " milliseconds", null, null, 24, null);
        this.reconnectionAlreadyScheduled = true;
        startConnectionOnMainThread(this.reconnectMilliseconds);
        this.reconnectMilliseconds = Math.min(this.reconnectMilliseconds * ((long) 2), 16000L);
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingServiceDisconnected() {
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.productsManager, "Billing client disconnected", null, null, 24, null);
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingSetupFinished(final BillingResult billingResult) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        this.threadHandler.post(new Function0() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GoogleBillingWrapper.onBillingSetupFinished$lambda$22(billingResult, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x00fd  */
    public static final Unit onBillingSetupFinished$lambda$22(BillingResult billingResult, GoogleBillingWrapper googleBillingWrapper) {
        BillingError.BillingNotAvailable billingNotAvailable;
        int responseCode = billingResult.getResponseCode();
        if (responseCode != 12) {
            switch (responseCode) {
                case -2:
                case 3:
                    String str = "DebugMessage: " + billingResult.getDebugMessage() + " ErrorCode: " + billingResult.getResponseCode() + ".";
                    if (Intrinsics.areEqual(billingResult.getDebugMessage(), googleBillingWrapper.IN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE)) {
                        billingNotAvailable = new BillingError.BillingNotAvailable("Billing is not available in this device. Make sure there's an account configured in Play Store. Reopen the Play Store or clean its caches if this keeps happening. Original error message: " + str);
                    } else {
                        billingNotAvailable = new BillingError.BillingNotAvailable("Billing is not available in this device. Original error message: " + str);
                    }
                    Logger logger = Logger.INSTANCE;
                    LogLevel logLevel = LogLevel.error;
                    LogScope logScope = LogScope.productsManager;
                    String message = billingNotAvailable.getMessage();
                    if (message == null) {
                        message = "Billing is not available in this device. " + billingResult.getDebugMessage();
                    }
                    Logger.debug$default(logger, logLevel, logScope, message, null, null, 24, null);
                    googleBillingWrapper.sendErrorsToAllPendingRequests(billingNotAvailable);
                    break;
                case -1:
                case 1:
                case 2:
                case 6:
                    Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.productsManager, "Billing client error, retrying: " + billingResult.getResponseCode(), null, null, 24, null);
                    googleBillingWrapper.retryBillingServiceConnectionWithExponentialBackoff();
                    break;
                case 0:
                    Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.productsManager, "Billing client connected", null, null, 24, null);
                    googleBillingWrapper.executePendingRequests();
                    googleBillingWrapper.reconnectMilliseconds = 1000L;
                    googleBillingWrapper.trackProductDetailsNotSupportedIfNeeded();
                    break;
                case 4:
                case 7:
                case 8:
                    Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.productsManager, "Billing client error, item not supported or unavailable: " + billingResult.getResponseCode(), null, null, 24, null);
                    break;
                case 5:
                    Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.productsManager, "Billing client error, developer error: " + billingResult.getResponseCode(), null, null, 24, null);
                    break;
            }
        } else {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.productsManager, "Billing client error, retrying: " + billingResult.getResponseCode(), null, null, 24, null);
            googleBillingWrapper.retryBillingServiceConnectionWithExponentialBackoff();
        }
        return Unit.INSTANCE;
    }

    public final Unit withConnectedClient(Function1<? super BillingClient, Unit> receivingFunction) {
        Intrinsics.checkNotNullParameter(receivingFunction, "receivingFunction");
        BillingClient billingClient = this.billingClient;
        if (billingClient != null) {
            if (!billingClient.isReady()) {
                billingClient = null;
            }
            if (billingClient != null) {
                receivingFunction.invoke(billingClient);
                return Unit.INSTANCE;
            }
        }
        Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.productsManager, "Billing client not ready", null, null, 24, null);
        return null;
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public void onPurchasesUpdated(BillingResult result, List<Purchase> purchases) {
        Intrinsics.checkNotNullParameter(result, "result");
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.storeKitManager, "onPurchasesUpdated: " + result, null, null, 24, null);
        if (result.getResponseCode() == 0 && purchases != null) {
            for (Purchase purchase : purchases) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.storeKitManager, "Purchase: " + purchase, null, null, 24, null);
                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new C04581(purchase, null), 3, null);
            }
            return;
        }
        if (result.getResponseCode() == 1) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new C04592(null), 3, null);
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.storeKitManager, "User cancelled purchase", null, null, 24, null);
        } else {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new AnonymousClass3(result, null), 3, null);
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.storeKitManager, "Purchase failed", null, null, 24, null);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.billing.GoogleBillingWrapper$onPurchasesUpdated$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GoogleBillingWrapper.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.billing.GoogleBillingWrapper$onPurchasesUpdated$1", f = "GoogleBillingWrapper.kt", i = {}, l = {567}, m = "invokeSuspend", n = {}, s = {})
    static final class C04581 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Purchase $purchase;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04581(Purchase purchase, Continuation<? super C04581> continuation) {
            super(2, continuation);
            this.$purchase = purchase;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GoogleBillingWrapper.this.new C04581(this.$purchase, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04581) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (GoogleBillingWrapper.this.getPurchaseResults().emit(new InternalPurchaseResult.Purchased(this.$purchase), this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.billing.GoogleBillingWrapper$onPurchasesUpdated$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GoogleBillingWrapper.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.billing.GoogleBillingWrapper$onPurchasesUpdated$2", f = "GoogleBillingWrapper.kt", i = {}, l = {574}, m = "invokeSuspend", n = {}, s = {})
    static final class C04592 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C04592(Continuation<? super C04592> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GoogleBillingWrapper.this.new C04592(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04592) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (GoogleBillingWrapper.this.getPurchaseResults().emit(InternalPurchaseResult.Cancelled.INSTANCE, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.billing.GoogleBillingWrapper$onPurchasesUpdated$3, reason: invalid class name */
    /* JADX INFO: compiled from: GoogleBillingWrapper.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.billing.GoogleBillingWrapper$onPurchasesUpdated$3", f = "GoogleBillingWrapper.kt", i = {}, l = {584}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ BillingResult $result;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(BillingResult billingResult, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$result = billingResult;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GoogleBillingWrapper.this.new AnonymousClass3(this.$result, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (GoogleBillingWrapper.this.getPurchaseResults().emit(new InternalPurchaseResult.Failed(new Exception(String.valueOf(this.$result.getResponseCode()))), this) == coroutine_suspended) {
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

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.billing.Billing
    public Object getLatestTransaction(StoreTransactionFactory storeTransactionFactory, Continuation<? super StoreTransaction> continuation) {
        AnonymousClass1 anonymousClass1;
        GoogleBillingWrapper googleBillingWrapper;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objFirst = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objFirst);
            final StateFlow stateFlowAsStateFlow = FlowKt.asStateFlow(getPurchaseResults());
            Flow<InternalPurchaseResult> flow = new Flow<InternalPurchaseResult>() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$getLatestTransaction$$inlined$filter$1

                /* JADX INFO: renamed from: com.superwall.sdk.billing.GoogleBillingWrapper$getLatestTransaction$$inlined$filter$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ FlowCollector $this_unsafeFlow;

                    /* JADX INFO: renamed from: com.superwall.sdk.billing.GoogleBillingWrapper$getLatestTransaction$$inlined$filter$1$2$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                    @DebugMetadata(c = "com.superwall.sdk.billing.GoogleBillingWrapper$getLatestTransaction$$inlined$filter$1$2", f = "GoogleBillingWrapper.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        Object L$1;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector) {
                        this.$this_unsafeFlow = flowCollector;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.label -= Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj2 = anonymousClass1.result;
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = anonymousClass1.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj2);
                            FlowCollector flowCollector = this.$this_unsafeFlow;
                            if (((InternalPurchaseResult) obj) != null) {
                                anonymousClass1.label = 1;
                                if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            }
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj2);
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super InternalPurchaseResult> flowCollector, Continuation continuation2) {
                    Object objCollect = stateFlowAsStateFlow.collect(new AnonymousClass2(flowCollector), continuation2);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }
            };
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = storeTransactionFactory;
            anonymousClass1.label = 1;
            objFirst = FlowKt.first(flow, anonymousClass1);
            if (objFirst != coroutine_suspended) {
                googleBillingWrapper = this;
            }
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objFirst);
            return objFirst;
        }
        storeTransactionFactory = (StoreTransactionFactory) anonymousClass1.L$1;
        googleBillingWrapper = (GoogleBillingWrapper) anonymousClass1.L$0;
        ResultKt.throwOnFailure(objFirst);
        InternalPurchaseResult internalPurchaseResult = (InternalPurchaseResult) objFirst;
        if (internalPurchaseResult instanceof InternalPurchaseResult.Purchased) {
            if (!googleBillingWrapper.getShouldFinishTransactions()) {
                return null;
            }
            Purchase purchase = ((InternalPurchaseResult.Purchased) internalPurchaseResult).getPurchase();
            anonymousClass1.L$0 = null;
            anonymousClass1.L$1 = null;
            anonymousClass1.label = 2;
            Object objMakeStoreTransaction = storeTransactionFactory.makeStoreTransaction(purchase, anonymousClass1);
            return objMakeStoreTransaction == coroutine_suspended ? coroutine_suspended : objMakeStoreTransaction;
        }
        boolean z = internalPurchaseResult instanceof InternalPurchaseResult.Cancelled;
        return null;
    }

    private final synchronized void sendErrorsToAllPendingRequests(final BillingError error) {
        while (true) {
            Pair<Function1<BillingError, Unit>, Long> pairPoll = this.serviceRequests.poll();
            if (pairPoll != null) {
                final Function1<BillingError, Unit> function1Component1 = pairPoll.component1();
                this.threadHandler.post(new Function0() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return GoogleBillingWrapper.sendErrorsToAllPendingRequests$lambda$28$lambda$27(function1Component1, error);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit sendErrorsToAllPendingRequests$lambda$28$lambda$27(Function1 function1, BillingError billingError) {
        function1.invoke(billingError);
        return Unit.INSTANCE;
    }

    private final void trackProductDetailsNotSupportedIfNeeded() {
        BillingClient billingClient = this.billingClient;
        BillingResult billingResultIsFeatureSupported = billingClient != null ? billingClient.isFeatureSupported(BillingClient.FeatureType.PRODUCT_DETAILS) : null;
        if (billingResultIsFeatureSupported == null || billingResultIsFeatureSupported.getResponseCode() != -2) {
            return;
        }
        Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.productsManager, "Product details not supported: " + billingResultIsFeatureSupported.getResponseCode() + " " + billingResultIsFeatureSupported.getDebugMessage(), null, null, 24, null);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x008a  */
    /* JADX WARN: Code duplicated, block: B:26:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:29:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:32:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:35:0x00da  */
    /* JADX WARN: Code duplicated, block: B:38:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00b3 -> B:27:0x00b4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object latestPurchase$superwall_release(kotlin.coroutines.Continuation<? super java.util.List<? extends java.util.Map<java.lang.String, ? extends java.lang.Object>>> r12) {
        /*
            Method dump skipped, instruction units count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.billing.GoogleBillingWrapper.latestPurchase$superwall_release(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX INFO: renamed from: queryType-gIAlu-s, reason: not valid java name */
    public final Object m10580queryTypegIAlus(String str, Continuation<? super Result<? extends List<? extends Purchase>>> continuation) {
        GoogleBillingWrapper$queryType$1 googleBillingWrapper$queryType$1;
        if (continuation instanceof GoogleBillingWrapper$queryType$1) {
            googleBillingWrapper$queryType$1 = (GoogleBillingWrapper$queryType$1) continuation;
            if ((googleBillingWrapper$queryType$1.label & Integer.MIN_VALUE) != 0) {
                googleBillingWrapper$queryType$1.label -= Integer.MIN_VALUE;
            } else {
                googleBillingWrapper$queryType$1 = new GoogleBillingWrapper$queryType$1(this, continuation);
            }
        } else {
            googleBillingWrapper$queryType$1 = new GoogleBillingWrapper$queryType$1(this, continuation);
        }
        Object objWithTimeoutOrNull = googleBillingWrapper$queryType$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = googleBillingWrapper$queryType$1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objWithTimeoutOrNull);
            final CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            final QueryPurchasesParams queryPurchasesParamsBuild = QueryPurchasesParams.newBuilder().setProductType(str).build();
            Intrinsics.checkNotNullExpressionValue(queryPurchasesParamsBuild, "build(...)");
            if (withConnectedClient(new Function1() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return GoogleBillingWrapper.queryType_gIAlu_s$lambda$32(queryPurchasesParamsBuild, completableDeferredCompletableDeferred$default, (BillingClient) obj);
                }
            }) == null) {
                Result.Companion companion = Result.INSTANCE;
                Boxing.boxBoolean(completableDeferredCompletableDeferred$default.complete(Result.m11240boximpl(Result.m11241constructorimpl(ResultKt.createFailure(new Throwable("Billing client not ready"))))));
            }
            GoogleBillingWrapper$queryType$3 googleBillingWrapper$queryType$3 = new GoogleBillingWrapper$queryType$3(completableDeferredCompletableDeferred$default, null);
            googleBillingWrapper$queryType$1.label = 1;
            objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(10000L, googleBillingWrapper$queryType$3, googleBillingWrapper$queryType$1);
            if (objWithTimeoutOrNull == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objWithTimeoutOrNull);
        }
        Result result = (Result) objWithTimeoutOrNull;
        if (result != null) {
            return result.getValue();
        }
        Result.Companion companion2 = Result.INSTANCE;
        return Result.m11241constructorimpl(ResultKt.createFailure(new Throwable("Query purchases timed out")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit queryType_gIAlu_s$lambda$32(QueryPurchasesParams queryPurchasesParams, final CompletableDeferred completableDeferred, BillingClient withConnectedClient) {
        Intrinsics.checkNotNullParameter(withConnectedClient, "$this$withConnectedClient");
        withConnectedClient.queryPurchasesAsync(queryPurchasesParams, new PurchasesResponseListener() { // from class: com.superwall.sdk.billing.GoogleBillingWrapper$$ExternalSyntheticLambda7
            @Override // com.android.billingclient.api.PurchasesResponseListener
            public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                GoogleBillingWrapper.queryType_gIAlu_s$lambda$32$lambda$31(completableDeferred, billingResult, list);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void queryType_gIAlu_s$lambda$32$lambda$31(CompletableDeferred completableDeferred, BillingResult billingResult, List purchasesList) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        Intrinsics.checkNotNullParameter(purchasesList, "purchasesList");
        if (billingResult.getResponseCode() != 0) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.nativePurchaseController, "Unable to query for purchases.", null, null, 24, null);
            Result.Companion companion = Result.INSTANCE;
            completableDeferred.complete(Result.m11240boximpl(Result.m11241constructorimpl(ResultKt.createFailure(new Throwable("Billing query failed with code " + billingResult.getResponseCode())))));
            return;
        }
        Result.Companion companion2 = Result.INSTANCE;
        completableDeferred.complete(Result.m11240boximpl(Result.m11241constructorimpl(purchasesList)));
    }
}
