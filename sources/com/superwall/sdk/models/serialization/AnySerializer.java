package com.superwall.sdk.models.serialization;

import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.BooleanCompanionObject;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: compiled from: AnySerializer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u001c\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u001cH\u0002J\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u001fH\u0002J\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u0006X\u0082\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u0006X\u0082\u0004¢\u0006\b\n\u0000\u0012\u0004\b\r\u0010\u0004¨\u0006!"}, d2 = {"Lcom/superwall/sdk/models/serialization/AnySerializer;", "Lkotlinx/serialization/KSerializer;", "", "<init>", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor$annotations", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "listDescriptor", "getListDescriptor$annotations", "mapDescriptor", "getMapDescriptor$annotations", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "deserializePrimitive", "element", "Lkotlinx/serialization/json/JsonPrimitive;", "deserializeObject", "", "", "Lkotlinx/serialization/json/JsonObject;", "deserializeArray", "", "Lkotlinx/serialization/json/JsonArray;", "serializerFor", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AnySerializer implements KSerializer<Object> {
    public static final AnySerializer INSTANCE = new AnySerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildSerialDescriptor$default("Any", StructureKind.OBJECT.INSTANCE, new SerialDescriptor[0], null, 8, null);
    private static final SerialDescriptor listDescriptor = SerialDescriptorsKt.buildSerialDescriptor$default("List<Any>", StructureKind.LIST.INSTANCE, new SerialDescriptor[0], null, 8, null);
    private static final SerialDescriptor mapDescriptor = SerialDescriptorsKt.buildSerialDescriptor$default("Map<String, Any>", StructureKind.MAP.INSTANCE, new SerialDescriptor[0], null, 8, null);

    public static /* synthetic */ void getDescriptor$annotations() {
    }

    private static /* synthetic */ void getListDescriptor$annotations() {
    }

    private static /* synthetic */ void getMapDescriptor$annotations() {
    }

    private AnySerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Object value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof String) {
            encoder.encodeString((String) value);
            return;
        }
        if (value instanceof Boolean) {
            encoder.encodeBoolean(((Boolean) value).booleanValue());
            return;
        }
        if (value instanceof Integer) {
            encoder.encodeInt(((Number) value).intValue());
            return;
        }
        if (value instanceof Long) {
            encoder.encodeLong(((Number) value).longValue());
            return;
        }
        if (value instanceof Float) {
            encoder.encodeFloat(((Number) value).floatValue());
            return;
        }
        if (value instanceof Double) {
            encoder.encodeDouble(((Number) value).doubleValue());
            return;
        }
        if (value instanceof List) {
            encoder.encodeSerializableValue(BuiltinSerializersKt.ListSerializer(INSTANCE), CollectionsKt.filterNotNull((Iterable) value));
            return;
        }
        if (value instanceof Map) {
            Set setEntrySet = ((Map) value).entrySet();
            ArrayList arrayList = new ArrayList();
            for (Object obj : setEntrySet) {
                if (((Map.Entry) obj).getValue() != null) {
                    arrayList.add(obj);
                }
            }
            ArrayList<Map.Entry> arrayList2 = arrayList;
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList2, 10)), 16));
            for (Map.Entry entry : arrayList2) {
                String strValueOf = String.valueOf(entry.getKey());
                Object value2 = entry.getValue();
                Intrinsics.checkNotNull(value2);
                Pair pair = TuplesKt.to(strValueOf, value2);
                linkedHashMap.put(pair.getFirst(), pair.getSecond());
            }
            encoder.encodeSerializableValue(BuiltinSerializersKt.MapSerializer(BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), INSTANCE), linkedHashMap);
            return;
        }
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "Warning: Unsupported type " + Reflection.getOrCreateKotlinClass(value.getClass()) + ", skipping...", null, null, 24, null);
        encoder.encodeNull();
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Object deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            throw new SerializationException("This class can be loaded only by Json");
        }
        JsonElement jsonElementDecodeJsonElement = jsonDecoder.decodeJsonElement();
        if (jsonElementDecodeJsonElement instanceof JsonPrimitive) {
            return deserializePrimitive((JsonPrimitive) jsonElementDecodeJsonElement);
        }
        if (jsonElementDecodeJsonElement instanceof JsonObject) {
            return deserializeObject((JsonObject) jsonElementDecodeJsonElement);
        }
        if (jsonElementDecodeJsonElement instanceof JsonArray) {
            return deserializeArray((JsonArray) jsonElementDecodeJsonElement);
        }
        throw new SerializationException("Unknown type");
    }

    private final Object deserializePrimitive(JsonPrimitive element) {
        if (element.getIsString()) {
            return element.getContent();
        }
        if (JsonElementKt.getBooleanOrNull(element) != null) {
            return Boolean.valueOf(JsonElementKt.getBoolean(element));
        }
        if (JsonElementKt.getIntOrNull(element) != null) {
            return Integer.valueOf(JsonElementKt.getInt(element));
        }
        if (JsonElementKt.getLongOrNull(element) != null) {
            return Long.valueOf(JsonElementKt.getLong(element));
        }
        if (JsonElementKt.getDoubleOrNull(element) != null) {
            return Double.valueOf(JsonElementKt.getDouble(element));
        }
        throw new SerializationException("Unknown primitive type");
    }

    private final Map<String, Object> deserializeObject(JsonObject element) {
        Object objDeserializeArray;
        JsonObject jsonObject = element;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(jsonObject.size()));
        Iterator<T> it = jsonObject.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            JsonElement jsonElement = (JsonElement) entry.getValue();
            if (jsonElement instanceof JsonPrimitive) {
                objDeserializeArray = INSTANCE.deserializePrimitive((JsonPrimitive) jsonElement);
            } else if (jsonElement instanceof JsonObject) {
                objDeserializeArray = INSTANCE.deserializeObject((JsonObject) jsonElement);
            } else {
                if (!(jsonElement instanceof JsonArray)) {
                    throw new SerializationException("Unknown type in JsonObject");
                }
                objDeserializeArray = INSTANCE.deserializeArray((JsonArray) jsonElement);
            }
            linkedHashMap.put(key, objDeserializeArray);
        }
        return MapsKt.toMap(linkedHashMap);
    }

    private final List<Object> deserializeArray(JsonArray element) {
        Object objDeserializeArray;
        JsonArray jsonArray = element;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(jsonArray, 10));
        for (JsonElement jsonElement : jsonArray) {
            if (jsonElement instanceof JsonPrimitive) {
                objDeserializeArray = INSTANCE.deserializePrimitive((JsonPrimitive) jsonElement);
            } else if (jsonElement instanceof JsonObject) {
                objDeserializeArray = INSTANCE.deserializeObject((JsonObject) jsonElement);
            } else {
                if (!(jsonElement instanceof JsonArray)) {
                    throw new SerializationException("Unknown type in JsonArray");
                }
                objDeserializeArray = INSTANCE.deserializeArray((JsonArray) jsonElement);
            }
            arrayList.add(objDeserializeArray);
        }
        return arrayList;
    }

    public final KSerializer<Object> serializerFor(Object value) {
        AnySerializer anySerializerMapSerializer;
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof String) {
            anySerializerMapSerializer = BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE);
        } else if (value instanceof Boolean) {
            anySerializerMapSerializer = BuiltinSerializersKt.serializer(BooleanCompanionObject.INSTANCE);
        } else if (value instanceof Integer) {
            anySerializerMapSerializer = BuiltinSerializersKt.serializer(IntCompanionObject.INSTANCE);
        } else if (value instanceof Long) {
            anySerializerMapSerializer = BuiltinSerializersKt.serializer(LongCompanionObject.INSTANCE);
        } else if (value instanceof Float) {
            anySerializerMapSerializer = BuiltinSerializersKt.serializer(FloatCompanionObject.INSTANCE);
        } else if (value instanceof Double) {
            anySerializerMapSerializer = BuiltinSerializersKt.serializer(DoubleCompanionObject.INSTANCE);
        } else if (value instanceof List) {
            anySerializerMapSerializer = BuiltinSerializersKt.ListSerializer(INSTANCE);
        } else {
            anySerializerMapSerializer = value instanceof Map ? BuiltinSerializersKt.MapSerializer(BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), INSTANCE) : INSTANCE;
        }
        Intrinsics.checkNotNull(anySerializerMapSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>");
        return anySerializerMapSerializer;
    }
}
