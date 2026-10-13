package com.superwall.sdk.store;

import androidx.compose.runtime.ComposerKt;
import com.google.firebase.messaging.Constants;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.billing.Billing;
import com.superwall.sdk.billing.BillingError;
import com.superwall.sdk.billing.DecomposedProductIds;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.product.CrossplatformProduct;
import com.superwall.sdk.models.product.PlayStoreProduct;
import com.superwall.sdk.models.product.ProductItem;
import com.superwall.sdk.models.product.ProductVariable;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.request.PaywallRequest;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.store.abstractions.product.receipt.ReceiptManager;
import com.superwall.sdk.store.coordinator.ProductsFetcher;
import com.superwall.sdk.store.testmode.TestMode;
import expo.modules.notifications.service.NotificationsService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;

/* JADX INFO: compiled from: StoreManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001VBW\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012$\b\u0002\u0010\n\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0012\u0010\u0013J$\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0096@¢\u0006\u0002\u0010-J>\u0010.\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u0002000/2\f\u00101\u001a\b\u0012\u0004\u0012\u00020$0'2\u0014\u00102\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u000200\u0018\u00010/H\u0096@¢\u0006\u0002\u00103J6\u00104\u001a\u0002052\u0014\u00102\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u000200\u0018\u00010/2\u0006\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,H\u0096@¢\u0006\u0002\u00106J(\u00107\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u0002000/2\f\u00108\u001a\b\u0012\u0004\u0012\u00020$09H\u0082@¢\u0006\u0002\u0010:J4\u0010;\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u0002000/2\u0018\u0010<\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\n\u0012\b\u0012\u0004\u0012\u0002000=0/H\u0082@¢\u0006\u0002\u0010>J:\u0010?\u001a\u00020@2\u0014\u0010A\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u000200\u0018\u00010/2\f\u00108\u001a\b\u0012\u0004\u0012\u00020$0'2\f\u0010B\u001a\b\u0012\u0004\u0012\u00020C0'H\u0002J\b\u0010D\u001a\u00020\u000eH\u0016J(\u0010E\u001a\u00020\u000e2\u0018\u0010F\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\n\u0012\b\u0012\u0004\u0012\u00020G090/H\u0096@¢\u0006\u0002\u0010>J\u0018\u0010H\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020$2\u0006\u0010J\u001a\u000200H\u0016J\u0012\u0010K\u001a\u0004\u0018\u0001002\u0006\u0010L\u001a\u00020$H\u0016J\u0010\u0010M\u001a\u00020N2\u0006\u0010L\u001a\u00020$H\u0016J\u001e\u0010O\u001a\b\u0012\u0004\u0012\u00020$0P2\u0006\u0010Q\u001a\u00020$H\u0096@¢\u0006\u0004\bR\u0010SJ\"\u0010T\u001a\b\u0012\u0004\u0012\u000200092\f\u0010U\u001a\b\u0012\u0004\u0012\u00020$09H\u0096@¢\u0006\u0002\u0010:R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R,\u0010\n\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001d\u001a\u00020\t8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0#X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006W"}, d2 = {"Lcom/superwall/sdk/store/StoreManager;", "Lcom/superwall/sdk/store/coordinator/ProductsFetcher;", "Lcom/superwall/sdk/store/StoreKit;", "purchaseController", "Lcom/superwall/sdk/store/InternalPurchaseController;", "billing", "Lcom/superwall/sdk/billing/Billing;", "receiptManagerFactory", "Lkotlin/Function0;", "Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;", "track", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "Lkotlin/coroutines/Continuation;", "", "", "testMode", "Lcom/superwall/sdk/store/testmode/TestMode;", "<init>", "(Lcom/superwall/sdk/store/InternalPurchaseController;Lcom/superwall/sdk/billing/Billing;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;)V", "getPurchaseController", "()Lcom/superwall/sdk/store/InternalPurchaseController;", "getBilling", "()Lcom/superwall/sdk/billing/Billing;", "Lkotlin/jvm/functions/Function2;", "getTestMode", "()Lcom/superwall/sdk/store/testmode/TestMode;", "setTestMode", "(Lcom/superwall/sdk/store/testmode/TestMode;)V", "receiptManager", "getReceiptManager", "()Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;", "receiptManager$delegate", "Lkotlin/Lazy;", "productsByFullId", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lcom/superwall/sdk/store/ProductState;", "getProductVariables", "", "Lcom/superwall/sdk/models/product/ProductVariable;", "paywall", "Lcom/superwall/sdk/models/paywall/Paywall;", "request", "Lcom/superwall/sdk/paywall/request/PaywallRequest;", "(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProductsWithoutPaywall", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "productIds", "substituteProducts", "(Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProducts", "Lcom/superwall/sdk/store/GetProductsResponse;", "(Ljava/util/Map;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchOrAwaitProducts", "fullProductIds", "", "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchNewProducts", "deferreds", "Lkotlinx/coroutines/CompletableDeferred;", "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeAndStore", "Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;", "substituteProductsByName", "productItems", "Lcom/superwall/sdk/models/product/ProductItem;", "refreshReceipt", "loadPurchasedProducts", "serverEntitlementsByProductId", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "cacheProduct", "fullProductIdentifier", "storeProduct", "getProductFromCache", "productId", "hasCached", "", "consume", "Lkotlin/Result;", "purchaseToken", "consume-gIAlu-s", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "products", NotificationsService.IDENTIFIERS_KEY, "ProductProcessingResult", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StoreManager implements ProductsFetcher, StoreKit {
    private final Billing billing;
    private ConcurrentHashMap<String, ProductState> productsByFullId;
    private final InternalPurchaseController purchaseController;

    /* JADX INFO: renamed from: receiptManager$delegate, reason: from kotlin metadata */
    private final Lazy receiptManager;
    private TestMode testMode;
    private final Function2<InternalSuperwallEvent, Continuation<? super Unit>, Object> track;

    /* JADX INFO: renamed from: com.superwall.sdk.store.StoreManager$fetchNewProducts$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: StoreManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.StoreManager", f = "StoreManager.kt", i = {0, 0}, l = {ComposerKt.providerKey}, m = "fetchNewProducts", n = {"this", "deferreds"}, s = {"L$0", "L$1"})
    static final class C05971 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05971(Continuation<? super C05971> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StoreManager.this.fetchNewProducts(null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.StoreManager$fetchOrAwaitProducts$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: StoreManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.StoreManager", f = "StoreManager.kt", i = {0, 0, 0, 0, 1, 1, 1}, l = {181, 192}, m = "fetchOrAwaitProducts", n = {"this", "testHits", "cached", "newDeferreds", "testHits", "cached", "awaited"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2"})
    static final class C05981 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C05981(Continuation<? super C05981> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StoreManager.this.fetchOrAwaitProducts(null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.StoreManager$getProductVariables$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: StoreManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.StoreManager", f = "StoreManager.kt", i = {0}, l = {52}, m = "getProductVariables", n = {"paywall"}, s = {"L$0"})
    static final class C05991 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C05991(Continuation<? super C05991> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StoreManager.this.getProductVariables(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.StoreManager$getProducts$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: StoreManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.StoreManager", f = "StoreManager.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1}, l = {106, 119}, m = "getProducts", n = {"this", "paywall", "request", "processingResult", "productsById", "paywall", "processingResult", "productsById", Constants.IPC_BUNDLE_KEY_SEND_ERROR}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3"})
    static final class C06001 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C06001(Continuation<? super C06001> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StoreManager.this.getProducts(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.StoreManager$getProductsWithoutPaywall$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: StoreManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.StoreManager", f = "StoreManager.kt", i = {0}, l = {82}, m = "getProductsWithoutPaywall", n = {"productsById"}, s = {"L$0"})
    static final class C06011 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06011(Continuation<? super C06011> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StoreManager.this.getProductsWithoutPaywall(null, null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StoreManager(InternalPurchaseController purchaseController, Billing billing, Function0<ReceiptManager> receiptManagerFactory, Function2<? super InternalSuperwallEvent, ? super Continuation<? super Unit>, ? extends Object> track, TestMode testMode) {
        Intrinsics.checkNotNullParameter(purchaseController, "purchaseController");
        Intrinsics.checkNotNullParameter(billing, "billing");
        Intrinsics.checkNotNullParameter(receiptManagerFactory, "receiptManagerFactory");
        Intrinsics.checkNotNullParameter(track, "track");
        this.purchaseController = purchaseController;
        this.billing = billing;
        this.track = track;
        this.testMode = testMode;
        this.receiptManager = LazyKt.lazy(receiptManagerFactory);
        this.productsByFullId = new ConcurrentHashMap<>();
    }

    public final InternalPurchaseController getPurchaseController() {
        return this.purchaseController;
    }

    public final Billing getBilling() {
        return this.billing;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.superwall.sdk.store.StoreManager$1, reason: invalid class name */
    /* JADX INFO: compiled from: StoreManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.StoreManager$1", f = "StoreManager.kt", i = {}, l = {32}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<InternalSuperwallEvent, Continuation<? super Unit>, Object> {
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
        public final Object invoke(InternalSuperwallEvent internalSuperwallEvent, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(internalSuperwallEvent, continuation)).invokeSuspend(Unit.INSTANCE);
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

    public /* synthetic */ StoreManager(InternalPurchaseController internalPurchaseController, Billing billing, Function0 function0, AnonymousClass1 anonymousClass1, TestMode testMode, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(internalPurchaseController, billing, function0, (i & 8) != 0 ? new AnonymousClass1(null) : anonymousClass1, (i & 16) != 0 ? null : testMode);
    }

    public final TestMode getTestMode() {
        return this.testMode;
    }

    public final void setTestMode(TestMode testMode) {
        this.testMode = testMode;
    }

    public final ReceiptManager getReceiptManager() {
        return (ReceiptManager) this.receiptManager.getValue();
    }

    /* JADX INFO: compiled from: StoreManager.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B7\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0015\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J?\u0010\u0016\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00062\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0004HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;", "", "fullProductIdsToLoad", "", "", "substituteProductsById", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "productItems", "", "Lcom/superwall/sdk/models/product/ProductItem;", "<init>", "(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)V", "getFullProductIdsToLoad", "()Ljava/util/Set;", "getSubstituteProductsById", "()Ljava/util/Map;", "getProductItems", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final /* data */ class ProductProcessingResult {
        private final Set<String> fullProductIdsToLoad;
        private final List<ProductItem> productItems;
        private final Map<String, StoreProduct> substituteProductsById;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ProductProcessingResult copy$default(ProductProcessingResult productProcessingResult, Set set, Map map, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                set = productProcessingResult.fullProductIdsToLoad;
            }
            if ((i & 2) != 0) {
                map = productProcessingResult.substituteProductsById;
            }
            if ((i & 4) != 0) {
                list = productProcessingResult.productItems;
            }
            return productProcessingResult.copy(set, map, list);
        }

        public final Set<String> component1() {
            return this.fullProductIdsToLoad;
        }

        public final Map<String, StoreProduct> component2() {
            return this.substituteProductsById;
        }

        public final List<ProductItem> component3() {
            return this.productItems;
        }

        public final ProductProcessingResult copy(Set<String> fullProductIdsToLoad, Map<String, StoreProduct> substituteProductsById, List<ProductItem> productItems) {
            Intrinsics.checkNotNullParameter(fullProductIdsToLoad, "fullProductIdsToLoad");
            Intrinsics.checkNotNullParameter(substituteProductsById, "substituteProductsById");
            Intrinsics.checkNotNullParameter(productItems, "productItems");
            return new ProductProcessingResult(fullProductIdsToLoad, substituteProductsById, productItems);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ProductProcessingResult)) {
                return false;
            }
            ProductProcessingResult productProcessingResult = (ProductProcessingResult) other;
            return Intrinsics.areEqual(this.fullProductIdsToLoad, productProcessingResult.fullProductIdsToLoad) && Intrinsics.areEqual(this.substituteProductsById, productProcessingResult.substituteProductsById) && Intrinsics.areEqual(this.productItems, productProcessingResult.productItems);
        }

        public int hashCode() {
            return (((this.fullProductIdsToLoad.hashCode() * 31) + this.substituteProductsById.hashCode()) * 31) + this.productItems.hashCode();
        }

        public String toString() {
            return "ProductProcessingResult(fullProductIdsToLoad=" + this.fullProductIdsToLoad + ", substituteProductsById=" + this.substituteProductsById + ", productItems=" + this.productItems + ")";
        }

        public ProductProcessingResult(Set<String> fullProductIdsToLoad, Map<String, StoreProduct> substituteProductsById, List<ProductItem> productItems) {
            Intrinsics.checkNotNullParameter(fullProductIdsToLoad, "fullProductIdsToLoad");
            Intrinsics.checkNotNullParameter(substituteProductsById, "substituteProductsById");
            Intrinsics.checkNotNullParameter(productItems, "productItems");
            this.fullProductIdsToLoad = fullProductIdsToLoad;
            this.substituteProductsById = substituteProductsById;
            this.productItems = productItems;
        }

        public final Set<String> getFullProductIdsToLoad() {
            return this.fullProductIdsToLoad;
        }

        public final Map<String, StoreProduct> getSubstituteProductsById() {
            return this.substituteProductsById;
        }

        public final List<ProductItem> getProductItems() {
            return this.productItems;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.store.StoreKit
    public Object getProductVariables(Paywall paywall, PaywallRequest paywallRequest, Continuation<? super List<ProductVariable>> continuation) {
        C05991 c05991;
        Paywall paywall2;
        if (continuation instanceof C05991) {
            c05991 = (C05991) continuation;
            if ((c05991.label & Integer.MIN_VALUE) != 0) {
                c05991.label -= Integer.MIN_VALUE;
            } else {
                c05991 = new C05991(continuation);
            }
        } else {
            c05991 = new C05991(continuation);
        }
        C05991 c05992 = c05991;
        Object products$default = c05992.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05992.label;
        if (i == 0) {
            ResultKt.throwOnFailure(products$default);
            c05992.L$0 = paywall;
            c05992.label = 1;
            products$default = StoreKit.DefaultImpls.getProducts$default(this, null, paywall, paywallRequest, c05992, 1, null);
            if (products$default == coroutine_suspended) {
                return coroutine_suspended;
            }
            paywall2 = paywall;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            paywall2 = (Paywall) c05992.L$0;
            ResultKt.throwOnFailure(products$default);
        }
        GetProductsResponse getProductsResponse = (GetProductsResponse) products$default;
        List<CrossplatformProduct> playStoreProducts = paywall2.getPlayStoreProducts();
        ArrayList arrayList = new ArrayList();
        for (CrossplatformProduct crossplatformProduct : playStoreProducts) {
            StoreProduct storeProduct = getProductsResponse.getProductsByFullId().get(crossplatformProduct.getFullProductId());
            ProductVariable productVariable = storeProduct != null ? new ProductVariable(crossplatformProduct.getName(), storeProduct.getAttributes()) : null;
            if (productVariable != null) {
                arrayList.add(productVariable);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.store.StoreKit
    public Object getProductsWithoutPaywall(List<String> list, Map<String, StoreProduct> map, Continuation<? super Map<String, StoreProduct>> continuation) throws Throwable {
        C06011 c06011;
        Map map2;
        if (continuation instanceof C06011) {
            c06011 = (C06011) continuation;
            if ((c06011.label & Integer.MIN_VALUE) != 0) {
                c06011.label -= Integer.MIN_VALUE;
            } else {
                c06011 = new C06011(continuation);
            }
        } else {
            c06011 = new C06011(continuation);
        }
        Object objFetchOrAwaitProducts = c06011.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c06011.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objFetchOrAwaitProducts);
            ProductProcessingResult productProcessingResultRemoveAndStore = removeAndStore(map, list, CollectionsKt.emptyList());
            Map mutableMap = MapsKt.toMutableMap(productProcessingResultRemoveAndStore.getSubstituteProductsById());
            Set<String> fullProductIdsToLoad = productProcessingResultRemoveAndStore.getFullProductIdsToLoad();
            c06011.L$0 = mutableMap;
            c06011.label = 1;
            objFetchOrAwaitProducts = fetchOrAwaitProducts(fullProductIdsToLoad, c06011);
            if (objFetchOrAwaitProducts == coroutine_suspended) {
                return coroutine_suspended;
            }
            map2 = mutableMap;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map2 = (Map) c06011.L$0;
            ResultKt.throwOnFailure(objFetchOrAwaitProducts);
        }
        for (Map.Entry entry : ((Map) objFetchOrAwaitProducts).entrySet()) {
            map2.put((String) entry.getKey(), (StoreProduct) entry.getValue());
        }
        return map2;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00b0 A[Catch: all -> 0x00c6, TRY_LEAVE, TryCatch #1 {all -> 0x00c6, blocks: (B:25:0x00a0, B:26:0x00aa, B:28:0x00b0), top: B:54:0x00a0 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:45:0x0118  */
    /* JADX WARN: Code duplicated, block: B:48:0x011f  */
    /* JADX WARN: Code duplicated, block: B:51:0x012b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.store.StoreKit
    public Object getProducts(Map<String, StoreProduct> map, Paywall paywall, PaywallRequest paywallRequest, Continuation<? super GetProductsResponse> continuation) throws Throwable {
        C06001 c06001;
        Map mutableMap;
        ProductProcessingResult productProcessingResult;
        Throwable th;
        StoreManager storeManager;
        Object objFetchOrAwaitProducts;
        ProductProcessingResult productProcessingResult2;
        Map map2;
        PaywallRequest paywallRequest2;
        EventData eventData;
        InternalSuperwallEvent.PaywallProductsLoad paywallProductsLoad;
        EventData eventData2;
        Function2<InternalSuperwallEvent, Continuation<? super Unit>, Object> function2;
        Paywall paywall2;
        Map map3;
        if (continuation instanceof C06001) {
            c06001 = (C06001) continuation;
            if ((c06001.label & Integer.MIN_VALUE) != 0) {
                c06001.label -= Integer.MIN_VALUE;
            } else {
                c06001 = new C06001(continuation);
            }
        } else {
            c06001 = new C06001(continuation);
        }
        Object obj = c06001.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c06001.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ProductProcessingResult productProcessingResultRemoveAndStore = removeAndStore(map, paywall.getProductIds(), paywall.getProductItems());
            mutableMap = MapsKt.toMutableMap(productProcessingResultRemoveAndStore.getSubstituteProductsById());
            try {
                Set<String> fullProductIdsToLoad = productProcessingResultRemoveAndStore.getFullProductIdsToLoad();
                c06001.L$0 = this;
                c06001.L$1 = paywall;
                c06001.L$2 = paywallRequest;
                c06001.L$3 = productProcessingResultRemoveAndStore;
                c06001.L$4 = mutableMap;
                c06001.label = 1;
                objFetchOrAwaitProducts = fetchOrAwaitProducts(fullProductIdsToLoad, c06001);
                if (objFetchOrAwaitProducts != coroutine_suspended) {
                    productProcessingResult2 = productProcessingResultRemoveAndStore;
                    map2 = mutableMap;
                    paywallRequest2 = paywallRequest;
                    storeManager = this;
                    for (Map.Entry entry : ((Map) objFetchOrAwaitProducts).entrySet()) {
                        map2.put((String) entry.getKey(), (StoreProduct) entry.getValue());
                    }
                }
            } catch (Throwable th2) {
                productProcessingResult = productProcessingResultRemoveAndStore;
                th = th2;
                storeManager = this;
                paywall.getProductsLoadingInfo().setFailAt(new Date());
                if (paywallRequest != null) {
                    eventData = paywallRequest.getEventData();
                } else {
                    eventData = null;
                }
                PaywallInfo info = paywall.getInfo(eventData);
                InternalSuperwallEvent.PaywallProductsLoad.State.Fail fail = new InternalSuperwallEvent.PaywallProductsLoad.State.Fail(th.getMessage());
                if (paywallRequest != null) {
                    eventData2 = paywallRequest.getEventData();
                } else {
                    eventData2 = null;
                }
                paywallProductsLoad = new InternalSuperwallEvent.PaywallProductsLoad(fail, info, eventData2);
                function2 = storeManager.track;
                c06001.L$0 = paywall;
                c06001.L$1 = productProcessingResult;
                c06001.L$2 = mutableMap;
                c06001.L$3 = th;
                c06001.L$4 = null;
                c06001.label = 2;
                if (function2.invoke(paywallProductsLoad, c06001) != coroutine_suspended) {
                    paywall2 = paywall;
                    map3 = mutableMap;
                    productProcessingResult2 = productProcessingResult;
                    if (!(th instanceof BillingError.BillingNotAvailable)) {
                        throw th;
                    }
                    map2 = map3;
                    paywall = paywall2;
                    return new GetProductsResponse(map2, productProcessingResult2.getProductItems(), paywall);
                }
                return coroutine_suspended;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            map2 = (Map) c06001.L$4;
            ProductProcessingResult productProcessingResult3 = (ProductProcessingResult) c06001.L$3;
            paywallRequest = (PaywallRequest) c06001.L$2;
            Paywall paywall3 = (Paywall) c06001.L$1;
            storeManager = (StoreManager) c06001.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                productProcessingResult2 = productProcessingResult3;
                paywall = paywall3;
                objFetchOrAwaitProducts = obj;
                paywallRequest2 = paywallRequest;
                try {
                    while (r2.hasNext()) {
                        map2.put((String) entry.getKey(), (StoreProduct) entry.getValue());
                    }
                } catch (Throwable th3) {
                    PaywallRequest paywallRequest3 = paywallRequest2;
                    mutableMap = map2;
                    th = th3;
                    productProcessingResult = productProcessingResult2;
                    paywallRequest = paywallRequest3;
                    paywall.getProductsLoadingInfo().setFailAt(new Date());
                    if (paywallRequest != null) {
                        eventData = paywallRequest.getEventData();
                    } else {
                        eventData = null;
                    }
                    PaywallInfo info2 = paywall.getInfo(eventData);
                    InternalSuperwallEvent.PaywallProductsLoad.State.Fail fail2 = new InternalSuperwallEvent.PaywallProductsLoad.State.Fail(th.getMessage());
                    if (paywallRequest != null) {
                        eventData2 = paywallRequest.getEventData();
                    } else {
                        eventData2 = null;
                    }
                    paywallProductsLoad = new InternalSuperwallEvent.PaywallProductsLoad(fail2, info2, eventData2);
                    function2 = storeManager.track;
                    c06001.L$0 = paywall;
                    c06001.L$1 = productProcessingResult;
                    c06001.L$2 = mutableMap;
                    c06001.L$3 = th;
                    c06001.L$4 = null;
                    c06001.label = 2;
                    if (function2.invoke(paywallProductsLoad, c06001) != coroutine_suspended) {
                        paywall2 = paywall;
                        map3 = mutableMap;
                        productProcessingResult2 = productProcessingResult;
                        if (!(th instanceof BillingError.BillingNotAvailable)) {
                            throw th;
                        }
                        map2 = map3;
                        paywall = paywall2;
                    }
                    return coroutine_suspended;
                }
            } catch (Throwable th4) {
                mutableMap = map2;
                th = th4;
                productProcessingResult = productProcessingResult3;
                paywall = paywall3;
                paywall.getProductsLoadingInfo().setFailAt(new Date());
                if (paywallRequest != null) {
                    eventData = paywallRequest.getEventData();
                } else {
                    eventData = null;
                }
                PaywallInfo info3 = paywall.getInfo(eventData);
                InternalSuperwallEvent.PaywallProductsLoad.State.Fail fail3 = new InternalSuperwallEvent.PaywallProductsLoad.State.Fail(th.getMessage());
                if (paywallRequest != null) {
                    eventData2 = paywallRequest.getEventData();
                } else {
                    eventData2 = null;
                }
                paywallProductsLoad = new InternalSuperwallEvent.PaywallProductsLoad(fail3, info3, eventData2);
                function2 = storeManager.track;
                c06001.L$0 = paywall;
                c06001.L$1 = productProcessingResult;
                c06001.L$2 = mutableMap;
                c06001.L$3 = th;
                c06001.L$4 = null;
                c06001.label = 2;
                if (function2.invoke(paywallProductsLoad, c06001) != coroutine_suspended) {
                    paywall2 = paywall;
                    map3 = mutableMap;
                    productProcessingResult2 = productProcessingResult;
                    if (!(th instanceof BillingError.BillingNotAvailable)) {
                        throw th;
                    }
                    map2 = map3;
                    paywall = paywall2;
                    return new GetProductsResponse(map2, productProcessingResult2.getProductItems(), paywall);
                }
                return coroutine_suspended;
            }
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            th = (Throwable) c06001.L$3;
            map3 = (Map) c06001.L$2;
            productProcessingResult2 = (ProductProcessingResult) c06001.L$1;
            paywall2 = (Paywall) c06001.L$0;
            ResultKt.throwOnFailure(obj);
            if (!(th instanceof BillingError.BillingNotAvailable)) {
                throw th;
            }
            map2 = map3;
            paywall = paywall2;
        }
        return new GetProductsResponse(map2, productProcessingResult2.getProductItems(), paywall);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:28:0x0071  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code duplicated, block: B:99:0x01f0 A[LOOP:1: B:97:0x01ea->B:99:0x01f0, LOOP_END] */
    public final Object fetchOrAwaitProducts(Set<String> set, Continuation<? super Map<String, StoreProduct>> continuation) throws Throwable {
        C05981 c05981;
        Map<String, StoreProduct> mapEmptyMap;
        Map map;
        LinkedHashMap linkedHashMap;
        StoreManager storeManager;
        Map<String, ? extends CompletableDeferred<StoreProduct>> map2;
        Map map3;
        CompletableDeferred<StoreProduct> deferred;
        Map map4;
        Map map5;
        Map map6;
        if (continuation instanceof C05981) {
            c05981 = (C05981) continuation;
            if ((c05981.label & Integer.MIN_VALUE) != 0) {
                c05981.label -= Integer.MIN_VALUE;
            } else {
                c05981 = new C05981(continuation);
            }
        } else {
            c05981 = new C05981(continuation);
        }
        Object objFetchNewProducts = c05981.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05981.label;
        if (i != 0) {
            if (i == 1) {
                map2 = (Map) c05981.L$3;
                linkedHashMap = (Map) c05981.L$2;
                map3 = (Map) c05981.L$1;
                storeManager = (StoreManager) c05981.L$0;
                try {
                    ResultKt.throwOnFailure(objFetchNewProducts);
                } catch (Throwable th) {
                    th = th;
                    for (Map.Entry<String, ? extends CompletableDeferred<StoreProduct>> entry : map2.entrySet()) {
                        String key = entry.getKey();
                        CompletableDeferred<StoreProduct> value = entry.getValue();
                        storeManager.productsByFullId.put(key, new ProductState.Error(th));
                        value.completeExceptionally(th);
                    }
                    throw th;
                }
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                map6 = (Map) c05981.L$2;
                map4 = (Map) c05981.L$1;
                map5 = (Map) c05981.L$0;
                ResultKt.throwOnFailure(objFetchNewProducts);
            }
            return MapsKt.plus(MapsKt.plus(MapsKt.plus(map5, map4), map6), (Map) objFetchNewProducts);
        }
        ResultKt.throwOnFailure(objFetchNewProducts);
        TestMode testMode = this.testMode;
        if (testMode == null) {
            mapEmptyMap = null;
        } else {
            if (!testMode.isTestMode()) {
                testMode = null;
            }
            if (testMode != null) {
                mapEmptyMap = testMode.getTestProductsByFullId$superwall_release();
            } else {
                mapEmptyMap = null;
            }
        }
        if (mapEmptyMap == null) {
            mapEmptyMap = MapsKt.emptyMap();
        }
        if (mapEmptyMap.isEmpty()) {
            map = MapsKt.emptyMap();
        } else {
            ArrayList arrayList = new ArrayList();
            for (String str : set) {
                StoreProduct storeProduct = mapEmptyMap.get(str);
                Pair pair = storeProduct != null ? TuplesKt.to(str, storeProduct) : null;
                if (pair != null) {
                    arrayList.add(pair);
                }
            }
            map = MapsKt.toMap(arrayList);
        }
        Set<String> setMinus = SetsKt.minus((Set) set, (Iterable) map.keySet());
        if (setMinus.isEmpty()) {
            return map;
        }
        linkedHashMap = new LinkedHashMap();
        ArrayList arrayList2 = new ArrayList();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (String str2 : setMinus) {
            ConcurrentHashMap<String, ProductState> concurrentHashMap = this.productsByFullId;
            ProductState productState = concurrentHashMap.get(str2);
            if (productState == null) {
                CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                linkedHashMap2.put(str2, completableDeferredCompletableDeferred$default);
                ProductState.Loading loading = new ProductState.Loading(completableDeferredCompletableDeferred$default);
                ProductState productStatePutIfAbsent = concurrentHashMap.putIfAbsent(str2, loading);
                productState = productStatePutIfAbsent == null ? loading : productStatePutIfAbsent;
            }
            ProductState productState2 = productState;
            if (productState2 instanceof ProductState.Loaded) {
                linkedHashMap.put(str2, ((ProductState.Loaded) productState2).getProduct());
            } else if (productState2 instanceof ProductState.Loading) {
                if (!linkedHashMap2.containsKey(str2)) {
                    arrayList2.add(((ProductState.Loading) productState2).getDeferred());
                }
            } else {
                if (!(productState2 instanceof ProductState.Error)) {
                    throw new NoWhenBranchMatchedException();
                }
                CompletableDeferred completableDeferredCompletableDeferred$default2 = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                if (this.productsByFullId.replace(str2, productState2, new ProductState.Loading(completableDeferredCompletableDeferred$default2))) {
                    linkedHashMap2.put(str2, completableDeferredCompletableDeferred$default2);
                } else {
                    ProductState productState3 = this.productsByFullId.get(str2);
                    ProductState.Loading loading2 = productState3 instanceof ProductState.Loading ? (ProductState.Loading) productState3 : null;
                    if (loading2 != null && (deferred = loading2.getDeferred()) != null) {
                        Boxing.boxBoolean(arrayList2.add(deferred));
                    }
                }
            }
        }
        try {
            c05981.L$0 = this;
            c05981.L$1 = map;
            c05981.L$2 = linkedHashMap;
            c05981.L$3 = linkedHashMap2;
            c05981.label = 1;
            Object objAwaitAll = AwaitKt.awaitAll(arrayList2, c05981);
            if (objAwaitAll != coroutine_suspended) {
                storeManager = this;
                map3 = map;
                objFetchNewProducts = objAwaitAll;
                map2 = linkedHashMap2;
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            th = th2;
            storeManager = this;
            map2 = linkedHashMap2;
            while (r14.hasNext()) {
                String key2 = entry.getKey();
                CompletableDeferred<StoreProduct> value2 = entry.getValue();
                storeManager.productsByFullId.put(key2, new ProductState.Error(th));
                value2.completeExceptionally(th);
            }
            throw th;
        }
        Iterable iterable = (Iterable) objFetchNewProducts;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(iterable, 10)), 16));
        for (Object obj : iterable) {
            linkedHashMap3.put(((StoreProduct) obj).getFullIdentifier(), obj);
        }
        c05981.L$0 = map3;
        c05981.L$1 = linkedHashMap;
        c05981.L$2 = linkedHashMap3;
        c05981.L$3 = null;
        c05981.label = 2;
        objFetchNewProducts = storeManager.fetchNewProducts(map2, c05981);
        if (objFetchNewProducts != coroutine_suspended) {
            map4 = linkedHashMap;
            map5 = map3;
            map6 = linkedHashMap3;
            return MapsKt.plus(MapsKt.plus(MapsKt.plus(map5, map4), map6), (Map) objFetchNewProducts);
        }
        return coroutine_suspended;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:52:0x0149 A[LOOP:3: B:50:0x0143->B:52:0x0149, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object fetchNewProducts(Map<String, ? extends CompletableDeferred<StoreProduct>> map, Continuation<? super Map<String, StoreProduct>> continuation) throws Throwable {
        C05971 c05971;
        StoreManager storeManager;
        if (continuation instanceof C05971) {
            c05971 = (C05971) continuation;
            if ((c05971.label & Integer.MIN_VALUE) != 0) {
                c05971.label -= Integer.MIN_VALUE;
            } else {
                c05971 = new C05971(continuation);
            }
        } else {
            c05971 = new C05971(continuation);
        }
        Object objAwaitGetProducts = c05971.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05971.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objAwaitGetProducts);
            if (map.isEmpty()) {
                return MapsKt.emptyMap();
            }
            try {
                Billing billing = this.billing;
                Set<String> setKeySet = map.keySet();
                c05971.L$0 = this;
                c05971.L$1 = map;
                c05971.label = 1;
                objAwaitGetProducts = billing.awaitGetProducts(setKeySet, c05971);
                if (objAwaitGetProducts == coroutine_suspended) {
                    return coroutine_suspended;
                }
                storeManager = this;
            } catch (Throwable th) {
                th = th;
                storeManager = this;
                for (Map.Entry<String, ? extends CompletableDeferred<StoreProduct>> entry : map.entrySet()) {
                    String key = entry.getKey();
                    CompletableDeferred<StoreProduct> value = entry.getValue();
                    storeManager.productsByFullId.put(key, new ProductState.Error(th));
                    value.completeExceptionally(th);
                }
                throw th;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map = (Map) c05971.L$1;
            storeManager = (StoreManager) c05971.L$0;
            try {
                ResultKt.throwOnFailure(objAwaitGetProducts);
            } catch (Throwable th2) {
                th = th2;
                while (r8.hasNext()) {
                    String key2 = entry.getKey();
                    CompletableDeferred<StoreProduct> value2 = entry.getValue();
                    storeManager.productsByFullId.put(key2, new ProductState.Error(th));
                    value2.completeExceptionally(th);
                }
                throw th;
            }
        }
        Set set = (Set) objAwaitGetProducts;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(set, 10)), 16));
        for (Object obj : set) {
            linkedHashMap.put(((StoreProduct) obj).getFullIdentifier(), obj);
        }
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            String str = (String) entry2.getKey();
            StoreProduct storeProduct = (StoreProduct) entry2.getValue();
            storeManager.productsByFullId.put(str, new ProductState.Loaded(storeProduct));
            CompletableDeferred<StoreProduct> completableDeferred = map.get(str);
            if (completableDeferred != null) {
                Boxing.boxBoolean(completableDeferred.complete(storeProduct));
            }
        }
        for (String str2 : SetsKt.minus((Set) map.keySet(), (Iterable) linkedHashMap.keySet())) {
            Exception exc = new Exception("Product " + str2 + " not found in store");
            if (!(storeManager.productsByFullId.get(str2) instanceof ProductState.Loaded)) {
                storeManager.productsByFullId.put(str2, new ProductState.Error(exc));
            }
            CompletableDeferred<StoreProduct> completableDeferred2 = map.get(str2);
            if (completableDeferred2 != null) {
                Boxing.boxBoolean(completableDeferred2.completeExceptionally(exc));
            }
        }
        return linkedHashMap;
    }

    private final ProductProcessingResult removeAndStore(Map<String, StoreProduct> substituteProductsByName, List<String> fullProductIds, List<ProductItem> productItems) {
        List mutableList = CollectionsKt.toMutableList((Collection) fullProductIds);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List mutableList2 = CollectionsKt.toMutableList((Collection) productItems);
        if (substituteProductsByName != null) {
            for (Map.Entry<String, StoreProduct> entry : substituteProductsByName.entrySet()) {
                String key = entry.getKey();
                StoreProduct value = entry.getValue();
                final String fullIdentifier = value.getFullIdentifier();
                linkedHashMap.put(fullIdentifier, value);
                cacheProduct(fullIdentifier, value);
                DecomposedProductIds decomposedProductIdsFrom = DecomposedProductIds.INSTANCE.from(value.getFullIdentifier());
                Iterator it = mutableList2.iterator();
                int i = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i = -1;
                        break;
                    }
                    if (Intrinsics.areEqual(((ProductItem) it.next()).getName(), key)) {
                        break;
                    }
                    i++;
                }
                Integer numValueOf = Integer.valueOf(i);
                if (numValueOf.intValue() < 0) {
                    numValueOf = null;
                }
                if (numValueOf != null) {
                    int iIntValue = numValueOf.intValue();
                    String subscriptionId = decomposedProductIdsFrom.getSubscriptionId();
                    String basePlanId = decomposedProductIdsFrom.getBasePlanId();
                    ProductItem.StoreProductType.PlayStore playStore = new ProductItem.StoreProductType.PlayStore(new PlayStoreProduct(null, subscriptionId, basePlanId == null ? "" : basePlanId, decomposedProductIdsFrom.getOfferType().toOffer(), 1, null));
                    mutableList2.set(iIntValue, new ProductItem(playStore.getProduct().getFullIdentifier(), ((ProductItem) mutableList2.get(iIntValue)).getName(), playStore, ((ProductItem) mutableList2.get(iIntValue)).getEntitlements()));
                } else {
                    String subscriptionId2 = decomposedProductIdsFrom.getSubscriptionId();
                    String basePlanId2 = decomposedProductIdsFrom.getBasePlanId();
                    ProductItem.StoreProductType.PlayStore playStore2 = new ProductItem.StoreProductType.PlayStore(new PlayStoreProduct(null, subscriptionId2, basePlanId2 == null ? "" : basePlanId2, decomposedProductIdsFrom.getOfferType().toOffer(), 1, null));
                    mutableList2.add(new ProductItem(playStore2.getProduct().getFullIdentifier(), key, playStore2, SetsKt.emptySet()));
                }
                CollectionsKt.removeAll(mutableList, new Function1() { // from class: com.superwall.sdk.store.StoreManager$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(StoreManager.removeAndStore$lambda$18$lambda$17(fullIdentifier, (String) obj));
                    }
                });
            }
        }
        return new ProductProcessingResult(CollectionsKt.toSet(mutableList), linkedHashMap, mutableList2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removeAndStore$lambda$18$lambda$17(String str, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, str);
    }

    @Override // com.superwall.sdk.store.StoreKit
    public void refreshReceipt() {
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.storeKitManager, "Refreshing Google Play receipt.", null, null, 24, null);
        getReceiptManager().refreshReceipt();
    }

    @Override // com.superwall.sdk.store.StoreKit
    public Object loadPurchasedProducts(Map<String, ? extends Set<Entitlement>> map, Continuation<? super Unit> continuation) {
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.storeKitManager, "Loading purchased products from the Google Play receipt.", null, null, 24, null);
        Object objLoadPurchasedProducts = getReceiptManager().loadPurchasedProducts(map, continuation);
        return objLoadPurchasedProducts == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objLoadPurchasedProducts : Unit.INSTANCE;
    }

    @Override // com.superwall.sdk.store.StoreKit
    public void cacheProduct(String fullProductIdentifier, StoreProduct storeProduct) {
        Intrinsics.checkNotNullParameter(fullProductIdentifier, "fullProductIdentifier");
        Intrinsics.checkNotNullParameter(storeProduct, "storeProduct");
        ProductState productState = this.productsByFullId.get(fullProductIdentifier);
        this.productsByFullId.put(fullProductIdentifier, new ProductState.Loaded(storeProduct));
        if (productState instanceof ProductState.Loading) {
            ((ProductState.Loading) productState).getDeferred().complete(storeProduct);
        }
    }

    @Override // com.superwall.sdk.store.StoreKit
    public StoreProduct getProductFromCache(String productId) {
        StoreProduct storeProduct;
        Intrinsics.checkNotNullParameter(productId, "productId");
        TestMode testMode = this.testMode;
        if (testMode != null && testMode.isTestMode() && (storeProduct = testMode.getTestProductsByFullId$superwall_release().get(productId)) != null) {
            return storeProduct;
        }
        ProductState productState = this.productsByFullId.get(productId);
        ProductState.Loaded loaded = productState instanceof ProductState.Loaded ? (ProductState.Loaded) productState : null;
        if (loaded != null) {
            return loaded.getProduct();
        }
        return null;
    }

    @Override // com.superwall.sdk.store.StoreKit
    public boolean hasCached(String productId) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        TestMode testMode = this.testMode;
        if (testMode != null && testMode.isTestMode() && testMode.getTestProductsByFullId$superwall_release().containsKey(productId)) {
            return true;
        }
        return this.productsByFullId.get(productId) instanceof ProductState.Loaded;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.store.StoreKit
    /* JADX INFO: renamed from: consume-gIAlu-s */
    public Object mo10770consumegIAlus(String str, Continuation<? super Result<String>> continuation) {
        StoreManager$consume$1 storeManager$consume$1;
        if (continuation instanceof StoreManager$consume$1) {
            storeManager$consume$1 = (StoreManager$consume$1) continuation;
            if ((storeManager$consume$1.label & Integer.MIN_VALUE) != 0) {
                storeManager$consume$1.label -= Integer.MIN_VALUE;
            } else {
                storeManager$consume$1 = new StoreManager$consume$1(this, continuation);
            }
        } else {
            storeManager$consume$1 = new StoreManager$consume$1(this, continuation);
        }
        Object obj = storeManager$consume$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = storeManager$consume$1.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return ((Result) obj).getValue();
        }
        ResultKt.throwOnFailure(obj);
        Billing billing = this.billing;
        storeManager$consume$1.label = 1;
        Object objMo10575consumegIAlus = billing.mo10575consumegIAlus(str, storeManager$consume$1);
        return objMo10575consumegIAlus == coroutine_suspended ? coroutine_suspended : objMo10575consumegIAlus;
    }

    @Override // com.superwall.sdk.store.coordinator.ProductsFetcher
    public Object products(Set<String> set, Continuation<? super Set<StoreProduct>> continuation) throws Throwable {
        return this.billing.awaitGetProducts(set, continuation);
    }
}
