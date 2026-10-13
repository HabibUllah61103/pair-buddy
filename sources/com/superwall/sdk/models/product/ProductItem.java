package com.superwall.sdk.models.product;

import com.superwall.sdk.models.entitlements.Entitlement;
import java.lang.annotation.Annotation;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
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
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: ProductItem.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u0000 '2\u00020\u0001:\u0002&'B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0006HÆ\u0003J\u000f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003J7\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020$HÖ\u0001J\t\u0010%\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\r\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\r\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u000f¨\u0006("}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem;", "Lcom/superwall/sdk/models/product/TemplatingProduct;", "compositeId", "", "name", "type", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "entitlements", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;Ljava/util/Set;)V", "getCompositeId$annotations", "()V", "getCompositeId", "()Ljava/lang/String;", "getName$annotations", "getName", "getType$annotations", "getType", "()Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "getEntitlements$annotations", "getEntitlements", "()Ljava/util/Set;", "fullProductId", "getFullProductId", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "StoreProductType", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable(with = ProductItemSerializer.class)
public final /* data */ class ProductItem implements TemplatingProduct {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String compositeId;
    private final Set<Entitlement> entitlements;
    private final String name;
    private final StoreProductType type;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ProductItem copy$default(ProductItem productItem, String str, String str2, StoreProductType storeProductType, Set set, int i, Object obj) {
        if ((i & 1) != 0) {
            str = productItem.compositeId;
        }
        if ((i & 2) != 0) {
            str2 = productItem.name;
        }
        if ((i & 4) != 0) {
            storeProductType = productItem.type;
        }
        if ((i & 8) != 0) {
            set = productItem.entitlements;
        }
        return productItem.copy(str, str2, storeProductType, set);
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
    public static /* synthetic */ void getType$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCompositeId() {
        return this.compositeId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final StoreProductType getType() {
        return this.type;
    }

    public final Set<Entitlement> component4() {
        return this.entitlements;
    }

    public final ProductItem copy(String compositeId, String name, StoreProductType type, Set<Entitlement> entitlements) {
        Intrinsics.checkNotNullParameter(compositeId, "compositeId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        return new ProductItem(compositeId, name, type, entitlements);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ProductItem)) {
            return false;
        }
        ProductItem productItem = (ProductItem) other;
        return Intrinsics.areEqual(this.compositeId, productItem.compositeId) && Intrinsics.areEqual(this.name, productItem.name) && Intrinsics.areEqual(this.type, productItem.type) && Intrinsics.areEqual(this.entitlements, productItem.entitlements);
    }

    public int hashCode() {
        return (((((this.compositeId.hashCode() * 31) + this.name.hashCode()) * 31) + this.type.hashCode()) * 31) + this.entitlements.hashCode();
    }

    public String toString() {
        return "ProductItem(compositeId=" + this.compositeId + ", name=" + this.name + ", type=" + this.type + ", entitlements=" + this.entitlements + ")";
    }

    public ProductItem(String compositeId, String name, StoreProductType type, Set<Entitlement> entitlements) {
        Intrinsics.checkNotNullParameter(compositeId, "compositeId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        this.compositeId = compositeId;
        this.name = name;
        this.type = type;
        this.entitlements = entitlements;
    }

    public final String getCompositeId() {
        return this.compositeId;
    }

    public final String getName() {
        return this.name;
    }

    public final StoreProductType getType() {
        return this.type;
    }

    public final Set<Entitlement> getEntitlements() {
        return this.entitlements;
    }

    /* JADX INFO: compiled from: ProductItem.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00152\u00020\u0001:\u0006\u0010\u0011\u0012\u0013\u0014\u0015B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0002\u0010\bJ \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u0082\u0001\u0005\u0016\u0017\u0018\u0019\u001a¨\u0006\u001b"}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "", "<init>", "()V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "PlayStore", "AppStore", "Stripe", "Paddle", "Other", "Companion", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static abstract class StoreProductType {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.product.ProductItem$StoreProductType$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ProductItem.StoreProductType._init_$_anonymous_();
            }
        });

        public /* synthetic */ StoreProductType(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self(StoreProductType self, CompositeEncoder output, SerialDescriptor serialDesc) {
        }

        /* JADX INFO: compiled from: ProductItem.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private final /* synthetic */ KSerializer get$cachedSerializer() {
                return (KSerializer) StoreProductType.$cachedSerializer$delegate.getValue();
            }

            public final KSerializer<StoreProductType> serializer() {
                return get$cachedSerializer();
            }
        }

        /* JADX INFO: compiled from: ProductItem.kt */
        @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001e\u001fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\nJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J%\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0001¢\u0006\u0002\b\u001dR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006 "}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "product", "Lcom/superwall/sdk/models/product/PlayStoreProduct;", "<init>", "(Lcom/superwall/sdk/models/product/PlayStoreProduct;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/product/PlayStoreProduct;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getProduct", "()Lcom/superwall/sdk/models/product/PlayStoreProduct;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable
        public static final /* data */ class PlayStore extends StoreProductType {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final PlayStoreProduct product;

            public static /* synthetic */ PlayStore copy$default(PlayStore playStore, PlayStoreProduct playStoreProduct, int i, Object obj) {
                if ((i & 1) != 0) {
                    playStoreProduct = playStore.product;
                }
                return playStore.copy(playStoreProduct);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final PlayStoreProduct getProduct() {
                return this.product;
            }

            public final PlayStore copy(PlayStoreProduct product) {
                Intrinsics.checkNotNullParameter(product, "product");
                return new PlayStore(product);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof PlayStore) && Intrinsics.areEqual(this.product, ((PlayStore) other).product);
            }

            public int hashCode() {
                return this.product.hashCode();
            }

            public String toString() {
                return "PlayStore(product=" + this.product + ")";
            }

            /* JADX INFO: compiled from: ProductItem.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final KSerializer<PlayStore> serializer() {
                    return ProductItem$StoreProductType$PlayStore$$serializer.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public /* synthetic */ PlayStore(int i, PlayStoreProduct playStoreProduct, SerializationConstructorMarker serializationConstructorMarker) {
                super(i, serializationConstructorMarker);
                if (1 != (i & 1)) {
                    PluginExceptionsKt.throwMissingFieldException(i, 1, ProductItem$StoreProductType$PlayStore$$serializer.INSTANCE.getDescriptor());
                }
                this.product = playStoreProduct;
            }

            @JvmStatic
            public static final /* synthetic */ void write$Self$superwall_release(PlayStore self, CompositeEncoder output, SerialDescriptor serialDesc) {
                StoreProductType.write$Self(self, output, serialDesc);
                output.encodeSerializableElement(serialDesc, 0, PlayStoreProductSerializer.INSTANCE, self.product);
            }

            public final PlayStoreProduct getProduct() {
                return this.product;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public PlayStore(PlayStoreProduct product) {
                super(null);
                Intrinsics.checkNotNullParameter(product, "product");
                this.product = product;
            }
        }

        private StoreProductType() {
        }

        public /* synthetic */ StoreProductType(int i, SerializationConstructorMarker serializationConstructorMarker) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new SealedClassSerializer("com.superwall.sdk.models.product.ProductItem.StoreProductType", Reflection.getOrCreateKotlinClass(StoreProductType.class), new KClass[]{Reflection.getOrCreateKotlinClass(AppStore.class), Reflection.getOrCreateKotlinClass(Other.class), Reflection.getOrCreateKotlinClass(Paddle.class), Reflection.getOrCreateKotlinClass(PlayStore.class), Reflection.getOrCreateKotlinClass(Stripe.class)}, new KSerializer[]{ProductItem$StoreProductType$AppStore$$serializer.INSTANCE, ProductItem$StoreProductType$Other$$serializer.INSTANCE, ProductItem$StoreProductType$Paddle$$serializer.INSTANCE, ProductItem$StoreProductType$PlayStore$$serializer.INSTANCE, ProductItem$StoreProductType$Stripe$$serializer.INSTANCE}, new Annotation[0]);
        }

        /* JADX INFO: compiled from: ProductItem.kt */
        @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001e\u001fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\nJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J%\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0001¢\u0006\u0002\b\u001dR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006 "}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "product", "Lcom/superwall/sdk/models/product/AppStoreProduct;", "<init>", "(Lcom/superwall/sdk/models/product/AppStoreProduct;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/product/AppStoreProduct;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getProduct", "()Lcom/superwall/sdk/models/product/AppStoreProduct;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable
        public static final /* data */ class AppStore extends StoreProductType {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final AppStoreProduct product;

            public static /* synthetic */ AppStore copy$default(AppStore appStore, AppStoreProduct appStoreProduct, int i, Object obj) {
                if ((i & 1) != 0) {
                    appStoreProduct = appStore.product;
                }
                return appStore.copy(appStoreProduct);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final AppStoreProduct getProduct() {
                return this.product;
            }

            public final AppStore copy(AppStoreProduct product) {
                Intrinsics.checkNotNullParameter(product, "product");
                return new AppStore(product);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof AppStore) && Intrinsics.areEqual(this.product, ((AppStore) other).product);
            }

            public int hashCode() {
                return this.product.hashCode();
            }

            public String toString() {
                return "AppStore(product=" + this.product + ")";
            }

            /* JADX INFO: compiled from: ProductItem.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final KSerializer<AppStore> serializer() {
                    return ProductItem$StoreProductType$AppStore$$serializer.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public /* synthetic */ AppStore(int i, AppStoreProduct appStoreProduct, SerializationConstructorMarker serializationConstructorMarker) {
                super(i, serializationConstructorMarker);
                if (1 != (i & 1)) {
                    PluginExceptionsKt.throwMissingFieldException(i, 1, ProductItem$StoreProductType$AppStore$$serializer.INSTANCE.getDescriptor());
                }
                this.product = appStoreProduct;
            }

            @JvmStatic
            public static final /* synthetic */ void write$Self$superwall_release(AppStore self, CompositeEncoder output, SerialDescriptor serialDesc) {
                StoreProductType.write$Self(self, output, serialDesc);
                output.encodeSerializableElement(serialDesc, 0, AppStoreProduct$$serializer.INSTANCE, self.product);
            }

            public final AppStoreProduct getProduct() {
                return this.product;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AppStore(AppStoreProduct product) {
                super(null);
                Intrinsics.checkNotNullParameter(product, "product");
                this.product = product;
            }
        }

        /* JADX INFO: compiled from: ProductItem.kt */
        @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001e\u001fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\nJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J%\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0001¢\u0006\u0002\b\u001dR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006 "}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "product", "Lcom/superwall/sdk/models/product/StripeProduct;", "<init>", "(Lcom/superwall/sdk/models/product/StripeProduct;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/product/StripeProduct;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getProduct", "()Lcom/superwall/sdk/models/product/StripeProduct;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable
        public static final /* data */ class Stripe extends StoreProductType {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final StripeProduct product;

            public static /* synthetic */ Stripe copy$default(Stripe stripe, StripeProduct stripeProduct, int i, Object obj) {
                if ((i & 1) != 0) {
                    stripeProduct = stripe.product;
                }
                return stripe.copy(stripeProduct);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final StripeProduct getProduct() {
                return this.product;
            }

            public final Stripe copy(StripeProduct product) {
                Intrinsics.checkNotNullParameter(product, "product");
                return new Stripe(product);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Stripe) && Intrinsics.areEqual(this.product, ((Stripe) other).product);
            }

            public int hashCode() {
                return this.product.hashCode();
            }

            public String toString() {
                return "Stripe(product=" + this.product + ")";
            }

            /* JADX INFO: compiled from: ProductItem.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final KSerializer<Stripe> serializer() {
                    return ProductItem$StoreProductType$Stripe$$serializer.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public /* synthetic */ Stripe(int i, StripeProduct stripeProduct, SerializationConstructorMarker serializationConstructorMarker) {
                super(i, serializationConstructorMarker);
                if (1 != (i & 1)) {
                    PluginExceptionsKt.throwMissingFieldException(i, 1, ProductItem$StoreProductType$Stripe$$serializer.INSTANCE.getDescriptor());
                }
                this.product = stripeProduct;
            }

            @JvmStatic
            public static final /* synthetic */ void write$Self$superwall_release(Stripe self, CompositeEncoder output, SerialDescriptor serialDesc) {
                StoreProductType.write$Self(self, output, serialDesc);
                output.encodeSerializableElement(serialDesc, 0, StripeProduct$$serializer.INSTANCE, self.product);
            }

            public final StripeProduct getProduct() {
                return this.product;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Stripe(StripeProduct product) {
                super(null);
                Intrinsics.checkNotNullParameter(product, "product");
                this.product = product;
            }
        }

        /* JADX INFO: compiled from: ProductItem.kt */
        @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001e\u001fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\nJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J%\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0001¢\u0006\u0002\b\u001dR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006 "}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "product", "Lcom/superwall/sdk/models/product/PaddleProduct;", "<init>", "(Lcom/superwall/sdk/models/product/PaddleProduct;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/product/PaddleProduct;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getProduct", "()Lcom/superwall/sdk/models/product/PaddleProduct;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable
        public static final /* data */ class Paddle extends StoreProductType {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final PaddleProduct product;

            public static /* synthetic */ Paddle copy$default(Paddle paddle, PaddleProduct paddleProduct, int i, Object obj) {
                if ((i & 1) != 0) {
                    paddleProduct = paddle.product;
                }
                return paddle.copy(paddleProduct);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final PaddleProduct getProduct() {
                return this.product;
            }

            public final Paddle copy(PaddleProduct product) {
                Intrinsics.checkNotNullParameter(product, "product");
                return new Paddle(product);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Paddle) && Intrinsics.areEqual(this.product, ((Paddle) other).product);
            }

            public int hashCode() {
                return this.product.hashCode();
            }

            public String toString() {
                return "Paddle(product=" + this.product + ")";
            }

            /* JADX INFO: compiled from: ProductItem.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final KSerializer<Paddle> serializer() {
                    return ProductItem$StoreProductType$Paddle$$serializer.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public /* synthetic */ Paddle(int i, PaddleProduct paddleProduct, SerializationConstructorMarker serializationConstructorMarker) {
                super(i, serializationConstructorMarker);
                if (1 != (i & 1)) {
                    PluginExceptionsKt.throwMissingFieldException(i, 1, ProductItem$StoreProductType$Paddle$$serializer.INSTANCE.getDescriptor());
                }
                this.product = paddleProduct;
            }

            @JvmStatic
            public static final /* synthetic */ void write$Self$superwall_release(Paddle self, CompositeEncoder output, SerialDescriptor serialDesc) {
                StoreProductType.write$Self(self, output, serialDesc);
                output.encodeSerializableElement(serialDesc, 0, PaddleProduct$$serializer.INSTANCE, self.product);
            }

            public final PaddleProduct getProduct() {
                return this.product;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Paddle(PaddleProduct product) {
                super(null);
                Intrinsics.checkNotNullParameter(product, "product");
                this.product = product;
            }
        }

        /* JADX INFO: compiled from: ProductItem.kt */
        @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001e\u001fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\nJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J%\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0001¢\u0006\u0002\b\u001dR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006 "}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "product", "Lcom/superwall/sdk/models/product/UnknownStoreProduct;", "<init>", "(Lcom/superwall/sdk/models/product/UnknownStoreProduct;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/product/UnknownStoreProduct;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getProduct", "()Lcom/superwall/sdk/models/product/UnknownStoreProduct;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable
        public static final /* data */ class Other extends StoreProductType {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final UnknownStoreProduct product;

            public static /* synthetic */ Other copy$default(Other other, UnknownStoreProduct unknownStoreProduct, int i, Object obj) {
                if ((i & 1) != 0) {
                    unknownStoreProduct = other.product;
                }
                return other.copy(unknownStoreProduct);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final UnknownStoreProduct getProduct() {
                return this.product;
            }

            public final Other copy(UnknownStoreProduct product) {
                Intrinsics.checkNotNullParameter(product, "product");
                return new Other(product);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Other) && Intrinsics.areEqual(this.product, ((Other) other).product);
            }

            public int hashCode() {
                return this.product.hashCode();
            }

            public String toString() {
                return "Other(product=" + this.product + ")";
            }

            /* JADX INFO: compiled from: ProductItem.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final KSerializer<Other> serializer() {
                    return ProductItem$StoreProductType$Other$$serializer.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public /* synthetic */ Other(int i, UnknownStoreProduct unknownStoreProduct, SerializationConstructorMarker serializationConstructorMarker) {
                super(i, serializationConstructorMarker);
                if (1 != (i & 1)) {
                    PluginExceptionsKt.throwMissingFieldException(i, 1, ProductItem$StoreProductType$Other$$serializer.INSTANCE.getDescriptor());
                }
                this.product = unknownStoreProduct;
            }

            @JvmStatic
            public static final /* synthetic */ void write$Self$superwall_release(Other self, CompositeEncoder output, SerialDescriptor serialDesc) {
                StoreProductType.write$Self(self, output, serialDesc);
                output.encodeSerializableElement(serialDesc, 0, UnknownStoreProduct$$serializer.INSTANCE, self.product);
            }

            public final UnknownStoreProduct getProduct() {
                return this.product;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Other(UnknownStoreProduct product) {
                super(null);
                Intrinsics.checkNotNullParameter(product, "product");
                this.product = product;
            }
        }
    }

    public final String getFullProductId() {
        StoreProductType storeProductType = this.type;
        if (storeProductType instanceof StoreProductType.PlayStore) {
            return ((StoreProductType.PlayStore) storeProductType).getProduct().getFullIdentifier();
        }
        if (storeProductType instanceof StoreProductType.AppStore) {
            return ((StoreProductType.AppStore) storeProductType).getProduct().getFullIdentifier();
        }
        if (storeProductType instanceof StoreProductType.Stripe) {
            return ((StoreProductType.Stripe) storeProductType).getProduct().getFullIdentifier();
        }
        if (storeProductType instanceof StoreProductType.Paddle) {
            return ((StoreProductType.Paddle) storeProductType).getProduct().getFullIdentifier();
        }
        if (storeProductType instanceof StoreProductType.Other) {
            return ((StoreProductType.Other) storeProductType).getProduct().getProductIdentifier();
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: compiled from: ProductItem.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/models/product/ProductItem$Companion;", "", "<init>", "()V", "fromCrossplatformProduct", "Lcom/superwall/sdk/models/product/ProductItem;", "product", "Lcom/superwall/sdk/models/product/CrossplatformProduct;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<ProductItem> serializer() {
            return ProductItemSerializer.INSTANCE;
        }

        public final ProductItem fromCrossplatformProduct(CrossplatformProduct product) {
            Intrinsics.checkNotNullParameter(product, "product");
            String name = product.getName();
            Set set = CollectionsKt.toSet(product.getEntitlements());
            return new ProductItem(product.getCompositeId(), name, product.getStoreProduct().toStoreProductType(), set);
        }
    }
}
