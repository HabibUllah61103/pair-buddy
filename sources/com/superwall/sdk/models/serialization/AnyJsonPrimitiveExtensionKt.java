package com.superwall.sdk.models.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: compiled from: AnyJsonPrimitiveExtension.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\f\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0002¨\u0006\u0005"}, d2 = {"isJsonPrimitable", "", "", "jsonPrimitive", "Lkotlinx/serialization/json/JsonPrimitive;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class AnyJsonPrimitiveExtensionKt {
    public static final boolean isJsonPrimitable(Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Double);
    }

    public static final JsonPrimitive jsonPrimitive(Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        if (obj instanceof String) {
            return JsonElementKt.JsonPrimitive((String) obj);
        }
        if (obj instanceof Boolean) {
            return JsonElementKt.JsonPrimitive((Boolean) obj);
        }
        if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Double)) {
            return JsonElementKt.JsonPrimitive((Number) obj);
        }
        return null;
    }
}
