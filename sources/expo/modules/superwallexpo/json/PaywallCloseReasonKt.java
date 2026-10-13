package expo.modules.superwallexpo.json;

import com.superwall.sdk.paywall.presentation.PaywallCloseReason;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaywallCloseReason.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"rawValue", "", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class PaywallCloseReasonKt {
    public static final String rawValue(PaywallCloseReason paywallCloseReason) {
        Intrinsics.checkNotNullParameter(paywallCloseReason, "<this>");
        if (paywallCloseReason instanceof PaywallCloseReason.SystemLogic) {
            return "systemLogic";
        }
        if (paywallCloseReason instanceof PaywallCloseReason.ForNextPaywall) {
            return "forNextPaywall";
        }
        if (paywallCloseReason instanceof PaywallCloseReason.WebViewFailedToLoad) {
            return "webViewFailedToLoad";
        }
        if (paywallCloseReason instanceof PaywallCloseReason.ManualClose) {
            return "manualClose";
        }
        if (paywallCloseReason instanceof PaywallCloseReason.None) {
            return "none";
        }
        throw new NoWhenBranchMatchedException();
    }
}
