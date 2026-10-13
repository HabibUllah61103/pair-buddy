package com.superwall.sdk.store.coordinator;

import com.superwall.sdk.delegate.PurchaseResult;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: CoordinatorProtocols.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H¦@¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/store/coordinator/ProductPurchaser;", "", "purchase", "Lcom/superwall/sdk/delegate/PurchaseResult;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface ProductPurchaser {
    Object purchase(StoreProduct storeProduct, Continuation<? super PurchaseResult> continuation);
}
