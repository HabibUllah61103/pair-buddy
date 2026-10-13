package com.superwall.sdk.models.product;

import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.models.entitlements.Entitlement;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonObjectBuilder;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: compiled from: ProductItem.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/models/product/ProductItemSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/ProductItem;", "<init>", "()V", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProductItemSerializer implements KSerializer<ProductItem> {
    public static final ProductItemSerializer INSTANCE = new ProductItemSerializer();
    private static final SerialDescriptor descriptor;

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.models.product.ProductItem", null, 4);
        pluginGeneratedSerialDescriptor.addElement("sw_composite_product_id", false);
        pluginGeneratedSerialDescriptor.addElement("reference_name", false);
        pluginGeneratedSerialDescriptor.addElement("store_product", false);
        pluginGeneratedSerialDescriptor.addElement("entitlements", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private ProductItemSerializer() {
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ProductItem value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        JsonEncoder jsonEncoder = encoder instanceof JsonEncoder ? (JsonEncoder) encoder : null;
        if (jsonEncoder == null) {
            throw new SerializationException("This class can be saved only by Json");
        }
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        jsonObjectBuilder.put("product", JsonElementKt.JsonPrimitive(value.getName()));
        jsonObjectBuilder.put("productId", JsonElementKt.JsonPrimitive(value.getCompositeId()));
        jsonObjectBuilder.put("store_product", jsonEncoder.getJson().encodeToJsonElement(StoreProductSerializer.INSTANCE, value.getType()));
        jsonEncoder.encodeJsonElement(jsonObjectBuilder.build());
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0093  */
    @Override // kotlinx.serialization.DeserializationStrategy
    public ProductItem deserialize(Decoder decoder) {
        String content;
        JsonObject jsonObject;
        Set setEmptySet;
        JsonPrimitive jsonPrimitive;
        JsonArray jsonArray;
        JsonPrimitive jsonPrimitive2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        String productIdentifier = null;
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            throw new SerializationException("This class can be loaded only by Json");
        }
        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonDecoder.decodeJsonElement());
        JsonElement jsonElement = (JsonElement) jsonObject2.get((Object) "reference_name");
        if (jsonElement == null || (jsonPrimitive2 = JsonElementKt.getJsonPrimitive(jsonElement)) == null || (content = jsonPrimitive2.getContent()) == null) {
            content = "";
        }
        JsonElement jsonElement2 = (JsonElement) jsonObject2.get((Object) "store_product");
        if (jsonElement2 == null || (jsonObject = JsonElementKt.getJsonObject(jsonElement2)) == null) {
            throw new SerializationException("Missing store_product");
        }
        JsonElement jsonElement3 = (JsonElement) jsonObject2.get((Object) "entitlements");
        if (jsonElement3 == null || (jsonArray = JsonElementKt.getJsonArray(jsonElement3)) == null) {
            setEmptySet = SetsKt.emptySet();
        } else {
            JsonArray jsonArray2 = jsonArray;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(jsonArray2, 10));
            for (JsonElement jsonElement4 : jsonArray2) {
                Json.Companion companion = Json.INSTANCE;
                companion.getSerializersModule();
                arrayList.add((Entitlement) companion.decodeFromJsonElement(Entitlement.INSTANCE.serializer(), jsonElement4));
            }
            setEmptySet = CollectionsKt.toSet(arrayList);
            if (setEmptySet == null) {
                setEmptySet = SetsKt.emptySet();
            }
        }
        ProductItem.StoreProductType storeProductType = (ProductItem.StoreProductType) jsonDecoder.getJson().decodeFromJsonElement(StoreProductSerializer.INSTANCE, jsonObject);
        JsonElement jsonElement5 = (JsonElement) jsonObject2.get((Object) "sw_composite_product_id");
        if (jsonElement5 != null && (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement5)) != null) {
            productIdentifier = jsonPrimitive.getContent();
        }
        if (productIdentifier == null) {
            if (storeProductType instanceof ProductItem.StoreProductType.PlayStore) {
                productIdentifier = ((ProductItem.StoreProductType.PlayStore) storeProductType).getProduct().getFullIdentifier();
            } else if (storeProductType instanceof ProductItem.StoreProductType.AppStore) {
                productIdentifier = ((ProductItem.StoreProductType.AppStore) storeProductType).getProduct().getFullIdentifier();
            } else if (storeProductType instanceof ProductItem.StoreProductType.Stripe) {
                productIdentifier = ((ProductItem.StoreProductType.Stripe) storeProductType).getProduct().getFullIdentifier();
            } else if (storeProductType instanceof ProductItem.StoreProductType.Paddle) {
                productIdentifier = ((ProductItem.StoreProductType.Paddle) storeProductType).getProduct().getFullIdentifier();
            } else {
                if (!(storeProductType instanceof ProductItem.StoreProductType.Other)) {
                    throw new NoWhenBranchMatchedException();
                }
                productIdentifier = ((ProductItem.StoreProductType.Other) storeProductType).getProduct().getProductIdentifier();
            }
        }
        return new ProductItem(productIdentifier, content, storeProductType, setEmptySet);
    }
}
