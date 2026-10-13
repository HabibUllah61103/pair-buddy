package com.superwall.sdk.paywall.presentation;

import com.superwall.sdk.paywall.presentation.internal.state.PaywallResult;
import com.superwall.sdk.paywall.view.PaywallView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: compiled from: PublicPresentation.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012<\u0010\n\u001a8\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001f\u001a\u00020\tHÆ\u0003JD\u0010 \u001a8\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u001aJx\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2>\b\u0002\u0010\n\u001a8\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020'HÖ\u0001J\t\u0010(\u001a\u00020)HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018RI\u0010\n\u001a8\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001a¨\u0006*"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/DismissParams;", "", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "paywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "result", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "closeReason", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "dismissAction", "Lkotlin/Function5;", "Lkotlin/Function0;", "", "Lkotlin/coroutines/Continuation;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function5;)V", "getDispatcher", "()Lkotlinx/coroutines/CoroutineDispatcher;", "getPaywallView", "()Lcom/superwall/sdk/paywall/view/PaywallView;", "getResult", "()Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "getCloseReason", "()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "getDismissAction", "()Lkotlin/jvm/functions/Function5;", "Lkotlin/jvm/functions/Function5;", "component1", "component2", "component3", "component4", "component5", "copy", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function5;)Lcom/superwall/sdk/paywall/presentation/DismissParams;", "equals", "", "other", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class DismissParams {
    private final PaywallCloseReason closeReason;
    private final Function5<PaywallView, PaywallResult, PaywallCloseReason, Function0<Unit>, Continuation<? super Unit>, Object> dismissAction;
    private final CoroutineDispatcher dispatcher;
    private final PaywallView paywallView;
    private final PaywallResult result;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DismissParams copy$default(DismissParams dismissParams, CoroutineDispatcher coroutineDispatcher, PaywallView paywallView, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason, Function5 function5, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineDispatcher = dismissParams.dispatcher;
        }
        if ((i & 2) != 0) {
            paywallView = dismissParams.paywallView;
        }
        if ((i & 4) != 0) {
            paywallResult = dismissParams.result;
        }
        if ((i & 8) != 0) {
            paywallCloseReason = dismissParams.closeReason;
        }
        if ((i & 16) != 0) {
            function5 = dismissParams.dismissAction;
        }
        Function5 function6 = function5;
        PaywallResult paywallResult2 = paywallResult;
        return dismissParams.copy(coroutineDispatcher, paywallView, paywallResult2, paywallCloseReason, function6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final CoroutineDispatcher getDispatcher() {
        return this.dispatcher;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final PaywallView getPaywallView() {
        return this.paywallView;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final PaywallResult getResult() {
        return this.result;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final PaywallCloseReason getCloseReason() {
        return this.closeReason;
    }

    public final Function5<PaywallView, PaywallResult, PaywallCloseReason, Function0<Unit>, Continuation<? super Unit>, Object> component5() {
        return this.dismissAction;
    }

    public final DismissParams copy(CoroutineDispatcher dispatcher, PaywallView paywallView, PaywallResult result, PaywallCloseReason closeReason, Function5<? super PaywallView, ? super PaywallResult, ? super PaywallCloseReason, ? super Function0<Unit>, ? super Continuation<? super Unit>, ? extends Object> dismissAction) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(closeReason, "closeReason");
        Intrinsics.checkNotNullParameter(dismissAction, "dismissAction");
        return new DismissParams(dispatcher, paywallView, result, closeReason, dismissAction);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DismissParams)) {
            return false;
        }
        DismissParams dismissParams = (DismissParams) other;
        return Intrinsics.areEqual(this.dispatcher, dismissParams.dispatcher) && Intrinsics.areEqual(this.paywallView, dismissParams.paywallView) && Intrinsics.areEqual(this.result, dismissParams.result) && Intrinsics.areEqual(this.closeReason, dismissParams.closeReason) && Intrinsics.areEqual(this.dismissAction, dismissParams.dismissAction);
    }

    public int hashCode() {
        int iHashCode = this.dispatcher.hashCode() * 31;
        PaywallView paywallView = this.paywallView;
        return ((((((iHashCode + (paywallView == null ? 0 : paywallView.hashCode())) * 31) + this.result.hashCode()) * 31) + this.closeReason.hashCode()) * 31) + this.dismissAction.hashCode();
    }

    public String toString() {
        return "DismissParams(dispatcher=" + this.dispatcher + ", paywallView=" + this.paywallView + ", result=" + this.result + ", closeReason=" + this.closeReason + ", dismissAction=" + this.dismissAction + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DismissParams(CoroutineDispatcher dispatcher, PaywallView paywallView, PaywallResult result, PaywallCloseReason closeReason, Function5<? super PaywallView, ? super PaywallResult, ? super PaywallCloseReason, ? super Function0<Unit>, ? super Continuation<? super Unit>, ? extends Object> dismissAction) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(closeReason, "closeReason");
        Intrinsics.checkNotNullParameter(dismissAction, "dismissAction");
        this.dispatcher = dispatcher;
        this.paywallView = paywallView;
        this.result = result;
        this.closeReason = closeReason;
        this.dismissAction = dismissAction;
    }

    public final CoroutineDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public final PaywallView getPaywallView() {
        return this.paywallView;
    }

    public final PaywallResult getResult() {
        return this.result;
    }

    public final PaywallCloseReason getCloseReason() {
        return this.closeReason;
    }

    public final Function5<PaywallView, PaywallResult, PaywallCloseReason, Function0<Unit>, Continuation<? super Unit>, Object> getDismissAction() {
        return this.dismissAction;
    }
}
