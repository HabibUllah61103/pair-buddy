package com.superwall.sdk.paywall.presentation.rule_logic.cel;

import androidx.exifinterface.media.ExifInterface;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.ULong;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: compiled from: SuperscriptEvaluator.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00020\u0004H\u0000\u001a\f\u0010\u0000\u001a\u00020\u0006*\u00020\u0003H\u0000\u001a\f\u0010\u0000\u001a\u00020\u0006*\u00020\u0007H\u0002¨\u0006\b"}, d2 = {"toPassableValue", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;", "Lkotlinx/serialization/json/JsonElement;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SuperscriptEvaluatorKt {
    public static final PassableValue toPassableValue(Object obj) {
        PassableValue.NullValue passableValue;
        PassableValue passableValue2;
        PassableValue passableValue3;
        PassableValue passableValue4;
        Intrinsics.checkNotNullParameter(obj, "<this>");
        if (obj instanceof Integer) {
            return new PassableValue.IntValue(((Number) obj).intValue());
        }
        if (obj instanceof Long) {
            return new PassableValue.UIntValue(ULong.m11415constructorimpl(((Number) obj).longValue()), null);
        }
        if (obj instanceof ULong) {
            return new PassableValue.UIntValue(((ULong) obj).getData(), null);
        }
        if (obj instanceof Float) {
            return new PassableValue.FloatValue(((Number) obj).floatValue());
        }
        if (obj instanceof Double) {
            return new PassableValue.FloatValue(((Number) obj).doubleValue());
        }
        if (obj instanceof String) {
            return new PassableValue.StringValue(StringsKt.replace$default((String) obj, "$", "", false, 4, (Object) null));
        }
        if (obj instanceof byte[]) {
            return new PassableValue.BytesValue((byte[]) obj);
        }
        if (obj instanceof Boolean) {
            return new PassableValue.BoolValue(((Boolean) obj).booleanValue());
        }
        if (obj instanceof List) {
            Iterable iterable = (Iterable) obj;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
            for (Object obj2 : iterable) {
                if (obj2 == null || (passableValue4 = toPassableValue(obj2)) == null) {
                    passableValue4 = PassableValue.NullValue.INSTANCE;
                }
                arrayList.add(passableValue4);
            }
            return new PassableValue.ListValue(arrayList);
        }
        if (!(obj instanceof LinkedHashMap)) {
            if (!(obj instanceof Map)) {
                if (obj instanceof JsonElement) {
                    return toPassableValue((JsonElement) obj);
                }
                if (obj instanceof PassableValue) {
                    return (PassableValue) obj;
                }
                try {
                    try {
                        Map map = (Map) obj;
                        ArrayList arrayList2 = new ArrayList(map.size());
                        for (Map.Entry entry : map.entrySet()) {
                            String strValueOf = String.valueOf(entry.getKey());
                            Object value = entry.getValue();
                            if (value == null || (passableValue = toPassableValue(value)) == null) {
                                passableValue = PassableValue.NullValue.INSTANCE;
                            }
                            arrayList2.add(TuplesKt.to(strValueOf, passableValue));
                        }
                        return new PassableValue.MapValue(MapsKt.toMap(arrayList2));
                    } catch (Exception unused) {
                        Json.Companion companion = Json.INSTANCE;
                        return toPassableValue(companion.encodeToJsonElement(SerializersKt.noCompiledSerializer(companion.getSerializersModule(), Reflection.getOrCreateKotlinClass(Object.class)), obj));
                    }
                } catch (Exception unused2) {
                    Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.jsEvaluator, "Cannot serialize " + obj + "::class, evaluating as string", null, null, 24, null);
                    return new PassableValue.StringValue(obj.toString());
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry2 : ((Map) obj).entrySet()) {
                if (entry2.getKey() instanceof String) {
                    linkedHashMap.put(entry2.getKey(), entry2.getValue());
                }
            }
            LinkedHashMap linkedHashMap2 = linkedHashMap;
            LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap2.size()));
            for (Map.Entry entry3 : linkedHashMap2.entrySet()) {
                Object key = entry3.getKey();
                Intrinsics.checkNotNull(key, "null cannot be cast to non-null type kotlin.String");
                linkedHashMap3.put((String) key, entry3.getValue());
            }
            LinkedHashMap linkedHashMap4 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap3.size()));
            for (Map.Entry entry4 : linkedHashMap3.entrySet()) {
                Object key2 = entry4.getKey();
                Object value2 = entry4.getValue();
                if (value2 == null || (passableValue2 = toPassableValue(value2)) == null) {
                    passableValue2 = PassableValue.NullValue.INSTANCE;
                }
                linkedHashMap4.put(key2, passableValue2);
            }
            return new PassableValue.MapValue(MapsKt.toMap(linkedHashMap4));
        }
        LinkedHashMap linkedHashMap5 = new LinkedHashMap();
        for (Map.Entry entry5 : ((Map) obj).entrySet()) {
            if (entry5.getKey() instanceof String) {
                linkedHashMap5.put(entry5.getKey(), entry5.getValue());
            }
        }
        LinkedHashMap linkedHashMap6 = linkedHashMap5;
        LinkedHashMap linkedHashMap7 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap6.size()));
        for (Map.Entry entry6 : linkedHashMap6.entrySet()) {
            Object key3 = entry6.getKey();
            Intrinsics.checkNotNull(key3, "null cannot be cast to non-null type kotlin.String");
            linkedHashMap7.put((String) key3, entry6.getValue());
        }
        LinkedHashMap linkedHashMap8 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap7.size()));
        for (Map.Entry entry7 : linkedHashMap7.entrySet()) {
            Object key4 = entry7.getKey();
            Object value3 = entry7.getValue();
            if (value3 == null || (passableValue3 = toPassableValue(value3)) == null) {
                passableValue3 = PassableValue.NullValue.INSTANCE;
            }
            linkedHashMap8.put(key4, passableValue3);
        }
        return new PassableValue.MapValue(MapsKt.toMap(linkedHashMap8));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final PassableValue toPassableValue(JsonElement jsonElement) {
        if (jsonElement instanceof JsonObject) {
            Map map = (Map) jsonElement;
            LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map.size()));
            for (Map.Entry entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey(), toPassableValue((JsonElement) entry.getValue()));
            }
            return new PassableValue.MapValue(MapsKt.toMap(linkedHashMap));
        }
        if (jsonElement instanceof JsonArray) {
            Iterable iterable = (Iterable) jsonElement;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(toPassableValue((JsonElement) it.next()));
            }
            return new PassableValue.ListValue(arrayList);
        }
        if (!(jsonElement instanceof JsonPrimitive)) {
            throw new NoWhenBranchMatchedException();
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElement;
        if (jsonPrimitive.getIsString()) {
            return new PassableValue.StringValue(jsonPrimitive.getContent());
        }
        if (JsonElementKt.getBooleanOrNull(jsonPrimitive) != null) {
            return new PassableValue.BoolValue(JsonElementKt.getBoolean(jsonPrimitive));
        }
        if (JsonElementKt.getIntOrNull(jsonPrimitive) != null) {
            return new PassableValue.IntValue(JsonElementKt.getInt(jsonPrimitive));
        }
        if (JsonElementKt.getLongOrNull(jsonPrimitive) != null) {
            return new PassableValue.UIntValue(ULong.m11415constructorimpl(JsonElementKt.getLong(jsonPrimitive)), null);
        }
        return JsonElementKt.getDoubleOrNull(jsonPrimitive) != null ? new PassableValue.FloatValue(JsonElementKt.getDouble(jsonPrimitive)) : new PassableValue.StringValue(jsonPrimitive.getContent());
    }

    public static final <T> PassableValue.MapValue toPassableValue(Map<String, ? extends T> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map.size()));
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), toPassableValue(entry.getValue()));
        }
        return new PassableValue.MapValue(MapsKt.toMap(linkedHashMap));
    }
}
