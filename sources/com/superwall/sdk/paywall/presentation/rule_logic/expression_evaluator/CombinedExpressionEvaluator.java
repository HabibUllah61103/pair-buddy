package com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator;

import com.superwall.sdk.paywall.presentation.rule_logic.cel.SuperscriptEvaluator;
import com.superwall.sdk.storage.LocalStorage;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CombinedExpressionEvaluator.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096@¢\u0006\u0002\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/CombinedExpressionEvaluator;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "superscriptEvaluator", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;", "<init>", "(Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;)V", "evaluateExpression", "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;", "rule", "Lcom/superwall/sdk/models/triggers/TriggerRule;", "eventData", "Lcom/superwall/sdk/models/events/EventData;", "(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CombinedExpressionEvaluator implements ExpressionEvaluating {
    private final LocalStorage storage;
    private final SuperscriptEvaluator superscriptEvaluator;

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.CombinedExpressionEvaluator$evaluateExpression$1, reason: invalid class name */
    /* JADX INFO: compiled from: CombinedExpressionEvaluator.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.CombinedExpressionEvaluator", f = "CombinedExpressionEvaluator.kt", i = {1}, l = {28, 35}, m = "evaluateExpression", n = {"rule"}, s = {"L$0"})
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
            return CombinedExpressionEvaluator.this.evaluateExpression(null, null, this);
        }
    }

    public CombinedExpressionEvaluator(LocalStorage storage, SuperscriptEvaluator superscriptEvaluator) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(superscriptEvaluator, "superscriptEvaluator");
        this.storage = storage;
        this.superscriptEvaluator = superscriptEvaluator;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006c, code lost:
    
        if (r8 == r1) goto L31;
     */
    @Override // com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object evaluateExpression(com.superwall.sdk.models.triggers.TriggerRule r6, com.superwall.sdk.models.events.EventData r7, kotlin.coroutines.Continuation<? super com.superwall.sdk.models.triggers.TriggerRuleOutcome> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.CombinedExpressionEvaluator.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r8
            com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.CombinedExpressionEvaluator$evaluateExpression$1 r0 = (com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.CombinedExpressionEvaluator.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.CombinedExpressionEvaluator$evaluateExpression$1 r0 = new com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.CombinedExpressionEvaluator$evaluateExpression$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.L$0
            com.superwall.sdk.models.triggers.TriggerRule r6 = (com.superwall.sdk.models.triggers.TriggerRule) r6
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L72
            goto L6f
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.ResultKt.throwOnFailure(r8)
            return r8
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.String r8 = r6.getExpressionJs()
            if (r8 != 0) goto L62
            java.lang.String r8 = r6.getExpression()
            if (r8 != 0) goto L62
            java.lang.String r8 = r6.getExpressionCEL()
            if (r8 != 0) goto L62
            com.superwall.sdk.storage.LocalStorage r7 = r5.storage
            com.superwall.sdk.storage.core_data.CoreDataManager r7 = r7.getCoreDataManager()
            r0.label = r4
            java.lang.Object r6 = com.superwall.sdk.paywall.presentation.rule_logic.UtilsKt.tryToMatchOccurrence(r6, r7, r4, r0)
            if (r6 != r1) goto L61
            goto L6e
        L61:
            return r6
        L62:
            com.superwall.sdk.paywall.presentation.rule_logic.cel.SuperscriptEvaluator r8 = r5.superscriptEvaluator     // Catch: java.lang.Exception -> L72
            r0.L$0 = r6     // Catch: java.lang.Exception -> L72
            r0.label = r3     // Catch: java.lang.Exception -> L72
            java.lang.Object r8 = r8.evaluateExpression(r6, r7, r0)     // Catch: java.lang.Exception -> L72
            if (r8 != r1) goto L6f
        L6e:
            return r1
        L6f:
            com.superwall.sdk.models.triggers.TriggerRuleOutcome r8 = (com.superwall.sdk.models.triggers.TriggerRuleOutcome) r8     // Catch: java.lang.Exception -> L72
            return r8
        L72:
            com.superwall.sdk.models.triggers.TriggerRuleOutcome$Companion r7 = com.superwall.sdk.models.triggers.TriggerRuleOutcome.INSTANCE
            com.superwall.sdk.models.triggers.UnmatchedRule$Source r8 = com.superwall.sdk.models.triggers.UnmatchedRule.Source.EXPRESSION
            com.superwall.sdk.models.triggers.RawExperiment r6 = r6.getExperiment()
            java.lang.String r6 = r6.getId()
            com.superwall.sdk.models.triggers.TriggerRuleOutcome r6 = r7.noMatch(r8, r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.CombinedExpressionEvaluator.evaluateExpression(com.superwall.sdk.models.triggers.TriggerRule, com.superwall.sdk.models.events.EventData, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
