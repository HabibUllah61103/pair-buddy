package com.superwall.sdk.network.device;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonArrayBuilder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementBuildersKt;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObjectBuilder;

/* JADX INFO: compiled from: Capability.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0000\u001a\u0012\u0010\u0004\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0000¨\u0006\u0006"}, d2 = {"toJson", "Lkotlinx/serialization/json/JsonElement;", "", "Lcom/superwall/sdk/network/device/Capability;", "namesCommaSeparated", "", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class CapabilityKt {
    public static final String namesCommaSeparated(List<? extends Capability> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return CollectionsKt.joinToString$default(list, ",", null, null, 0, null, new Function1() { // from class: com.superwall.sdk.network.device.CapabilityKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CapabilityKt.namesCommaSeparated$lambda$4((Capability) obj);
            }
        }, 30, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence namesCommaSeparated$lambda$4(Capability it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getName();
    }

    public static final JsonElement toJson(List<? extends Capability> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        JsonArrayBuilder jsonArrayBuilder = new JsonArrayBuilder();
        for (Capability capability : list) {
            JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
            JsonElementBuildersKt.put(jsonObjectBuilder, "type", capability.getName());
            JsonElementBuildersKt.put(jsonObjectBuilder, "name", capability.getName());
            if (capability instanceof Capability.PaywallEventReceiver) {
                List<String> eventNames = ((Capability.PaywallEventReceiver) capability).getEventNames();
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(eventNames, 10));
                Iterator<T> it = eventNames.iterator();
                while (it.hasNext()) {
                    arrayList.add(JsonElementKt.JsonPrimitive((String) it.next()));
                }
                jsonObjectBuilder.put("event_names", new JsonArray(arrayList));
            }
            jsonArrayBuilder.add(jsonObjectBuilder.build());
        }
        return jsonArrayBuilder.build();
    }
}
