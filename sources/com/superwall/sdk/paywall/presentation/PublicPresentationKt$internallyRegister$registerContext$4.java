package com.superwall.sdk.paywall.presentation;

import com.superwall.sdk.Superwall;
import com.superwall.sdk.paywall.presentation.internal.InternalPresentationKt;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: PublicPresentation.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\n"}, d2 = {"<anonymous>", "", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "publisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt$internallyRegister$registerContext$4", f = "PublicPresentation.kt", i = {}, l = {325}, m = "invokeSuspend", n = {}, s = {})
final class PublicPresentationKt$internallyRegister$registerContext$4 extends SuspendLambda implements Function3<PresentationRequest, MutableSharedFlow<PaywallState>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Superwall $this_internallyRegister;
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PublicPresentationKt$internallyRegister$registerContext$4(Superwall superwall, Continuation<? super PublicPresentationKt$internallyRegister$registerContext$4> continuation) {
        super(3, continuation);
        this.$this_internallyRegister = superwall;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Unit> continuation) {
        PublicPresentationKt$internallyRegister$registerContext$4 publicPresentationKt$internallyRegister$registerContext$4 = new PublicPresentationKt$internallyRegister$registerContext$4(this.$this_internallyRegister, continuation);
        publicPresentationKt$internallyRegister$registerContext$4.L$0 = presentationRequest;
        publicPresentationKt$internallyRegister$registerContext$4.L$1 = mutableSharedFlow;
        return publicPresentationKt$internallyRegister$registerContext$4.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            PresentationRequest presentationRequest = (PresentationRequest) this.L$0;
            MutableSharedFlow mutableSharedFlow = (MutableSharedFlow) this.L$1;
            this.L$0 = null;
            this.label = 1;
            if (InternalPresentationKt.internallyPresent(this.$this_internallyRegister, presentationRequest, mutableSharedFlow, this) == coroutine_suspended) {
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
