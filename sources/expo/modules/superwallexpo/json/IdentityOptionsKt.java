package expo.modules.superwallexpo.json;

import com.superwall.sdk.identity.IdentityOptions;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IdentityOptions.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¨\u0006\u0006"}, d2 = {"identityOptionsFromJson", "Lcom/superwall/sdk/identity/IdentityOptions;", "json", "", "", "", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class IdentityOptionsKt {
    public static final IdentityOptions identityOptionsFromJson(Map<String, ? extends Object> json) {
        Intrinsics.checkNotNullParameter(json, "json");
        Object obj = json.get("restorePaywallAssignments");
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
        return new IdentityOptions(((Boolean) obj).booleanValue());
    }
}
