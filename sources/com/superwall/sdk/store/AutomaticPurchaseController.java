package com.superwall.sdk.store;

import android.content.Context;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryPurchasesParams;
import com.facebook.imageutils.TiffUtil;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.config.models.ConfigurationStatus;
import com.superwall.sdk.delegate.PurchaseResult;
import com.superwall.sdk.delegate.RestorationResult;
import com.superwall.sdk.delegate.subscription_controller.PurchaseController;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.misc.Task_RetryingKt;
import com.superwall.sdk.models.customer.CustomerInfoMergingKt;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.store.transactions.PlayBillingErrors;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
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
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import me.leolin.shortcutbadger.impl.NewHtcHomeBadger;

/* JADX INFO: compiled from: AutomaticPurchaseController.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0006\u0018\u0000 B2\u00020\u00012\u00020\u0002:\u0001BB;\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u001a\b\u0002\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\f\u0010\rJ\b\u0010 \u001a\u00020!H\u0002J\b\u0010\"\u001a\u00020!H\u0002J$\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\b\u0010&\u001a\u0004\u0018\u00010$2\b\u0010'\u001a\u0004\u0018\u00010$H\u0002J2\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\b\u0010&\u001a\u0004\u0018\u00010$2\b\u0010'\u001a\u0004\u0018\u00010$H\u0096@¢\u0006\u0002\u0010-J\u000e\u0010.\u001a\u00020/H\u0096@¢\u0006\u0002\u00100J \u00101\u001a\u00020!2\u0006\u00102\u001a\u0002032\u000e\u00104\u001a\n\u0012\u0004\u0012\u000206\u0018\u000105H\u0016J\u0018\u00107\u001a\u00020!2\b\b\u0002\u00108\u001a\u000209H\u0082@¢\u0006\u0002\u0010:J$\u0010;\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002060=0<2\u0006\u0010>\u001a\u00020$H\u0082@¢\u0006\u0004\b?\u0010@J\u0016\u0010A\u001a\u00020!2\f\u00104\u001a\b\u0012\u0004\u0012\u0002060=H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R#\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006C"}, d2 = {"Lcom/superwall/sdk/store/AutomaticPurchaseController;", "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;", "Lcom/android/billingclient/api/PurchasesUpdatedListener;", "context", "Landroid/content/Context;", PermissionsResponse.SCOPE_KEY, "Lcom/superwall/sdk/misc/IOScope;", "entitlementsInfo", "Lcom/superwall/sdk/store/Entitlements;", "getBilling", "Lkotlin/Function2;", "Lcom/android/billingclient/api/BillingClient;", "<init>", "(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/store/Entitlements;Lkotlin/jvm/functions/Function2;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getScope", "()Lcom/superwall/sdk/misc/IOScope;", "getEntitlementsInfo", "()Lcom/superwall/sdk/store/Entitlements;", "getGetBilling", "()Lkotlin/jvm/functions/Function2;", "billingClient", "isConnected", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "purchaseResults", "Lcom/superwall/sdk/delegate/PurchaseResult;", "reconnectMilliseconds", "", "startConnection", "", "syncSubscriptionStatus", "buildFullId", "", "subscriptionId", "basePlanId", "offerId", "purchase", "activity", "Landroid/app/Activity;", "productDetails", "Lcom/android/billingclient/api/ProductDetails;", "(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "restorePurchases", "Lcom/superwall/sdk/delegate/RestorationResult;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onPurchasesUpdated", "billingResult", "Lcom/android/billingclient/api/BillingResult;", "purchases", "", "Lcom/android/billingclient/api/Purchase;", "syncSubscriptionStatusAndWait", NewHtcHomeBadger.COUNT, "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "queryPurchasesOfType", "Lkotlin/Result;", "", "productType", "queryPurchasesOfType-gIAlu-s", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acknowledgePurchasesIfNecessary", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AutomaticPurchaseController implements PurchaseController, PurchasesUpdatedListener {
    private static final int MAX_RETRIES = 3;
    private static final long QUERY_TIMEOUT_MS = 10000;
    private BillingClient billingClient;
    private Context context;
    private final Entitlements entitlementsInfo;
    private final Function2<Context, PurchasesUpdatedListener, BillingClient> getBilling;
    private final MutableStateFlow<Boolean> isConnected;
    private final MutableStateFlow<PurchaseResult> purchaseResults;
    private long reconnectMilliseconds;
    private final IOScope scope;

    /* JADX INFO: renamed from: com.superwall.sdk.store.AutomaticPurchaseController$purchase$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AutomaticPurchaseController.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.AutomaticPurchaseController", f = "AutomaticPurchaseController.kt", i = {0, 0, 0}, l = {257, 268}, m = "purchase", n = {"this", "activity", "flowParams"}, s = {"L$0", "L$1", "L$2"})
    static final class C05901 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C05901(Continuation<? super C05901> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AutomaticPurchaseController.this.purchase(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.AutomaticPurchaseController$restorePurchases$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AutomaticPurchaseController.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.AutomaticPurchaseController", f = "AutomaticPurchaseController.kt", i = {}, l = {TiffUtil.TIFF_TAG_ORIENTATION}, m = "restorePurchases", n = {}, s = {})
    static final class C05921 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C05921(Continuation<? super C05921> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AutomaticPurchaseController.this.restorePurchases(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.AutomaticPurchaseController$syncSubscriptionStatusAndWait$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AutomaticPurchaseController.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.AutomaticPurchaseController", f = "AutomaticPurchaseController.kt", i = {0, 0, 1, 1, 2, 2, 2}, l = {324, 326, 328}, m = "syncSubscriptionStatusAndWait", n = {"this", NewHtcHomeBadger.COUNT, "this", NewHtcHomeBadger.COUNT, "this", "subscriptionPurchases", NewHtcHomeBadger.COUNT}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "L$1", "I$0"})
    static final class C05951 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05951(Continuation<? super C05951> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AutomaticPurchaseController.this.syncSubscriptionStatusAndWait(0, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AutomaticPurchaseController(Context context, IOScope scope, Entitlements entitlementsInfo, Function2<? super Context, ? super PurchasesUpdatedListener, ? extends BillingClient> getBilling) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(entitlementsInfo, "entitlementsInfo");
        Intrinsics.checkNotNullParameter(getBilling, "getBilling");
        this.context = context;
        this.scope = scope;
        this.entitlementsInfo = entitlementsInfo;
        this.getBilling = getBilling;
        this.billingClient = (BillingClient) getBilling.invoke(context, this);
        this.isConnected = StateFlowKt.MutableStateFlow(false);
        this.purchaseResults = StateFlowKt.MutableStateFlow(null);
        this.reconnectMilliseconds = 1000L;
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new AnonymousClass2(null), 3, null);
    }

    public final Context getContext() {
        return this.context;
    }

    public final void setContext(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final IOScope getScope() {
        return this.scope;
    }

    public final Entitlements getEntitlementsInfo() {
        return this.entitlementsInfo;
    }

    public /* synthetic */ AutomaticPurchaseController(Context context, IOScope iOScope, Entitlements entitlements, Function2 function2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, iOScope, entitlements, (i & 8) != 0 ? new Function2() { // from class: com.superwall.sdk.store.AutomaticPurchaseController$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AutomaticPurchaseController._init_$lambda$0((Context) obj, (PurchasesUpdatedListener) obj2);
            }
        } : function2);
    }

    public final Function2<Context, PurchasesUpdatedListener, BillingClient> getGetBilling() {
        return this.getBilling;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingClient _init_$lambda$0(Context ctx, PurchasesUpdatedListener listener) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(listener, "listener");
        try {
            return BillingClient.newBuilder(ctx).setListener(listener).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).build();
        } catch (Throwable th) {
            Logger logger = Logger.INSTANCE;
            LogLevel logLevel = LogLevel.error;
            LogScope logScope = LogScope.nativePurchaseController;
            String str = AutomaticPurchaseControllerKt.BILLING_INSANTIATION_ERROR;
            String message = th.getMessage();
            if (message == null) {
                message = "Unknown message";
            }
            logger.debug(logLevel, logScope, str, MapsKt.mapOf(TuplesKt.to("error_message", message)), th);
            throw th;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.AutomaticPurchaseController$2, reason: invalid class name */
    /* JADX INFO: compiled from: AutomaticPurchaseController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.AutomaticPurchaseController$2", f = "AutomaticPurchaseController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AutomaticPurchaseController.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                AutomaticPurchaseController.this.startConnection();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startConnection() {
        try {
            this.billingClient.startConnection(new BillingClientStateListener() { // from class: com.superwall.sdk.store.AutomaticPurchaseController.startConnection.1
                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingSetupFinished(BillingResult billingResult) {
                    Intrinsics.checkNotNullParameter(billingResult, "billingResult");
                    AutomaticPurchaseController.this.isConnected.setValue(Boolean.valueOf(billingResult.getResponseCode() == 0));
                    AutomaticPurchaseController.this.syncSubscriptionStatus();
                }

                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingServiceDisconnected() {
                    AutomaticPurchaseController.this.isConnected.setValue(false);
                    Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.nativePurchaseController, "ExternalNativePurchaseController billing client disconnected, retrying in " + AutomaticPurchaseController.this.reconnectMilliseconds + " milliseconds", null, null, 24, null);
                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new AutomaticPurchaseController$startConnection$1$onBillingServiceDisconnected$1(AutomaticPurchaseController.this, null), 3, null);
                    AutomaticPurchaseController automaticPurchaseController = AutomaticPurchaseController.this;
                    automaticPurchaseController.reconnectMilliseconds = Math.min(automaticPurchaseController.reconnectMilliseconds * ((long) 2), 16000L);
                }
            });
        } catch (IllegalStateException e) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.nativePurchaseController, "IllegalStateException when connecting to billing client for ExternalNativePurchaseController: " + e.getMessage(), null, null, 24, null);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.AutomaticPurchaseController$syncSubscriptionStatus$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AutomaticPurchaseController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.AutomaticPurchaseController$syncSubscriptionStatus$1", f = "AutomaticPurchaseController.kt", i = {}, l = {144, 145}, m = "invokeSuspend", n = {}, s = {})
    static final class C05941 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05941(Continuation<? super C05941> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AutomaticPurchaseController.this.new C05941(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05941) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.superwall.sdk.store.AutomaticPurchaseController$syncSubscriptionStatus$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: AutomaticPurchaseController.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "it"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.store.AutomaticPurchaseController$syncSubscriptionStatus$1$1", f = "AutomaticPurchaseController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C01301 extends SuspendLambda implements Function2<Boolean, Continuation<? super Boolean>, Object> {
            /* synthetic */ boolean Z$0;
            int label;

            C01301(Continuation<? super C01301> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C01301 c01301 = new C01301(continuation);
                c01301.Z$0 = ((Boolean) obj).booleanValue();
                return c01301;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Boolean> continuation) {
                return invoke(bool.booleanValue(), continuation);
            }

            public final Object invoke(boolean z, Continuation<? super Boolean> continuation) {
                return ((C01301) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(this.Z$0);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
        
            if (com.superwall.sdk.store.AutomaticPurchaseController.syncSubscriptionStatusAndWait$default(r6.this$0, 0, r6, 1, null) == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L1f
                if (r1 == r4) goto L1b
                if (r1 != r3) goto L13
                kotlin.ResultKt.throwOnFailure(r7)
                goto L4a
            L13:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1b:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L3b
            L1f:
                kotlin.ResultKt.throwOnFailure(r7)
                com.superwall.sdk.Superwall$Companion r7 = com.superwall.sdk.Superwall.INSTANCE
                kotlinx.coroutines.flow.Flow r7 = r7.getHasInitialized()
                com.superwall.sdk.store.AutomaticPurchaseController$syncSubscriptionStatus$1$1 r1 = new com.superwall.sdk.store.AutomaticPurchaseController$syncSubscriptionStatus$1$1
                r1.<init>(r2)
                kotlin.jvm.functions.Function2 r1 = (kotlin.jvm.functions.Function2) r1
                r5 = r6
                kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                r6.label = r4
                java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r1, r5)
                if (r7 != r0) goto L3b
                goto L49
            L3b:
                com.superwall.sdk.store.AutomaticPurchaseController r7 = com.superwall.sdk.store.AutomaticPurchaseController.this
                r1 = r6
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
                r6.label = r3
                r3 = 0
                java.lang.Object r7 = com.superwall.sdk.store.AutomaticPurchaseController.syncSubscriptionStatusAndWait$default(r7, r3, r1, r4, r2)
                if (r7 != r0) goto L4a
            L49:
                return r0
            L4a:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.store.AutomaticPurchaseController.C05941.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void syncSubscriptionStatus() {
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C05941(null), 3, null);
    }

    private final String buildFullId(String subscriptionId, String basePlanId, String offerId) {
        StringBuilder sb = new StringBuilder();
        sb.append(subscriptionId);
        if (basePlanId != null) {
            sb.append(":" + basePlanId);
        }
        if (offerId != null) {
            sb.append(":" + offerId);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0187, code lost:
    
        if (r4 == r6) goto L50;
     */
    @Override // com.superwall.sdk.delegate.subscription_controller.PurchaseController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object purchase(android.app.Activity r20, com.android.billingclient.api.ProductDetails r21, java.lang.String r22, java.lang.String r23, kotlin.coroutines.Continuation<? super com.superwall.sdk.delegate.PurchaseResult> r24) {
        /*
            Method dump skipped, instruction units count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.store.AutomaticPurchaseController.purchase(android.app.Activity, com.android.billingclient.api.ProductDetails, java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.AutomaticPurchaseController$purchase$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AutomaticPurchaseController.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "it"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.AutomaticPurchaseController$purchase$2", f = "AutomaticPurchaseController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05912 extends SuspendLambda implements Function2<Boolean, Continuation<? super Boolean>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        C05912(Continuation<? super C05912> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05912 c05912 = new C05912(continuation);
            c05912.Z$0 = ((Boolean) obj).booleanValue();
            return c05912;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Boolean> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Boolean> continuation) {
            return ((C05912) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(this.Z$0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.delegate.subscription_controller.PurchaseController
    public Object restorePurchases(Continuation<? super RestorationResult> continuation) {
        C05921 c05921;
        if (continuation instanceof C05921) {
            c05921 = (C05921) continuation;
            if ((c05921.label & Integer.MIN_VALUE) != 0) {
                c05921.label -= Integer.MIN_VALUE;
            } else {
                c05921 = new C05921(continuation);
            }
        } else {
            c05921 = new C05921(continuation);
        }
        Object obj = c05921.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05921.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            c05921.label = 1;
            if (syncSubscriptionStatusAndWait$default(this, 0, c05921, 1, null) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return new RestorationResult.Restored();
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public void onPurchasesUpdated(BillingResult billingResult, List<Purchase> purchases) {
        PurchaseResult.Purchased purchased;
        String message;
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        int responseCode = billingResult.getResponseCode();
        if (responseCode == 0) {
            if (purchases != null) {
                acknowledgePurchasesIfNecessary(purchases);
            }
            purchased = new PurchaseResult.Purchased();
        } else if (responseCode == 1) {
            purchased = new PurchaseResult.Cancelled();
        } else {
            PlayBillingErrors playBillingErrorsFromCode = PlayBillingErrors.INSTANCE.fromCode(billingResult.getResponseCode());
            if (playBillingErrorsFromCode == null || (message = playBillingErrorsFromCode.getMessage()) == null) {
                message = "Unknown error " + billingResult.getResponseCode();
            }
            purchased = new PurchaseResult.Failed(message);
        }
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(purchased, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.AutomaticPurchaseController$onPurchasesUpdated$1, reason: invalid class name */
    /* JADX INFO: compiled from: AutomaticPurchaseController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.AutomaticPurchaseController$onPurchasesUpdated$1", f = "AutomaticPurchaseController.kt", i = {}, l = {311}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PurchaseResult $result;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(PurchaseResult purchaseResult, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$result = purchaseResult;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AutomaticPurchaseController.this.new AnonymousClass1(this.$result, continuation);
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
                if (AutomaticPurchaseController.this.purchaseResults.emit(this.$result, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            AutomaticPurchaseController.this.syncSubscriptionStatus();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:29:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:37:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:41:0x00da  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:55:0x012a  */
    /* JADX WARN: Code duplicated, block: B:57:0x0132  */
    /* JADX WARN: Code duplicated, block: B:61:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:64:0x01e9 A[LOOP:1: B:62:0x01e3->B:64:0x01e9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:68:0x0217 A[LOOP:2: B:66:0x0211->B:68:0x0217, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:71:0x0270  */
    /* JADX WARN: Code duplicated, block: B:74:0x0287 A[LOOP:3: B:72:0x0281->B:74:0x0287, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:76:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:77:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Code duplicated, block: B:80:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:82:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:91:0x0135 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x00f3 A[SYNTHETIC] */
    public final Object syncSubscriptionStatusAndWait(int i, Continuation<? super Unit> continuation) {
        C05951 c05951;
        AutomaticPurchaseController automaticPurchaseController;
        int i2;
        AutomaticPurchaseController automaticPurchaseController2;
        int i3;
        List list;
        Object objRetryOrNull$default;
        List listEmptyList;
        int i4;
        AutomaticPurchaseController automaticPurchaseController3;
        List listEmptyList2;
        int i5;
        boolean z;
        List listPlus;
        Iterator it;
        ArrayList arrayList;
        Iterator it2;
        List list2;
        SubscriptionStatus.Inactive active;
        ArrayList arrayList2;
        Iterator it3;
        ArrayList arrayList3;
        Set<Entitlement> set;
        Set<Entitlement> set2;
        ArrayList arrayList4;
        Iterator<T> it4;
        if (continuation instanceof C05951) {
            c05951 = (C05951) continuation;
            if ((c05951.label & Integer.MIN_VALUE) != 0) {
                c05951.label -= Integer.MIN_VALUE;
            } else {
                c05951 = new C05951(continuation);
            }
        } else {
            c05951 = new C05951(continuation);
        }
        C05951 c05952 = c05951;
        Object obj = c05952.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i6 = c05952.label;
        boolean z2 = true;
        if (i6 != 0) {
            if (i6 == 1) {
                int i7 = c05952.I$0;
                AutomaticPurchaseController automaticPurchaseController4 = (AutomaticPurchaseController) c05952.L$0;
                ResultKt.throwOnFailure(obj);
                i2 = i7;
                automaticPurchaseController = automaticPurchaseController4;
            } else {
                if (i6 == 2) {
                    int i8 = c05952.I$0;
                    AutomaticPurchaseController automaticPurchaseController5 = (AutomaticPurchaseController) c05952.L$0;
                    ResultKt.throwOnFailure(obj);
                    i3 = i8;
                    automaticPurchaseController2 = automaticPurchaseController5;
                    list = (List) obj;
                    AutomaticPurchaseController$syncSubscriptionStatusAndWait$inAppPurchases$1 automaticPurchaseController$syncSubscriptionStatusAndWait$inAppPurchases$1 = new AutomaticPurchaseController$syncSubscriptionStatusAndWait$inAppPurchases$1(automaticPurchaseController2, null);
                    c05952.L$0 = automaticPurchaseController2;
                    c05952.L$1 = list;
                    c05952.I$0 = i3;
                    c05952.label = 3;
                    objRetryOrNull$default = Task_RetryingKt.retryOrNull$default(3, null, automaticPurchaseController$syncSubscriptionStatusAndWait$inAppPurchases$1, c05952, 2, null);
                    if (objRetryOrNull$default != coroutine_suspended) {
                        listEmptyList = list;
                        obj = objRetryOrNull$default;
                        i4 = i3;
                        automaticPurchaseController3 = automaticPurchaseController2;
                    }
                    return coroutine_suspended;
                }
                if (i6 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i4 = c05952.I$0;
                listEmptyList = (List) c05952.L$1;
                automaticPurchaseController3 = (AutomaticPurchaseController) c05952.L$0;
                ResultKt.throwOnFailure(obj);
            }
            listEmptyList2 = (List) obj;
            i5 = 0;
            if (listEmptyList != null || listEmptyList2 == null) {
                z = true;
            } else {
                z = false;
            }
            if (listEmptyList == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            List list3 = listEmptyList;
            if (listEmptyList2 == null) {
                listEmptyList2 = CollectionsKt.emptyList();
            }
            listPlus = CollectionsKt.plus((Collection) list3, (Iterable) listEmptyList2);
            if (!(listPlus instanceof Collection) && listPlus.isEmpty()) {
                z2 = false;
                break;
            }
            it = listPlus.iterator();
            do {
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
            } while (((Purchase) it.next()).getPurchaseState() != 1);
            Logger logger = Logger.INSTANCE;
            LogLevel logLevel = LogLevel.debug;
            LogScope logScope = LogScope.nativePurchaseController;
            arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listPlus, 10));
            it2 = listPlus.iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                int i9 = i5 + 1;
                if (i5 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Purchase purchase = (Purchase) next;
                List<String> products = purchase.getProducts();
                Intrinsics.checkNotNullExpressionValue(products, "getProducts(...)");
                arrayList.add("<" + i5 + ". Products: " + CollectionsKt.joinToString$default(products, ",", null, null, 0, null, null, 62, null) + " id: " + purchase.getOrderId() + " time: " + purchase.getPurchaseTime() + " state: " + purchase.getPurchaseState() + " >");
                i5 = i9;
                it2 = it2;
                listPlus = listPlus;
            }
            list2 = listPlus;
            Logger.debug$default(logger, logLevel, logScope, "Found purchases: " + arrayList, null, null, 24, null);
            if (z2) {
                active = SubscriptionStatus.Inactive.INSTANCE;
            } else {
                arrayList2 = new ArrayList();
                it3 = list2.iterator();
                while (it3.hasNext()) {
                    List<String> products2 = ((Purchase) it3.next()).getProducts();
                    Intrinsics.checkNotNullExpressionValue(products2, "getProducts(...)");
                    CollectionsKt.addAll(arrayList2, products2);
                }
                Set<String> set3 = CollectionsKt.toSet(arrayList2);
                arrayList3 = new ArrayList();
                for (String str : set3) {
                    Entitlements entitlements = automaticPurchaseController3.entitlementsInfo;
                    Intrinsics.checkNotNull(str);
                    CollectionsKt.addAll(arrayList3, entitlements.byProductId$superwall_release(str));
                }
                set = CustomerInfoMergingKt.toSet(arrayList3);
                set2 = set;
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.nativePurchaseController, "Found entitlements: " + CollectionsKt.joinToString$default(set2, null, null, null, 0, null, new Function1() { // from class: com.superwall.sdk.store.AutomaticPurchaseController$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return AutomaticPurchaseController.syncSubscriptionStatusAndWait$lambda$13$lambda$11((Entitlement) obj2);
                    }
                }, 31, null), null, null, 24, null);
                automaticPurchaseController3.entitlementsInfo.setActiveDeviceEntitlements$superwall_release(set);
                if (!set.isEmpty()) {
                    active = SubscriptionStatus.Inactive.INSTANCE;
                } else {
                    arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(set2, 10));
                    it4 = set2.iterator();
                    while (it4.hasNext()) {
                        arrayList4.add(Entitlement.copy$default((Entitlement) it4.next(), null, null, true, null, null, null, null, null, null, null, null, null, null, 8187, null));
                    }
                    active = new SubscriptionStatus.Active(CustomerInfoMergingKt.toSet(arrayList4));
                }
            }
            if (!Superwall.INSTANCE.getInitialized()) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.nativePurchaseController, "Attempting to sync subscription status before Superwall has been initialized.", null, null, 24, null);
                return Unit.INSTANCE;
            }
            Superwall.INSTANCE.getInstance().internallySetSubscriptionStatus$superwall_release(active);
            if (z && i4 < 3) {
                BuildersKt__Builders_commonKt.launch$default(automaticPurchaseController3.scope, null, null, new AnonymousClass4(i4, automaticPurchaseController3, null), 3, null);
            }
            return Unit.INSTANCE;
        }
        ResultKt.throwOnFailure(obj);
        Flow<ConfigurationStatus> configurationStateListener = Superwall.INSTANCE.getInstance().getConfigurationStateListener();
        C05962 c05962 = new C05962(null);
        c05952.L$0 = this;
        c05952.I$0 = i;
        c05952.label = 1;
        if (FlowKt.first(configurationStateListener, c05962, c05952) != coroutine_suspended) {
            automaticPurchaseController = this;
            i2 = i;
        }
        return coroutine_suspended;
        AutomaticPurchaseController$syncSubscriptionStatusAndWait$subscriptionPurchases$1 automaticPurchaseController$syncSubscriptionStatusAndWait$subscriptionPurchases$1 = new AutomaticPurchaseController$syncSubscriptionStatusAndWait$subscriptionPurchases$1(automaticPurchaseController, null);
        c05952.L$0 = automaticPurchaseController;
        c05952.I$0 = i2;
        c05952.label = 2;
        Object objRetryOrNull$default2 = Task_RetryingKt.retryOrNull$default(3, null, automaticPurchaseController$syncSubscriptionStatusAndWait$subscriptionPurchases$1, c05952, 2, null);
        if (objRetryOrNull$default2 != coroutine_suspended) {
            automaticPurchaseController2 = automaticPurchaseController;
            i3 = i2;
            obj = objRetryOrNull$default2;
            list = (List) obj;
            AutomaticPurchaseController$syncSubscriptionStatusAndWait$inAppPurchases$1 automaticPurchaseController$syncSubscriptionStatusAndWait$inAppPurchases$2 = new AutomaticPurchaseController$syncSubscriptionStatusAndWait$inAppPurchases$1(automaticPurchaseController2, null);
            c05952.L$0 = automaticPurchaseController2;
            c05952.L$1 = list;
            c05952.I$0 = i3;
            c05952.label = 3;
            objRetryOrNull$default = Task_RetryingKt.retryOrNull$default(3, null, automaticPurchaseController$syncSubscriptionStatusAndWait$inAppPurchases$2, c05952, 2, null);
            if (objRetryOrNull$default != coroutine_suspended) {
                listEmptyList = list;
                obj = objRetryOrNull$default;
                i4 = i3;
                automaticPurchaseController3 = automaticPurchaseController2;
                listEmptyList2 = (List) obj;
                i5 = 0;
                if (listEmptyList != null) {
                    z = true;
                } else {
                    z = true;
                }
                if (listEmptyList == null) {
                    listEmptyList = CollectionsKt.emptyList();
                }
                List list4 = listEmptyList;
                if (listEmptyList2 == null) {
                    listEmptyList2 = CollectionsKt.emptyList();
                }
                listPlus = CollectionsKt.plus((Collection) list4, (Iterable) listEmptyList2);
                if (!(listPlus instanceof Collection)) {
                    it = listPlus.iterator();
                    do {
                        if (!it.hasNext()) {
                            z2 = false;
                            break;
                        }
                    } while (((Purchase) it.next()).getPurchaseState() != 1);
                } else {
                    it = listPlus.iterator();
                    do {
                        if (!it.hasNext()) {
                            z2 = false;
                            break;
                        }
                    } while (((Purchase) it.next()).getPurchaseState() != 1);
                }
                Logger logger2 = Logger.INSTANCE;
                LogLevel logLevel2 = LogLevel.debug;
                LogScope logScope2 = LogScope.nativePurchaseController;
                arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listPlus, 10));
                it2 = listPlus.iterator();
                while (it2.hasNext()) {
                    Object next2 = it2.next();
                    int i10 = i5 + 1;
                    if (i5 < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    Purchase purchase2 = (Purchase) next2;
                    List<String> products3 = purchase2.getProducts();
                    Intrinsics.checkNotNullExpressionValue(products3, "getProducts(...)");
                    arrayList.add("<" + i5 + ". Products: " + CollectionsKt.joinToString$default(products3, ",", null, null, 0, null, null, 62, null) + " id: " + purchase2.getOrderId() + " time: " + purchase2.getPurchaseTime() + " state: " + purchase2.getPurchaseState() + " >");
                    i5 = i10;
                    it2 = it2;
                    listPlus = listPlus;
                }
                list2 = listPlus;
                Logger.debug$default(logger2, logLevel2, logScope2, "Found purchases: " + arrayList, null, null, 24, null);
                if (z2) {
                    active = SubscriptionStatus.Inactive.INSTANCE;
                } else {
                    arrayList2 = new ArrayList();
                    it3 = list2.iterator();
                    while (it3.hasNext()) {
                        List<String> products4 = ((Purchase) it3.next()).getProducts();
                        Intrinsics.checkNotNullExpressionValue(products4, "getProducts(...)");
                        CollectionsKt.addAll(arrayList2, products4);
                    }
                    Set<String> set4 = CollectionsKt.toSet(arrayList2);
                    arrayList3 = new ArrayList();
                    while (r0.hasNext()) {
                        Entitlements entitlements2 = automaticPurchaseController3.entitlementsInfo;
                        Intrinsics.checkNotNull(str);
                        CollectionsKt.addAll(arrayList3, entitlements2.byProductId$superwall_release(str));
                    }
                    set = CustomerInfoMergingKt.toSet(arrayList3);
                    set2 = set;
                    Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.nativePurchaseController, "Found entitlements: " + CollectionsKt.joinToString$default(set2, null, null, null, 0, null, new Function1() { // from class: com.superwall.sdk.store.AutomaticPurchaseController$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return AutomaticPurchaseController.syncSubscriptionStatusAndWait$lambda$13$lambda$11((Entitlement) obj2);
                        }
                    }, 31, null), null, null, 24, null);
                    automaticPurchaseController3.entitlementsInfo.setActiveDeviceEntitlements$superwall_release(set);
                    if (!set.isEmpty()) {
                        active = SubscriptionStatus.Inactive.INSTANCE;
                    } else {
                        arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(set2, 10));
                        it4 = set2.iterator();
                        while (it4.hasNext()) {
                            arrayList4.add(Entitlement.copy$default((Entitlement) it4.next(), null, null, true, null, null, null, null, null, null, null, null, null, null, 8187, null));
                        }
                        active = new SubscriptionStatus.Active(CustomerInfoMergingKt.toSet(arrayList4));
                    }
                }
                if (!Superwall.INSTANCE.getInitialized()) {
                    Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.nativePurchaseController, "Attempting to sync subscription status before Superwall has been initialized.", null, null, 24, null);
                    return Unit.INSTANCE;
                }
                Superwall.INSTANCE.getInstance().internallySetSubscriptionStatus$superwall_release(active);
                if (z) {
                    BuildersKt__Builders_commonKt.launch$default(automaticPurchaseController3.scope, null, null, new AnonymousClass4(i4, automaticPurchaseController3, null), 3, null);
                }
                return Unit.INSTANCE;
            }
        }
        return coroutine_suspended;
    }

    static /* synthetic */ Object syncSubscriptionStatusAndWait$default(AutomaticPurchaseController automaticPurchaseController, int i, Continuation continuation, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return automaticPurchaseController.syncSubscriptionStatusAndWait(i, continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.AutomaticPurchaseController$syncSubscriptionStatusAndWait$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AutomaticPurchaseController.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/config/models/ConfigurationStatus;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.AutomaticPurchaseController$syncSubscriptionStatusAndWait$2", f = "AutomaticPurchaseController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05962 extends SuspendLambda implements Function2<ConfigurationStatus, Continuation<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        C05962(Continuation<? super C05962> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05962 c05962 = new C05962(continuation);
            c05962.L$0 = obj;
            return c05962;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ConfigurationStatus configurationStatus, Continuation<? super Boolean> continuation) {
            return ((C05962) create(configurationStatus, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(((ConfigurationStatus) this.L$0) instanceof ConfigurationStatus.Configured);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence syncSubscriptionStatusAndWait$lambda$13$lambda$11(Entitlement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getId();
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.AutomaticPurchaseController$syncSubscriptionStatusAndWait$4, reason: invalid class name */
    /* JADX INFO: compiled from: AutomaticPurchaseController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.AutomaticPurchaseController$syncSubscriptionStatusAndWait$4", f = "AutomaticPurchaseController.kt", i = {}, l = {387, 388}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $count;
        int label;
        final /* synthetic */ AutomaticPurchaseController this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(int i, AutomaticPurchaseController automaticPurchaseController, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$count = i;
            this.this$0 = automaticPurchaseController;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass4(this.$count, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0045, code lost:
        
            if (r6.this$0.syncSubscriptionStatusAndWait(r6.$count + 1, r6) == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r7)
                goto L48
            L12:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1a:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L37
            L1e:
                kotlin.ResultKt.throwOnFailure(r7)
                kotlin.time.Duration$Companion r7 = kotlin.time.Duration.INSTANCE
                int r7 = r6.$count
                kotlin.time.DurationUnit r1 = kotlin.time.DurationUnit.SECONDS
                long r4 = kotlin.time.DurationKt.toDuration(r7, r1)
                r7 = r6
                kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
                r6.label = r3
                java.lang.Object r7 = kotlinx.coroutines.DelayKt.m12746delayVtjQ1oo(r4, r7)
                if (r7 != r0) goto L37
                goto L47
            L37:
                com.superwall.sdk.store.AutomaticPurchaseController r7 = r6.this$0
                int r1 = r6.$count
                int r1 = r1 + r3
                r3 = r6
                kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
                r6.label = r2
                java.lang.Object r7 = com.superwall.sdk.store.AutomaticPurchaseController.access$syncSubscriptionStatusAndWait(r7, r1, r3)
                if (r7 != r0) goto L48
            L47:
                return r0
            L48:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.store.AutomaticPurchaseController.AnonymousClass4.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX INFO: renamed from: queryPurchasesOfType-gIAlu-s, reason: not valid java name */
    public final Object m10769queryPurchasesOfTypegIAlus(String str, Continuation<? super Result<? extends List<? extends Purchase>>> continuation) {
        AutomaticPurchaseController$queryPurchasesOfType$1 automaticPurchaseController$queryPurchasesOfType$1;
        if (continuation instanceof AutomaticPurchaseController$queryPurchasesOfType$1) {
            automaticPurchaseController$queryPurchasesOfType$1 = (AutomaticPurchaseController$queryPurchasesOfType$1) continuation;
            if ((automaticPurchaseController$queryPurchasesOfType$1.label & Integer.MIN_VALUE) != 0) {
                automaticPurchaseController$queryPurchasesOfType$1.label -= Integer.MIN_VALUE;
            } else {
                automaticPurchaseController$queryPurchasesOfType$1 = new AutomaticPurchaseController$queryPurchasesOfType$1(this, continuation);
            }
        } else {
            automaticPurchaseController$queryPurchasesOfType$1 = new AutomaticPurchaseController$queryPurchasesOfType$1(this, continuation);
        }
        Object objWithTimeoutOrNull = automaticPurchaseController$queryPurchasesOfType$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = automaticPurchaseController$queryPurchasesOfType$1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objWithTimeoutOrNull);
            final CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            QueryPurchasesParams queryPurchasesParamsBuild = QueryPurchasesParams.newBuilder().setProductType(str).build();
            Intrinsics.checkNotNullExpressionValue(queryPurchasesParamsBuild, "build(...)");
            if (!this.billingClient.isReady()) {
                Result.Companion companion = Result.INSTANCE;
                return Result.m11241constructorimpl(ResultKt.createFailure(new IllegalStateException("Billing client not ready")));
            }
            this.billingClient.queryPurchasesAsync(queryPurchasesParamsBuild, new PurchasesResponseListener() { // from class: com.superwall.sdk.store.AutomaticPurchaseController$$ExternalSyntheticLambda0
                @Override // com.android.billingclient.api.PurchasesResponseListener
                public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                    AutomaticPurchaseController.queryPurchasesOfType_gIAlu_s$lambda$14(completableDeferredCompletableDeferred$default, billingResult, list);
                }
            });
            AutomaticPurchaseController$queryPurchasesOfType$3 automaticPurchaseController$queryPurchasesOfType$3 = new AutomaticPurchaseController$queryPurchasesOfType$3(completableDeferredCompletableDeferred$default, null);
            automaticPurchaseController$queryPurchasesOfType$1.label = 1;
            objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(10000L, automaticPurchaseController$queryPurchasesOfType$3, automaticPurchaseController$queryPurchasesOfType$1);
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
        return Result.m11241constructorimpl(ResultKt.createFailure(new IllegalStateException("Query purchases timed out")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void queryPurchasesOfType_gIAlu_s$lambda$14(CompletableDeferred completableDeferred, BillingResult billingResult, List purchasesList) {
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

    private final void acknowledgePurchasesIfNecessary(List<? extends Purchase> purchases) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : purchases) {
            Purchase purchase = (Purchase) obj;
            if (purchase.getPurchaseState() == 1 && !purchase.isAcknowledged()) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AcknowledgePurchaseParams acknowledgePurchaseParamsBuild = AcknowledgePurchaseParams.newBuilder().setPurchaseToken(((Purchase) it.next()).getPurchaseToken()).build();
            Intrinsics.checkNotNullExpressionValue(acknowledgePurchaseParamsBuild, "build(...)");
            this.billingClient.acknowledgePurchase(acknowledgePurchaseParamsBuild, new AcknowledgePurchaseResponseListener() { // from class: com.superwall.sdk.store.AutomaticPurchaseController$$ExternalSyntheticLambda2
                @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
                public final void onAcknowledgePurchaseResponse(BillingResult billingResult) {
                    AutomaticPurchaseController.acknowledgePurchasesIfNecessary$lambda$17$lambda$16(billingResult);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void acknowledgePurchasesIfNecessary$lambda$17$lambda$16(BillingResult billingResult) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        if (billingResult.getResponseCode() != 0) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.nativePurchaseController, "Unable to acknowledge purchase.", null, null, 24, null);
        }
    }
}
