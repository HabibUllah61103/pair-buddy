package com.superwall.sdk.web;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.ActivityProvider;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.config.WebToAppConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OpenWebRestore.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"openRestoreOnWeb", "", "Lcom/superwall/sdk/Superwall;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class OpenWebRestoreKt {
    public static final void openRestoreOnWeb(Superwall superwall) {
        WebToAppConfig webToAppConfig;
        Activity currentActivity;
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Config config = Superwall.INSTANCE.getInstance().getDependencyContainer$superwall_release().getConfigManager().getConfig();
        if (config == null || (webToAppConfig = config.getWebToAppConfig()) == null) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.webEntitlements, "Configuration not available - cannot restore purchases", null, null, 24, null);
            return;
        }
        ActivityProvider activityProvider = Superwall.INSTANCE.getInstance().getDependencyContainer$superwall_release().getActivityProvider();
        if (activityProvider == null || (currentActivity = activityProvider.getCurrentActivity()) == null) {
            return;
        }
        currentActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(webToAppConfig.getRestoreAccesUrl())));
    }
}
