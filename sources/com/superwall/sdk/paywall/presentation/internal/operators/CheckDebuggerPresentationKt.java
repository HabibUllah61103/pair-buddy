package com.superwall.sdk.paywall.presentation.internal.operators;

import android.app.Activity;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.debug.DebugViewActivity;
import com.superwall.sdk.paywall.presentation.internal.InternalPresentationLogic;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: CheckDebuggerPresentation.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0086@¢\u0006\u0002\u0010\b\u001a&\u0010\t\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0080@¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"checkDebuggerPresentation", "", "Lcom/superwall/sdk/Superwall;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "paywallStatePublisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "innerCheckDebuggerPresentation", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class CheckDebuggerPresentationKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.CheckDebuggerPresentationKt$innerCheckDebuggerPresentation$1, reason: invalid class name */
    /* JADX INFO: compiled from: CheckDebuggerPresentation.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.CheckDebuggerPresentationKt", f = "CheckDebuggerPresentation.kt", i = {}, l = {43}, m = "innerCheckDebuggerPresentation", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CheckDebuggerPresentationKt.innerCheckDebuggerPresentation(null, null, this);
        }
    }

    public static final Object checkDebuggerPresentation(Superwall superwall, PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Unit> continuation) throws PaywallPresentationRequestStatusReason.DebuggerPresented {
        Object objInnerCheckDebuggerPresentation = innerCheckDebuggerPresentation(presentationRequest, mutableSharedFlow, continuation);
        return objInnerCheckDebuggerPresentation == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInnerCheckDebuggerPresentation : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object innerCheckDebuggerPresentation(PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Unit> continuation) throws PaywallPresentationRequestStatusReason.DebuggerPresented {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (presentationRequest.getFlags().isDebuggerLaunched()) {
                WeakReference<Activity> presenter = presentationRequest.getPresenter();
                if (!((presenter != null ? presenter.get() : null) instanceof DebugViewActivity)) {
                    PaywallState presentationError = new PaywallState.PresentationError(InternalPresentationLogic.INSTANCE.presentationError("SWPresentationError", 101, "Debugger Is Presented", "Trying to present paywall when debugger is launched."));
                    if (mutableSharedFlow != null) {
                        anonymousClass1.label = 1;
                        if (mutableSharedFlow.emit(presentationError, anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                }
            }
            return Unit.INSTANCE;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        throw new PaywallPresentationRequestStatusReason.DebuggerPresented();
    }
}
