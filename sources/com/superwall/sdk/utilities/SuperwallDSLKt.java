package com.superwall.sdk.utilities;

import android.app.Application;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.config.options.PaywallOptions;
import com.superwall.sdk.config.options.SuperwallOptions;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SuperwallDSL.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0007\u001a%\u0010\n\u001a\u00020\b*\u00020\u000b2\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0007\u001a%\u0010\u000e\u001a\u00020\b*\u00020\u000b2\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0007¨\u0006\u0010"}, d2 = {"configureSuperwall", "Lcom/superwall/sdk/Superwall;", "Landroid/app/Application;", "apiKey", "", "configure", "Lkotlin/Function1;", "Lcom/superwall/sdk/utilities/SuperwallBuilder;", "", "Lkotlin/ExtensionFunctionType;", "paywalls", "Lcom/superwall/sdk/config/options/SuperwallOptions;", "action", "Lcom/superwall/sdk/config/options/PaywallOptions;", "logging", "Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SuperwallDSLKt {
    @SuperwallDSL
    public static final Superwall configureSuperwall(Application application, String apiKey, Function1<? super SuperwallBuilder, Unit> configure) {
        Intrinsics.checkNotNullParameter(application, "<this>");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(configure, "configure");
        SuperwallBuilder superwallBuilder = new SuperwallBuilder();
        configure.invoke(superwallBuilder);
        Superwall.INSTANCE.configure(application, apiKey, superwallBuilder.getPurchaseController(), superwallBuilder.getOptions(), superwallBuilder.getActivityProvider(), superwallBuilder.getCompletion());
        return Superwall.INSTANCE.getInstance();
    }

    @SuperwallDSL
    public static final void paywalls(SuperwallOptions superwallOptions, Function1<? super PaywallOptions, Unit> action) {
        Intrinsics.checkNotNullParameter(superwallOptions, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        PaywallOptions paywalls = superwallOptions.getPaywalls();
        action.invoke(paywalls);
        superwallOptions.setPaywalls(paywalls);
    }

    @SuperwallDSL
    public static final void logging(SuperwallOptions superwallOptions, Function1<? super SuperwallOptions.Logging, Unit> action) {
        Intrinsics.checkNotNullParameter(superwallOptions, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        SuperwallOptions.Logging logging = superwallOptions.getLogging();
        action.invoke(logging);
        superwallOptions.setLogging(logging);
    }
}
