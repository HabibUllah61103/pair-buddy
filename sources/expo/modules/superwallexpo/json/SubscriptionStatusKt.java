package expo.modules.superwallexpo.json;

import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SubscriptionStatus.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class SubscriptionStatusKt {
    public static final Map<String, Object> toJson(SubscriptionStatus subscriptionStatus) {
        String str;
        Intrinsics.checkNotNullParameter(subscriptionStatus, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        boolean z = subscriptionStatus instanceof SubscriptionStatus.Active;
        if (z) {
            str = "ACTIVE";
        } else if (subscriptionStatus instanceof SubscriptionStatus.Inactive) {
            str = "INACTIVE";
        } else {
            if (!(subscriptionStatus instanceof SubscriptionStatus.Unknown)) {
                throw new NoWhenBranchMatchedException();
            }
            str = "UNKNOWN";
        }
        linkedHashMap.put("status", str);
        if (z) {
            Set<Entitlement> entitlements = ((SubscriptionStatus.Active) subscriptionStatus).getEntitlements();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(entitlements, 10));
            for (Entitlement entitlement : entitlements) {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("id", entitlement.getId());
                arrayList.add(linkedHashMap2);
            }
            linkedHashMap.put("entitlements", arrayList);
            return linkedHashMap;
        }
        if ((subscriptionStatus instanceof SubscriptionStatus.Inactive) || (subscriptionStatus instanceof SubscriptionStatus.Unknown)) {
            return linkedHashMap;
        }
        throw new NoWhenBranchMatchedException();
    }
}
