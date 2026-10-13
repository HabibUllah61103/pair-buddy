package com.superwall.sdk.paywall.presentation.rule_logic.cel;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.superwall.sdk.dependencies.RuleAttributesFactory;
import com.superwall.sdk.models.config.ComputedPropertyRequest;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.triggers.TriggerRule;
import com.superwall.sdk.models.triggers.TriggerRuleOutcome;
import com.superwall.sdk.models.triggers.UnmatchedRule;
import com.superwall.sdk.paywall.presentation.rule_logic.UtilsKt;
import com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELAtom;
import com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELExpression;
import com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating;
import com.superwall.sdk.storage.core_data.CoreDataManager;
import com.superwall.supercel.CELKt;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.Json;

/* JADX INFO: compiled from: ASTEvaluator.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096@¢\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;", "json", "Lkotlinx/serialization/json/Json;", "storage", "Lcom/superwall/sdk/storage/core_data/CoreDataManager;", "factory", "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;", "<init>", "(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;)V", "evaluateExpression", "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;", "rule", "Lcom/superwall/sdk/models/triggers/TriggerRule;", "eventData", "Lcom/superwall/sdk/models/events/EventData;", "(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ASTEvaluator implements ExpressionEvaluating {
    private final RuleAttributesFactory factory;
    private final Json json;
    private final CoreDataManager storage;

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.rule_logic.cel.ASTEvaluator$evaluateExpression$1, reason: invalid class name */
    /* JADX INFO: compiled from: ASTEvaluator.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.rule_logic.cel.ASTEvaluator", f = "ASTEvaluator.kt", i = {0, 0}, l = {38, ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF}, m = "evaluateExpression", n = {"this", "rule"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ASTEvaluator.this.evaluateExpression(null, null, this);
        }
    }

    public ASTEvaluator(Json json, CoreDataManager storage, RuleAttributesFactory factory) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.json = json;
        this.storage = storage;
        this.factory = factory;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating
    public Object evaluateExpression(TriggerRule triggerRule, EventData eventData, Continuation<? super TriggerRuleOutcome> continuation) {
        AnonymousClass1 anonymousClass1;
        ASTEvaluator aSTEvaluator;
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
        Object objMakeRuleAttributes = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objMakeRuleAttributes);
            TriggerRuleOutcome.INSTANCE.noMatch(UnmatchedRule.Source.EXPRESSION, triggerRule.getExperiment().getId());
            RuleAttributesFactory ruleAttributesFactory = this.factory;
            List<ComputedPropertyRequest> computedPropertyRequests = triggerRule.getComputedPropertyRequests();
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = triggerRule;
            anonymousClass1.label = 1;
            objMakeRuleAttributes = ruleAttributesFactory.makeRuleAttributes(eventData, computedPropertyRequests, anonymousClass1);
            if (objMakeRuleAttributes != coroutine_suspended) {
                aSTEvaluator = this;
            }
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objMakeRuleAttributes);
            return objMakeRuleAttributes;
        }
        triggerRule = (TriggerRule) anonymousClass1.L$1;
        aSTEvaluator = (ASTEvaluator) anonymousClass1.L$0;
        ResultKt.throwOnFailure(objMakeRuleAttributes);
        SuperscriptEvaluatorKt.toPassableValue((Map) objMakeRuleAttributes);
        CELExpression.And and = new CELExpression.And(new CELExpression.Atom(new CELAtom.Bool(true)), new CELExpression.Atom(new CELAtom.Bool(true)));
        Json json = aSTEvaluator.json;
        json.getSerializersModule();
        if (Intrinsics.areEqual(CELKt.evaluateAst(json.encodeToString(CELExpression.INSTANCE.serializer(), and)), "true")) {
            CoreDataManager coreDataManager = aSTEvaluator.storage;
            anonymousClass1.L$0 = null;
            anonymousClass1.L$1 = null;
            anonymousClass1.label = 2;
            Object objTryToMatchOccurrence = UtilsKt.tryToMatchOccurrence(triggerRule, coreDataManager, true, anonymousClass1);
            return objTryToMatchOccurrence == coroutine_suspended ? coroutine_suspended : objTryToMatchOccurrence;
        }
        return TriggerRuleOutcome.INSTANCE.noMatch(UnmatchedRule.Source.EXPRESSION, triggerRule.getExperiment().getId());
    }
}
