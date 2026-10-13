package com.superwall.sdk.store;

import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.Purchase;
import com.google.firebase.messaging.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PurchasingObserverState.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/store/PurchasingObserverState;", "", "<init>", "()V", "PurchaseWillBegin", "PurchaseResult", "PurchaseError", "Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseError;", "Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;", "Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseWillBegin;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class PurchasingObserverState {
    public /* synthetic */ PurchasingObserverState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private PurchasingObserverState() {
    }

    /* JADX INFO: compiled from: PurchasingObserverState.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseWillBegin;", "Lcom/superwall/sdk/store/PurchasingObserverState;", "product", "Lcom/android/billingclient/api/ProductDetails;", "<init>", "(Lcom/android/billingclient/api/ProductDetails;)V", "getProduct", "()Lcom/android/billingclient/api/ProductDetails;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PurchaseWillBegin extends PurchasingObserverState {
        private final ProductDetails product;

        public final ProductDetails getProduct() {
            return this.product;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PurchaseWillBegin(ProductDetails product) {
            super(null);
            Intrinsics.checkNotNullParameter(product, "product");
            this.product = product;
        }
    }

    /* JADX INFO: compiled from: PurchasingObserverState.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;", "Lcom/superwall/sdk/store/PurchasingObserverState;", "result", "Lcom/android/billingclient/api/BillingResult;", "purchases", "", "Lcom/android/billingclient/api/Purchase;", "<init>", "(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V", "getResult", "()Lcom/android/billingclient/api/BillingResult;", "getPurchases", "()Ljava/util/List;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PurchaseResult extends PurchasingObserverState {
        private final List<Purchase> purchases;
        private final BillingResult result;

        public final BillingResult getResult() {
            return this.result;
        }

        public final List<Purchase> getPurchases() {
            return this.purchases;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public PurchaseResult(BillingResult result, List<? extends Purchase> list) {
            super(null);
            Intrinsics.checkNotNullParameter(result, "result");
            this.result = result;
            this.purchases = list;
        }
    }

    /* JADX INFO: compiled from: PurchasingObserverState.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseError;", "Lcom/superwall/sdk/store/PurchasingObserverState;", "product", "Lcom/android/billingclient/api/ProductDetails;", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "", "<init>", "(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/Throwable;)V", "getProduct", "()Lcom/android/billingclient/api/ProductDetails;", "getError", "()Ljava/lang/Throwable;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PurchaseError extends PurchasingObserverState {
        private final Throwable error;
        private final ProductDetails product;

        public final ProductDetails getProduct() {
            return this.product;
        }

        public final Throwable getError() {
            return this.error;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PurchaseError(ProductDetails product, Throwable error) {
            super(null);
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(error, "error");
            this.product = product;
            this.error = error;
        }
    }
}
