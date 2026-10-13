package com.superwall.sdk.store.abstractions.product.receipt;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.Purchase;
import com.facebook.imageutils.TiffUtil;
import com.superwall.sdk.billing.Billing;
import com.superwall.sdk.customer.CustomerInfoManager;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.customer.NonSubscriptionTransaction;
import com.superwall.sdk.models.customer.SubscriptionTransaction;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.storage.LatestDeviceCustomerInfo;
import com.superwall.sdk.storage.Storage;
import com.superwall.sdk.storage.StoredTransactionHistory;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.store.coordinator.ProductsFetcher;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: ReceiptManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001:\u0001MBM\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J(\u00104\u001a\u0002052\u0018\u00106\u001a\u0014\u0012\u0004\u0012\u000201\u0012\n\u0012\b\u0012\u0004\u0012\u0002080007H\u0086@¢\u0006\u0002\u00109J(\u0010:\u001a\u00020;2\u0018\u00106\u001a\u0014\u0012\u0004\u0012\u000201\u0012\n\u0012\b\u0012\u0004\u0012\u0002080007H\u0086@¢\u0006\u0002\u00109J0\u0010<\u001a\u0002052\f\u0010=\u001a\b\u0012\u0004\u0012\u00020?0>2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020A07H\u0082@¢\u0006\u0002\u0010BJ\u0006\u0010C\u001a\u000205J\u000e\u0010D\u001a\u00020.H\u0086@¢\u0006\u0002\u0010EJ\u000e\u0010F\u001a\u00020\u00162\u0006\u0010G\u001a\u000201J\u0016\u0010H\u001a\u00020\u00162\u0006\u0010I\u001a\u00020AH\u0086@¢\u0006\u0002\u0010JJ\u0012\u0010K\u001a\u000e\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u000107J\n\u0010L\u001a\u0004\u0018\u000101H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R \u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0014\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010,\u001a\b\u0012\u0004\u0012\u00020.0-X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010/\u001a\b\u0012\u0004\u0012\u000201008F¢\u0006\u0006\u001a\u0004\b2\u00103¨\u0006N"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;", "", "delegate", "Lcom/superwall/sdk/store/coordinator/ProductsFetcher;", "billing", "Lcom/superwall/sdk/billing/Billing;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "storage", "Lcom/superwall/sdk/storage/Storage;", "customerInfoManager", "Lkotlin/Function0;", "Lcom/superwall/sdk/customer/CustomerInfoManager;", "entitlementProcessor", "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;", "subscriptionStatusProvider", "Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;", "<init>", "(Lcom/superwall/sdk/store/coordinator/ProductsFetcher;Lcom/superwall/sdk/billing/Billing;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;)V", "getCustomerInfoManager$superwall_release", "()Lkotlin/jvm/functions/Function0;", "latestSubscriptionWillAutoRenew", "", "getLatestSubscriptionWillAutoRenew", "()Ljava/lang/Boolean;", "setLatestSubscriptionWillAutoRenew", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "latestSubscriptionPeriodType", "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;", "getLatestSubscriptionPeriodType", "()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;", "setLatestSubscriptionPeriodType", "(Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;)V", "transactionReceipts", "", "Lcom/superwall/sdk/store/abstractions/product/receipt/TransactionReceipt;", "getTransactionReceipts", "()Ljava/util/List;", "setTransactionReceipts", "(Ljava/util/List;)V", "_purchases", "", "Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;", "latestSubscriptionState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;", "purchases", "", "", "getPurchases", "()Ljava/util/Set;", "loadPurchasedProducts", "", "serverEntitlementsByProductId", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadPurchases", "Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;", "updateExperimentalDeviceVariables", "allPurchases", "", "Lcom/android/billingclient/api/Purchase;", "productsById", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "(Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refreshReceipt", "lastSubscriptionProperties", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "hasPurchasedProduct", "productId", "isEligibleForIntroOffer", "storeProduct", "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "experimentalProperties", "determinePeriodType", "PurchaseSnapshot", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ReceiptManager {
    private Set<InAppPurchase> _purchases;
    private final Billing billing;
    private final Function0<CustomerInfoManager> customerInfoManager;
    private ProductsFetcher delegate;
    private final EntitlementProcessor entitlementProcessor;
    private final IOScope ioScope;
    private LatestPeriodType latestSubscriptionPeriodType;
    private final MutableStateFlow<LatestSubscriptionState> latestSubscriptionState;
    private Boolean latestSubscriptionWillAutoRenew;
    private final Storage storage;
    private final SubscriptionStatusProvider subscriptionStatusProvider;
    private List<TransactionReceipt> transactionReceipts;

    /* JADX INFO: compiled from: ReceiptManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LatestPeriodType.values().length];
            try {
                iArr[LatestPeriodType.TRIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LatestPeriodType.CODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LatestPeriodType.SUBSCRIPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LatestPeriodType.PROMOTIONAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LatestPeriodType.WINBACK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[LatestPeriodType.REVOKED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.abstractions.product.receipt.ReceiptManager$lastSubscriptionProperties$1, reason: invalid class name */
    /* JADX INFO: compiled from: ReceiptManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.abstractions.product.receipt.ReceiptManager", f = "ReceiptManager.kt", i = {0, 1, 1}, l = {TiffUtil.TIFF_TAG_ORIENTATION, 278, 281}, m = "lastSubscriptionProperties", n = {"this", "this", "purchase"}, s = {"L$0", "L$0", "L$1"})
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
            return ReceiptManager.this.lastSubscriptionProperties(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.abstractions.product.receipt.ReceiptManager$loadPurchases$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ReceiptManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.abstractions.product.receipt.ReceiptManager", f = "ReceiptManager.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {103, 122, 200}, m = "loadPurchases", n = {"this", "serverEntitlementsByProductId", "purchases", "originalTransactionIds", "productIdsByEntitlementId", "existingHistory", "enableExperimentalDeviceVariables", "this", "serverEntitlementsByProductId", "purchases", "originalTransactionIds", "productIdsByEntitlementId", "existingHistory", "allPurchases", "transactionsByEntitlement", "currentTransactions", "enableExperimentalDeviceVariables", "this", "purchases", "nonSubscriptions", BillingClient.FeatureType.SUBSCRIPTIONS, "entitlementsByProductId"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4"})
    static final class C06021 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        int label;
        /* synthetic */ Object result;

        C06021(Continuation<? super C06021> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ReceiptManager.this.loadPurchases(null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.abstractions.product.receipt.ReceiptManager$updateExperimentalDeviceVariables$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ReceiptManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.abstractions.product.receipt.ReceiptManager", f = "ReceiptManager.kt", i = {0, 0, 0}, l = {253}, m = "updateExperimentalDeviceVariables", n = {"this", "mostRecentPurchase", "product"}, s = {"L$0", "L$1", "L$2"})
    static final class C06041 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C06041(Continuation<? super C06041> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ReceiptManager.this.updateExperimentalDeviceVariables(null, null, this);
        }
    }

    public ReceiptManager(ProductsFetcher productsFetcher, Billing billing, IOScope ioScope, Storage storage, Function0<CustomerInfoManager> customerInfoManager, EntitlementProcessor entitlementProcessor, SubscriptionStatusProvider subscriptionStatusProvider) {
        Intrinsics.checkNotNullParameter(billing, "billing");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(customerInfoManager, "customerInfoManager");
        Intrinsics.checkNotNullParameter(entitlementProcessor, "entitlementProcessor");
        Intrinsics.checkNotNullParameter(subscriptionStatusProvider, "subscriptionStatusProvider");
        this.delegate = productsFetcher;
        this.billing = billing;
        this.ioScope = ioScope;
        this.storage = storage;
        this.customerInfoManager = customerInfoManager;
        this.entitlementProcessor = entitlementProcessor;
        this.subscriptionStatusProvider = subscriptionStatusProvider;
        this.transactionReceipts = new ArrayList();
        this._purchases = new LinkedHashSet();
        this.latestSubscriptionState = StateFlowKt.MutableStateFlow(LatestSubscriptionState.UNKNOWN);
        refreshReceipt();
    }

    public /* synthetic */ ReceiptManager(ProductsFetcher productsFetcher, Billing billing, IOScope iOScope, Storage storage, Function0 function0, EntitlementProcessor entitlementProcessor, SubscriptionStatusProvider subscriptionStatusProvider, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(productsFetcher, billing, (i & 4) != 0 ? new IOScope(null, 1, null) : iOScope, storage, function0, (i & 32) != 0 ? new EntitlementProcessor() : entitlementProcessor, (i & 64) != 0 ? new PlayBillingSubscriptionStatusProvider(billing) : subscriptionStatusProvider);
    }

    public final Function0<CustomerInfoManager> getCustomerInfoManager$superwall_release() {
        return this.customerInfoManager;
    }

    public final Boolean getLatestSubscriptionWillAutoRenew() {
        return this.latestSubscriptionWillAutoRenew;
    }

    public final void setLatestSubscriptionWillAutoRenew(Boolean bool) {
        this.latestSubscriptionWillAutoRenew = bool;
    }

    public final LatestPeriodType getLatestSubscriptionPeriodType() {
        return this.latestSubscriptionPeriodType;
    }

    public final void setLatestSubscriptionPeriodType(LatestPeriodType latestPeriodType) {
        this.latestSubscriptionPeriodType = latestPeriodType;
    }

    public final List<TransactionReceipt> getTransactionReceipts() {
        return this.transactionReceipts;
    }

    public final void setTransactionReceipts(List<TransactionReceipt> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.transactionReceipts = list;
    }

    /* JADX INFO: compiled from: ReceiptManager.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\b\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u001b\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0006HÆ\u0003J\u000f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000b0\bHÆ\u0003J\u000f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\r0\bHÆ\u0003JU\u0010\u001b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u001a\b\u0002\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00062\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\b2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\bHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0007HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R#\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015¨\u0006\""}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;", "", "purchases", "", "Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;", "entitlementsByProductId", "", "", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "nonSubscriptions", "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;", BillingClient.FeatureType.SUBSCRIPTIONS, "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;", "<init>", "(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V", "getPurchases", "()Ljava/util/Set;", "getEntitlementsByProductId", "()Ljava/util/Map;", "getNonSubscriptions", "()Ljava/util/List;", "getSubscriptions", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PurchaseSnapshot {
        private final Map<String, List<Entitlement>> entitlementsByProductId;
        private final List<NonSubscriptionTransaction> nonSubscriptions;
        private final Set<InAppPurchase> purchases;
        private final List<SubscriptionTransaction> subscriptions;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ PurchaseSnapshot copy$default(PurchaseSnapshot purchaseSnapshot, Set set, Map map, List list, List list2, int i, Object obj) {
            if ((i & 1) != 0) {
                set = purchaseSnapshot.purchases;
            }
            if ((i & 2) != 0) {
                map = purchaseSnapshot.entitlementsByProductId;
            }
            if ((i & 4) != 0) {
                list = purchaseSnapshot.nonSubscriptions;
            }
            if ((i & 8) != 0) {
                list2 = purchaseSnapshot.subscriptions;
            }
            return purchaseSnapshot.copy(set, map, list, list2);
        }

        public final Set<InAppPurchase> component1() {
            return this.purchases;
        }

        public final Map<String, List<Entitlement>> component2() {
            return this.entitlementsByProductId;
        }

        public final List<NonSubscriptionTransaction> component3() {
            return this.nonSubscriptions;
        }

        public final List<SubscriptionTransaction> component4() {
            return this.subscriptions;
        }

        public final PurchaseSnapshot copy(Set<InAppPurchase> purchases, Map<String, ? extends List<Entitlement>> entitlementsByProductId, List<NonSubscriptionTransaction> nonSubscriptions, List<SubscriptionTransaction> subscriptions) {
            Intrinsics.checkNotNullParameter(purchases, "purchases");
            Intrinsics.checkNotNullParameter(entitlementsByProductId, "entitlementsByProductId");
            Intrinsics.checkNotNullParameter(nonSubscriptions, "nonSubscriptions");
            Intrinsics.checkNotNullParameter(subscriptions, "subscriptions");
            return new PurchaseSnapshot(purchases, entitlementsByProductId, nonSubscriptions, subscriptions);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PurchaseSnapshot)) {
                return false;
            }
            PurchaseSnapshot purchaseSnapshot = (PurchaseSnapshot) other;
            return Intrinsics.areEqual(this.purchases, purchaseSnapshot.purchases) && Intrinsics.areEqual(this.entitlementsByProductId, purchaseSnapshot.entitlementsByProductId) && Intrinsics.areEqual(this.nonSubscriptions, purchaseSnapshot.nonSubscriptions) && Intrinsics.areEqual(this.subscriptions, purchaseSnapshot.subscriptions);
        }

        public int hashCode() {
            return (((((this.purchases.hashCode() * 31) + this.entitlementsByProductId.hashCode()) * 31) + this.nonSubscriptions.hashCode()) * 31) + this.subscriptions.hashCode();
        }

        public String toString() {
            return "PurchaseSnapshot(purchases=" + this.purchases + ", entitlementsByProductId=" + this.entitlementsByProductId + ", nonSubscriptions=" + this.nonSubscriptions + ", subscriptions=" + this.subscriptions + ")";
        }

        /* JADX WARN: Multi-variable type inference failed */
        public PurchaseSnapshot(Set<InAppPurchase> purchases, Map<String, ? extends List<Entitlement>> entitlementsByProductId, List<NonSubscriptionTransaction> nonSubscriptions, List<SubscriptionTransaction> subscriptions) {
            Intrinsics.checkNotNullParameter(purchases, "purchases");
            Intrinsics.checkNotNullParameter(entitlementsByProductId, "entitlementsByProductId");
            Intrinsics.checkNotNullParameter(nonSubscriptions, "nonSubscriptions");
            Intrinsics.checkNotNullParameter(subscriptions, "subscriptions");
            this.purchases = purchases;
            this.entitlementsByProductId = entitlementsByProductId;
            this.nonSubscriptions = nonSubscriptions;
            this.subscriptions = subscriptions;
        }

        public final Set<InAppPurchase> getPurchases() {
            return this.purchases;
        }

        public final Map<String, List<Entitlement>> getEntitlementsByProductId() {
            return this.entitlementsByProductId;
        }

        public final List<NonSubscriptionTransaction> getNonSubscriptions() {
            return this.nonSubscriptions;
        }

        public final List<SubscriptionTransaction> getSubscriptions() {
            return this.subscriptions;
        }
    }

    public final Set<String> getPurchases() {
        Set<InAppPurchase> set = this._purchases;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(((InAppPurchase) it.next()).getProductIdentifier());
        }
        return CollectionsKt.toSet(arrayList);
    }

    public final Object loadPurchasedProducts(Map<String, ? extends Set<Entitlement>> map, Continuation<? super Unit> continuation) {
        Object objLoadPurchases = loadPurchases(map, continuation);
        return objLoadPurchases == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objLoadPurchases : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0370  */
    /* JADX WARN: Code duplicated, block: B:103:0x0387  */
    /* JADX WARN: Code duplicated, block: B:108:0x0413  */
    /* JADX WARN: Code duplicated, block: B:113:0x0431  */
    /* JADX WARN: Code duplicated, block: B:115:0x0441  */
    /* JADX WARN: Code duplicated, block: B:120:0x045c  */
    /* JADX WARN: Code duplicated, block: B:123:0x0479  */
    /* JADX WARN: Code duplicated, block: B:128:0x04b3  */
    /* JADX WARN: Code duplicated, block: B:133:0x04d6  */
    /* JADX WARN: Code duplicated, block: B:136:0x04de  */
    /* JADX WARN: Code duplicated, block: B:139:0x04c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:142:0x04ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:150:0x034c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x0344 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:155:0x0425 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x040d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:161:0x044b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x02a7 A[LOOP:1: B:72:0x02a1->B:74:0x02a7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:78:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Code duplicated, block: B:81:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:85:0x0302  */
    /* JADX WARN: Code duplicated, block: B:88:0x031e  */
    /* JADX WARN: Code duplicated, block: B:91:0x032a  */
    /* JADX WARN: Code duplicated, block: B:93:0x033a  */
    /* JADX WARN: Code duplicated, block: B:99:0x0363  */
    public final Object loadPurchases(Map<String, ? extends Set<Entitlement>> map, Continuation<? super PurchaseSnapshot> continuation) {
        C06021 c06021;
        LinkedHashSet linkedHashSet;
        UserTransactionHistory userTransactionHistory;
        Map<String, ? extends Set<Entitlement>> map2;
        ReceiptManager receiptManager;
        Set set;
        Map<String, ? extends Set<String>> map3;
        int i;
        UserTransactionHistory userTransactionHistory2;
        List<? extends EntitlementTransaction> list;
        Set<InAppPurchase> set2;
        List<? extends Purchase> list2;
        Map map4;
        Map<String, ? extends Set<Entitlement>> map5;
        Object next;
        Object obj;
        int i2;
        Iterator it;
        ArrayList arrayList;
        Object next2;
        LinkedHashMap linkedHashMap;
        Iterator it2;
        int i3;
        List<NonSubscriptionTransaction> listComponent1;
        List<SubscriptionTransaction> listComponent2;
        LinkedHashMap linkedHashMap2;
        Map<String, List<Entitlement>> mapBuildEntitlementsFromTransactions;
        Map<String, List<Entitlement>> map6;
        List<NonSubscriptionTransaction> list3;
        ReceiptManager receiptManager2;
        Set<InAppPurchase> set3;
        List<SubscriptionTransaction> list4;
        Set<Entitlement> set4;
        Iterator<T> it3;
        String id;
        Object obj2;
        Purchase purchase;
        Iterator it4;
        Purchase purchase2;
        String orderId;
        PlayStorePurchaseAdapter playStorePurchaseAdapter;
        StoreProduct storeProduct;
        String productId;
        Set<Entitlement> set5;
        Iterator<T> it5;
        String id2;
        Object obj3;
        HashSet hashSet;
        ArrayList arrayList2;
        boolean z;
        if (continuation instanceof C06021) {
            c06021 = (C06021) continuation;
            if ((c06021.label & Integer.MIN_VALUE) != 0) {
                c06021.label -= Integer.MIN_VALUE;
            } else {
                c06021 = new C06021(continuation);
            }
        } else {
            c06021 = new C06021(continuation);
        }
        Object obj4 = c06021.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c06021.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj4);
            linkedHashSet = new LinkedHashSet();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            this.transactionReceipts.clear();
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            for (Map.Entry<String, ? extends Set<Entitlement>> entry : map.entrySet()) {
                String key = entry.getKey();
                Iterator<T> it6 = entry.getValue().iterator();
                while (it6.hasNext()) {
                    String id3 = ((Entitlement) it6.next()).getId();
                    Object obj5 = linkedHashMap3.get(id3);
                    if (obj5 == null) {
                        obj5 = (Set) new LinkedHashSet();
                        linkedHashMap3.put(id3, obj5);
                    }
                    ((Set) obj5).add(key);
                }
            }
            userTransactionHistory = (UserTransactionHistory) this.storage.read(StoredTransactionHistory.INSTANCE);
            if (userTransactionHistory == null) {
                userTransactionHistory = new UserTransactionHistory((Map) null, 1, (DefaultConstructorMarker) null);
            }
            Billing billing = this.billing;
            c06021.L$0 = this;
            map2 = map;
            c06021.L$1 = map2;
            c06021.L$2 = linkedHashSet;
            c06021.L$3 = linkedHashSet2;
            c06021.L$4 = linkedHashMap3;
            c06021.L$5 = userTransactionHistory;
            c06021.I$0 = 0;
            c06021.label = 1;
            Object objQueryAllPurchases = billing.queryAllPurchases(c06021);
            if (objQueryAllPurchases != coroutine_suspended) {
                receiptManager = this;
                set = linkedHashSet2;
                obj4 = objQueryAllPurchases;
                map3 = linkedHashMap3;
                i = 0;
            }
            return coroutine_suspended;
        }
        if (i4 == 1) {
            i = c06021.I$0;
            userTransactionHistory = (UserTransactionHistory) c06021.L$5;
            map3 = (Map) c06021.L$4;
            Set set6 = (Set) c06021.L$3;
            linkedHashSet = (Set) c06021.L$2;
            Map<String, ? extends Set<Entitlement>> map7 = (Map) c06021.L$1;
            receiptManager = (ReceiptManager) c06021.L$0;
            ResultKt.throwOnFailure(obj4);
            set = set6;
            map2 = map7;
        } else {
            if (i4 == 2) {
                i = c06021.I$0;
                List<? extends EntitlementTransaction> list5 = (List) c06021.L$8;
                map4 = (Map) c06021.L$7;
                list2 = (List) c06021.L$6;
                userTransactionHistory2 = (UserTransactionHistory) c06021.L$5;
                Map<String, ? extends Set<String>> map8 = (Map) c06021.L$4;
                set = (Set) c06021.L$3;
                set2 = (Set) c06021.L$2;
                map5 = (Map) c06021.L$1;
                ReceiptManager receiptManager3 = (ReceiptManager) c06021.L$0;
                ResultKt.throwOnFailure(obj4);
                receiptManager = receiptManager3;
                map3 = map8;
                list = list5;
                Iterable iterable = (Iterable) obj4;
                linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(iterable, 10)), 16));
                for (Object obj6 : iterable) {
                    linkedHashMap.put(((StoreProduct) obj6).getProductIdentifier(), obj6);
                }
                it2 = list2.iterator();
                while (it2.hasNext()) {
                    purchase = (Purchase) it2.next();
                    it4 = PlayStorePurchaseAdapter.INSTANCE.fromPurchase(purchase, linkedHashMap).iterator();
                    while (it4.hasNext()) {
                        Iterator it7 = it2;
                        playStorePurchaseAdapter = (PlayStorePurchaseAdapter) it4.next();
                        list.add(playStorePurchaseAdapter);
                        int i5 = i;
                        Purchase purchase3 = purchase;
                        storeProduct = (StoreProduct) linkedHashMap.get(playStorePurchaseAdapter.getProductId());
                        if (storeProduct != null || (productId = storeProduct.getProductIdentifier()) == null) {
                            productId = playStorePurchaseAdapter.getProductId();
                        }
                        Iterator it8 = it4;
                        set2.add(new InAppPurchase(productId, playStorePurchaseAdapter.getProductId()));
                        set5 = map5.get(playStorePurchaseAdapter.getProductId());
                        if (set5 != null) {
                            it5 = set5.iterator();
                            while (it5.hasNext()) {
                                id2 = ((Entitlement) it5.next()).getId();
                                obj3 = map4.get(id2);
                                if (obj3 == null) {
                                    obj3 = (List) new ArrayList();
                                    map4.put(id2, obj3);
                                }
                                ((List) obj3).add(playStorePurchaseAdapter);
                            }
                            Unit unit = Unit.INSTANCE;
                        }
                        it2 = it7;
                        i = i5;
                        purchase = purchase3;
                        it4 = it8;
                    }
                    Iterator it9 = it2;
                    int i6 = i;
                    purchase2 = purchase;
                    orderId = purchase2.getOrderId();
                    if (orderId == null) {
                        orderId = purchase2.getPurchaseToken();
                        Intrinsics.checkNotNullExpressionValue(orderId, "getPurchaseToken(...)");
                    }
                    if (!set.contains(orderId)) {
                        List<TransactionReceipt> list6 = receiptManager.transactionReceipts;
                        String purchaseToken = purchase2.getPurchaseToken();
                        Intrinsics.checkNotNullExpressionValue(purchaseToken, "getPurchaseToken(...)");
                        list6.add(new TransactionReceipt(orderId, purchaseToken));
                        set.add(orderId);
                    }
                    it2 = it9;
                    i = i6;
                    map4 = map4;
                }
                i3 = i;
                UserTransactionHistory userTransactionHistoryMergeWith = userTransactionHistory2.mergeWith(list);
                receiptManager.storage.write(StoredTransactionHistory.INSTANCE, userTransactionHistoryMergeWith);
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.receipts, "Transaction history: " + list.size() + " current, " + userTransactionHistoryMergeWith.getTransactions().size() + " total stored, " + userTransactionHistoryMergeWith.activeTransactions().size() + " active", null, null, 24, null);
                List<StoredEntitlementTransaction> listAllTransactions = userTransactionHistoryMergeWith.allTransactions();
                EntitlementProcessor.ProcessedTransactions processedTransactionsProcessTransactions = receiptManager.entitlementProcessor.processTransactions(listAllTransactions);
                listComponent1 = processedTransactionsProcessTransactions.component1();
                listComponent2 = processedTransactionsProcessTransactions.component2();
                linkedHashMap2 = new LinkedHashMap();
                for (EntitlementTransaction entitlementTransaction : listAllTransactions) {
                    set4 = map5.get(entitlementTransaction.getProductId());
                    if (set4 != null) {
                        it3 = set4.iterator();
                        while (it3.hasNext()) {
                            id = ((Entitlement) it3.next()).getId();
                            obj2 = linkedHashMap2.get(id);
                            if (obj2 == null) {
                                obj2 = (List) new ArrayList();
                                linkedHashMap2.put(id, obj2);
                            }
                            ((List) obj2).add(entitlementTransaction);
                        }
                        Unit unit2 = Unit.INSTANCE;
                    }
                }
                mapBuildEntitlementsFromTransactions = receiptManager.entitlementProcessor.buildEntitlementsFromTransactions(linkedHashMap2, map5, map3);
                if (i3 != 0) {
                    c06021.L$0 = receiptManager;
                    c06021.L$1 = set2;
                    c06021.L$2 = listComponent1;
                    c06021.L$3 = listComponent2;
                    c06021.L$4 = mapBuildEntitlementsFromTransactions;
                    c06021.L$5 = null;
                    c06021.L$6 = null;
                    c06021.L$7 = null;
                    c06021.L$8 = null;
                    c06021.label = 3;
                    if (receiptManager.updateExperimentalDeviceVariables(list2, linkedHashMap, c06021) != coroutine_suspended) {
                        map6 = mapBuildEntitlementsFromTransactions;
                        list3 = listComponent1;
                        receiptManager2 = receiptManager;
                        set3 = set2;
                        list4 = listComponent2;
                    }
                    return coroutine_suspended;
                }
                receiptManager._purchases = set2;
                List<SubscriptionTransaction> list7 = listComponent2;
                List listReversed = CollectionsKt.reversed(list7);
                List<NonSubscriptionTransaction> list8 = listComponent1;
                List listReversed2 = CollectionsKt.reversed(list8);
                List listFlatten = CollectionsKt.flatten(mapBuildEntitlementsFromTransactions.values());
                hashSet = new HashSet();
                arrayList2 = new ArrayList();
                for (Object obj7 : listFlatten) {
                    if (hashSet.add(((Entitlement) obj7).getId())) {
                        arrayList2.add(obj7);
                    }
                }
                List list9 = CollectionsKt.toList(arrayList2);
                if (listComponent2.isEmpty() || !listComponent1.isEmpty()) {
                    z = false;
                } else {
                    z = true;
                }
                CustomerInfo customerInfo = new CustomerInfo(listReversed, listReversed2, "", list9, z);
                receiptManager.storage.write(LatestDeviceCustomerInfo.INSTANCE, customerInfo);
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.receipts, "Built device CustomerInfo: " + customerInfo.getSubscriptions().size() + " subs, " + customerInfo.getNonSubscriptions().size() + " non-subs, " + customerInfo.getEntitlements().size() + " entitlements", null, null, 24, null);
                receiptManager.customerInfoManager.invoke().updateMergedCustomerInfo();
                return new PurchaseSnapshot(set2, mapBuildEntitlementsFromTransactions, CollectionsKt.reversed(list8), CollectionsKt.reversed(list7));
            }
            if (i4 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map6 = (Map) c06021.L$4;
            list4 = (List) c06021.L$3;
            list3 = (List) c06021.L$2;
            set3 = (Set) c06021.L$1;
            receiptManager2 = (ReceiptManager) c06021.L$0;
            ResultKt.throwOnFailure(obj4);
        }
        receiptManager = receiptManager2;
        mapBuildEntitlementsFromTransactions = map6;
        listComponent2 = list4;
        listComponent1 = list3;
        set2 = set3;
        receiptManager._purchases = set2;
        List<SubscriptionTransaction> list10 = listComponent2;
        List listReversed3 = CollectionsKt.reversed(list10);
        List<NonSubscriptionTransaction> list11 = listComponent1;
        List listReversed4 = CollectionsKt.reversed(list11);
        List listFlatten2 = CollectionsKt.flatten(mapBuildEntitlementsFromTransactions.values());
        hashSet = new HashSet();
        arrayList2 = new ArrayList();
        while (r5.hasNext()) {
            if (hashSet.add(((Entitlement) obj7).getId())) {
                arrayList2.add(obj7);
            }
        }
        List list12 = CollectionsKt.toList(arrayList2);
        if (listComponent2.isEmpty()) {
            z = false;
        } else {
            z = false;
        }
        CustomerInfo customerInfo2 = new CustomerInfo(listReversed3, listReversed4, "", list12, z);
        receiptManager.storage.write(LatestDeviceCustomerInfo.INSTANCE, customerInfo2);
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.receipts, "Built device CustomerInfo: " + customerInfo2.getSubscriptions().size() + " subs, " + customerInfo2.getNonSubscriptions().size() + " non-subs, " + customerInfo2.getEntitlements().size() + " entitlements", null, null, 24, null);
        receiptManager.customerInfoManager.invoke().updateMergedCustomerInfo();
        return new PurchaseSnapshot(set2, mapBuildEntitlementsFromTransactions, CollectionsKt.reversed(list11), CollectionsKt.reversed(list10));
        userTransactionHistory2 = userTransactionHistory;
        List<? extends Purchase> list13 = (List) obj4;
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        Iterator it10 = list13.iterator();
        while (it10.hasNext()) {
            List<String> products = ((Purchase) it10.next()).getProducts();
            Intrinsics.checkNotNullExpressionValue(products, "getProducts(...)");
            CollectionsKt.addAll(arrayList4, products);
        }
        Set set7 = CollectionsKt.toSet(arrayList4);
        LinkedHashMap linkedHashMap5 = new LinkedHashMap();
        Iterator it11 = set7.iterator();
        while (it11.hasNext()) {
            String str = (String) it11.next();
            Iterator<T> it12 = map2.keySet().iterator();
            do {
                if (!it12.hasNext()) {
                    next = null;
                    break;
                }
                next = it12.next();
            } while (!Intrinsics.areEqual((String) next, str));
            String str2 = (String) next;
            if (str2 == null) {
                Iterator it13 = map2.keySet().iterator();
                while (true) {
                    if (!it13.hasNext()) {
                        obj = coroutine_suspended;
                        i2 = i;
                        it = it11;
                        arrayList = arrayList3;
                        next2 = null;
                        break;
                    }
                    next2 = it13.next();
                    Iterator it14 = it13;
                    it = it11;
                    obj = coroutine_suspended;
                    i2 = i;
                    arrayList = arrayList3;
                    if (StringsKt.startsWith$default((String) next2, str + ":", false, 2, (Object) null)) {
                        break;
                    }
                    it13 = it14;
                    i = i2;
                    it11 = it;
                    coroutine_suspended = obj;
                    arrayList3 = arrayList;
                }
                str2 = (String) next2;
            } else {
                obj = coroutine_suspended;
                i2 = i;
                it = it11;
                arrayList = arrayList3;
            }
            linkedHashMap5.put(str, str2 == null ? str : str2);
            i = i2;
            it11 = it;
            coroutine_suspended = obj;
            arrayList3 = arrayList;
        }
        Object obj8 = coroutine_suspended;
        Set<String> set8 = CollectionsKt.toSet(linkedHashMap5.values());
        Billing billing2 = receiptManager.billing;
        c06021.L$0 = receiptManager;
        c06021.L$1 = map2;
        c06021.L$2 = linkedHashSet;
        c06021.L$3 = set;
        c06021.L$4 = map3;
        c06021.L$5 = userTransactionHistory2;
        c06021.L$6 = list13;
        c06021.L$7 = linkedHashMap4;
        c06021.L$8 = arrayList3;
        c06021.I$0 = i;
        c06021.label = 2;
        Object objAwaitGetProducts = billing2.awaitGetProducts(set8, c06021);
        coroutine_suspended = obj8;
        if (objAwaitGetProducts != coroutine_suspended) {
            obj4 = objAwaitGetProducts;
            list = arrayList3;
            set2 = linkedHashSet;
            list2 = list13;
            Map<String, ? extends Set<Entitlement>> map9 = map2;
            map4 = linkedHashMap4;
            map5 = map9;
            Iterable iterable2 = (Iterable) obj4;
            linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(iterable2, 10)), 16));
            while (r1.hasNext()) {
                linkedHashMap.put(((StoreProduct) obj6).getProductIdentifier(), obj6);
            }
            it2 = list2.iterator();
            while (it2.hasNext()) {
                purchase = (Purchase) it2.next();
                it4 = PlayStorePurchaseAdapter.INSTANCE.fromPurchase(purchase, linkedHashMap).iterator();
                while (it4.hasNext()) {
                    Iterator it15 = it2;
                    playStorePurchaseAdapter = (PlayStorePurchaseAdapter) it4.next();
                    list.add(playStorePurchaseAdapter);
                    int i7 = i;
                    Purchase purchase4 = purchase;
                    storeProduct = (StoreProduct) linkedHashMap.get(playStorePurchaseAdapter.getProductId());
                    if (storeProduct != null) {
                        productId = playStorePurchaseAdapter.getProductId();
                    } else {
                        productId = playStorePurchaseAdapter.getProductId();
                    }
                    Iterator it16 = it4;
                    set2.add(new InAppPurchase(productId, playStorePurchaseAdapter.getProductId()));
                    set5 = map5.get(playStorePurchaseAdapter.getProductId());
                    if (set5 != null) {
                        it5 = set5.iterator();
                        while (it5.hasNext()) {
                            id2 = ((Entitlement) it5.next()).getId();
                            obj3 = map4.get(id2);
                            if (obj3 == null) {
                                obj3 = (List) new ArrayList();
                                map4.put(id2, obj3);
                            }
                            ((List) obj3).add(playStorePurchaseAdapter);
                        }
                        Unit unit3 = Unit.INSTANCE;
                    }
                    it2 = it15;
                    i = i7;
                    purchase = purchase4;
                    it4 = it16;
                }
                Iterator it17 = it2;
                int i8 = i;
                purchase2 = purchase;
                orderId = purchase2.getOrderId();
                if (orderId == null) {
                    orderId = purchase2.getPurchaseToken();
                    Intrinsics.checkNotNullExpressionValue(orderId, "getPurchaseToken(...)");
                }
                if (!set.contains(orderId)) {
                    List<TransactionReceipt> list14 = receiptManager.transactionReceipts;
                    String purchaseToken2 = purchase2.getPurchaseToken();
                    Intrinsics.checkNotNullExpressionValue(purchaseToken2, "getPurchaseToken(...)");
                    list14.add(new TransactionReceipt(orderId, purchaseToken2));
                    set.add(orderId);
                }
                it2 = it17;
                i = i8;
                map4 = map4;
            }
            i3 = i;
            UserTransactionHistory userTransactionHistoryMergeWith2 = userTransactionHistory2.mergeWith(list);
            receiptManager.storage.write(StoredTransactionHistory.INSTANCE, userTransactionHistoryMergeWith2);
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.receipts, "Transaction history: " + list.size() + " current, " + userTransactionHistoryMergeWith2.getTransactions().size() + " total stored, " + userTransactionHistoryMergeWith2.activeTransactions().size() + " active", null, null, 24, null);
            List<StoredEntitlementTransaction> listAllTransactions2 = userTransactionHistoryMergeWith2.allTransactions();
            EntitlementProcessor.ProcessedTransactions processedTransactionsProcessTransactions2 = receiptManager.entitlementProcessor.processTransactions(listAllTransactions2);
            listComponent1 = processedTransactionsProcessTransactions2.component1();
            listComponent2 = processedTransactionsProcessTransactions2.component2();
            linkedHashMap2 = new LinkedHashMap();
            while (r0.hasNext()) {
                set4 = map5.get(entitlementTransaction.getProductId());
                if (set4 != null) {
                    it3 = set4.iterator();
                    while (it3.hasNext()) {
                        id = ((Entitlement) it3.next()).getId();
                        obj2 = linkedHashMap2.get(id);
                        if (obj2 == null) {
                            obj2 = (List) new ArrayList();
                            linkedHashMap2.put(id, obj2);
                        }
                        ((List) obj2).add(entitlementTransaction);
                    }
                    Unit unit4 = Unit.INSTANCE;
                }
            }
            mapBuildEntitlementsFromTransactions = receiptManager.entitlementProcessor.buildEntitlementsFromTransactions(linkedHashMap2, map5, map3);
            if (i3 != 0) {
                c06021.L$0 = receiptManager;
                c06021.L$1 = set2;
                c06021.L$2 = listComponent1;
                c06021.L$3 = listComponent2;
                c06021.L$4 = mapBuildEntitlementsFromTransactions;
                c06021.L$5 = null;
                c06021.L$6 = null;
                c06021.L$7 = null;
                c06021.L$8 = null;
                c06021.label = 3;
                if (receiptManager.updateExperimentalDeviceVariables(list2, linkedHashMap, c06021) != coroutine_suspended) {
                    map6 = mapBuildEntitlementsFromTransactions;
                    list3 = listComponent1;
                    receiptManager2 = receiptManager;
                    set3 = set2;
                    list4 = listComponent2;
                    receiptManager = receiptManager2;
                    mapBuildEntitlementsFromTransactions = map6;
                    listComponent2 = list4;
                    listComponent1 = list3;
                    set2 = set3;
                }
            }
            receiptManager._purchases = set2;
            List<SubscriptionTransaction> list15 = listComponent2;
            List listReversed5 = CollectionsKt.reversed(list15);
            List<NonSubscriptionTransaction> list16 = listComponent1;
            List listReversed6 = CollectionsKt.reversed(list16);
            List listFlatten3 = CollectionsKt.flatten(mapBuildEntitlementsFromTransactions.values());
            hashSet = new HashSet();
            arrayList2 = new ArrayList();
            while (r5.hasNext()) {
                if (hashSet.add(((Entitlement) obj7).getId())) {
                    arrayList2.add(obj7);
                }
            }
            List list17 = CollectionsKt.toList(arrayList2);
            if (listComponent2.isEmpty()) {
                z = false;
            } else {
                z = false;
            }
            CustomerInfo customerInfo3 = new CustomerInfo(listReversed5, listReversed6, "", list17, z);
            receiptManager.storage.write(LatestDeviceCustomerInfo.INSTANCE, customerInfo3);
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.receipts, "Built device CustomerInfo: " + customerInfo3.getSubscriptions().size() + " subs, " + customerInfo3.getNonSubscriptions().size() + " non-subs, " + customerInfo3.getEntitlements().size() + " entitlements", null, null, 24, null);
            receiptManager.customerInfoManager.invoke().updateMergedCustomerInfo();
            return new PurchaseSnapshot(set2, mapBuildEntitlementsFromTransactions, CollectionsKt.reversed(list16), CollectionsKt.reversed(list15));
        }
        return coroutine_suspended;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object updateExperimentalDeviceVariables(List<? extends Purchase> list, Map<String, StoreProduct> map, Continuation<? super Unit> continuation) {
        C06041 c06041;
        Object obj;
        StoreProduct storeProduct;
        Purchase purchase;
        MutableStateFlow mutableStateFlow;
        ReceiptManager receiptManager;
        if (continuation instanceof C06041) {
            c06041 = (C06041) continuation;
            if ((c06041.label & Integer.MIN_VALUE) != 0) {
                c06041.label -= Integer.MIN_VALUE;
            } else {
                c06041 = new C06041(continuation);
            }
        } else {
            c06041 = new C06041(continuation);
        }
        Object obj2 = c06041.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c06041.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj2);
            Iterator<T> it = list.iterator();
            if (it.hasNext()) {
                Object next = it.next();
                if (it.hasNext()) {
                    long purchaseTime = ((Purchase) next).getPurchaseTime();
                    do {
                        Object next2 = it.next();
                        long purchaseTime2 = ((Purchase) next2).getPurchaseTime();
                        if (purchaseTime < purchaseTime2) {
                            next = next2;
                            purchaseTime = purchaseTime2;
                        }
                    } while (it.hasNext());
                }
                obj = next;
            } else {
                obj = null;
            }
            Purchase purchase2 = (Purchase) obj;
            if (purchase2 == null) {
                return Unit.INSTANCE;
            }
            List<String> products = purchase2.getProducts();
            Intrinsics.checkNotNullExpressionValue(products, "getProducts(...)");
            storeProduct = map.get(CollectionsKt.firstOrNull((List) products));
            if (storeProduct == null) {
                return Unit.INSTANCE;
            }
            this.latestSubscriptionWillAutoRenew = Boxing.boxBoolean(this.subscriptionStatusProvider.getWillAutoRenew(purchase2));
            MutableStateFlow<LatestSubscriptionState> mutableStateFlow2 = this.latestSubscriptionState;
            SubscriptionStatusProvider subscriptionStatusProvider = this.subscriptionStatusProvider;
            c06041.L$0 = this;
            c06041.L$1 = purchase2;
            c06041.L$2 = storeProduct;
            c06041.L$3 = mutableStateFlow2;
            c06041.label = 1;
            Object subscriptionState = subscriptionStatusProvider.getSubscriptionState(purchase2, storeProduct, c06041);
            if (subscriptionState == coroutine_suspended) {
                return coroutine_suspended;
            }
            purchase = purchase2;
            mutableStateFlow = mutableStateFlow2;
            obj2 = subscriptionState;
            receiptManager = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutableStateFlow = (MutableStateFlow) c06041.L$3;
            storeProduct = (StoreProduct) c06041.L$2;
            purchase = (Purchase) c06041.L$1;
            receiptManager = (ReceiptManager) c06041.L$0;
            ResultKt.throwOnFailure(obj2);
        }
        mutableStateFlow.setValue(obj2);
        receiptManager.latestSubscriptionPeriodType = receiptManager.subscriptionStatusProvider.getOfferType(purchase, storeProduct);
        return Unit.INSTANCE;
    }

    public final void refreshReceipt() {
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.receipts, "Refreshing receipts", null, null, 24, null);
        BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C06031(null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.abstractions.product.receipt.ReceiptManager$refreshReceipt$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ReceiptManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.abstractions.product.receipt.ReceiptManager$refreshReceipt$1", f = "ReceiptManager.kt", i = {}, l = {264}, m = "invokeSuspend", n = {}, s = {})
    static final class C06031 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        C06031(Continuation<? super C06031> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ReceiptManager.this.new C06031(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06031) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MutableStateFlow mutableStateFlow;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                MutableStateFlow mutableStateFlow2 = ReceiptManager.this.latestSubscriptionState;
                this.L$0 = mutableStateFlow2;
                this.label = 1;
                Object objLastSubscriptionProperties = ReceiptManager.this.lastSubscriptionProperties(this);
                if (objLastSubscriptionProperties == coroutine_suspended) {
                    return coroutine_suspended;
                }
                mutableStateFlow = mutableStateFlow2;
                obj = objLastSubscriptionProperties;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutableStateFlow = (MutableStateFlow) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            mutableStateFlow.setValue(obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:50:0x00dd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object lastSubscriptionProperties(Continuation<? super LatestSubscriptionState> continuation) {
        AnonymousClass1 anonymousClass1;
        ReceiptManager receiptManager;
        Object next;
        Purchase purchase;
        ReceiptManager receiptManager2;
        StoreProduct storeProduct;
        Object subscriptionState;
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
        Object objQueryAllPurchases = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objQueryAllPurchases);
            Billing billing = this.billing;
            anonymousClass1.L$0 = this;
            anonymousClass1.label = 1;
            objQueryAllPurchases = billing.queryAllPurchases(anonymousClass1);
            if (objQueryAllPurchases != coroutine_suspended) {
                receiptManager = this;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            receiptManager = (ReceiptManager) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objQueryAllPurchases);
        } else {
            if (i != 2) {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objQueryAllPurchases);
                return objQueryAllPurchases;
            }
            purchase = (Purchase) anonymousClass1.L$1;
            receiptManager2 = (ReceiptManager) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objQueryAllPurchases);
        }
        storeProduct = (StoreProduct) CollectionsKt.firstOrNull((Iterable) objQueryAllPurchases);
        if (storeProduct == null) {
            return LatestSubscriptionState.UNKNOWN;
        }
        SubscriptionStatusProvider subscriptionStatusProvider = receiptManager2.subscriptionStatusProvider;
        anonymousClass1.L$0 = null;
        anonymousClass1.L$1 = null;
        anonymousClass1.label = 3;
        subscriptionState = subscriptionStatusProvider.getSubscriptionState(purchase, storeProduct, anonymousClass1);
        if (subscriptionState != coroutine_suspended) {
            return coroutine_suspended;
        }
        return subscriptionState;
        Iterator it = ((Iterable) objQueryAllPurchases).iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                long purchaseTime = ((Purchase) next).getPurchaseTime();
                do {
                    Object next2 = it.next();
                    long purchaseTime2 = ((Purchase) next2).getPurchaseTime();
                    if (purchaseTime < purchaseTime2) {
                        next = next2;
                        purchaseTime = purchaseTime2;
                    }
                } while (it.hasNext());
            }
        } else {
            next = null;
        }
        Purchase purchase2 = (Purchase) next;
        if (purchase2 == null) {
            return LatestSubscriptionState.UNKNOWN;
        }
        Billing billing2 = receiptManager.billing;
        List<String> products = purchase2.getProducts();
        Intrinsics.checkNotNullExpressionValue(products, "getProducts(...)");
        Set<String> set = CollectionsKt.toSet(products);
        anonymousClass1.L$0 = receiptManager;
        anonymousClass1.L$1 = purchase2;
        anonymousClass1.label = 2;
        Object objAwaitGetProducts = billing2.awaitGetProducts(set, anonymousClass1);
        if (objAwaitGetProducts != coroutine_suspended) {
            ReceiptManager receiptManager3 = receiptManager;
            purchase = purchase2;
            objQueryAllPurchases = objAwaitGetProducts;
            receiptManager2 = receiptManager3;
            storeProduct = (StoreProduct) CollectionsKt.firstOrNull((Iterable) objQueryAllPurchases);
            if (storeProduct == null) {
                return LatestSubscriptionState.UNKNOWN;
            }
            SubscriptionStatusProvider subscriptionStatusProvider2 = receiptManager2.subscriptionStatusProvider;
            anonymousClass1.L$0 = null;
            anonymousClass1.L$1 = null;
            anonymousClass1.label = 3;
            subscriptionState = subscriptionStatusProvider2.getSubscriptionState(purchase, storeProduct, anonymousClass1);
            if (subscriptionState != coroutine_suspended) {
                return subscriptionState;
            }
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0028 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x002a A[RETURN] */
    public final boolean hasPurchasedProduct(String productId) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        for (Object obj : this._purchases) {
            if (Intrinsics.areEqual(((InAppPurchase) obj).getProductIdentifier(), productId)) {
                if (obj != null) {
                    return true;
                }
                return false;
            }
        }
        obj = null;
        if (obj != null) {
            return true;
        }
        return false;
    }

    public final Object isEligibleForIntroOffer(StoreProduct storeProduct, Continuation<? super Boolean> continuation) {
        Set<InAppPurchase> set = this._purchases;
        boolean z = false;
        if (!(set instanceof Collection) || !set.isEmpty()) {
            Iterator<T> it = set.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((InAppPurchase) it.next()).getProductIdentifier(), storeProduct.getProductIdentifier())) {
                    z = true;
                    break;
                }
            }
        }
        return Boxing.boxBoolean(!z);
    }

    public final Map<String, Object> experimentalProperties() {
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        String strDeterminePeriodType = determinePeriodType();
        if (strDeterminePeriodType != null) {
            mapCreateMapBuilder.put("latestSubscriptionPeriodType", strDeterminePeriodType);
        }
        Boolean bool = this.latestSubscriptionWillAutoRenew;
        if (bool != null) {
            mapCreateMapBuilder.put("latestSubscriptionWillAutoRenew", Boolean.valueOf(bool.booleanValue()));
        }
        mapCreateMapBuilder.put("latestSubscriptionState", this.latestSubscriptionState.getValue().name());
        return MapsKt.build(mapCreateMapBuilder);
    }

    private final String determinePeriodType() {
        LatestPeriodType latestPeriodType = this.latestSubscriptionPeriodType;
        switch (latestPeriodType == null ? -1 : WhenMappings.$EnumSwitchMapping$0[latestPeriodType.ordinal()]) {
            case -1:
                return null;
            case 0:
            default:
                throw new NoWhenBranchMatchedException();
            case 1:
                return "trial";
            case 2:
                return "code";
            case 3:
                return "normal";
            case 4:
                return "intro";
            case 5:
                return "winback";
            case 6:
                return "revoked";
        }
    }
}
