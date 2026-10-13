package expo.modules.superwallexpo.json;

import com.google.firebase.messaging.Constants;
import com.superwall.sdk.delegate.PurchaseResult;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PurchaseResult.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¨\u0006\u0006"}, d2 = {"purchaseResultFromJson", "Lcom/superwall/sdk/delegate/PurchaseResult;", "json", "", "", "", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class PurchaseResultKt {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final PurchaseResult purchaseResultFromJson(Map<String, ? extends Object> json) {
        Intrinsics.checkNotNullParameter(json, "json");
        Object obj = json.get("type");
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
        String str = (String) obj;
        switch (str.hashCode()) {
            case -1791517821:
                if (str.equals("purchased")) {
                    return new PurchaseResult.Purchased();
                }
                break;
            case -1281977283:
                if (str.equals("failed")) {
                    String str2 = (String) json.get(Constants.IPC_BUNDLE_KEY_SEND_ERROR);
                    if (str2 == null) {
                        str2 = "Unknown error";
                    }
                    return new PurchaseResult.Failed(str2);
                }
                break;
            case -682587753:
                if (str.equals("pending")) {
                    return new PurchaseResult.Pending();
                }
                break;
            case 476588369:
                if (str.equals("cancelled")) {
                    return new PurchaseResult.Cancelled();
                }
                break;
        }
        return new PurchaseResult.Failed("Unknown Purchase Result type");
    }
}
