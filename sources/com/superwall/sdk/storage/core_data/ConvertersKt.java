package com.superwall.sdk.storage.core_data;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: Converters.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0014\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u001a\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050\u0004*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001\u001a\u001e\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050\u0004*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001\u001a\f\u0010\t\u001a\u00020\n*\u0004\u0018\u00010\u0005\u001a\f\u0010\u000b\u001a\u0004\u0018\u00010\u0005*\u00020\n¨\u0006\f"}, d2 = {"fromTypedMap", "", "Lkotlinx/serialization/json/Json;", "map", "", "", "toTypedMap", "jsonStr", "toNullableTypedMap", "convertToJsonElement", "Lkotlinx/serialization/json/JsonElement;", "convertFromJsonElement", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ConvertersKt {
    public static final JsonElement convertToJsonElement(Object obj) {
        JsonNull jsonNullJsonPrimitive;
        if (obj == null) {
            return JsonNull.INSTANCE;
        }
        if (obj instanceof String) {
            return JsonElementKt.JsonPrimitive((String) obj);
        }
        if (obj instanceof Number) {
            return JsonElementKt.JsonPrimitive((Number) obj);
        }
        if (obj instanceof Boolean) {
            return JsonElementKt.JsonPrimitive((Boolean) obj);
        }
        if (obj instanceof Date) {
            return JsonElementKt.JsonPrimitive(Long.valueOf(((Date) obj).getTime()));
        }
        if (!(obj instanceof JSONArray)) {
            if (obj instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) obj;
                Iterator<String> itKeys = jSONObject.keys();
                Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
                Sequence sequenceAsSequence = SequencesKt.asSequence(itKeys);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj2 : sequenceAsSequence) {
                    linkedHashMap.put(obj2, convertToJsonElement(jSONObject.get((String) obj2)));
                }
                return new JsonObject(linkedHashMap);
            }
            if (!(obj instanceof List)) {
                if (!(obj instanceof Object[])) {
                    if (obj instanceof Map) {
                        Set<Map.Entry> setEntrySet = ((Map) obj).entrySet();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(setEntrySet, 10)), 16));
                        for (Map.Entry entry : setEntrySet) {
                            Pair pair = TuplesKt.to(String.valueOf(entry.getKey()), convertToJsonElement(entry.getValue()));
                            linkedHashMap2.put(pair.getFirst(), pair.getSecond());
                        }
                        return new JsonObject(linkedHashMap2);
                    }
                    if (Date.class.isInstance(obj)) {
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.util.Date");
                        jsonNullJsonPrimitive = JsonElementKt.JsonPrimitive(Long.valueOf(((Date) obj).getTime()));
                    } else {
                        jsonNullJsonPrimitive = JsonNull.INSTANCE;
                    }
                    return jsonNullJsonPrimitive;
                }
                Object[] objArr = (Object[]) obj;
                ArrayList arrayList = new ArrayList(objArr.length);
                for (Object obj3 : objArr) {
                    arrayList.add(convertToJsonElement(obj3));
                }
                return new JsonArray(arrayList);
            }
            Iterable iterable = (Iterable) obj;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList2.add(convertToJsonElement(it.next()));
            }
            return new JsonArray(arrayList2);
        }
        JSONArray jSONArray = (JSONArray) obj;
        IntRange intRangeUntil = RangesKt.until(0, jSONArray.length());
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it2 = intRangeUntil.iterator();
        while (it2.hasNext()) {
            arrayList3.add(convertToJsonElement(jSONArray.get(((IntIterator) it2).nextInt())));
        }
        return new JsonArray(arrayList3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Object convertFromJsonElement(JsonElement jsonElement) {
        Intrinsics.checkNotNullParameter(jsonElement, "<this>");
        if (jsonElement instanceof JsonNull) {
            return null;
        }
        if (jsonElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElement;
            if (jsonPrimitive.getIsString()) {
                return jsonPrimitive.getContent();
            }
            if (JsonElementKt.getIntOrNull(jsonPrimitive) != null) {
                return Double.valueOf(JsonElementKt.getInt(jsonPrimitive));
            }
            if (JsonElementKt.getLongOrNull(jsonPrimitive) != null) {
                return Long.valueOf(JsonElementKt.getLong(jsonPrimitive));
            }
            if (JsonElementKt.getDoubleOrNull(jsonPrimitive) != null) {
                return Double.valueOf(JsonElementKt.getDouble(jsonPrimitive));
            }
            return JsonElementKt.getBooleanOrNull(jsonPrimitive) != null ? Boolean.valueOf(JsonElementKt.getBoolean(jsonPrimitive)) : jsonPrimitive.getContent();
        }
        if (!(jsonElement instanceof JsonArray)) {
            if (!(jsonElement instanceof JsonObject)) {
                throw new NoWhenBranchMatchedException();
            }
            Map map = (Map) jsonElement;
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(TuplesKt.to((String) entry.getKey(), convertFromJsonElement((JsonElement) entry.getValue())));
            }
            return MapsKt.toMap(arrayList);
        }
        Iterable iterable = (Iterable) jsonElement;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList2.add(convertFromJsonElement((JsonElement) it.next()));
        }
        return arrayList2;
    }

    public static final String fromTypedMap(Json json, Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(json, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map.size()));
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), convertToJsonElement(entry.getValue()));
        }
        JsonObject jsonObject = new JsonObject(MapsKt.toMap(linkedHashMap));
        Json json2 = json;
        json2.getSerializersModule();
        return json2.encodeToString(JsonObject.INSTANCE.serializer(), jsonObject);
    }

    public static final Map<String, Object> toTypedMap(Json json, String jsonStr) {
        Intrinsics.checkNotNullParameter(json, "<this>");
        Intrinsics.checkNotNullParameter(jsonStr, "jsonStr");
        json.getSerializersModule();
        JsonObject jsonObject = (JsonObject) json.decodeFromString(JsonObject.INSTANCE.serializer(), jsonStr);
        ArrayList arrayList = new ArrayList(jsonObject.size());
        for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
            arrayList.add(TuplesKt.to(entry.getKey(), convertFromJsonElement(entry.getValue())));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((Pair) obj).getSecond() != null) {
                arrayList2.add(obj);
            }
        }
        Map<String, Object> map = MapsKt.toMap(arrayList2);
        Intrinsics.checkNotNull(map, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.Any>");
        return map;
    }

    public static final Map<String, Object> toNullableTypedMap(Json json, String jsonStr) {
        Intrinsics.checkNotNullParameter(json, "<this>");
        Intrinsics.checkNotNullParameter(jsonStr, "jsonStr");
        json.getSerializersModule();
        JsonObject jsonObject = (JsonObject) json.decodeFromString(JsonObject.INSTANCE.serializer(), jsonStr);
        ArrayList arrayList = new ArrayList(jsonObject.size());
        for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
            arrayList.add(TuplesKt.to(entry.getKey(), convertFromJsonElement(entry.getValue())));
        }
        Map<String, Object> map = MapsKt.toMap(arrayList);
        Intrinsics.checkNotNull(map, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.Any>");
        return map;
    }
}
