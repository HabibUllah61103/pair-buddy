package expo.modules.superwallexpo.json;

import com.facebook.hermes.intl.Constants;
import com.superwall.sdk.models.assignment.ConfirmedAssignment;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConfirmedAssignment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ConfirmedAssignmentKt {
    public static final Map<String, Object> toJson(ConfirmedAssignment confirmedAssignment) {
        Intrinsics.checkNotNullParameter(confirmedAssignment, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("experimentId", confirmedAssignment.getExperimentId());
        linkedHashMap.put(Constants.SENSITIVITY_VARIANT, VariantKt.toJson(confirmedAssignment.getVariant()));
        return linkedHashMap;
    }
}
