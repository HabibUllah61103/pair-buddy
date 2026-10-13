package com.superwall.sdk.paywall.presentation.internal.operators;

import android.content.Context;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.config.Assignments;
import com.superwall.sdk.dependencies.DependencyContainer;
import com.superwall.sdk.dependencies.RuleAttributesFactory;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.triggers.Experiment;
import com.superwall.sdk.models.triggers.InternalTriggerResult;
import com.superwall.sdk.models.triggers.Trigger;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome;
import com.superwall.sdk.paywall.presentation.rule_logic.RuleLogic;
import com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating;
import com.superwall.sdk.storage.LocalStorage;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: EvaluateRules.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0086@¢\u0006\u0002\u0010\u0006\u001aP\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u00102\u0006\u0010\u0004\u001a\u00020\u0005H\u0080@¢\u0006\u0002\u0010\u0013¨\u0006\u0014"}, d2 = {"evaluateRules", "Lkotlin/Result;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;", "Lcom/superwall/sdk/Superwall;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "assignments", "Lcom/superwall/sdk/config/Assignments;", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "factory", "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;", "expressionEvaluating", "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;", "triggersByEventName", "", "", "Lcom/superwall/sdk/models/triggers/Trigger;", "(Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class EvaluateRulesKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.EvaluateRulesKt$evaluateRules$1, reason: invalid class name */
    /* JADX INFO: compiled from: EvaluateRules.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.EvaluateRulesKt", f = "EvaluateRules.kt", i = {0, 0}, l = {29, 25}, m = "evaluateRules", n = {"$this$evaluateRules", "request"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objEvaluateRules = EvaluateRulesKt.evaluateRules(null, null, this);
            return objEvaluateRules == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEvaluateRules : Result.m11240boximpl(objEvaluateRules);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.EvaluateRulesKt$evaluateRules$2, reason: invalid class name */
    /* JADX INFO: compiled from: EvaluateRules.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.EvaluateRulesKt", f = "EvaluateRules.kt", i = {}, l = {ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF}, m = "evaluateRules", n = {}, s = {})
    static final class AnonymousClass2 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objEvaluateRules = EvaluateRulesKt.evaluateRules(null, null, null, null, null, null, this);
            return objEvaluateRules == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEvaluateRules : Result.m11240boximpl(objEvaluateRules);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object evaluateRules(Superwall superwall, PresentationRequest presentationRequest, Continuation<? super Result<RuleEvaluationOutcome>> continuation) {
        AnonymousClass1 anonymousClass1;
        Assignments assignments;
        PresentationRequest presentationRequest2;
        LocalStorage localStorage;
        RuleAttributesFactory ruleAttributesFactory;
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
            assignments = superwall.getDependencyContainer$superwall_release().getAssignments();
            LocalStorage storage = superwall.getDependencyContainer$superwall_release().getStorage();
            DependencyContainer dependencyContainer$superwall_release = superwall.getDependencyContainer$superwall_release();
            DependencyContainer dependencyContainer$superwall_release2 = superwall.getDependencyContainer$superwall_release();
            Context context = superwall.getContext();
            anonymousClass2.L$0 = superwall;
            anonymousClass2.L$1 = presentationRequest;
            anonymousClass2.L$2 = assignments;
            anonymousClass2.L$3 = storage;
            anonymousClass2.L$4 = dependencyContainer$superwall_release;
            anonymousClass2.label = 1;
            Object objProvideRuleEvaluator = dependencyContainer$superwall_release2.provideRuleEvaluator(context, anonymousClass2);
            if (objProvideRuleEvaluator != coroutine_suspended) {
                presentationRequest2 = presentationRequest;
                localStorage = storage;
                obj = objProvideRuleEvaluator;
                ruleAttributesFactory = dependencyContainer$superwall_release;
            }
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return ((Result) obj).getValue();
        }
        RuleAttributesFactory ruleAttributesFactory2 = (RuleAttributesFactory) anonymousClass2.L$4;
        localStorage = (LocalStorage) anonymousClass2.L$3;
        assignments = (Assignments) anonymousClass2.L$2;
        PresentationRequest presentationRequest3 = (PresentationRequest) anonymousClass2.L$1;
        Superwall superwall2 = (Superwall) anonymousClass2.L$0;
        ResultKt.throwOnFailure(obj);
        presentationRequest2 = presentationRequest3;
        ruleAttributesFactory = ruleAttributesFactory2;
        superwall = superwall2;
        Map<String, Trigger> triggersByEventName = superwall.getDependencyContainer$superwall_release().getConfigManager().getTriggersByEventName();
        anonymousClass2.L$0 = null;
        anonymousClass2.L$1 = null;
        anonymousClass2.L$2 = null;
        anonymousClass2.L$3 = null;
        anonymousClass2.L$4 = null;
        anonymousClass2.label = 2;
        Object objEvaluateRules = evaluateRules(assignments, localStorage, ruleAttributesFactory, (ExpressionEvaluating) obj, triggersByEventName, presentationRequest2, anonymousClass2);
        return objEvaluateRules == coroutine_suspended ? coroutine_suspended : objEvaluateRules;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object evaluateRules(Assignments assignments, LocalStorage localStorage, RuleAttributesFactory ruleAttributesFactory, ExpressionEvaluating expressionEvaluating, Map<String, Trigger> map, PresentationRequest presentationRequest, Continuation<? super Result<RuleEvaluationOutcome>> continuation) {
        AnonymousClass2 anonymousClass2;
        if (continuation instanceof AnonymousClass2) {
            anonymousClass2 = (AnonymousClass2) continuation;
            if ((anonymousClass2.label & Integer.MIN_VALUE) != 0) {
                anonymousClass2.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass2 = new AnonymousClass2(continuation);
            }
        } else {
            anonymousClass2 = new AnonymousClass2(continuation);
        }
        Object objEvaluateRules = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass2.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objEvaluateRules);
            EventData eventData = presentationRequest.getPresentationInfo().getEventData();
            if (eventData != null) {
                RuleLogic ruleLogic = new RuleLogic(assignments, localStorage, ruleAttributesFactory, expressionEvaluating);
                anonymousClass2.label = 1;
                objEvaluateRules = ruleLogic.evaluateRules(eventData, map, anonymousClass2);
                if (objEvaluateRules == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                String identifier = presentationRequest.getPresentationInfo().getIdentifier();
                if (identifier == null) {
                    Result.Companion companion = Result.INSTANCE;
                    return Result.m11241constructorimpl(ResultKt.createFailure(new PaywallPresentationRequestStatusReason.NoPaywallView("No paywall identifier provided for debugger presentation.")));
                }
                Result.Companion companion2 = Result.INSTANCE;
                return Result.m11241constructorimpl(new RuleEvaluationOutcome(null, null, new InternalTriggerResult.Paywall(Experiment.INSTANCE.presentById(identifier)), 3, null));
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objEvaluateRules);
        }
        Either either = (Either) objEvaluateRules;
        if (either instanceof Either.Success) {
            Result.Companion companion3 = Result.INSTANCE;
            return Result.m11241constructorimpl(((Either.Success) either).getValue());
        }
        if (!(either instanceof Either.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        Result.Companion companion4 = Result.INSTANCE;
        return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) either).getError()));
    }
}
