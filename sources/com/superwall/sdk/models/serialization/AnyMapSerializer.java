package com.superwall.sdk.models.serialization;

import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonObjectBuilder;

/* JADX INFO: compiled from: AnyMapSerializer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006J&\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002H\u0016J\u001e\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/models/serialization/AnyMapSerializer;", "Lkotlinx/serialization/KSerializer;", "", "", "", "<init>", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AnyMapSerializer implements KSerializer<Map<String, ? extends Object>> {
    public static final AnyMapSerializer INSTANCE = new AnyMapSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildClassSerialDescriptor("AnyMap", new SerialDescriptor[0], new Function1() { // from class: com.superwall.sdk.models.serialization.AnyMapSerializer$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return AnyMapSerializer.descriptor$lambda$0((ClassSerialDescriptorBuilder) obj);
        }
    });

    private AnyMapSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit descriptor$lambda$0(ClassSerialDescriptorBuilder buildClassSerialDescriptor) {
        Intrinsics.checkNotNullParameter(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
        SerialDescriptorsKt.mapSerialDescriptor(BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE).getDescriptor(), JsonElement.INSTANCE.serializer().getDescriptor());
        return Unit.INSTANCE;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Map<String, ? extends Object> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        JsonEncoder jsonEncoder = encoder instanceof JsonEncoder ? (JsonEncoder) encoder : null;
        if (jsonEncoder == null) {
            throw new SerializationException("This class can be saved only by Json");
        }
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        for (Map.Entry<String, ? extends Object> entry : value.entrySet()) {
            String key = entry.getKey();
            Object value2 = entry.getValue();
            if (value2 instanceof String) {
                jsonObjectBuilder.put(key, JsonElementKt.JsonPrimitive((String) value2));
            } else if (value2 instanceof Integer) {
                jsonObjectBuilder.put(key, JsonElementKt.JsonPrimitive((Number) value2));
            } else if (value2 instanceof Double) {
                jsonObjectBuilder.put(key, JsonElementKt.JsonPrimitive((Number) value2));
            } else if (value2 instanceof Boolean) {
                jsonObjectBuilder.put(key, JsonElementKt.JsonPrimitive((Boolean) value2));
            } else if (value2 == null) {
                jsonObjectBuilder.put(key, JsonNull.INSTANCE);
            } else {
                jsonObjectBuilder.put(key, JsonNull.INSTANCE);
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "!! Warning: Unsupported type " + Reflection.getOrCreateKotlinClass(value2.getClass()) + ", skipping...", null, null, 24, null);
                Unit unit = Unit.INSTANCE;
            }
        }
        jsonEncoder.encodeJsonElement(jsonObjectBuilder.build());
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Map<String, Object> deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            throw new SerializationException("This class can be loaded only by Json");
        }
        JsonObject jsonObject = JsonElementKt.getJsonObject(jsonDecoder.decodeJsonElement());
        ArrayList arrayList = new ArrayList(jsonObject.size());
        for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
            arrayList.add(TuplesKt.to(entry.getKey(), JsonElementKt.getJsonPrimitive(entry.getValue()).getContent()));
        }
        return MapsKt.toMap(arrayList);
    }
}
