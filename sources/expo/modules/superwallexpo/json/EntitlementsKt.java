package expo.modules.superwallexpo.json;

import com.superwall.sdk.models.entitlements.Entitlement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Entitlements.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00060\u0005\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002*\u00020\u0006¨\u0006\u0007"}, d2 = {"toJson", "", "", "", "", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class EntitlementsKt {
    public static final List<Map<String, Object>> toJson(Set<Entitlement> set) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(toJson((Entitlement) it.next()));
        }
        return arrayList;
    }

    public static final Map<String, Object> toJson(Entitlement entitlement) {
        Intrinsics.checkNotNullParameter(entitlement, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("id", entitlement.getId());
        linkedHashMap.put("type", entitlement.getType().toString());
        return linkedHashMap;
    }
}
