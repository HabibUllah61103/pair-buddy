package com.superwall.sdk.models.product;

import androidx.core.os.EnvironmentCompat;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.entitlements.Entitlement;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListSerializer;
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

/* JADX INFO: compiled from: CrossplatformProduct.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/CrossplatformProduct;", "<init>", "()V", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CrossplatformProductSerializer implements KSerializer<CrossplatformProduct> {
    public static final CrossplatformProductSerializer INSTANCE = new CrossplatformProductSerializer();
    private static final SerialDescriptor descriptor;

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.models.product.CrossplatformProduct", null, 4);
        pluginGeneratedSerialDescriptor.addElement("sw_composite_product_id", false);
        pluginGeneratedSerialDescriptor.addElement("store_product", false);
        pluginGeneratedSerialDescriptor.addElement("entitlements", false);
        pluginGeneratedSerialDescriptor.addElement("reference_name", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private CrossplatformProductSerializer() {
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, CrossplatformProduct value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        JsonEncoder jsonEncoder = encoder instanceof JsonEncoder ? (JsonEncoder) encoder : null;
        if (jsonEncoder == null) {
            throw new SerializationException("This class can be saved only by Json");
        }
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        jsonObjectBuilder.put("sw_composite_product_id", JsonElementKt.JsonPrimitive(value.getCompositeId()));
        jsonObjectBuilder.put("product_id", JsonElementKt.JsonPrimitive(value.getFullProductId()));
        JsonEncoder jsonEncoder2 = (JsonEncoder) encoder;
        Json json = jsonEncoder2.getJson();
        CrossplatformProduct.StoreProduct storeProduct = value.getStoreProduct();
        json.getSerializersModule();
        jsonObjectBuilder.put("store_product", json.encodeToJsonElement(CrossplatformProduct.StoreProduct.INSTANCE.serializer(), storeProduct));
        Json json2 = jsonEncoder2.getJson();
        List<Entitlement> entitlements = value.getEntitlements();
        json2.getSerializersModule();
        jsonObjectBuilder.put("entitlements", json2.encodeToJsonElement(new ArrayListSerializer(Entitlement.INSTANCE.serializer()), entitlements));
        jsonEncoder.encodeJsonElement(jsonObjectBuilder.build());
    }

    /* JADX WARN: Code duplicated, block: B:62:0x0179  */
    /* JADX WARN: Code duplicated, block: B:63:0x017b  */
    /* JADX WARN: Code duplicated, block: B:66:0x0186 A[Catch: SerializationException -> 0x01a0, TryCatch #0 {SerializationException -> 0x01a0, blocks: (B:28:0x009a, B:30:0x00a2, B:32:0x00a8, B:37:0x00b2, B:38:0x00b6, B:40:0x00bb, B:43:0x00c5, B:44:0x00e1, B:47:0x00e9, B:48:0x0105, B:51:0x010e, B:52:0x012a, B:55:0x0133, B:56:0x014f, B:59:0x0158, B:60:0x0174, B:64:0x017c, B:66:0x0186, B:68:0x018c, B:73:0x0196), top: B:92:0x009a }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0195  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // kotlinx.serialization.DeserializationStrategy
    public CrossplatformProduct deserialize(Decoder decoder) {
        String content;
        JsonObject jsonObject;
        ArrayList arrayListEmptyList;
        CrossplatformProduct.StoreProduct.Other other;
        JsonPrimitive jsonPrimitive;
        String str;
        JsonElement jsonElement;
        String str2;
        JsonPrimitive jsonPrimitive2;
        String content2;
        JsonPrimitive jsonPrimitive3;
        JsonArray jsonArray;
        JsonPrimitive jsonPrimitive4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        String content3 = null;
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            throw new SerializationException("This class can be loaded only by Json");
        }
        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonDecoder.decodeJsonElement());
        JsonElement jsonElement2 = (JsonElement) jsonObject2.get((Object) "sw_composite_product_id");
        if (jsonElement2 == null || (jsonPrimitive4 = JsonElementKt.getJsonPrimitive(jsonElement2)) == null || (content = jsonPrimitive4.getContent()) == null) {
            content = "";
        }
        JsonElement jsonElement3 = (JsonElement) jsonObject2.get((Object) "store_product");
        if (jsonElement3 == null || (jsonObject = JsonElementKt.getJsonObject(jsonElement3)) == null) {
            throw new SerializationException("Missing store_product");
        }
        JsonElement jsonElement4 = (JsonElement) jsonObject2.get((Object) "entitlements");
        if (jsonElement4 == null || (jsonArray = JsonElementKt.getJsonArray(jsonElement4)) == null) {
            arrayListEmptyList = CollectionsKt.emptyList();
        } else {
            JsonArray jsonArray2 = jsonArray;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(jsonArray2, 10));
            for (JsonElement jsonElement5 : jsonArray2) {
                Json json = ((JsonDecoder) decoder).getJson();
                json.getSerializersModule();
                arrayList.add((Entitlement) json.decodeFromJsonElement(Entitlement.INSTANCE.serializer(), jsonElement5));
            }
            arrayListEmptyList = arrayList;
        }
        try {
            JsonElement jsonElement6 = (JsonElement) jsonObject.get((Object) "store");
            String content4 = (jsonElement6 == null || (jsonPrimitive3 = JsonElementKt.getJsonPrimitive(jsonElement6)) == null) ? null : jsonPrimitive3.getContent();
            if (content4 != null) {
                switch (content4.hashCode()) {
                    case -1942512790:
                        if (content4.equals("PADDLE")) {
                            Json json2 = ((JsonDecoder) decoder).getJson();
                            json2.getSerializersModule();
                            other = (CrossplatformProduct.StoreProduct) json2.decodeFromJsonElement(CrossplatformProduct.StoreProduct.Paddle.INSTANCE.serializer(), jsonObject);
                        } else {
                            if (content4 == null) {
                                str = "OTHER";
                            } else {
                                str = content4;
                            }
                            jsonElement = (JsonElement) jsonObject.get((Object) "product_identifier");
                            if (jsonElement != null || (jsonPrimitive2 = JsonElementKt.getJsonPrimitive(jsonElement)) == null || (content2 = jsonPrimitive2.getContent()) == null) {
                                str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                            } else {
                                str2 = content2;
                            }
                            other = new CrossplatformProduct.StoreProduct.Other(str, str2, null, 4, null);
                        }
                        break;
                    case -1838656435:
                        if (content4.equals("STRIPE")) {
                            Json json3 = ((JsonDecoder) decoder).getJson();
                            json3.getSerializersModule();
                            other = (CrossplatformProduct.StoreProduct) json3.decodeFromJsonElement(CrossplatformProduct.StoreProduct.Stripe.INSTANCE.serializer(), jsonObject);
                        } else {
                            if (content4 == null) {
                                str = "OTHER";
                            } else {
                                str = content4;
                            }
                            jsonElement = (JsonElement) jsonObject.get((Object) "product_identifier");
                            if (jsonElement != null) {
                                str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                            } else {
                                str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                            }
                            other = new CrossplatformProduct.StoreProduct.Other(str, str2, null, 4, null);
                        }
                        break;
                    case -967790602:
                        if (content4.equals("PLAY_STORE")) {
                            Json json4 = ((JsonDecoder) decoder).getJson();
                            json4.getSerializersModule();
                            other = (CrossplatformProduct.StoreProduct) json4.decodeFromJsonElement(CrossplatformProduct.StoreProduct.PlayStore.INSTANCE.serializer(), jsonObject);
                        } else {
                            if (content4 == null) {
                                str = "OTHER";
                            } else {
                                str = content4;
                            }
                            jsonElement = (JsonElement) jsonObject.get((Object) "product_identifier");
                            if (jsonElement != null) {
                                str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                            } else {
                                str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                            }
                            other = new CrossplatformProduct.StoreProduct.Other(str, str2, null, 4, null);
                        }
                        break;
                    case 75532016:
                        if (content4.equals("OTHER")) {
                            Json json5 = ((JsonDecoder) decoder).getJson();
                            json5.getSerializersModule();
                            other = (CrossplatformProduct.StoreProduct) json5.decodeFromJsonElement(CrossplatformProduct.StoreProduct.Other.INSTANCE.serializer(), jsonObject);
                        } else {
                            if (content4 == null) {
                                str = "OTHER";
                            } else {
                                str = content4;
                            }
                            jsonElement = (JsonElement) jsonObject.get((Object) "product_identifier");
                            if (jsonElement != null) {
                                str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                            } else {
                                str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                            }
                            other = new CrossplatformProduct.StoreProduct.Other(str, str2, null, 4, null);
                        }
                        break;
                    case 1250303235:
                        if (content4.equals("APP_STORE")) {
                            Json json6 = ((JsonDecoder) decoder).getJson();
                            json6.getSerializersModule();
                            other = (CrossplatformProduct.StoreProduct) json6.decodeFromJsonElement(CrossplatformProduct.StoreProduct.AppStore.INSTANCE.serializer(), jsonObject);
                        } else {
                            if (content4 == null) {
                                str = "OTHER";
                            } else {
                                str = content4;
                            }
                            jsonElement = (JsonElement) jsonObject.get((Object) "product_identifier");
                            if (jsonElement != null) {
                                str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                            } else {
                                str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                            }
                            other = new CrossplatformProduct.StoreProduct.Other(str, str2, null, 4, null);
                        }
                        break;
                    default:
                        if (content4 == null) {
                            str = "OTHER";
                        } else {
                            str = content4;
                        }
                        jsonElement = (JsonElement) jsonObject.get((Object) "product_identifier");
                        if (jsonElement != null) {
                            str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                        } else {
                            str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                        }
                        other = new CrossplatformProduct.StoreProduct.Other(str, str2, null, 4, null);
                        break;
                }
            } else {
                if (content4 == null) {
                    str = "OTHER";
                } else {
                    str = content4;
                }
                jsonElement = (JsonElement) jsonObject.get((Object) "product_identifier");
                if (jsonElement != null) {
                    str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                } else {
                    str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                }
                other = new CrossplatformProduct.StoreProduct.Other(str, str2, null, 4, null);
            }
        } catch (SerializationException e) {
            Logger.INSTANCE.debug(LogLevel.error, LogScope.configManager, "Failed to deserialize product store, falling back to OTHER- " + e.getMessage() + " for " + jsonObject2, jsonObject2, e);
            JsonElement jsonElement7 = (JsonElement) jsonObject.get((Object) "store");
            if (jsonElement7 != null && (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement7)) != null) {
                content3 = jsonPrimitive.getContent();
            }
            other = new CrossplatformProduct.StoreProduct.Other("OTHER", content3 == null ? EnvironmentCompat.MEDIA_UNKNOWN : content3, null, 4, null);
        }
        return new CrossplatformProduct(content, other, arrayListEmptyList, "");
    }
}
