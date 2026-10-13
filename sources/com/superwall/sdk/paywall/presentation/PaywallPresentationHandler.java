package com.superwall.sdk.paywall.presentation;

import com.superwall.sdk.paywall.presentation.internal.state.PaywallResult;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallSkippedReason;
import com.swmansion.rnscreens.gamma.stack.screen.event.StackScreenDismissEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaywallPresentationHandler.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\"\b\u0016\u0012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007¢\u0006\u0004\b\u0002\u0010\bJ\u001a\u0010$\u001a\u00020\u00062\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\u0005J \u0010&\u001a\u00020\u00062\u0018\u0010%\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00060\u000fJ\u001a\u0010'\u001a\u00020\u00062\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00060\u0005J\u001a\u0010(\u001a\u00020\u00062\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00060\u0005J/\u0010)\u001a\u00020\u00062\"\u0010%\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0\u001f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f¢\u0006\u0002\u0010\u0014R(\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\bR.\u0010\u000e\u001a\u0016\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R(\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\bR(\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\f\"\u0004\b\u001c\u0010\bR:\u0010\u001d\u001a \b\u0001\u0012\u0004\u0012\u00020\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0\u001f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u000fX\u0080\u000e¢\u0006\u0010\n\u0002\u0010#\u001a\u0004\b!\u0010\u0012\"\u0004\b\"\u0010\u0014¨\u0006*"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;", "", "<init>", "()V", "definition", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;)V", "onPresentHandler", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getOnPresentHandler$superwall_release", "()Lkotlin/jvm/functions/Function1;", "setOnPresentHandler$superwall_release", "onDismissHandler", "Lkotlin/Function2;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "getOnDismissHandler$superwall_release", "()Lkotlin/jvm/functions/Function2;", "setOnDismissHandler$superwall_release", "(Lkotlin/jvm/functions/Function2;)V", "onErrorHandler", "", "getOnErrorHandler$superwall_release", "setOnErrorHandler$superwall_release", "onSkipHandler", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;", "getOnSkipHandler$superwall_release", "setOnSkipHandler$superwall_release", "onCustomCallbackHandler", "Lcom/superwall/sdk/paywall/presentation/CustomCallback;", "Lkotlin/coroutines/Continuation;", "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;", "getOnCustomCallbackHandler$superwall_release", "setOnCustomCallbackHandler$superwall_release", "Lkotlin/jvm/functions/Function2;", "onPresent", "handler", StackScreenDismissEvent.EVENT_REGISTRATION_NAME, "onError", "onSkip", "onCustomCallback", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PaywallPresentationHandler {
    private Function2<? super CustomCallback, ? super Continuation<? super CustomCallbackResult>, ? extends Object> onCustomCallbackHandler;
    private Function2<? super PaywallInfo, ? super PaywallResult, Unit> onDismissHandler;
    private Function1<? super Throwable, Unit> onErrorHandler;
    private Function1<? super PaywallInfo, Unit> onPresentHandler;
    private Function1<? super PaywallSkippedReason, Unit> onSkipHandler;

    public PaywallPresentationHandler() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PaywallPresentationHandler(Function1<? super PaywallPresentationHandler, Unit> definition) {
        this();
        Intrinsics.checkNotNullParameter(definition, "definition");
        definition.invoke(this);
    }

    public final Function1<PaywallInfo, Unit> getOnPresentHandler$superwall_release() {
        return this.onPresentHandler;
    }

    public final void setOnPresentHandler$superwall_release(Function1<? super PaywallInfo, Unit> function1) {
        this.onPresentHandler = function1;
    }

    public final Function2<PaywallInfo, PaywallResult, Unit> getOnDismissHandler$superwall_release() {
        return this.onDismissHandler;
    }

    public final void setOnDismissHandler$superwall_release(Function2<? super PaywallInfo, ? super PaywallResult, Unit> function2) {
        this.onDismissHandler = function2;
    }

    public final Function1<Throwable, Unit> getOnErrorHandler$superwall_release() {
        return this.onErrorHandler;
    }

    public final void setOnErrorHandler$superwall_release(Function1<? super Throwable, Unit> function1) {
        this.onErrorHandler = function1;
    }

    public final Function1<PaywallSkippedReason, Unit> getOnSkipHandler$superwall_release() {
        return this.onSkipHandler;
    }

    public final void setOnSkipHandler$superwall_release(Function1<? super PaywallSkippedReason, Unit> function1) {
        this.onSkipHandler = function1;
    }

    public final Function2<CustomCallback, Continuation<? super CustomCallbackResult>, Object> getOnCustomCallbackHandler$superwall_release() {
        return this.onCustomCallbackHandler;
    }

    public final void setOnCustomCallbackHandler$superwall_release(Function2<? super CustomCallback, ? super Continuation<? super CustomCallbackResult>, ? extends Object> function2) {
        this.onCustomCallbackHandler = function2;
    }

    public final void onPresent(Function1<? super PaywallInfo, Unit> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.onPresentHandler = handler;
    }

    public final void onDismiss(Function2<? super PaywallInfo, ? super PaywallResult, Unit> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.onDismissHandler = handler;
    }

    public final void onError(Function1<? super Throwable, Unit> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.onErrorHandler = handler;
    }

    public final void onSkip(Function1<? super PaywallSkippedReason, Unit> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.onSkipHandler = handler;
    }

    public final void onCustomCallback(Function2<? super CustomCallback, ? super Continuation<? super CustomCallbackResult>, ? extends Object> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.onCustomCallbackHandler = handler;
    }
}
