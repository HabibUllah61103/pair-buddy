package com.superwall.sdk.paywall.presentation.internal.operators;

import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.models.triggers.InternalTriggerResult;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.request.PresentationInfo;
import com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome;
import com.superwall.sdk.paywall.view.PaywallView;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: GetPresenter.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001at\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2(\u0010\u000b\u001a$\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00100\f2\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0012H\u0080@¢\u0006\u0002\u0010\u0013\u001a\"\u0010\u000b\u001a\u00020\u000f*\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\rH\u0080@¢\u0006\u0002\u0010\u0016¨\u0006\u0017"}, d2 = {"getPresenterIfNecessary", "Landroid/app/Activity;", "paywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "rulesOutcome", "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "paywallStatePublisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "attemptTriggerFire", "Lkotlin/Function3;", "Lcom/superwall/sdk/models/triggers/InternalTriggerResult;", "Lkotlin/coroutines/Continuation;", "", "", "activity", "Lkotlin/Function0;", "(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/superwall/sdk/Superwall;", "triggerResult", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class GetPresenterKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.GetPresenterKt$attemptTriggerFire$1, reason: invalid class name */
    /* JADX INFO: compiled from: GetPresenter.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.GetPresenterKt", f = "GetPresenter.kt", i = {}, l = {111}, m = "attemptTriggerFire", n = {}, s = {})
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
            return GetPresenterKt.attemptTriggerFire(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.GetPresenterKt$getPresenterIfNecessary$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GetPresenter.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.GetPresenterKt", f = "GetPresenter.kt", i = {1, 1}, l = {43, 60, 81}, m = "getPresenterIfNecessary", n = {"paywallStatePublisher", "activity"}, s = {"L$0", "L$1"})
    static final class C05251 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05251(Continuation<? super C05251> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GetPresenterKt.getPresenterIfNecessary(null, null, null, null, null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x009b  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cb, code lost:
    
        if (r1.emit(r2, r3) == r4) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object getPresenterIfNecessary(com.superwall.sdk.paywall.view.PaywallView r18, com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome r19, com.superwall.sdk.paywall.presentation.internal.PresentationRequest r20, kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState> r21, kotlin.jvm.functions.Function3<? super com.superwall.sdk.paywall.presentation.internal.PresentationRequest, ? super com.superwall.sdk.models.triggers.InternalTriggerResult, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r22, kotlin.jvm.functions.Function0<? extends android.app.Activity> r23, kotlin.coroutines.Continuation<? super android.app.Activity> r24) throws com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason.NoPresenter {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.internal.operators.GetPresenterKt.getPresenterIfNecessary(com.superwall.sdk.paywall.view.PaywallView, com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome, com.superwall.sdk.paywall.presentation.internal.PresentationRequest, kotlinx.coroutines.flow.MutableSharedFlow, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object getPresenterIfNecessary$default(PaywallView paywallView, RuleEvaluationOutcome ruleEvaluationOutcome, PresentationRequest presentationRequest, MutableSharedFlow mutableSharedFlow, Function3 function3, Function0 function0, Continuation continuation, int i, Object obj) {
        if ((i & 8) != 0) {
            mutableSharedFlow = null;
        }
        return getPresenterIfNecessary(paywallView, ruleEvaluationOutcome, presentationRequest, mutableSharedFlow, function3, function0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object attemptTriggerFire(Superwall superwall, PresentationRequest presentationRequest, InternalTriggerResult internalTriggerResult, Continuation<? super Unit> continuation) {
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
            String eventName = presentationRequest.getPresentationInfo().getEventName();
            if (eventName == null) {
                return Unit.INSTANCE;
            }
            PresentationInfo presentationInfo = presentationRequest.getPresentationInfo();
            if ((presentationInfo instanceof PresentationInfo.ExplicitTrigger) || (presentationInfo instanceof PresentationInfo.ImplicitTrigger)) {
                if ((internalTriggerResult instanceof InternalTriggerResult.Error) || (internalTriggerResult instanceof InternalTriggerResult.PlacementNotFound)) {
                    return Unit.INSTANCE;
                }
            } else if (!(presentationInfo instanceof PresentationInfo.FromIdentifier)) {
                throw new NoWhenBranchMatchedException();
            }
            InternalSuperwallEvent.TriggerFire triggerFire = new InternalSuperwallEvent.TriggerFire(internalTriggerResult, eventName, null, 4, null);
            anonymousClass1.label = 1;
            if (TrackingKt.track(superwall, triggerFire, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ((Result) obj).getValue();
        }
        return Unit.INSTANCE;
    }
}
