package com.superwall.sdk.paywall.view;

import com.superwall.sdk.paywall.presentation.internal.state.PaywallResult;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PaywallView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$dismiss$finalDismiss$1$1", f = "PaywallView.kt", i = {}, l = {547}, m = "invokeSuspend", n = {}, s = {})
final class PaywallView$dismiss$finalDismiss$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isDeclined;
    final /* synthetic */ boolean $isManualClose;
    final /* synthetic */ PaywallResult $result;
    int label;
    final /* synthetic */ PaywallView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaywallView$dismiss$finalDismiss$1$1(PaywallView paywallView, boolean z, boolean z2, PaywallResult paywallResult, Continuation<? super PaywallView$dismiss$finalDismiss$1$1> continuation) {
        super(2, continuation);
        this.this$0 = paywallView;
        this.$isDeclined = z;
        this.$isManualClose = z2;
        this.$result = paywallResult;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaywallView$dismiss$finalDismiss$1$1(this.this$0, this.$isDeclined, this.$isManualClose, this.$result, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PaywallView$dismiss$finalDismiss$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (PaywallView.dismiss$dismissView(this.this$0, this.$isDeclined, this.$isManualClose, this.$result, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
