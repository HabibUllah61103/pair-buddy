package com.superwall.sdk.store;

import com.google.firebase.messaging.Constants;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;

/* JADX INFO: compiled from: ProductState.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/store/ProductState;", "", "<init>", "()V", "Loading", "Loaded", "Error", "Lcom/superwall/sdk/store/ProductState$Error;", "Lcom/superwall/sdk/store/ProductState$Loaded;", "Lcom/superwall/sdk/store/ProductState$Loading;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class ProductState {
    public /* synthetic */ ProductState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private ProductState() {
    }

    /* JADX INFO: compiled from: ProductState.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/store/ProductState$Loading;", "Lcom/superwall/sdk/store/ProductState;", "deferred", "Lkotlinx/coroutines/CompletableDeferred;", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "<init>", "(Lkotlinx/coroutines/CompletableDeferred;)V", "getDeferred", "()Lkotlinx/coroutines/CompletableDeferred;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Loading extends ProductState {
        private final CompletableDeferred<StoreProduct> deferred;

        /* JADX WARN: Multi-variable type inference failed */
        public Loading() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Loading(CompletableDeferred completableDeferred, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CompletableDeferredKt.CompletableDeferred$default(null, 1, null) : completableDeferred);
        }

        public final CompletableDeferred<StoreProduct> getDeferred() {
            return this.deferred;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Loading(CompletableDeferred<StoreProduct> deferred) {
            super(null);
            Intrinsics.checkNotNullParameter(deferred, "deferred");
            this.deferred = deferred;
        }
    }

    /* JADX INFO: compiled from: ProductState.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/store/ProductState$Loaded;", "Lcom/superwall/sdk/store/ProductState;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "<init>", "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Loaded extends ProductState {
        private final StoreProduct product;

        public static /* synthetic */ Loaded copy$default(Loaded loaded, StoreProduct storeProduct, int i, Object obj) {
            if ((i & 1) != 0) {
                storeProduct = loaded.product;
            }
            return loaded.copy(storeProduct);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final StoreProduct getProduct() {
            return this.product;
        }

        public final Loaded copy(StoreProduct product) {
            Intrinsics.checkNotNullParameter(product, "product");
            return new Loaded(product);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Loaded) && Intrinsics.areEqual(this.product, ((Loaded) other).product);
        }

        public int hashCode() {
            return this.product.hashCode();
        }

        public String toString() {
            return "Loaded(product=" + this.product + ")";
        }

        public final StoreProduct getProduct() {
            return this.product;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Loaded(StoreProduct product) {
            super(null);
            Intrinsics.checkNotNullParameter(product, "product");
            this.product = product;
        }
    }

    /* JADX INFO: compiled from: ProductState.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/store/ProductState$Error;", "Lcom/superwall/sdk/store/ProductState;", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "", "<init>", "(Ljava/lang/Throwable;)V", "getError", "()Ljava/lang/Throwable;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Error extends ProductState {
        private final Throwable error;

        public static /* synthetic */ Error copy$default(Error error, Throwable th, int i, Object obj) {
            if ((i & 1) != 0) {
                th = error.error;
            }
            return error.copy(th);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Throwable getError() {
            return this.error;
        }

        public final Error copy(Throwable error) {
            Intrinsics.checkNotNullParameter(error, "error");
            return new Error(error);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Error) && Intrinsics.areEqual(this.error, ((Error) other).error);
        }

        public int hashCode() {
            return this.error.hashCode();
        }

        public String toString() {
            return "Error(error=" + this.error + ")";
        }

        public final Throwable getError() {
            return this.error;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(Throwable error) {
            super(null);
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
        }
    }
}
