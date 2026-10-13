package com.superwall.sdk.models.product;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;

/* JADX INFO: compiled from: ProductItem.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0087\b\u0018\u0000 $2\u00020\u0001:\u0001$B)\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\bHÆ\u0003J1\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\f\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0011¨\u0006%"}, d2 = {"Lcom/superwall/sdk/models/product/PlayStoreProduct;", "", "store", "Lcom/superwall/sdk/models/product/Store;", "productIdentifier", "", "basePlanIdentifier", "offer", "Lcom/superwall/sdk/models/product/Offer;", "<init>", "(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;)V", "getStore$annotations", "()V", "getStore", "()Lcom/superwall/sdk/models/product/Store;", "getProductIdentifier$annotations", "getProductIdentifier", "()Ljava/lang/String;", "getBasePlanIdentifier$annotations", "getBasePlanIdentifier", "getOffer$annotations", "getOffer", "()Lcom/superwall/sdk/models/product/Offer;", "fullIdentifier", "getFullIdentifier", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable(with = PlayStoreProductSerializer.class)
public final /* data */ class PlayStoreProduct {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String basePlanIdentifier;
    private final Offer offer;
    private final String productIdentifier;
    private final Store store;

    public static /* synthetic */ PlayStoreProduct copy$default(PlayStoreProduct playStoreProduct, Store store, String str, String str2, Offer offer, int i, Object obj) {
        if ((i & 1) != 0) {
            store = playStoreProduct.store;
        }
        if ((i & 2) != 0) {
            str = playStoreProduct.productIdentifier;
        }
        if ((i & 4) != 0) {
            str2 = playStoreProduct.basePlanIdentifier;
        }
        if ((i & 8) != 0) {
            offer = playStoreProduct.offer;
        }
        return playStoreProduct.copy(store, str, str2, offer);
    }

    @SerialName("base_plan_identifier")
    public static /* synthetic */ void getBasePlanIdentifier$annotations() {
    }

    @SerialName("offer")
    public static /* synthetic */ void getOffer$annotations() {
    }

    @SerialName("product_identifier")
    public static /* synthetic */ void getProductIdentifier$annotations() {
    }

    @SerialName("store")
    public static /* synthetic */ void getStore$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Store getStore() {
        return this.store;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getProductIdentifier() {
        return this.productIdentifier;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getBasePlanIdentifier() {
        return this.basePlanIdentifier;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Offer getOffer() {
        return this.offer;
    }

    public final PlayStoreProduct copy(Store store, String productIdentifier, String basePlanIdentifier, Offer offer) {
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
        Intrinsics.checkNotNullParameter(basePlanIdentifier, "basePlanIdentifier");
        Intrinsics.checkNotNullParameter(offer, "offer");
        return new PlayStoreProduct(store, productIdentifier, basePlanIdentifier, offer);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayStoreProduct)) {
            return false;
        }
        PlayStoreProduct playStoreProduct = (PlayStoreProduct) other;
        return this.store == playStoreProduct.store && Intrinsics.areEqual(this.productIdentifier, playStoreProduct.productIdentifier) && Intrinsics.areEqual(this.basePlanIdentifier, playStoreProduct.basePlanIdentifier) && Intrinsics.areEqual(this.offer, playStoreProduct.offer);
    }

    public int hashCode() {
        return (((((this.store.hashCode() * 31) + this.productIdentifier.hashCode()) * 31) + this.basePlanIdentifier.hashCode()) * 31) + this.offer.hashCode();
    }

    public String toString() {
        return "PlayStoreProduct(store=" + this.store + ", productIdentifier=" + this.productIdentifier + ", basePlanIdentifier=" + this.basePlanIdentifier + ", offer=" + this.offer + ")";
    }

    /* JADX INFO: compiled from: ProductItem.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/PlayStoreProduct$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/PlayStoreProduct;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<PlayStoreProduct> serializer() {
            return PlayStoreProductSerializer.INSTANCE;
        }
    }

    public PlayStoreProduct(Store store, String productIdentifier, String basePlanIdentifier, Offer offer) {
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
        Intrinsics.checkNotNullParameter(basePlanIdentifier, "basePlanIdentifier");
        Intrinsics.checkNotNullParameter(offer, "offer");
        this.store = store;
        this.productIdentifier = productIdentifier;
        this.basePlanIdentifier = basePlanIdentifier;
        this.offer = offer;
    }

    public final Store getStore() {
        return this.store;
    }

    public /* synthetic */ PlayStoreProduct(Store store, String str, String str2, Offer offer, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Store.PLAY_STORE : store, str, str2, offer);
    }

    public final String getProductIdentifier() {
        return this.productIdentifier;
    }

    public final String getBasePlanIdentifier() {
        return this.basePlanIdentifier;
    }

    public final Offer getOffer() {
        return this.offer;
    }

    public final String getFullIdentifier() {
        if (this.basePlanIdentifier.length() == 0) {
            return this.productIdentifier;
        }
        Offer offer = this.offer;
        if (offer instanceof Offer.Automatic) {
            return this.productIdentifier + ":" + this.basePlanIdentifier + ":sw-auto";
        }
        if (offer instanceof Offer.NoOffer) {
            return this.productIdentifier + ":" + this.basePlanIdentifier + ":sw-none";
        }
        if (!(offer instanceof Offer.Specified)) {
            return this.productIdentifier + ":" + this.basePlanIdentifier;
        }
        return this.productIdentifier + ":" + this.basePlanIdentifier + ":" + ((Offer.Specified) offer).getOfferIdentifier();
    }
}
