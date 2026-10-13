package expo.modules.superwallexpo.json;

import com.superwall.sdk.paywall.presentation.result.PresentationResult;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PresentationResult.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class PresentationResultKt {
    public static final Map<String, Object> toJson(PresentationResult presentationResult) {
        Intrinsics.checkNotNullParameter(presentationResult, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (presentationResult instanceof PresentationResult.Holdout) {
            linkedHashMap.put("type", "Holdout");
            linkedHashMap.put("experiment", Experiment.INSTANCE.toJson(((PresentationResult.Holdout) presentationResult).getExperiment()));
            return linkedHashMap;
        }
        if (presentationResult instanceof PresentationResult.Paywall) {
            linkedHashMap.put("type", "Paywall");
            linkedHashMap.put("experiment", Experiment.INSTANCE.toJson(((PresentationResult.Paywall) presentationResult).getExperiment()));
            return linkedHashMap;
        }
        if (presentationResult instanceof PresentationResult.NoAudienceMatch) {
            linkedHashMap.put("type", "NoAudienceMatch");
            return linkedHashMap;
        }
        if (presentationResult instanceof PresentationResult.PlacementNotFound) {
            linkedHashMap.put("type", "PlacementNotFound");
            return linkedHashMap;
        }
        if (!(presentationResult instanceof PresentationResult.PaywallNotAvailable)) {
            throw new NoWhenBranchMatchedException();
        }
        linkedHashMap.put("type", "PaywallNotAvailable");
        return linkedHashMap;
    }
}
