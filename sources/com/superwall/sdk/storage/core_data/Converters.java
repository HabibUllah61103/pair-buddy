package com.superwall.sdk.storage.core_data;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: compiled from: Converters.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0007H\u0007J\u001c\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00072\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007J\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000bH\u0007¢\u0006\u0002\u0010\u0010J&\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00072\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0007¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/storage/core_data/Converters;", "", "<init>", "()V", "fromMap", "", "map", "", "toMap", "json", "toDate", "Ljava/util/Date;", "timestamp", "", "toTimestamp", "date", "(Ljava/util/Date;)Ljava/lang/Long;", "sanitizeMap", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Converters {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<Json> jsonParser$delegate = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.storage.core_data.Converters$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Converters.jsonParser_delegate$lambda$2();
        }
    });

    /* JADX INFO: compiled from: Converters.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/storage/core_data/Converters$Companion;", "", "<init>", "()V", "jsonParser", "Lkotlinx/serialization/json/Json;", "getJsonParser", "()Lkotlinx/serialization/json/Json;", "jsonParser$delegate", "Lkotlin/Lazy;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Json getJsonParser() {
            return (Json) Converters.jsonParser$delegate.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Json jsonParser_delegate$lambda$2() {
        return JsonKt.Json$default(null, new Function1() { // from class: com.superwall.sdk.storage.core_data.Converters$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Converters.jsonParser_delegate$lambda$2$lambda$1((JsonBuilder) obj);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit jsonParser_delegate$lambda$2$lambda$1(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setIgnoreUnknownKeys(true);
        Json.setLenient(true);
        return Unit.INSTANCE;
    }

    public final String fromMap(Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        return ConvertersKt.fromTypedMap(INSTANCE.getJsonParser(), sanitizeMap(map));
    }

    public final Map<String, Object> toMap(String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        return sanitizeMap(ConvertersKt.toTypedMap(INSTANCE.getJsonParser(), json));
    }

    public final Date toDate(long timestamp) {
        return new Date(timestamp);
    }

    public final Long toTimestamp(Date date) {
        if (date != null) {
            return Long.valueOf(date.getTime());
        }
        return null;
    }

    public final Map<String, Object> sanitizeMap(Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if ((value instanceof String) || (value instanceof Number) || (value instanceof Boolean) || (value instanceof Date) || (value instanceof List) || (value instanceof Map)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }
}
