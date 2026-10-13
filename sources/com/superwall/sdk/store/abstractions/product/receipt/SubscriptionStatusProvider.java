package com.superwall.sdk.store.abstractions.product.receipt;

import com.android.billingclient.api.Purchase;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: SubscriptionStatusProvider.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H¦@¢\u0006\u0002\u0010\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001c\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J \u0010\r\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H¦@¢\u0006\u0002\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;", "", "getSubscriptionState", "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;", "purchase", "Lcom/android/billingclient/api/Purchase;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "(Lcom/android/billingclient/api/Purchase;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getWillAutoRenew", "", "getOfferType", "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;", "isActive", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface SubscriptionStatusProvider {
    LatestPeriodType getOfferType(Purchase purchase, StoreProduct product);

    Object getSubscriptionState(Purchase purchase, StoreProduct storeProduct, Continuation<? super LatestSubscriptionState> continuation);

    boolean getWillAutoRenew(Purchase purchase);

    Object isActive(Purchase purchase, StoreProduct storeProduct, Continuation<? super Boolean> continuation);
}
