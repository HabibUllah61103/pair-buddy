package com.superwall.sdk.paywall.presentation.get_presentation_result;

import com.google.firebase.messaging.Constants;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.paywall.presentation.get_paywall.PaywallComponents;
import com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsKt;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequestType;
import com.superwall.sdk.paywall.presentation.result.PresentationResult;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InternalGetPresentationResult.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0080@¢\u0006\u0002\u0010\u0005\u001a\u001c\u0010\u0006\u001a\u00020\u00012\n\u0010\u0007\u001a\u00060\bj\u0002`\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002¨\u0006\f"}, d2 = {"getPresentationResult", "Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;", "Lcom/superwall/sdk/Superwall;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handle", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationPipelineError;", "requestType", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class InternalGetPresentationResultKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_presentation_result.InternalGetPresentationResultKt$getPresentationResult$1, reason: invalid class name */
    /* JADX INFO: compiled from: InternalGetPresentationResult.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_presentation_result.InternalGetPresentationResultKt", f = "InternalGetPresentationResult.kt", i = {0}, l = {15}, m = "getPresentationResult", n = {"request"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InternalGetPresentationResultKt.getPresentationResult(null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object getPresentationResult(Superwall superwall, PresentationRequest presentationRequest, Continuation<? super PresentationResult> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Object paywallComponents$default;
        PresentationRequest presentationRequest2;
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
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object obj = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass2.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            anonymousClass2.L$0 = presentationRequest;
            anonymousClass2.label = 1;
            paywallComponents$default = GetPaywallComponentsKt.getPaywallComponents$default(superwall, presentationRequest, null, anonymousClass2, 2, null);
            if (paywallComponents$default == coroutine_suspended) {
                return coroutine_suspended;
            }
            presentationRequest2 = presentationRequest;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            presentationRequest2 = (PresentationRequest) anonymousClass2.L$0;
            ResultKt.throwOnFailure(obj);
            paywallComponents$default = ((Result) obj).getValue();
        }
        if (Result.m11248isSuccessimpl(paywallComponents$default)) {
            Result.Companion companion = Result.INSTANCE;
            paywallComponents$default = GetPresentationResultLogic.INSTANCE.convertTriggerResult(((PaywallComponents) paywallComponents$default).getRulesOutcome().getTriggerResult());
        }
        Object objM11241constructorimpl = Result.m11241constructorimpl(paywallComponents$default);
        Throwable thM11244exceptionOrNullimpl = Result.m11244exceptionOrNullimpl(objM11241constructorimpl);
        if (thM11244exceptionOrNullimpl == null) {
            return (PresentationResult) objM11241constructorimpl;
        }
        if (thM11244exceptionOrNullimpl instanceof PaywallPresentationRequestStatusReason) {
            return handle((PaywallPresentationRequestStatusReason) thM11244exceptionOrNullimpl, presentationRequest2.getFlags().getType());
        }
        throw thM11244exceptionOrNullimpl;
    }

    private static final PresentationResult handle(PaywallPresentationRequestStatusReason paywallPresentationRequestStatusReason, PresentationRequestType presentationRequestType) {
        if (!Intrinsics.areEqual(presentationRequestType, PresentationRequestType.GetImplicitPresentationResult.INSTANCE)) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.info, LogScope.paywallPresentation, "Paywall presentation error: " + paywallPresentationRequestStatusReason, null, null, 24, null);
        }
        if (paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.NoPaywallView) {
            return new PresentationResult.PaywallNotAvailable();
        }
        if (paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.NoAudienceMatch) {
            return new PresentationResult.NoAudienceMatch();
        }
        if (paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.Holdout) {
            return new PresentationResult.Holdout(((PaywallPresentationRequestStatusReason.Holdout) paywallPresentationRequestStatusReason).getExperiment());
        }
        if (paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.PlacementNotFound) {
            return new PresentationResult.PlacementNotFound();
        }
        if (!(paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.DebuggerPresented) && !(paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.NoPresenter) && !(paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.PaywallAlreadyPresented) && !(paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.NoConfig) && !(paywallPresentationRequestStatusReason instanceof PaywallPresentationRequestStatusReason.SubscriptionStatusTimeout)) {
            throw new NoWhenBranchMatchedException();
        }
        return new PresentationResult.PaywallNotAvailable();
    }
}
