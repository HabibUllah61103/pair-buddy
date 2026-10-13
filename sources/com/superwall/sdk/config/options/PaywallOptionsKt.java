package com.superwall.sdk.config.options;

import com.superwall.sdk.analytics.Tier;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaywallOptions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u001a\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006*\u00020\tH\u0000¨\u0006\n"}, d2 = {"computedShouldPreload", "", "Lcom/superwall/sdk/config/options/SuperwallOptions;", "tier", "Lcom/superwall/sdk/analytics/Tier;", "toMap", "", "", "", "Lcom/superwall/sdk/config/options/PaywallOptions;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PaywallOptionsKt {
    public static final boolean computedShouldPreload(SuperwallOptions superwallOptions, Tier tier) {
        Intrinsics.checkNotNullParameter(superwallOptions, "<this>");
        Intrinsics.checkNotNullParameter(tier, "tier");
        Boolean bool = superwallOptions.getPaywalls().getPreloadDeviceOverrides().get(tier);
        return bool != null ? bool.booleanValue() : superwallOptions.getPaywalls().getShouldPreload();
    }

    public static final Map<String, Object> toMap(PaywallOptions paywallOptions) {
        Intrinsics.checkNotNullParameter(paywallOptions, "<this>");
        Pair[] pairArr = new Pair[8];
        pairArr[0] = TuplesKt.to("is_haptic_feedback_enabled", Boolean.valueOf(paywallOptions.getIsHapticFeedbackEnabled()));
        pairArr[1] = TuplesKt.to("restore_failed", MapsKt.mapOf(TuplesKt.to("title", paywallOptions.getRestoreFailed().getTitle()), TuplesKt.to("message", paywallOptions.getRestoreFailed().getMessage()), TuplesKt.to("close_button_title", paywallOptions.getRestoreFailed().getCloseButtonTitle())));
        pairArr[2] = TuplesKt.to("should_show_purchase_failure_alert", Boolean.valueOf(paywallOptions.getShouldShowPurchaseFailureAlert()));
        pairArr[3] = TuplesKt.to("should_preload", Boolean.valueOf(paywallOptions.getShouldPreload()));
        Map<Tier, Boolean> preloadDeviceOverrides = paywallOptions.getPreloadDeviceOverrides();
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(preloadDeviceOverrides.size()));
        Iterator<T> it = preloadDeviceOverrides.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(((Tier) entry.getKey()).getRaw(), entry.getValue());
        }
        pairArr[4] = TuplesKt.to("preload_device_overrides", linkedHashMap);
        pairArr[5] = TuplesKt.to("use_cached_templates", Boolean.valueOf(paywallOptions.getUseCachedTemplates()));
        pairArr[6] = TuplesKt.to("automatically_dismiss", Boolean.valueOf(paywallOptions.getAutomaticallyDismiss()));
        PaywallOptions.TransactionBackgroundView transactionBackgroundView = paywallOptions.getTransactionBackgroundView();
        pairArr[7] = TuplesKt.to("transaction_background_view", transactionBackgroundView != null ? transactionBackgroundView.name() : null);
        return MapsKt.mapOf(pairArr);
    }
}
