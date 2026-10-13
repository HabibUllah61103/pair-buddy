package com.superwall.sdk.models.product;

import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonObjectBuilder;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: compiled from: CrossplatformProduct.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/models/product/PlayStoreSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore;", "<init>", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PlayStoreSerializer implements KSerializer<CrossplatformProduct.StoreProduct.PlayStore> {
    public static final PlayStoreSerializer INSTANCE = new PlayStoreSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildClassSerialDescriptor$default("PlayStore", new SerialDescriptor[0], null, 4, null);

    private PlayStoreSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, CrossplatformProduct.StoreProduct.PlayStore value) {
        JsonObject jsonObject;
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        JsonEncoder jsonEncoder = encoder instanceof JsonEncoder ? (JsonEncoder) encoder : null;
        if (jsonEncoder == null) {
            throw new SerializationException("This class can be saved only by Json");
        }
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        jsonObjectBuilder.put("store", JsonElementKt.JsonPrimitive("PLAY_STORE"));
        jsonObjectBuilder.put("product_identifier", JsonElementKt.JsonPrimitive(value.getProductIdentifier()));
        jsonObjectBuilder.put("base_plan_identifier", JsonElementKt.JsonPrimitive(value.getBasePlanIdentifier()));
        Offer offer = value.getOffer();
        if (offer instanceof Offer.Automatic) {
            jsonObject = new JsonObject(MapsKt.mapOf(TuplesKt.to("type", JsonElementKt.JsonPrimitive(((Offer.Automatic) offer).getType()))));
        } else if (offer instanceof Offer.NoOffer) {
            jsonObject = new JsonObject(MapsKt.mapOf(TuplesKt.to("type", JsonElementKt.JsonPrimitive(Offer.NoOffer.TYPE))));
        } else {
            if (!(offer instanceof Offer.Specified)) {
                throw new NoWhenBranchMatchedException();
            }
            Offer.Specified specified = (Offer.Specified) offer;
            jsonObject = new JsonObject(MapsKt.mapOf(TuplesKt.to("type", JsonElementKt.JsonPrimitive(specified.getType())), TuplesKt.to("offer_identifier", JsonElementKt.JsonPrimitive(specified.getOfferIdentifier()))));
        }
        jsonObjectBuilder.put("offer", jsonObject);
        jsonEncoder.encodeJsonElement(jsonObjectBuilder.build());
    }

    /* JADX WARN: Code duplicated, block: B:68:0x00f8  */
    @Override // kotlinx.serialization.DeserializationStrategy
    public CrossplatformProduct.StoreProduct.PlayStore deserialize(Decoder decoder) {
        JsonObject jsonObject;
        JsonElement jsonElement;
        JsonPrimitive jsonPrimitive;
        String content;
        String content2;
        Offer.NoOffer automatic;
        JsonPrimitive jsonPrimitive2;
        String content3;
        JsonElement jsonElement2;
        JsonPrimitive jsonPrimitive3;
        JsonPrimitive jsonPrimitive4;
        JsonPrimitive jsonPrimitive5;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            throw new SerializationException("This class can be loaded only by Json");
        }
        JsonElement jsonElementDecodeJsonElement = jsonDecoder.decodeJsonElement();
        Intrinsics.checkNotNull(jsonElementDecodeJsonElement, "null cannot be cast to non-null type kotlinx.serialization.json.JsonObject");
        JsonObject jsonObject2 = (JsonObject) jsonElementDecodeJsonElement;
        JsonElement jsonElement3 = (JsonElement) jsonObject2.get((Object) "product_identifier");
        if (jsonElement3 == null || (jsonPrimitive5 = JsonElementKt.getJsonPrimitive(jsonElement3)) == null || (content = jsonPrimitive5.getContent()) == null) {
            JsonElement jsonElement4 = (JsonElement) jsonObject2.get((Object) "product");
            if (jsonElement4 != null && (jsonObject = JsonElementKt.getJsonObject(jsonElement4)) != null && (jsonElement = (JsonElement) jsonObject.get((Object) "product_identifier")) != null && (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement)) != null) {
                content = jsonPrimitive.getContent();
            } else {
                throw new SerializationException("product_identifier is missing");
            }
        }
        JsonElement jsonElement5 = (JsonElement) jsonObject2.get((Object) "base_plan_identifier");
        if (jsonElement5 == null || (jsonPrimitive4 = JsonElementKt.getJsonPrimitive(jsonElement5)) == null || (content2 = jsonPrimitive4.getContent()) == null) {
            content2 = "";
        }
        Object obj = jsonObject2.get((Object) "offer");
        JsonObject jsonObject3 = obj instanceof JsonObject ? (JsonObject) obj : null;
        String content4 = (jsonObject3 == null || (jsonElement2 = (JsonElement) jsonObject3.get((Object) "type")) == null || (jsonPrimitive3 = JsonElementKt.getJsonPrimitive(jsonElement2)) == null) ? null : jsonPrimitive3.getContent();
        if (content4 != null) {
            int iHashCode = content4.hashCode();
            if (iHashCode != -1606518210) {
                if (iHashCode != 165298699) {
                    if (iHashCode == 1091980688 && content4.equals("SPECIFIED")) {
                        JsonElement jsonElement6 = (JsonElement) jsonObject3.get((Object) "offer_identifier");
                        if (jsonElement6 == null || (jsonPrimitive2 = JsonElementKt.getJsonPrimitive(jsonElement6)) == null || (content3 = jsonPrimitive2.getContent()) == null) {
                            throw new SerializationException("offer_identifier is missing");
                        }
                        automatic = new Offer.Specified((String) null, content3, 1, (DefaultConstructorMarker) null);
                    } else {
                        automatic = Offer.NoOffer.INSTANCE;
                    }
                } else if (content4.equals("AUTOMATIC")) {
                    automatic = new Offer.Automatic((String) null, 1, (DefaultConstructorMarker) null);
                } else {
                    automatic = Offer.NoOffer.INSTANCE;
                }
            } else if (content4.equals(Offer.NoOffer.TYPE)) {
                automatic = Offer.NoOffer.INSTANCE;
            } else {
                automatic = Offer.NoOffer.INSTANCE;
            }
        } else {
            automatic = Offer.NoOffer.INSTANCE;
        }
        return new CrossplatformProduct.StoreProduct.PlayStore(content, content2, automatic);
    }
}
