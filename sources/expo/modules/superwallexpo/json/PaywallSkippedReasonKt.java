package expo.modules.superwallexpo.json;

import com.superwall.sdk.paywall.presentation.internal.state.PaywallSkippedReason;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaywallSkippedReason.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class PaywallSkippedReasonKt {
    public static final Map<String, Object> toJson(PaywallSkippedReason paywallSkippedReason) {
        Intrinsics.checkNotNullParameter(paywallSkippedReason, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (paywallSkippedReason instanceof PaywallSkippedReason.Holdout) {
            linkedHashMap.put("type", "Holdout");
            linkedHashMap.put("experiment", Experiment.INSTANCE.toJson(((PaywallSkippedReason.Holdout) paywallSkippedReason).getExperiment()));
            return linkedHashMap;
        }
        if (paywallSkippedReason instanceof PaywallSkippedReason.NoAudienceMatch) {
            linkedHashMap.put("type", "NoAudienceMatch");
            return linkedHashMap;
        }
        if (paywallSkippedReason instanceof PaywallSkippedReason.PlacementNotFound) {
            linkedHashMap.put("type", "PlacementNotFound");
            return linkedHashMap;
        }
        if (!(paywallSkippedReason instanceof PaywallSkippedReason.UserIsSubscribed)) {
            throw new NoWhenBranchMatchedException();
        }
        linkedHashMap.put("type", "UserIsSubscribed");
        return linkedHashMap;
    }
}
