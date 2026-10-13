package com.superwall.sdk.paywall.manager;

import com.facebook.hermes.intl.Constants;
import expo.modules.notifications.service.NotificationsService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaywallCacheLogic.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/manager/PaywallCacheLogic;", "", "<init>", "()V", "key", "", NotificationsService.IDENTIFIER_KEY, Constants.LOCALE, "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PaywallCacheLogic {
    public static final PaywallCacheLogic INSTANCE = new PaywallCacheLogic();

    private PaywallCacheLogic() {
    }

    public final String key(String identifier, String locale) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(locale, "locale");
        return identifier + "_" + locale;
    }
}
