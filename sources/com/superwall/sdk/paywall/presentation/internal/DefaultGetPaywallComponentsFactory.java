package com.superwall.sdk.paywall.presentation.internal;

import android.app.Activity;
import com.facebook.common.util.UriUtil;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.dependencies.DependencyContainer;
import com.superwall.sdk.misc.ActivityProvider;
import com.superwall.sdk.models.assignment.ConfirmableAssignment;
import com.superwall.sdk.models.triggers.InternalTriggerResult;
import com.superwall.sdk.paywall.presentation.internal.operators.CheckDebuggerPresentationKt;
import com.superwall.sdk.paywall.presentation.internal.operators.ConfirmHoldoutAssignmentKt;
import com.superwall.sdk.paywall.presentation.internal.operators.ConfirmPaywallAssignmentKt;
import com.superwall.sdk.paywall.presentation.internal.operators.EvaluateRulesKt;
import com.superwall.sdk.paywall.presentation.internal.operators.GetPaywallVCKt;
import com.superwall.sdk.paywall.presentation.internal.operators.GetPresenterKt;
import com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome;
import com.superwall.sdk.paywall.view.PaywallView;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: GetPaywallComponentsFactory.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J&\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bH\u0096@¢\u0006\u0002\u0010\rJ&\u0010\u000e\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bH\u0096@¢\u0006\u0002\u0010\rJ\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\b\u001a\u00020\tH\u0096@¢\u0006\u0004\b\u0012\u0010\u0013J\u001e\u0010\u0014\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0011H\u0096@¢\u0006\u0002\u0010\u0016JJ\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00102\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00112\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bH\u0096@¢\u0006\u0004\b\u001d\u0010\u001eJ8\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bH\u0096@¢\u0006\u0002\u0010\"J(\u0010#\u001a\u00020\u00072\b\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010&\u001a\u00020'H\u0096@¢\u0006\u0002\u0010(R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;", "Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;", "superwall", "Lcom/superwall/sdk/Superwall;", "<init>", "(Lcom/superwall/sdk/Superwall;)V", "waitForEntitlementsAndConfig", "", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "publisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkDebuggerPresentation", "evaluateRules", "Lkotlin/Result;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;", "evaluateRules-gIAlu-s", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "confirmHoldoutAssignment", "rulesOutcome", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPaywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "debugInfo", "", "", "", "getPaywallView-yxL6bBk", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPresenterIfNecessary", "Landroid/app/Activity;", "paywallView", "(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "confirmPaywallAssignment", "confirmableAssignment", "Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;", "isDebuggerLaunched", "", "(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DefaultGetPaywallComponentsFactory implements GetPaywallComponentsFactory {
    private final Superwall superwall;

    public DefaultGetPaywallComponentsFactory(Superwall superwall) {
        Intrinsics.checkNotNullParameter(superwall, "superwall");
        this.superwall = superwall;
    }

    @Override // com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory
    public Object waitForEntitlementsAndConfig(PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Unit> continuation) throws PaywallPresentationRequestStatusReason.NoConfig, PaywallPresentationRequestStatusReason.SubscriptionStatusTimeout {
        Object objWaitForEntitlementsAndConfig = WaitForSubsStatusAndConfigKt.waitForEntitlementsAndConfig(presentationRequest, mutableSharedFlow, this.superwall.getDependencyContainer$superwall_release(), continuation);
        return objWaitForEntitlementsAndConfig == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWaitForEntitlementsAndConfig : Unit.INSTANCE;
    }

    @Override // com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory
    public Object checkDebuggerPresentation(PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Unit> continuation) throws PaywallPresentationRequestStatusReason.DebuggerPresented {
        Object objCheckDebuggerPresentation = CheckDebuggerPresentationKt.checkDebuggerPresentation(this.superwall, presentationRequest, mutableSharedFlow, continuation);
        return objCheckDebuggerPresentation == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCheckDebuggerPresentation : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory
    /* JADX INFO: renamed from: evaluateRules-gIAlu-s, reason: not valid java name */
    public Object mo10706evaluateRulesgIAlus(PresentationRequest presentationRequest, Continuation<? super Result<RuleEvaluationOutcome>> continuation) {
        DefaultGetPaywallComponentsFactory$evaluateRules$1 defaultGetPaywallComponentsFactory$evaluateRules$1;
        if (continuation instanceof DefaultGetPaywallComponentsFactory$evaluateRules$1) {
            defaultGetPaywallComponentsFactory$evaluateRules$1 = (DefaultGetPaywallComponentsFactory$evaluateRules$1) continuation;
            if ((defaultGetPaywallComponentsFactory$evaluateRules$1.label & Integer.MIN_VALUE) != 0) {
                defaultGetPaywallComponentsFactory$evaluateRules$1.label -= Integer.MIN_VALUE;
            } else {
                defaultGetPaywallComponentsFactory$evaluateRules$1 = new DefaultGetPaywallComponentsFactory$evaluateRules$1(this, continuation);
            }
        } else {
            defaultGetPaywallComponentsFactory$evaluateRules$1 = new DefaultGetPaywallComponentsFactory$evaluateRules$1(this, continuation);
        }
        Object obj = defaultGetPaywallComponentsFactory$evaluateRules$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = defaultGetPaywallComponentsFactory$evaluateRules$1.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return ((Result) obj).getValue();
        }
        ResultKt.throwOnFailure(obj);
        Superwall superwall = this.superwall;
        defaultGetPaywallComponentsFactory$evaluateRules$1.label = 1;
        Object objEvaluateRules = EvaluateRulesKt.evaluateRules(superwall, presentationRequest, defaultGetPaywallComponentsFactory$evaluateRules$1);
        return objEvaluateRules == coroutine_suspended ? coroutine_suspended : objEvaluateRules;
    }

    @Override // com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory
    public Object confirmHoldoutAssignment(PresentationRequest presentationRequest, RuleEvaluationOutcome ruleEvaluationOutcome, Continuation<? super Unit> continuation) {
        ConfirmHoldoutAssignmentKt.confirmHoldoutAssignment$default(this.superwall, presentationRequest, ruleEvaluationOutcome, null, 4, null);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory
    /* JADX INFO: renamed from: getPaywallView-yxL6bBk, reason: not valid java name */
    public Object mo10707getPaywallViewyxL6bBk(PresentationRequest presentationRequest, RuleEvaluationOutcome ruleEvaluationOutcome, Map<String, ? extends Object> map, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Result<PaywallView>> continuation) {
        DefaultGetPaywallComponentsFactory$getPaywallView$1 defaultGetPaywallComponentsFactory$getPaywallView$1;
        if (continuation instanceof DefaultGetPaywallComponentsFactory$getPaywallView$1) {
            defaultGetPaywallComponentsFactory$getPaywallView$1 = (DefaultGetPaywallComponentsFactory$getPaywallView$1) continuation;
            if ((defaultGetPaywallComponentsFactory$getPaywallView$1.label & Integer.MIN_VALUE) != 0) {
                defaultGetPaywallComponentsFactory$getPaywallView$1.label -= Integer.MIN_VALUE;
            } else {
                defaultGetPaywallComponentsFactory$getPaywallView$1 = new DefaultGetPaywallComponentsFactory$getPaywallView$1(this, continuation);
            }
        } else {
            defaultGetPaywallComponentsFactory$getPaywallView$1 = new DefaultGetPaywallComponentsFactory$getPaywallView$1(this, continuation);
        }
        DefaultGetPaywallComponentsFactory$getPaywallView$1 defaultGetPaywallComponentsFactory$getPaywallView$2 = defaultGetPaywallComponentsFactory$getPaywallView$1;
        Object obj = defaultGetPaywallComponentsFactory$getPaywallView$2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = defaultGetPaywallComponentsFactory$getPaywallView$2.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return ((Result) obj).getValue();
        }
        ResultKt.throwOnFailure(obj);
        DependencyContainer dependencyContainer$superwall_release = this.superwall.getDependencyContainer$superwall_release();
        defaultGetPaywallComponentsFactory$getPaywallView$2.label = 1;
        Object paywallView = GetPaywallVCKt.getPaywallView(presentationRequest, ruleEvaluationOutcome, map, mutableSharedFlow, dependencyContainer$superwall_release, defaultGetPaywallComponentsFactory$getPaywallView$2);
        return paywallView == coroutine_suspended ? coroutine_suspended : paywallView;
    }

    @Override // com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory
    public Object getPresenterIfNecessary(PaywallView paywallView, RuleEvaluationOutcome ruleEvaluationOutcome, PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Activity> continuation) {
        return GetPresenterKt.getPresenterIfNecessary(paywallView, ruleEvaluationOutcome, presentationRequest, mutableSharedFlow, new AnonymousClass2(null), new Function0() { // from class: com.superwall.sdk.paywall.presentation.internal.DefaultGetPaywallComponentsFactory$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DefaultGetPaywallComponentsFactory.getPresenterIfNecessary$lambda$0(this.f$0);
            }
        }, continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.DefaultGetPaywallComponentsFactory$getPresenterIfNecessary$2, reason: invalid class name */
    /* JADX INFO: compiled from: GetPaywallComponentsFactory.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "req", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", UriUtil.LOCAL_RESOURCE_SCHEME, "Lcom/superwall/sdk/models/triggers/InternalTriggerResult;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.DefaultGetPaywallComponentsFactory$getPresenterIfNecessary$2", f = "GetPaywallComponentsFactory.kt", i = {}, l = {94}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function3<PresentationRequest, InternalTriggerResult, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(PresentationRequest presentationRequest, InternalTriggerResult internalTriggerResult, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = DefaultGetPaywallComponentsFactory.this.new AnonymousClass2(continuation);
            anonymousClass2.L$0 = presentationRequest;
            anonymousClass2.L$1 = internalTriggerResult;
            return anonymousClass2.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PresentationRequest presentationRequest = (PresentationRequest) this.L$0;
                InternalTriggerResult internalTriggerResult = (InternalTriggerResult) this.L$1;
                this.L$0 = null;
                this.label = 1;
                if (GetPresenterKt.attemptTriggerFire(DefaultGetPaywallComponentsFactory.this.superwall, presentationRequest, internalTriggerResult, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final Activity getPresenterIfNecessary$lambda$0(DefaultGetPaywallComponentsFactory defaultGetPaywallComponentsFactory) {
        ActivityProvider activityProvider = defaultGetPaywallComponentsFactory.superwall.getDependencyContainer$superwall_release().getActivityProvider();
        if (activityProvider != null) {
            return activityProvider.getCurrentActivity();
        }
        return null;
    }

    @Override // com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory
    public Object confirmPaywallAssignment(ConfirmableAssignment confirmableAssignment, PresentationRequest presentationRequest, boolean z, Continuation<? super Unit> continuation) {
        ConfirmPaywallAssignmentKt.confirmPaywallAssignment$default(this.superwall, confirmableAssignment, presentationRequest, z, null, 8, null);
        return Unit.INSTANCE;
    }
}
