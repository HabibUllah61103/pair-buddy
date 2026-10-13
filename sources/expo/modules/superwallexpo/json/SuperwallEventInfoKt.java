package expo.modules.superwallexpo.json;

import androidx.core.app.NotificationCompat;
import com.superwall.sdk.analytics.superwall.SuperwallEventInfo;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SuperwallEventInfo.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class SuperwallEventInfoKt {
    public static final Map<String, Object> toJson(SuperwallEventInfo superwallEventInfo) {
        Intrinsics.checkNotNullParameter(superwallEventInfo, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, SuperwallEvent.INSTANCE.toJson(superwallEventInfo.getEvent()));
        linkedHashMap.put("params", superwallEventInfo.getParams());
        return linkedHashMap;
    }
}
