package com.superwall.sdk.models.product;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.superwall.sdk.models.entitlements.Entitlement;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: compiled from: CrossplatformProduct.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0002&'B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J7\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020$HÖ\u0001J\t\u0010%\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0012R\"\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\r\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\r\u001a\u0004\b\u0017\u0010\u000fR\u0011\u0010\u0018\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u000f¨\u0006("}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct;", "Lcom/superwall/sdk/models/product/TemplatingProduct;", "compositeId", "", "storeProduct", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;", "entitlements", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "name", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;Ljava/util/List;Ljava/lang/String;)V", "getCompositeId$annotations", "()V", "getCompositeId", "()Ljava/lang/String;", "getStoreProduct$annotations", "getStoreProduct", "()Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;", "getEntitlements$annotations", "getEntitlements", "()Ljava/util/List;", "getName$annotations", "getName", "fullProductId", "getFullProductId", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "StoreProduct", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable(with = CrossplatformProductSerializer.class)
public final /* data */ class CrossplatformProduct implements TemplatingProduct {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String compositeId;
    private final List<Entitlement> entitlements;
    private final String name;
    private final StoreProduct storeProduct;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CrossplatformProduct copy$default(CrossplatformProduct crossplatformProduct, String str, StoreProduct storeProduct, List list, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = crossplatformProduct.compositeId;
        }
        if ((i & 2) != 0) {
            storeProduct = crossplatformProduct.storeProduct;
        }
        if ((i & 4) != 0) {
            list = crossplatformProduct.entitlements;
        }
        if ((i & 8) != 0) {
            str2 = crossplatformProduct.name;
        }
        return crossplatformProduct.copy(str, storeProduct, list, str2);
    }

    @SerialName("sw_composite_product_id")
    public static /* synthetic */ void getCompositeId$annotations() {
    }

    @SerialName("entitlements")
    public static /* synthetic */ void getEntitlements$annotations() {
    }

    @SerialName("reference_name")
    public static /* synthetic */ void getName$annotations() {
    }

    @SerialName("store_product")
    public static /* synthetic */ void getStoreProduct$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCompositeId() {
        return this.compositeId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final StoreProduct getStoreProduct() {
        return this.storeProduct;
    }

    public final List<Entitlement> component3() {
        return this.entitlements;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final CrossplatformProduct copy(String compositeId, StoreProduct storeProduct, List<Entitlement> entitlements, String name) {
        Intrinsics.checkNotNullParameter(compositeId, "compositeId");
        Intrinsics.checkNotNullParameter(storeProduct, "storeProduct");
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        Intrinsics.checkNotNullParameter(name, "name");
        return new CrossplatformProduct(compositeId, storeProduct, entitlements, name);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CrossplatformProduct)) {
            return false;
        }
        CrossplatformProduct crossplatformProduct = (CrossplatformProduct) other;
        return Intrinsics.areEqual(this.compositeId, crossplatformProduct.compositeId) && Intrinsics.areEqual(this.storeProduct, crossplatformProduct.storeProduct) && Intrinsics.areEqual(this.entitlements, crossplatformProduct.entitlements) && Intrinsics.areEqual(this.name, crossplatformProduct.name);
    }

    public int hashCode() {
        return (((((this.compositeId.hashCode() * 31) + this.storeProduct.hashCode()) * 31) + this.entitlements.hashCode()) * 31) + this.name.hashCode();
    }

    public String toString() {
        return "CrossplatformProduct(compositeId=" + this.compositeId + ", storeProduct=" + this.storeProduct + ", entitlements=" + this.entitlements + ", name=" + this.name + ")";
    }

    public CrossplatformProduct(String compositeId, StoreProduct storeProduct, List<Entitlement> entitlements, String name) {
        Intrinsics.checkNotNullParameter(compositeId, "compositeId");
        Intrinsics.checkNotNullParameter(storeProduct, "storeProduct");
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        Intrinsics.checkNotNullParameter(name, "name");
        this.compositeId = compositeId;
        this.storeProduct = storeProduct;
        this.entitlements = entitlements;
        this.name = name;
    }

    public final String getCompositeId() {
        return this.compositeId;
    }

    public final StoreProduct getStoreProduct() {
        return this.storeProduct;
    }

    public final List<Entitlement> getEntitlements() {
        return this.entitlements;
    }

    public final String getName() {
        return this.name;
    }

    /* JADX INFO: compiled from: CrossplatformProduct.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct$Companion;", "", "<init>", "()V", "toProductItem", "Lcom/superwall/sdk/models/product/ProductItem;", "product", "Lcom/superwall/sdk/models/product/CrossplatformProduct;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<CrossplatformProduct> serializer() {
            return CrossplatformProductSerializer.INSTANCE;
        }

        public final ProductItem toProductItem(CrossplatformProduct product) {
            Intrinsics.checkNotNullParameter(product, "product");
            return new ProductItem(product.getCompositeId(), product.getName(), product.getStoreProduct().toStoreProductType(), CollectionsKt.toSet(product.getEntitlements()));
        }
    }

    /* JADX INFO: compiled from: CrossplatformProduct.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00172\u00020\u0001:\u0006\u0012\u0013\u0014\u0015\u0016\u0017B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH&J \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007\u0082\u0001\u0005\u0018\u0019\u001a\u001b\u001c¨\u0006\u001d"}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;", "", "<init>", "()V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "toStoreProductType", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "PlayStore", "AppStore", "Stripe", "Paddle", "Other", "Companion", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$AppStore;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Stripe;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static abstract class StoreProduct {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.product.CrossplatformProduct$StoreProduct$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CrossplatformProduct.StoreProduct._init_$_anonymous_();
            }
        });

        public /* synthetic */ StoreProduct(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self(StoreProduct self, CompositeEncoder output, SerialDescriptor serialDesc) {
        }

        public abstract ProductItem.StoreProductType toStoreProductType();

        /* JADX INFO: compiled from: CrossplatformProduct.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private final /* synthetic */ KSerializer get$cachedSerializer() {
                return (KSerializer) StoreProduct.$cachedSerializer$delegate.getValue();
            }

            public final KSerializer<StoreProduct> serializer() {
                return get$cachedSerializer();
            }
        }

        private StoreProduct() {
        }

        public /* synthetic */ StoreProduct(int i, SerializationConstructorMarker serializationConstructorMarker) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new SealedClassSerializer("com.superwall.sdk.models.product.CrossplatformProduct.StoreProduct", Reflection.getOrCreateKotlinClass(StoreProduct.class), new KClass[]{Reflection.getOrCreateKotlinClass(AppStore.class), Reflection.getOrCreateKotlinClass(Other.class), Reflection.getOrCreateKotlinClass(Paddle.class), Reflection.getOrCreateKotlinClass(PlayStore.class), Reflection.getOrCreateKotlinClass(Stripe.class)}, new KSerializer[]{AppStoreSerializer.INSTANCE, OtherSerializer.INSTANCE, PaddleSerializer.INSTANCE, PlayStoreSerializer.INSTANCE, StripeSerializer.INSTANCE}, new Annotation[0]);
        }

        /* JADX INFO: compiled from: CrossplatformProduct.kt */
        @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0087\b\u0018\u0000 !2\u00020\u0001:\u0001!B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u0014\u001a\u00020\u0015H\u0016J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÆ\u0003J'\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\fR\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\n\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\f¨\u0006\""}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;", "productIdentifier", "", "basePlanIdentifier", "offer", "Lcom/superwall/sdk/models/product/Offer;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;)V", "getProductIdentifier$annotations", "()V", "getProductIdentifier", "()Ljava/lang/String;", "getBasePlanIdentifier$annotations", "getBasePlanIdentifier", "getOffer$annotations", "getOffer", "()Lcom/superwall/sdk/models/product/Offer;", "fullIdentifier", "getFullIdentifier", "toStoreProductType", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable(with = PlayStoreSerializer.class)
        @SerialName("PLAY_STORE")
        public static final /* data */ class PlayStore extends StoreProduct {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final String basePlanIdentifier;
            private final Offer offer;
            private final String productIdentifier;

            public static /* synthetic */ PlayStore copy$default(PlayStore playStore, String str, String str2, Offer offer, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = playStore.productIdentifier;
                }
                if ((i & 2) != 0) {
                    str2 = playStore.basePlanIdentifier;
                }
                if ((i & 4) != 0) {
                    offer = playStore.offer;
                }
                return playStore.copy(str, str2, offer);
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

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getProductIdentifier() {
                return this.productIdentifier;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getBasePlanIdentifier() {
                return this.basePlanIdentifier;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final Offer getOffer() {
                return this.offer;
            }

            public final PlayStore copy(String productIdentifier, String basePlanIdentifier, Offer offer) {
                Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
                Intrinsics.checkNotNullParameter(basePlanIdentifier, "basePlanIdentifier");
                Intrinsics.checkNotNullParameter(offer, "offer");
                return new PlayStore(productIdentifier, basePlanIdentifier, offer);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof PlayStore)) {
                    return false;
                }
                PlayStore playStore = (PlayStore) other;
                return Intrinsics.areEqual(this.productIdentifier, playStore.productIdentifier) && Intrinsics.areEqual(this.basePlanIdentifier, playStore.basePlanIdentifier) && Intrinsics.areEqual(this.offer, playStore.offer);
            }

            public int hashCode() {
                return (((this.productIdentifier.hashCode() * 31) + this.basePlanIdentifier.hashCode()) * 31) + this.offer.hashCode();
            }

            public String toString() {
                return "PlayStore(productIdentifier=" + this.productIdentifier + ", basePlanIdentifier=" + this.basePlanIdentifier + ", offer=" + this.offer + ")";
            }

            /* JADX INFO: compiled from: CrossplatformProduct.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final KSerializer<PlayStore> serializer() {
                    return PlayStoreSerializer.INSTANCE;
                }
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

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public PlayStore(String productIdentifier, String basePlanIdentifier, Offer offer) {
                super(null);
                Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
                Intrinsics.checkNotNullParameter(basePlanIdentifier, "basePlanIdentifier");
                Intrinsics.checkNotNullParameter(offer, "offer");
                this.productIdentifier = productIdentifier;
                this.basePlanIdentifier = basePlanIdentifier;
                this.offer = offer;
            }

            public final String getFullIdentifier() {
                Offer offer = this.offer;
                if (offer instanceof Offer.Automatic) {
                    return this.productIdentifier + ":" + this.basePlanIdentifier + ":sw-auto";
                }
                if (offer instanceof Offer.NoOffer) {
                    return this.productIdentifier + ":" + this.basePlanIdentifier + ":sw-none";
                }
                if (!(offer instanceof Offer.Specified)) {
                    throw new NoWhenBranchMatchedException();
                }
                return this.productIdentifier + ":" + this.basePlanIdentifier + ":" + ((Offer.Specified) offer).getOfferIdentifier();
            }

            @Override // com.superwall.sdk.models.product.CrossplatformProduct.StoreProduct
            public ProductItem.StoreProductType toStoreProductType() {
                return new ProductItem.StoreProductType.PlayStore(new PlayStoreProduct(null, this.productIdentifier, this.basePlanIdentifier, this.offer, 1, null));
            }
        }

        /* JADX INFO: compiled from: CrossplatformProduct.kt */
        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\n\u001a\u00020\u000bH\u0016J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$AppStore;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;", "productIdentifier", "", "<init>", "(Ljava/lang/String;)V", "getProductIdentifier$annotations", "()V", "getProductIdentifier", "()Ljava/lang/String;", "toStoreProductType", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable(with = AppStoreSerializer.class)
        @SerialName("APP_STORE")
        public static final /* data */ class AppStore extends StoreProduct {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final String productIdentifier;

            /* JADX WARN: Multi-variable type inference failed */
            public AppStore() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public static /* synthetic */ AppStore copy$default(AppStore appStore, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = appStore.productIdentifier;
                }
                return appStore.copy(str);
            }

            @SerialName("product_identifier")
            public static /* synthetic */ void getProductIdentifier$annotations() {
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getProductIdentifier() {
                return this.productIdentifier;
            }

            public final AppStore copy(String productIdentifier) {
                Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
                return new AppStore(productIdentifier);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof AppStore) && Intrinsics.areEqual(this.productIdentifier, ((AppStore) other).productIdentifier);
            }

            public int hashCode() {
                return this.productIdentifier.hashCode();
            }

            public String toString() {
                return "AppStore(productIdentifier=" + this.productIdentifier + ")";
            }

            /* JADX INFO: compiled from: CrossplatformProduct.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$AppStore$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$AppStore;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final KSerializer<AppStore> serializer() {
                    return AppStoreSerializer.INSTANCE;
                }
            }

            public final String getProductIdentifier() {
                return this.productIdentifier;
            }

            public /* synthetic */ AppStore(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AppStore(String productIdentifier) {
                super(null);
                Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
                this.productIdentifier = productIdentifier;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.superwall.sdk.models.product.CrossplatformProduct.StoreProduct
            public ProductItem.StoreProductType toStoreProductType() {
                return new ProductItem.StoreProductType.AppStore(new AppStoreProduct((Store) null, this.productIdentifier, 1, (DefaultConstructorMarker) (0 == true ? 1 : 0)));
            }
        }

        /* JADX INFO: compiled from: CrossplatformProduct.kt */
        @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u0000 $2\u00020\u0001:\u0001$B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0017\u001a\u00020\u0018H\u0016J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001c\u001a\u00020\bHÆ\u0003J1\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0006HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u000eR\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\f\u001a\u0004\b\u0015\u0010\u0016¨\u0006%"}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Stripe;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;", "environment", "", "productIdentifier", "trialDays", "", "meta", "Lkotlinx/serialization/json/JsonObject;", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILkotlinx/serialization/json/JsonObject;)V", "getEnvironment$annotations", "()V", "getEnvironment", "()Ljava/lang/String;", "getProductIdentifier$annotations", "getProductIdentifier", "getTrialDays$annotations", "getTrialDays", "()I", "getMeta$annotations", "getMeta", "()Lkotlinx/serialization/json/JsonObject;", "toStoreProductType", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "toString", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable(with = StripeSerializer.class)
        @SerialName("STRIPE")
        public static final /* data */ class Stripe extends StoreProduct {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final String environment;
            private final JsonObject meta;
            private final String productIdentifier;
            private final int trialDays;

            public static /* synthetic */ Stripe copy$default(Stripe stripe, String str, String str2, int i, JsonObject jsonObject, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    str = stripe.environment;
                }
                if ((i2 & 2) != 0) {
                    str2 = stripe.productIdentifier;
                }
                if ((i2 & 4) != 0) {
                    i = stripe.trialDays;
                }
                if ((i2 & 8) != 0) {
                    jsonObject = stripe.meta;
                }
                return stripe.copy(str, str2, i, jsonObject);
            }

            @SerialName("environment")
            public static /* synthetic */ void getEnvironment$annotations() {
            }

            @SerialName("meta")
            public static /* synthetic */ void getMeta$annotations() {
            }

            @SerialName("product_identifier")
            public static /* synthetic */ void getProductIdentifier$annotations() {
            }

            @SerialName("trial_days")
            public static /* synthetic */ void getTrialDays$annotations() {
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getEnvironment() {
                return this.environment;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getProductIdentifier() {
                return this.productIdentifier;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final int getTrialDays() {
                return this.trialDays;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final JsonObject getMeta() {
                return this.meta;
            }

            public final Stripe copy(String environment, String productIdentifier, int trialDays, JsonObject meta) {
                Intrinsics.checkNotNullParameter(environment, "environment");
                Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
                Intrinsics.checkNotNullParameter(meta, "meta");
                return new Stripe(environment, productIdentifier, trialDays, meta);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Stripe)) {
                    return false;
                }
                Stripe stripe = (Stripe) other;
                return Intrinsics.areEqual(this.environment, stripe.environment) && Intrinsics.areEqual(this.productIdentifier, stripe.productIdentifier) && this.trialDays == stripe.trialDays && Intrinsics.areEqual(this.meta, stripe.meta);
            }

            public int hashCode() {
                return (((((this.environment.hashCode() * 31) + this.productIdentifier.hashCode()) * 31) + Integer.hashCode(this.trialDays)) * 31) + this.meta.hashCode();
            }

            public String toString() {
                return "Stripe(environment=" + this.environment + ", productIdentifier=" + this.productIdentifier + ", trialDays=" + this.trialDays + ", meta=" + this.meta + ")";
            }

            /* JADX INFO: compiled from: CrossplatformProduct.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Stripe$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Stripe;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final KSerializer<Stripe> serializer() {
                    return StripeSerializer.INSTANCE;
                }
            }

            public final String getEnvironment() {
                return this.environment;
            }

            public final String getProductIdentifier() {
                return this.productIdentifier;
            }

            public final int getTrialDays() {
                return this.trialDays;
            }

            public final JsonObject getMeta() {
                return this.meta;
            }

            public /* synthetic */ Stripe(String str, String str2, int i, JsonObject jsonObject, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(str, str2, i, (i2 & 8) != 0 ? new JsonObject(MapsKt.emptyMap()) : jsonObject);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Stripe(String environment, String productIdentifier, int i, JsonObject meta) {
                super(null);
                Intrinsics.checkNotNullParameter(environment, "environment");
                Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
                Intrinsics.checkNotNullParameter(meta, "meta");
                this.environment = environment;
                this.productIdentifier = productIdentifier;
                this.trialDays = i;
                this.meta = meta;
            }

            @Override // com.superwall.sdk.models.product.CrossplatformProduct.StoreProduct
            public ProductItem.StoreProductType toStoreProductType() {
                return new ProductItem.StoreProductType.Stripe(new StripeProduct((Store) null, this.environment, this.productIdentifier, Integer.valueOf(this.trialDays), 1, (DefaultConstructorMarker) null));
            }
        }

        /* JADX INFO: compiled from: CrossplatformProduct.kt */
        @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u0000 $2\u00020\u0001:\u0001$B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0017\u001a\u00020\u0018H\u0016J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001c\u001a\u00020\bHÆ\u0003J1\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0006HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u000eR\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\f\u001a\u0004\b\u0015\u0010\u0016¨\u0006%"}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;", "environment", "", "productIdentifier", "trialDays", "", "meta", "Lkotlinx/serialization/json/JsonObject;", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILkotlinx/serialization/json/JsonObject;)V", "getEnvironment$annotations", "()V", "getEnvironment", "()Ljava/lang/String;", "getProductIdentifier$annotations", "getProductIdentifier", "getTrialDays$annotations", "getTrialDays", "()I", "getMeta$annotations", "getMeta", "()Lkotlinx/serialization/json/JsonObject;", "toStoreProductType", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "toString", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable(with = PaddleSerializer.class)
        @SerialName("PADDLE")
        public static final /* data */ class Paddle extends StoreProduct {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final String environment;
            private final JsonObject meta;
            private final String productIdentifier;
            private final int trialDays;

            public static /* synthetic */ Paddle copy$default(Paddle paddle, String str, String str2, int i, JsonObject jsonObject, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    str = paddle.environment;
                }
                if ((i2 & 2) != 0) {
                    str2 = paddle.productIdentifier;
                }
                if ((i2 & 4) != 0) {
                    i = paddle.trialDays;
                }
                if ((i2 & 8) != 0) {
                    jsonObject = paddle.meta;
                }
                return paddle.copy(str, str2, i, jsonObject);
            }

            @SerialName("environment")
            public static /* synthetic */ void getEnvironment$annotations() {
            }

            @SerialName("meta")
            public static /* synthetic */ void getMeta$annotations() {
            }

            @SerialName("product_identifier")
            public static /* synthetic */ void getProductIdentifier$annotations() {
            }

            @SerialName("trial_days")
            public static /* synthetic */ void getTrialDays$annotations() {
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getEnvironment() {
                return this.environment;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getProductIdentifier() {
                return this.productIdentifier;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final int getTrialDays() {
                return this.trialDays;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final JsonObject getMeta() {
                return this.meta;
            }

            public final Paddle copy(String environment, String productIdentifier, int trialDays, JsonObject meta) {
                Intrinsics.checkNotNullParameter(environment, "environment");
                Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
                Intrinsics.checkNotNullParameter(meta, "meta");
                return new Paddle(environment, productIdentifier, trialDays, meta);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Paddle)) {
                    return false;
                }
                Paddle paddle = (Paddle) other;
                return Intrinsics.areEqual(this.environment, paddle.environment) && Intrinsics.areEqual(this.productIdentifier, paddle.productIdentifier) && this.trialDays == paddle.trialDays && Intrinsics.areEqual(this.meta, paddle.meta);
            }

            public int hashCode() {
                return (((((this.environment.hashCode() * 31) + this.productIdentifier.hashCode()) * 31) + Integer.hashCode(this.trialDays)) * 31) + this.meta.hashCode();
            }

            public String toString() {
                return "Paddle(environment=" + this.environment + ", productIdentifier=" + this.productIdentifier + ", trialDays=" + this.trialDays + ", meta=" + this.meta + ")";
            }

            /* JADX INFO: compiled from: CrossplatformProduct.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final KSerializer<Paddle> serializer() {
                    return PaddleSerializer.INSTANCE;
                }
            }

            public final String getEnvironment() {
                return this.environment;
            }

            public final String getProductIdentifier() {
                return this.productIdentifier;
            }

            public final int getTrialDays() {
                return this.trialDays;
            }

            public final JsonObject getMeta() {
                return this.meta;
            }

            public /* synthetic */ Paddle(String str, String str2, int i, JsonObject jsonObject, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(str, str2, i, (i2 & 8) != 0 ? new JsonObject(MapsKt.emptyMap()) : jsonObject);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Paddle(String environment, String productIdentifier, int i, JsonObject meta) {
                super(null);
                Intrinsics.checkNotNullParameter(environment, "environment");
                Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
                Intrinsics.checkNotNullParameter(meta, "meta");
                this.environment = environment;
                this.productIdentifier = productIdentifier;
                this.trialDays = i;
                this.meta = meta;
            }

            @Override // com.superwall.sdk.models.product.CrossplatformProduct.StoreProduct
            public ProductItem.StoreProductType toStoreProductType() {
                return new ProductItem.StoreProductType.Paddle(new PaddleProduct((Store) null, this.environment, this.productIdentifier, Integer.valueOf(this.trialDays), 1, (DefaultConstructorMarker) null));
            }
        }

        /* JADX INFO: compiled from: CrossplatformProduct.kt */
        @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \"2\u00020\u0001:\u0001\"B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u0015\u001a\u00020\u0016H\u0016J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÂ\u0003J'\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\fR\u0016\u0010\u0005\u001a\u00020\u00068\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000f\u0010\nR\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00120\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006#"}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;", "storeType", "", "productIdentifier", "_data", "Lkotlinx/serialization/json/JsonObject;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V", "getStoreType$annotations", "()V", "getStoreType", "()Ljava/lang/String;", "getProductIdentifier$annotations", "getProductIdentifier", "get_data$annotations", "data", "", "Lkotlinx/serialization/json/JsonElement;", "getData", "()Ljava/util/Map;", "toStoreProductType", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable(with = OtherSerializer.class)
        @SerialName("OTHER")
        public static final /* data */ class Other extends StoreProduct {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final JsonObject _data;
            private final Map<String, JsonElement> data;
            private final String productIdentifier;
            private final String storeType;

            /* JADX INFO: renamed from: component3, reason: from getter */
            private final JsonObject get_data() {
                return this._data;
            }

            public static /* synthetic */ Other copy$default(Other other, String str, String str2, JsonObject jsonObject, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = other.storeType;
                }
                if ((i & 2) != 0) {
                    str2 = other.productIdentifier;
                }
                if ((i & 4) != 0) {
                    jsonObject = other._data;
                }
                return other.copy(str, str2, jsonObject);
            }

            @SerialName("product_identifier")
            public static /* synthetic */ void getProductIdentifier$annotations() {
            }

            @SerialName("store")
            public static /* synthetic */ void getStoreType$annotations() {
            }

            @SerialName(TtmlNode.TAG_METADATA)
            private static /* synthetic */ void get_data$annotations() {
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getStoreType() {
                return this.storeType;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getProductIdentifier() {
                return this.productIdentifier;
            }

            public final Other copy(String storeType, String productIdentifier, JsonObject _data) {
                Intrinsics.checkNotNullParameter(storeType, "storeType");
                Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
                Intrinsics.checkNotNullParameter(_data, "_data");
                return new Other(storeType, productIdentifier, _data);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Other)) {
                    return false;
                }
                Other other2 = (Other) other;
                return Intrinsics.areEqual(this.storeType, other2.storeType) && Intrinsics.areEqual(this.productIdentifier, other2.productIdentifier) && Intrinsics.areEqual(this._data, other2._data);
            }

            public int hashCode() {
                return (((this.storeType.hashCode() * 31) + this.productIdentifier.hashCode()) * 31) + this._data.hashCode();
            }

            public String toString() {
                return "Other(storeType=" + this.storeType + ", productIdentifier=" + this.productIdentifier + ", _data=" + this._data + ")";
            }

            /* JADX INFO: compiled from: CrossplatformProduct.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final KSerializer<Other> serializer() {
                    return OtherSerializer.INSTANCE;
                }
            }

            public final String getStoreType() {
                return this.storeType;
            }

            public final String getProductIdentifier() {
                return this.productIdentifier;
            }

            public /* synthetic */ Other(String str, String str2, JsonObject jsonObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(str, str2, (i & 4) != 0 ? new JsonObject(MapsKt.emptyMap()) : jsonObject);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Other(String storeType, String productIdentifier, JsonObject _data) {
                super(null);
                Intrinsics.checkNotNullParameter(storeType, "storeType");
                Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
                Intrinsics.checkNotNullParameter(_data, "_data");
                this.storeType = storeType;
                this.productIdentifier = productIdentifier;
                this._data = _data;
                this.data = MapsKt.toMap(_data);
            }

            public final Map<String, JsonElement> getData() {
                return this.data;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.superwall.sdk.models.product.CrossplatformProduct.StoreProduct
            public ProductItem.StoreProductType toStoreProductType() {
                return new ProductItem.StoreProductType.Other(new UnknownStoreProduct(this.productIdentifier, (Store) null, 2, (DefaultConstructorMarker) (0 == true ? 1 : 0)));
            }
        }
    }

    public final String getFullProductId() {
        String str = this.compositeId;
        if (str.length() <= 0) {
            str = null;
        }
        if (str != null) {
            return str;
        }
        StoreProduct storeProduct = this.storeProduct;
        if (storeProduct instanceof StoreProduct.PlayStore) {
            return ((StoreProduct.PlayStore) storeProduct).getFullIdentifier();
        }
        if (storeProduct instanceof StoreProduct.AppStore) {
            return ((StoreProduct.AppStore) storeProduct).getProductIdentifier();
        }
        if (storeProduct instanceof StoreProduct.Stripe) {
            return ((StoreProduct.Stripe) storeProduct).getProductIdentifier();
        }
        if (storeProduct instanceof StoreProduct.Paddle) {
            return ((StoreProduct.Paddle) storeProduct).getProductIdentifier();
        }
        if (storeProduct instanceof StoreProduct.Other) {
            return "";
        }
        throw new NoWhenBranchMatchedException();
    }
}
