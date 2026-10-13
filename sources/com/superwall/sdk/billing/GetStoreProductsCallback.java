package com.superwall.sdk.billing;

import com.google.firebase.messaging.Constants;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: compiled from: GetStoreProductsCallback.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H'J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/billing/GetStoreProductsCallback;", "", "onReceived", "", "storeProducts", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "onError", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "Lcom/superwall/sdk/billing/BillingError;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface GetStoreProductsCallback {
    void onError(BillingError error);

    void onReceived(Set<StoreProduct> storeProducts);
}
