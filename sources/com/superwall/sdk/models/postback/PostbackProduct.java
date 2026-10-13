package com.superwall.sdk.models.postback;

import com.superwall.sdk.models.serialization.AnySerializer;
import expo.modules.notifications.service.NotificationsService;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: Postback.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 ,2\u00020\u0001:\u0002+,B:\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012!\u0010\u0004\u001a\u001d\u0012\u0004\u0012\u00020\u0003\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\t0\b0\u0005\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fB\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\r¢\u0006\u0004\b\u000b\u0010\u000eBE\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000b\u0010\u0013J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J$\u0010\u001b\u001a\u001d\u0012\u0004\u0012\u00020\u0003\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\t0\b0\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\nHÆ\u0003JB\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032#\b\u0002\u0010\u0004\u001a\u001d\u0012\u0004\u0012\u00020\u0003\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\t0\b0\u00052\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0010HÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J%\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0001¢\u0006\u0002\b*R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R,\u0010\u0004\u001a\u001d\u0012\u0004\u0012\u00020\u0003\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\t0\b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006-"}, d2 = {"Lcom/superwall/sdk/models/postback/PostbackProduct;", "", NotificationsService.IDENTIFIER_KEY, "", "productVariables", "", "Lkotlinx/serialization/Serializable;", "with", "Lcom/superwall/sdk/models/serialization/AnySerializer;", "product", "Lcom/superwall/sdk/models/postback/SWProduct;", "<init>", "(Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/models/postback/SWProduct;)V", "Lcom/superwall/sdk/models/postback/StoreProduct;", "(Lcom/superwall/sdk/models/postback/StoreProduct;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/models/postback/SWProduct;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getIdentifier", "()Ljava/lang/String;", "getProductVariables", "()Ljava/util/Map;", "getProduct", "()Lcom/superwall/sdk/models/postback/SWProduct;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class PostbackProduct {
    private final String identifier;
    private final SWProduct product;
    private final Map<String, Object> productVariables;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, AnySerializer.INSTANCE), null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PostbackProduct copy$default(PostbackProduct postbackProduct, String str, Map map, SWProduct sWProduct, int i, Object obj) {
        if ((i & 1) != 0) {
            str = postbackProduct.identifier;
        }
        if ((i & 2) != 0) {
            map = postbackProduct.productVariables;
        }
        if ((i & 4) != 0) {
            sWProduct = postbackProduct.product;
        }
        return postbackProduct.copy(str, map, sWProduct);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getIdentifier() {
        return this.identifier;
    }

    public final Map<String, Object> component2() {
        return this.productVariables;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final SWProduct getProduct() {
        return this.product;
    }

    public final PostbackProduct copy(String identifier, Map<String, ? extends Object> productVariables, SWProduct product) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(productVariables, "productVariables");
        Intrinsics.checkNotNullParameter(product, "product");
        return new PostbackProduct(identifier, productVariables, product);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PostbackProduct)) {
            return false;
        }
        PostbackProduct postbackProduct = (PostbackProduct) other;
        return Intrinsics.areEqual(this.identifier, postbackProduct.identifier) && Intrinsics.areEqual(this.productVariables, postbackProduct.productVariables) && Intrinsics.areEqual(this.product, postbackProduct.product);
    }

    public int hashCode() {
        return (((this.identifier.hashCode() * 31) + this.productVariables.hashCode()) * 31) + this.product.hashCode();
    }

    public String toString() {
        return "PostbackProduct(identifier=" + this.identifier + ", productVariables=" + this.productVariables + ", product=" + this.product + ")";
    }

    /* JADX INFO: compiled from: Postback.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/postback/PostbackProduct$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/postback/PostbackProduct;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<PostbackProduct> serializer() {
            return PostbackProduct$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ PostbackProduct(int i, String str, Map map, SWProduct sWProduct, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, PostbackProduct$$serializer.INSTANCE.getDescriptor());
        }
        this.identifier = str;
        this.productVariables = map;
        this.product = sWProduct;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(PostbackProduct self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.identifier);
        output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.productVariables);
        output.encodeSerializableElement(serialDesc, 2, SWProduct$$serializer.INSTANCE, self.product);
    }

    public PostbackProduct(String identifier, Map<String, ? extends Object> productVariables, SWProduct product) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(productVariables, "productVariables");
        Intrinsics.checkNotNullParameter(product, "product");
        this.identifier = identifier;
        this.productVariables = productVariables;
        this.product = product;
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public final Map<String, Object> getProductVariables() {
        return this.productVariables;
    }

    public final SWProduct getProduct() {
        return this.product;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PostbackProduct(StoreProduct product) {
        this(product.getProductIdentifier(), product.getSwProductTemplateVariablesJson(), product.getSwProduct());
        Intrinsics.checkNotNullParameter(product, "product");
    }
}
