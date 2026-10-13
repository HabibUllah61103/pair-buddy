package expo.modules.superwallexpo.json;

import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatus;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaywallPresentationRequestStatus.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0005¨\u0006\u0006"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatus;", "Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class PaywallPresentationRequestStatusKt {
    public static final Map<String, Object> toJson(PaywallPresentationRequestStatus paywallPresentationRequestStatus) {
        String str;
        Intrinsics.checkNotNullParameter(paywallPresentationRequestStatus, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (Intrinsics.areEqual(paywallPresentationRequestStatus, PaywallPresentationRequestStatus.Presentation.INSTANCE)) {
            str = "presentation";
        } else if (Intrinsics.areEqual(paywallPresentationRequestStatus, PaywallPresentationRequestStatus.NoPresentation.INSTANCE)) {
            str = "noPresentation";
        } else {
            if (!Intrinsics.areEqual(paywallPresentationRequestStatus, PaywallPresentationRequestStatus.Timeout.INSTANCE)) {
                throw new NoWhenBranchMatchedException();
            }
            str = "timeout";
        }
        linkedHashMap.put("status", str);
        return linkedHashMap;
    }

    public static final Map<String, Object> toJson(PaywallPresentationRequestStatusReason paywallPresentationRequestStatusReason) {
        Intrinsics.checkNotNullParameter(paywallPresentationRequestStatusReason, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.DebuggerPresented) {
            linkedHashMap.put("reason", "debuggerPresented");
            return linkedHashMap;
        }
        if (paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.PaywallAlreadyPresented) {
            linkedHashMap.put("reason", "paywallAlreadyPresented");
            return linkedHashMap;
        }
        if (paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.Holdout) {
            linkedHashMap.put("reason", "holdout");
            linkedHashMap.put("experiment", Experiment.INSTANCE.toJson(((PaywallPresentationRequestStatusReason.Holdout) paywallPresentationRequestStatusReason).getExperiment()));
            return linkedHashMap;
        }
        if (paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.NoAudienceMatch) {
            linkedHashMap.put("reason", "noAudienceMatch");
            return linkedHashMap;
        }
        if (paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.PlacementNotFound) {
            linkedHashMap.put("reason", "placementNotFound");
            return linkedHashMap;
        }
        if (paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.NoPaywallView) {
            linkedHashMap.put("reason", "noPaywallViewController");
            return linkedHashMap;
        }
        if (paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.NoPresenter) {
            linkedHashMap.put("reason", "noPresenter");
            return linkedHashMap;
        }
        if (paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.NoConfig) {
            linkedHashMap.put("reason", "noConfig");
            return linkedHashMap;
        }
        if (!(paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.SubscriptionStatusTimeout)) {
            throw new NoWhenBranchMatchedException();
        }
        linkedHashMap.put("reason", "subscriptionStatusTimeout");
        return linkedHashMap;
    }
}
