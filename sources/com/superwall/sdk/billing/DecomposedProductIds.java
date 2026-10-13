package com.superwall.sdk.billing;

import com.google.firebase.messaging.Constants;
import com.superwall.sdk.store.abstractions.product.BasePlanType;
import com.superwall.sdk.store.abstractions.product.OfferType;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: DecomposedProductIds.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J1\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00038F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\f¨\u0006 "}, d2 = {"Lcom/superwall/sdk/billing/DecomposedProductIds;", "", "subscriptionId", "", "basePlanType", "Lcom/superwall/sdk/store/abstractions/product/BasePlanType;", "offerType", "Lcom/superwall/sdk/store/abstractions/product/OfferType;", "fullId", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;Ljava/lang/String;)V", "getSubscriptionId", "()Ljava/lang/String;", "getBasePlanType", "()Lcom/superwall/sdk/store/abstractions/product/BasePlanType;", "getOfferType", "()Lcom/superwall/sdk/store/abstractions/product/OfferType;", "getFullId", "basePlanId", "getBasePlanId", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class DecomposedProductIds {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final BasePlanType basePlanType;
    private final String fullId;
    private final OfferType offerType;
    private final String subscriptionId;

    public static /* synthetic */ DecomposedProductIds copy$default(DecomposedProductIds decomposedProductIds, String str, BasePlanType basePlanType, OfferType offerType, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = decomposedProductIds.subscriptionId;
        }
        if ((i & 2) != 0) {
            basePlanType = decomposedProductIds.basePlanType;
        }
        if ((i & 4) != 0) {
            offerType = decomposedProductIds.offerType;
        }
        if ((i & 8) != 0) {
            str2 = decomposedProductIds.fullId;
        }
        return decomposedProductIds.copy(str, basePlanType, offerType, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubscriptionId() {
        return this.subscriptionId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final BasePlanType getBasePlanType() {
        return this.basePlanType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final OfferType getOfferType() {
        return this.offerType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getFullId() {
        return this.fullId;
    }

    public final DecomposedProductIds copy(String subscriptionId, BasePlanType basePlanType, OfferType offerType, String fullId) {
        Intrinsics.checkNotNullParameter(subscriptionId, "subscriptionId");
        Intrinsics.checkNotNullParameter(basePlanType, "basePlanType");
        Intrinsics.checkNotNullParameter(offerType, "offerType");
        Intrinsics.checkNotNullParameter(fullId, "fullId");
        return new DecomposedProductIds(subscriptionId, basePlanType, offerType, fullId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DecomposedProductIds)) {
            return false;
        }
        DecomposedProductIds decomposedProductIds = (DecomposedProductIds) other;
        return Intrinsics.areEqual(this.subscriptionId, decomposedProductIds.subscriptionId) && Intrinsics.areEqual(this.basePlanType, decomposedProductIds.basePlanType) && Intrinsics.areEqual(this.offerType, decomposedProductIds.offerType) && Intrinsics.areEqual(this.fullId, decomposedProductIds.fullId);
    }

    public int hashCode() {
        return (((((this.subscriptionId.hashCode() * 31) + this.basePlanType.hashCode()) * 31) + this.offerType.hashCode()) * 31) + this.fullId.hashCode();
    }

    public String toString() {
        return "DecomposedProductIds(subscriptionId=" + this.subscriptionId + ", basePlanType=" + this.basePlanType + ", offerType=" + this.offerType + ", fullId=" + this.fullId + ")";
    }

    public DecomposedProductIds(String subscriptionId, BasePlanType basePlanType, OfferType offerType, String fullId) {
        Intrinsics.checkNotNullParameter(subscriptionId, "subscriptionId");
        Intrinsics.checkNotNullParameter(basePlanType, "basePlanType");
        Intrinsics.checkNotNullParameter(offerType, "offerType");
        Intrinsics.checkNotNullParameter(fullId, "fullId");
        this.subscriptionId = subscriptionId;
        this.basePlanType = basePlanType;
        this.offerType = offerType;
        this.fullId = fullId;
    }

    public final String getSubscriptionId() {
        return this.subscriptionId;
    }

    public final BasePlanType getBasePlanType() {
        return this.basePlanType;
    }

    public final OfferType getOfferType() {
        return this.offerType;
    }

    public final String getFullId() {
        return this.fullId;
    }

    public final String getBasePlanId() {
        return this.basePlanType.getSpecificId();
    }

    /* JADX INFO: compiled from: DecomposedProductIds.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;", "", "<init>", "()V", Constants.MessagePayloadKeys.FROM, "Lcom/superwall/sdk/billing/DecomposedProductIds;", "productId", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DecomposedProductIds from(String productId) {
            Intrinsics.checkNotNullParameter(productId, "productId");
            List listSplit$default = StringsKt.split$default((CharSequence) productId, new String[]{":"}, false, 0, 6, (Object) null);
            String str = (String) CollectionsKt.getOrNull(listSplit$default, 0);
            if (str == null) {
                str = "";
            }
            return new DecomposedProductIds(str, BasePlanType.INSTANCE.from((String) CollectionsKt.getOrNull(listSplit$default, 1)), OfferType.INSTANCE.from((String) CollectionsKt.getOrNull(listSplit$default, 2)), productId);
        }
    }
}
