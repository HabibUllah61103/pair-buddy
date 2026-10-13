package com.superwall.sdk.utilities;

import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.config.options.SuperwallOptions;
import com.superwall.sdk.delegate.subscription_controller.PurchaseController;
import com.superwall.sdk.misc.ActivityProvider;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SuperwallDSL.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\f\u001a\u00020\u00182\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00180\u0016¢\u0006\u0002\b\u001eH\u0007R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R.\u0010\u0015\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/superwall/sdk/utilities/SuperwallBuilder;", "", "<init>", "()V", "purchaseController", "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;", "getPurchaseController", "()Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;", "setPurchaseController", "(Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;)V", RNConstants.ARG_VALUE, "Lcom/superwall/sdk/config/options/SuperwallOptions;", "options", "getOptions", "()Lcom/superwall/sdk/config/options/SuperwallOptions;", "activityProvider", "Lcom/superwall/sdk/misc/ActivityProvider;", "getActivityProvider", "()Lcom/superwall/sdk/misc/ActivityProvider;", "setActivityProvider", "(Lcom/superwall/sdk/misc/ActivityProvider;)V", "completion", "Lkotlin/Function1;", "Lkotlin/Result;", "", "getCompletion", "()Lkotlin/jvm/functions/Function1;", "setCompletion", "(Lkotlin/jvm/functions/Function1;)V", "action", "Lkotlin/ExtensionFunctionType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SuperwallBuilder {
    private ActivityProvider activityProvider;
    private Function1<? super Result<Unit>, Unit> completion;
    private SuperwallOptions options;
    private PurchaseController purchaseController;

    public final PurchaseController getPurchaseController() {
        return this.purchaseController;
    }

    public final void setPurchaseController(PurchaseController purchaseController) {
        this.purchaseController = purchaseController;
    }

    public final SuperwallOptions getOptions() {
        return this.options;
    }

    public final ActivityProvider getActivityProvider() {
        return this.activityProvider;
    }

    public final void setActivityProvider(ActivityProvider activityProvider) {
        this.activityProvider = activityProvider;
    }

    public final Function1<Result<Unit>, Unit> getCompletion() {
        return this.completion;
    }

    public final void setCompletion(Function1<? super Result<Unit>, Unit> function1) {
        this.completion = function1;
    }

    @SuperwallDSL
    public final void options(Function1<? super SuperwallOptions, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        SuperwallOptions superwallOptions = new SuperwallOptions();
        action.invoke(superwallOptions);
        this.options = superwallOptions;
    }
}
