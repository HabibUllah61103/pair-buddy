package com.superwall.sdk.store.coordinator;

import com.superwall.sdk.store.abstractions.product.StoreProduct;
import expo.modules.notifications.service.NotificationsService;
import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: CoordinatorProtocols.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003H¦@¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/store/coordinator/ProductsFetcher;", "", "products", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", NotificationsService.IDENTIFIERS_KEY, "", "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface ProductsFetcher {
    Object products(Set<String> set, Continuation<? super Set<StoreProduct>> continuation);
}
