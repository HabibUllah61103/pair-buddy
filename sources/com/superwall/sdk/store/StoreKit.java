package com.superwall.sdk.store;

import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.product.ProductVariable;
import com.superwall.sdk.paywall.request.PaywallRequest;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: StoreKit.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH¦@¢\u0006\u0002\u0010\tJ:\u0010\n\u001a\u00020\u000b2\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\r2\u0006\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH¦@¢\u0006\u0002\u0010\u0010J@\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00032\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\rH¦@¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0015H&J(\u0010\u0016\u001a\u00020\u00152\u0018\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00180\rH¦@¢\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u000fH&J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001f\u001a\u00020\u000eH&J\u0010\u0010 \u001a\u00020!2\u0006\u0010\u001f\u001a\u00020\u000eH&J\u001e\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u000e0#2\u0006\u0010$\u001a\u00020\u000eH¦@¢\u0006\u0004\b%\u0010&¨\u0006'"}, d2 = {"Lcom/superwall/sdk/store/StoreKit;", "", "getProductVariables", "", "Lcom/superwall/sdk/models/product/ProductVariable;", "paywall", "Lcom/superwall/sdk/models/paywall/Paywall;", "request", "Lcom/superwall/sdk/paywall/request/PaywallRequest;", "(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProducts", "Lcom/superwall/sdk/store/GetProductsResponse;", "substituteProducts", "", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "(Ljava/util/Map;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProductsWithoutPaywall", "productIds", "(Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refreshReceipt", "", "loadPurchasedProducts", "serverEntitlementsByProductId", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cacheProduct", "fullProductIdentifier", "storeProduct", "getProductFromCache", "productId", "hasCached", "", "consume", "Lkotlin/Result;", "purchaseToken", "consume-gIAlu-s", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface StoreKit {
    void cacheProduct(String fullProductIdentifier, StoreProduct storeProduct);

    /* JADX INFO: renamed from: consume-gIAlu-s, reason: not valid java name */
    Object mo10770consumegIAlus(String str, Continuation<? super Result<String>> continuation);

    StoreProduct getProductFromCache(String productId);

    Object getProductVariables(Paywall paywall, PaywallRequest paywallRequest, Continuation<? super List<ProductVariable>> continuation);

    Object getProducts(Map<String, StoreProduct> map, Paywall paywall, PaywallRequest paywallRequest, Continuation<? super GetProductsResponse> continuation);

    Object getProductsWithoutPaywall(List<String> list, Map<String, StoreProduct> map, Continuation<? super Map<String, StoreProduct>> continuation);

    boolean hasCached(String productId);

    Object loadPurchasedProducts(Map<String, ? extends Set<Entitlement>> map, Continuation<? super Unit> continuation);

    void refreshReceipt();

    /* JADX INFO: compiled from: StoreKit.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Object getProducts$default(StoreKit storeKit, Map map, Paywall paywall, PaywallRequest paywallRequest, Continuation continuation, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getProducts");
            }
            if ((i & 1) != 0) {
                map = null;
            }
            if ((i & 4) != 0) {
                paywallRequest = null;
            }
            return storeKit.getProducts(map, paywall, paywallRequest, continuation);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Object getProductsWithoutPaywall$default(StoreKit storeKit, List list, Map map, Continuation continuation, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getProductsWithoutPaywall");
            }
            if ((i & 2) != 0) {
                map = null;
            }
            return storeKit.getProductsWithoutPaywall(list, map, continuation);
        }
    }
}
