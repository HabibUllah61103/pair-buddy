package com.superwall.sdk.models.product;

import androidx.core.os.EnvironmentCompat;
import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Metadata;
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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/models/product/OtherSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;", "<init>", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OtherSerializer implements KSerializer<CrossplatformProduct.StoreProduct.Other> {
    public static final OtherSerializer INSTANCE = new OtherSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildClassSerialDescriptor$default("Other", new SerialDescriptor[0], null, 4, null);

    private OtherSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, CrossplatformProduct.StoreProduct.Other value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        JsonEncoder jsonEncoder = encoder instanceof JsonEncoder ? (JsonEncoder) encoder : null;
        if (jsonEncoder == null) {
            throw new SerializationException("This class can be saved only by Json");
        }
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        jsonObjectBuilder.put("store", JsonElementKt.JsonPrimitive("OTHER"));
        jsonObjectBuilder.put("store", JsonElementKt.JsonPrimitive(value.getStoreType()));
        jsonEncoder.encodeJsonElement(jsonObjectBuilder.build());
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public CrossplatformProduct.StoreProduct.Other deserialize(Decoder decoder) {
        String content;
        String content2;
        JsonPrimitive jsonPrimitive;
        JsonPrimitive jsonPrimitive2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            throw new SerializationException("This class can be loaded only by Json");
        }
        JsonElement jsonElementDecodeJsonElement = jsonDecoder.decodeJsonElement();
        Intrinsics.checkNotNull(jsonElementDecodeJsonElement, "null cannot be cast to non-null type kotlinx.serialization.json.JsonObject");
        JsonObject jsonObject = (JsonObject) jsonElementDecodeJsonElement;
        JsonElement jsonElement = (JsonElement) jsonObject.get((Object) "store");
        if (jsonElement == null || (jsonPrimitive2 = JsonElementKt.getJsonPrimitive(jsonElement)) == null || (content = jsonPrimitive2.getContent()) == null) {
            content = "OTHER";
        }
        String str = content;
        JsonElement jsonElement2 = (JsonElement) jsonObject.get((Object) "product_identifier");
        if (jsonElement2 == null || (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement2)) == null || (content2 = jsonPrimitive.getContent()) == null) {
            content2 = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return new CrossplatformProduct.StoreProduct.Other(str, content2, null, 4, null);
    }
}
