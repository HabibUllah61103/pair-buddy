package com.superwall.sdk.store;

import com.superwall.sdk.delegate.RestorationResult;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.paywall.PaywallProducts;
import com.superwall.sdk.models.product.ProductItem;
import com.superwall.sdk.models.product.ProductVariable;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import expo.modules.notifications.service.NotificationsService;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: StoreKitManagerInterface.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\fH¦@¢\u0006\u0002\u0010\rJD\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H¦@¢\u0006\u0002\u0010\u0016J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH¦@¢\u0006\u0002\u0010\u001bJ\u001e\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u001aH¦@¢\u0006\u0002\u0010\u001fJ\u000e\u0010 \u001a\u00020\u0018H¦@¢\u0006\u0002\u0010!J(\u0010\"\u001a\u00020\u00182\u0018\u0010#\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0$0\u0003H¦@¢\u0006\u0002\u0010&J\u0016\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0005H¦@¢\u0006\u0002\u0010*J.\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00050$2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00040$2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004H¦@¢\u0006\u0002\u0010-R\u001e\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006."}, d2 = {"Lcom/superwall/sdk/store/StoreKitManagerInterface;", "", "productsById", "", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "getProductsById", "()Ljava/util/Map;", "getProductVariables", "", "Lcom/superwall/sdk/models/product/ProductVariable;", "paywall", "Lcom/superwall/sdk/models/paywall/Paywall;", "(Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProducts", "Lcom/superwall/sdk/store/GetProductsResponse;", "responseProductIds", "paywallName", "responseProducts", "Lcom/superwall/sdk/models/product/ProductItem;", "substituteProducts", "Lcom/superwall/sdk/models/paywall/PaywallProducts;", "(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallProducts;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tryToRestore", "", "paywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processRestoration", "restorationResult", "Lcom/superwall/sdk/delegate/RestorationResult;", "(Lcom/superwall/sdk/delegate/RestorationResult;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refreshReceipt", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadPurchasedProducts", "serverEntitlementsByProductId", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isFreeTrialAvailable", "", "product", "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "products", NotificationsService.IDENTIFIERS_KEY, "(Ljava/util/Set;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface StoreKitManagerInterface {
    Object getProductVariables(Paywall paywall, Continuation<? super List<ProductVariable>> continuation);

    Object getProducts(List<String> list, String str, List<ProductItem> list2, PaywallProducts paywallProducts, Continuation<? super GetProductsResponse> continuation);

    Map<String, StoreProduct> getProductsById();

    Object isFreeTrialAvailable(StoreProduct storeProduct, Continuation<? super Boolean> continuation);

    Object loadPurchasedProducts(Map<String, ? extends Set<Entitlement>> map, Continuation<? super Unit> continuation);

    Object processRestoration(RestorationResult restorationResult, PaywallView paywallView, Continuation<? super Unit> continuation);

    Object products(Set<String> set, String str, Continuation<? super Set<StoreProduct>> continuation);

    Object refreshReceipt(Continuation<? super Unit> continuation);

    Object tryToRestore(PaywallView paywallView, Continuation<? super Unit> continuation);

    /* JADX INFO: compiled from: StoreKitManagerInterface.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Object getProducts$default(StoreKitManagerInterface storeKitManagerInterface, List list, String str, List list2, PaywallProducts paywallProducts, Continuation continuation, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getProducts");
            }
            if ((i & 2) != 0) {
                str = null;
            }
            if ((i & 4) != 0) {
                list2 = CollectionsKt.emptyList();
            }
            if ((i & 8) != 0) {
                paywallProducts = null;
            }
            return storeKitManagerInterface.getProducts(list, str, list2, paywallProducts, continuation);
        }

        public static /* synthetic */ Object products$default(StoreKitManagerInterface storeKitManagerInterface, Set set, String str, Continuation continuation, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: products");
            }
            if ((i & 2) != 0) {
                str = null;
            }
            return storeKitManagerInterface.products(set, str, continuation);
        }
    }
}
