package com.superwall.sdk.store;

import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.product.ProductItem;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StoreKitManagerInterface.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\nHÆ\u0003J;\u0010\u0016\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0004HÖ\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/superwall/sdk/store/GetProductsResponse;", "", "productsByFullId", "", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "productItems", "", "Lcom/superwall/sdk/models/product/ProductItem;", "paywall", "Lcom/superwall/sdk/models/paywall/Paywall;", "<init>", "(Ljava/util/Map;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall;)V", "getProductsByFullId", "()Ljava/util/Map;", "getProductItems", "()Ljava/util/List;", "getPaywall", "()Lcom/superwall/sdk/models/paywall/Paywall;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class GetProductsResponse {
    private final Paywall paywall;
    private final List<ProductItem> productItems;
    private final Map<String, StoreProduct> productsByFullId;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GetProductsResponse copy$default(GetProductsResponse getProductsResponse, Map map, List list, Paywall paywall, int i, Object obj) {
        if ((i & 1) != 0) {
            map = getProductsResponse.productsByFullId;
        }
        if ((i & 2) != 0) {
            list = getProductsResponse.productItems;
        }
        if ((i & 4) != 0) {
            paywall = getProductsResponse.paywall;
        }
        return getProductsResponse.copy(map, list, paywall);
    }

    public final Map<String, StoreProduct> component1() {
        return this.productsByFullId;
    }

    public final List<ProductItem> component2() {
        return this.productItems;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Paywall getPaywall() {
        return this.paywall;
    }

    public final GetProductsResponse copy(Map<String, StoreProduct> productsByFullId, List<ProductItem> productItems, Paywall paywall) {
        Intrinsics.checkNotNullParameter(productsByFullId, "productsByFullId");
        Intrinsics.checkNotNullParameter(productItems, "productItems");
        return new GetProductsResponse(productsByFullId, productItems, paywall);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GetProductsResponse)) {
            return false;
        }
        GetProductsResponse getProductsResponse = (GetProductsResponse) other;
        return Intrinsics.areEqual(this.productsByFullId, getProductsResponse.productsByFullId) && Intrinsics.areEqual(this.productItems, getProductsResponse.productItems) && Intrinsics.areEqual(this.paywall, getProductsResponse.paywall);
    }

    public int hashCode() {
        int iHashCode = ((this.productsByFullId.hashCode() * 31) + this.productItems.hashCode()) * 31;
        Paywall paywall = this.paywall;
        return iHashCode + (paywall == null ? 0 : paywall.hashCode());
    }

    public String toString() {
        return "GetProductsResponse(productsByFullId=" + this.productsByFullId + ", productItems=" + this.productItems + ", paywall=" + this.paywall + ")";
    }

    public GetProductsResponse(Map<String, StoreProduct> productsByFullId, List<ProductItem> productItems, Paywall paywall) {
        Intrinsics.checkNotNullParameter(productsByFullId, "productsByFullId");
        Intrinsics.checkNotNullParameter(productItems, "productItems");
        this.productsByFullId = productsByFullId;
        this.productItems = productItems;
        this.paywall = paywall;
    }

    public /* synthetic */ GetProductsResponse(Map map, List list, Paywall paywall, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(map, list, (i & 4) != 0 ? null : paywall);
    }

    public final Map<String, StoreProduct> getProductsByFullId() {
        return this.productsByFullId;
    }

    public final List<ProductItem> getProductItems() {
        return this.productItems;
    }

    public final Paywall getPaywall() {
        return this.paywall;
    }
}
