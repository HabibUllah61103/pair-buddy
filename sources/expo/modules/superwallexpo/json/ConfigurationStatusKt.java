package expo.modules.superwallexpo.json;

import com.superwall.sdk.config.models.ConfigurationStatus;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConfigurationStatus.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"asString", "", "Lcom/superwall/sdk/config/models/ConfigurationStatus;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ConfigurationStatusKt {
    public static final String asString(ConfigurationStatus configurationStatus) {
        Intrinsics.checkNotNullParameter(configurationStatus, "<this>");
        if (Intrinsics.areEqual(configurationStatus, ConfigurationStatus.Pending.INSTANCE)) {
            return "PENDING";
        }
        if (Intrinsics.areEqual(configurationStatus, ConfigurationStatus.Configured.INSTANCE)) {
            return "CONFIGURED";
        }
        if (Intrinsics.areEqual(configurationStatus, ConfigurationStatus.Failed.INSTANCE)) {
            return "FAILED";
        }
        throw new NoWhenBranchMatchedException();
    }
}
