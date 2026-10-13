package com.superwall.sdk.paywall.view;

import androidx.core.app.FrameMetricsAggregator;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: PaywallView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView", f = "PaywallView.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3}, l = {492, FrameMetricsAggregator.EVERY_DURATION, 517, 534}, m = "dismiss$dismissView", n = {"this$0", "$result", "isDeclined", "isManualClose", "this$0", "$result", "trackedEvent", "presentedByTransactionAbandon", "presentedByTransactionFail", "this$0", "$result", "presentationResult", "presentedByTransactionAbandon", "presentedByTransactionFail", "this$0"}, s = {"L$0", "L$1", "Z$0", "Z$1", "L$0", "L$1", "L$2", "Z$0", "Z$1", "L$0", "L$1", "L$2", "Z$0", "Z$1", "L$0"})
final class PaywallView$dismiss$dismissView$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    boolean Z$0;
    boolean Z$1;
    int label;
    /* synthetic */ Object result;

    PaywallView$dismiss$dismissView$1(Continuation<? super PaywallView$dismiss$dismissView$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return PaywallView.dismiss$dismissView(null, false, false, null, this);
    }
}
