package com.superwall.sdk.models.product;

import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/models/product/StripeSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Stripe;", "<init>", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StripeSerializer implements KSerializer<CrossplatformProduct.StoreProduct.Stripe> {
    public static final StripeSerializer INSTANCE = new StripeSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildClassSerialDescriptor$default("Stripe", new SerialDescriptor[0], null, 4, null);

    private StripeSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, CrossplatformProduct.StoreProduct.Stripe value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        JsonEncoder jsonEncoder = encoder instanceof JsonEncoder ? (JsonEncoder) encoder : null;
        if (jsonEncoder == null) {
            throw new SerializationException("This class can be saved only by Json");
        }
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        jsonObjectBuilder.put("store", JsonElementKt.JsonPrimitive("STRIPE"));
        jsonObjectBuilder.put("environment", JsonElementKt.JsonPrimitive(value.getEnvironment()));
        jsonObjectBuilder.put("product_identifier", JsonElementKt.JsonPrimitive(value.getProductIdentifier()));
        jsonObjectBuilder.put("trial_days", JsonElementKt.JsonPrimitive(Integer.valueOf(value.getTrialDays())));
        jsonObjectBuilder.put("meta", value.getMeta());
        jsonEncoder.encodeJsonElement(jsonObjectBuilder.build());
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public CrossplatformProduct.StoreProduct.Stripe deserialize(Decoder decoder) {
        JsonPrimitive jsonPrimitive;
        String content;
        JsonPrimitive jsonPrimitive2;
        String content2;
        JsonPrimitive jsonPrimitive3;
        String content3;
        Integer intOrNull;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            throw new SerializationException("This class can be loaded only by Json");
        }
        JsonElement jsonElementDecodeJsonElement = jsonDecoder.decodeJsonElement();
        Intrinsics.checkNotNull(jsonElementDecodeJsonElement, "null cannot be cast to non-null type kotlinx.serialization.json.JsonObject");
        JsonObject jsonObject = (JsonObject) jsonElementDecodeJsonElement;
        JsonElement jsonElement = (JsonElement) jsonObject.get((Object) "environment");
        if (jsonElement == null || (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement)) == null || (content = jsonPrimitive.getContent()) == null) {
            throw new SerializationException("environment is missing");
        }
        JsonElement jsonElement2 = (JsonElement) jsonObject.get((Object) "product_identifier");
        if (jsonElement2 == null || (jsonPrimitive2 = JsonElementKt.getJsonPrimitive(jsonElement2)) == null || (content2 = jsonPrimitive2.getContent()) == null) {
            throw new SerializationException("product_identifier is missing");
        }
        JsonElement jsonElement3 = (JsonElement) jsonObject.get((Object) "trial_days");
        int iIntValue = (jsonElement3 == null || (jsonPrimitive3 = JsonElementKt.getJsonPrimitive(jsonElement3)) == null || (content3 = jsonPrimitive3.getContent()) == null || (intOrNull = StringsKt.toIntOrNull(content3)) == null) ? 0 : intOrNull.intValue();
        Object obj = jsonObject.get((Object) "meta");
        JsonObject jsonObject2 = obj instanceof JsonObject ? (JsonObject) obj : null;
        if (jsonObject2 == null) {
            jsonObject2 = new JsonObject(MapsKt.emptyMap());
        }
        return new CrossplatformProduct.StoreProduct.Stripe(content, content2, iIntValue, jsonObject2);
    }
}
