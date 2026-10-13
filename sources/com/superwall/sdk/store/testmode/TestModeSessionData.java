package com.superwall.sdk.store.testmode;

import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.store.testmode.models.SuperwallProduct;
import com.superwall.sdk.store.testmode.ui.EntitlementSelection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TestModeState.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR&\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R \u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\b\"\u0004\b\u001c\u0010\nR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lcom/superwall/sdk/store/testmode/TestModeSessionData;", "", "<init>", "()V", "products", "", "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;", "getProducts", "()Ljava/util/List;", "setProducts", "(Ljava/util/List;)V", "testProductsByFullId", "", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "getTestProductsByFullId", "()Ljava/util/Map;", "setTestProductsByFullId", "(Ljava/util/Map;)V", "entitlementIds", "", "getEntitlementIds", "()Ljava/util/Set;", "setEntitlementIds", "(Ljava/util/Set;)V", "entitlementSelections", "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;", "getEntitlementSelections", "setEntitlementSelections", "freeTrialOverride", "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;", "getFreeTrialOverride", "()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;", "setFreeTrialOverride", "(Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V", "overriddenSubscriptionStatus", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "getOverriddenSubscriptionStatus", "()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "setOverriddenSubscriptionStatus", "(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TestModeSessionData {
    private SubscriptionStatus overriddenSubscriptionStatus;
    private List<SuperwallProduct> products = CollectionsKt.emptyList();
    private Map<String, StoreProduct> testProductsByFullId = MapsKt.emptyMap();
    private Set<String> entitlementIds = new LinkedHashSet();
    private List<EntitlementSelection> entitlementSelections = CollectionsKt.emptyList();
    private FreeTrialOverride freeTrialOverride = FreeTrialOverride.UseDefault;

    public final List<SuperwallProduct> getProducts() {
        return this.products;
    }

    public final void setProducts(List<SuperwallProduct> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.products = list;
    }

    public final Map<String, StoreProduct> getTestProductsByFullId() {
        return this.testProductsByFullId;
    }

    public final void setTestProductsByFullId(Map<String, StoreProduct> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.testProductsByFullId = map;
    }

    public final Set<String> getEntitlementIds() {
        return this.entitlementIds;
    }

    public final void setEntitlementIds(Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.entitlementIds = set;
    }

    public final List<EntitlementSelection> getEntitlementSelections() {
        return this.entitlementSelections;
    }

    public final void setEntitlementSelections(List<EntitlementSelection> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.entitlementSelections = list;
    }

    public final FreeTrialOverride getFreeTrialOverride() {
        return this.freeTrialOverride;
    }

    public final void setFreeTrialOverride(FreeTrialOverride freeTrialOverride) {
        Intrinsics.checkNotNullParameter(freeTrialOverride, "<set-?>");
        this.freeTrialOverride = freeTrialOverride;
    }

    public final SubscriptionStatus getOverriddenSubscriptionStatus() {
        return this.overriddenSubscriptionStatus;
    }

    public final void setOverriddenSubscriptionStatus(SubscriptionStatus subscriptionStatus) {
        this.overriddenSubscriptionStatus = subscriptionStatus;
    }
}
