package expo.modules.superwallexpo.json;

import com.superwall.sdk.models.config.FeatureGatingBehavior;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FeatureGatingBehavior.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"rawValue", "", "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class FeatureGatingBehaviorKt {
    public static final String rawValue(FeatureGatingBehavior featureGatingBehavior) {
        Intrinsics.checkNotNullParameter(featureGatingBehavior, "<this>");
        if (Intrinsics.areEqual(featureGatingBehavior, FeatureGatingBehavior.Gated.INSTANCE)) {
            return "gated";
        }
        if (Intrinsics.areEqual(featureGatingBehavior, FeatureGatingBehavior.NonGated.INSTANCE)) {
            return "nonGated";
        }
        throw new NoWhenBranchMatchedException();
    }
}
