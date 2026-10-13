package com.superwall.sdk.billing;

import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryPurchaseHistoryParams;
import com.android.billingclient.api.QueryPurchasesParams;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BillingClientParamBuilders.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000\u001a\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0002H\u0000\u001a\u001a\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0000¨\u0006\t"}, d2 = {"buildQueryPurchaseHistoryParams", "Lcom/android/billingclient/api/QueryPurchaseHistoryParams;", "", "buildQueryPurchasesParams", "Lcom/android/billingclient/api/QueryPurchasesParams;", "buildQueryProductDetailsParams", "Lcom/android/billingclient/api/QueryProductDetailsParams;", "productIds", "", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class BillingClientParamBuildersKt {
    public static final QueryPurchaseHistoryParams buildQueryPurchaseHistoryParams(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (Intrinsics.areEqual(str, "inapp") || Intrinsics.areEqual(str, "subs")) {
            return QueryPurchaseHistoryParams.newBuilder().setProductType(str).build();
        }
        return null;
    }

    public static final QueryPurchasesParams buildQueryPurchasesParams(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (Intrinsics.areEqual(str, "inapp") || Intrinsics.areEqual(str, "subs")) {
            return QueryPurchasesParams.newBuilder().setProductType(str).build();
        }
        return null;
    }

    public static final QueryProductDetailsParams buildQueryProductDetailsParams(String str, Set<String> productIds) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(productIds, "productIds");
        Set<String> set = productIds;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductId((String) it.next()).setProductType(str).build());
        }
        QueryProductDetailsParams queryProductDetailsParamsBuild = QueryProductDetailsParams.newBuilder().setProductList(arrayList).build();
        Intrinsics.checkNotNullExpressionValue(queryProductDetailsParamsBuild, "build(...)");
        return queryProductDetailsParamsBuild;
    }
}
