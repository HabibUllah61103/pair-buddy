package com.superwall.sdk.paywall.presentation.rule_logic;

import androidx.core.app.NotificationCompat;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.config.Assignments;
import com.superwall.sdk.dependencies.RuleAttributesFactory;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.models.assignment.ConfirmableAssignment;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.triggers.Experiment;
import com.superwall.sdk.models.triggers.InternalTriggerResult;
import com.superwall.sdk.models.triggers.MatchedItem;
import com.superwall.sdk.models.triggers.Trigger;
import com.superwall.sdk.models.triggers.TriggerRule;
import com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating;
import com.superwall.sdk.storage.LocalStorage;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RuleLogic.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ6\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0086@¢\u0006\u0002\u0010\u0016J\u001e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0015H\u0082@¢\u0006\u0002\u0010\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;", "", "assignments", "Lcom/superwall/sdk/config/Assignments;", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "factory", "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;", "ruleEvaluator", "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;", "<init>", "(Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;)V", "evaluateRules", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;", "", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/models/events/EventData;", "triggers", "", "", "Lcom/superwall/sdk/models/triggers/Trigger;", "(Lcom/superwall/sdk/models/events/EventData;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "findMatchingRule", "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome;", "trigger", "(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/triggers/Trigger;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RuleLogic {
    private final Assignments assignments;
    private final RuleAttributesFactory factory;
    private final ExpressionEvaluating ruleEvaluator;
    private final LocalStorage storage;

    /* JADX INFO: compiled from: RuleLogic.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Experiment.Variant.VariantType.values().length];
            try {
                iArr[Experiment.Variant.VariantType.HOLDOUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Experiment.Variant.VariantType.TREATMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.rule_logic.RuleLogic$evaluateRules$1, reason: invalid class name */
    /* JADX INFO: compiled from: RuleLogic.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.rule_logic.RuleLogic", f = "RuleLogic.kt", i = {0}, l = {50}, m = "evaluateRules", n = {"this"}, s = {"L$0"})
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
            return RuleLogic.this.evaluateRules(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.rule_logic.RuleLogic$findMatchingRule$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: RuleLogic.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.rule_logic.RuleLogic", f = "RuleLogic.kt", i = {0, 0, 0}, l = {121}, m = "findMatchingRule", n = {NotificationCompat.CATEGORY_EVENT, "expressionEvaluator", "unmatchedRules"}, s = {"L$0", "L$1", "L$2"})
    static final class C05281 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C05281(Continuation<? super C05281> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RuleLogic.this.findMatchingRule(null, null, this);
        }
    }

    public RuleLogic(Assignments assignments, LocalStorage storage, RuleAttributesFactory factory, ExpressionEvaluating ruleEvaluator) {
        Intrinsics.checkNotNullParameter(assignments, "assignments");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(ruleEvaluator, "ruleEvaluator");
        this.assignments = assignments;
        this.storage = storage;
        this.factory = factory;
        this.ruleEvaluator = ruleEvaluator;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object evaluateRules(EventData eventData, Map<String, Trigger> map, Continuation<? super Either<RuleEvaluationOutcome, Throwable>> continuation) {
        AnonymousClass1 anonymousClass1;
        RuleLogic ruleLogic;
        RuleEvaluationOutcome ruleEvaluationOutcome;
        RuleEvaluationOutcome ruleEvaluationOutcome2;
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
        Object objFindMatchingRule = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objFindMatchingRule);
                Trigger trigger = map.get(eventData.getName());
                if (trigger == null) {
                    ruleEvaluationOutcome = new RuleEvaluationOutcome(null, null, InternalTriggerResult.PlacementNotFound.INSTANCE, 3, null);
                } else {
                    anonymousClass1.L$0 = this;
                    anonymousClass1.label = 1;
                    objFindMatchingRule = findMatchingRule(eventData, trigger, anonymousClass1);
                    if (objFindMatchingRule == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    ruleLogic = this;
                }
                return new Either.Success(ruleEvaluationOutcome);
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ruleLogic = (RuleLogic) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objFindMatchingRule);
            RuleMatchOutcome ruleMatchOutcome = (RuleMatchOutcome) objFindMatchingRule;
            if (!(ruleMatchOutcome instanceof RuleMatchOutcome.Matched)) {
                if (!(ruleMatchOutcome instanceof RuleMatchOutcome.NoMatchingRules)) {
                    throw new NoWhenBranchMatchedException();
                }
                ruleEvaluationOutcome2 = new RuleEvaluationOutcome(null, null, new InternalTriggerResult.NoAudienceMatch(((RuleMatchOutcome.NoMatchingRules) ruleMatchOutcome).getUnmatchedRules()), 3, null);
            } else {
                MatchedItem item = ((RuleMatchOutcome.Matched) ruleMatchOutcome).getItem();
                TriggerRule rule = item.getRule();
                Map<String, Experiment.Variant> confirmedAssignments = ruleLogic.storage.getConfirmedAssignments();
                Experiment.Variant variant = confirmedAssignments.get(rule.getExperiment().getId());
                if (variant == null && (variant = ruleLogic.assignments.getUnconfirmedAssignments().get(rule.getExperiment().getId())) == null) {
                    ruleEvaluationOutcome2 = new RuleEvaluationOutcome(null, null, new InternalTriggerResult.Error(new PaywallNotFoundException()), 3, null);
                } else {
                    ConfirmableAssignment confirmableAssignment = !confirmedAssignments.values().contains(variant) ? new ConfirmableAssignment(rule.getExperiment().getId(), variant) : null;
                    int i2 = WhenMappings.$EnumSwitchMapping$0[variant.getType().ordinal()];
                    if (i2 == 1) {
                        ruleEvaluationOutcome = new RuleEvaluationOutcome(confirmableAssignment, item.getUnsavedOccurrence(), new InternalTriggerResult.Holdout(new Experiment(rule.getExperiment().getId(), rule.getExperiment().getGroupId(), variant)));
                    } else {
                        if (i2 != 2) {
                            throw new NoWhenBranchMatchedException();
                        }
                        ruleEvaluationOutcome = new RuleEvaluationOutcome(confirmableAssignment, item.getUnsavedOccurrence(), new InternalTriggerResult.Paywall(new Experiment(rule.getExperiment().getId(), rule.getExperiment().getGroupId(), variant)));
                    }
                }
                return new Either.Success(ruleEvaluationOutcome);
            }
            ruleEvaluationOutcome = ruleEvaluationOutcome2;
            return new Either.Success(ruleEvaluationOutcome);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            return new Either.Failure(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x0062  */
    /* JADX WARN: Code duplicated, block: B:19:0x0078 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0079  */
    /* JADX WARN: Code duplicated, block: B:25:0x008f  */
    /* JADX WARN: Code duplicated, block: B:27:0x0093  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0079 -> B:21:0x007d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object findMatchingRule(com.superwall.sdk.models.events.EventData r8, com.superwall.sdk.models.triggers.Trigger r9, kotlin.coroutines.Continuation<? super com.superwall.sdk.paywall.presentation.rule_logic.RuleMatchOutcome> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.superwall.sdk.paywall.presentation.rule_logic.RuleLogic.C05281
            if (r0 == 0) goto L14
            r0 = r10
            com.superwall.sdk.paywall.presentation.rule_logic.RuleLogic$findMatchingRule$1 r0 = (com.superwall.sdk.paywall.presentation.rule_logic.RuleLogic.C05281) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            com.superwall.sdk.paywall.presentation.rule_logic.RuleLogic$findMatchingRule$1 r0 = new com.superwall.sdk.paywall.presentation.rule_logic.RuleLogic$findMatchingRule$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L45
            if (r2 != r3) goto L3d
            java.lang.Object r8 = r0.L$3
            java.util.Iterator r8 = (java.util.Iterator) r8
            java.lang.Object r9 = r0.L$2
            java.util.List r9 = (java.util.List) r9
            java.lang.Object r2 = r0.L$1
            com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating r2 = (com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating) r2
            java.lang.Object r4 = r0.L$0
            com.superwall.sdk.models.events.EventData r4 = (com.superwall.sdk.models.events.EventData) r4
            kotlin.ResultKt.throwOnFailure(r10)
            r6 = r4
            r4 = r9
            r9 = r6
            goto L7d
        L3d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L45:
            kotlin.ResultKt.throwOnFailure(r10)
            com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating r10 = r7.ruleEvaluator
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.List r2 = (java.util.List) r2
            java.util.List r9 = r9.getRules()
            java.util.Iterator r9 = r9.iterator()
            r6 = r9
            r9 = r8
            r8 = r6
        L5c:
            boolean r4 = r8.hasNext()
            if (r4 == 0) goto La5
            java.lang.Object r4 = r8.next()
            com.superwall.sdk.models.triggers.TriggerRule r4 = (com.superwall.sdk.models.triggers.TriggerRule) r4
            r0.L$0 = r9
            r0.L$1 = r10
            r0.L$2 = r2
            r0.L$3 = r8
            r0.label = r3
            java.lang.Object r4 = r10.evaluateExpression(r4, r9, r0)
            if (r4 != r1) goto L79
            return r1
        L79:
            r6 = r2
            r2 = r10
            r10 = r4
            r4 = r6
        L7d:
            com.superwall.sdk.models.triggers.TriggerRuleOutcome r10 = (com.superwall.sdk.models.triggers.TriggerRuleOutcome) r10
            boolean r5 = r10 instanceof com.superwall.sdk.models.triggers.TriggerRuleOutcome.Match
            if (r5 == 0) goto L8f
            com.superwall.sdk.paywall.presentation.rule_logic.RuleMatchOutcome$Matched r8 = new com.superwall.sdk.paywall.presentation.rule_logic.RuleMatchOutcome$Matched
            com.superwall.sdk.models.triggers.TriggerRuleOutcome$Match r10 = (com.superwall.sdk.models.triggers.TriggerRuleOutcome.Match) r10
            com.superwall.sdk.models.triggers.MatchedItem r9 = r10.getMatchedItem()
            r8.<init>(r9)
            return r8
        L8f:
            boolean r5 = r10 instanceof com.superwall.sdk.models.triggers.TriggerRuleOutcome.NoMatch
            if (r5 == 0) goto L9f
            com.superwall.sdk.models.triggers.TriggerRuleOutcome$NoMatch r10 = (com.superwall.sdk.models.triggers.TriggerRuleOutcome.NoMatch) r10
            com.superwall.sdk.models.triggers.UnmatchedRule r10 = r10.getUnmatchedRule()
            r4.add(r10)
            r10 = r2
            r2 = r4
            goto L5c
        L9f:
            kotlin.NoWhenBranchMatchedException r8 = new kotlin.NoWhenBranchMatchedException
            r8.<init>()
            throw r8
        La5:
            com.superwall.sdk.paywall.presentation.rule_logic.RuleMatchOutcome$NoMatchingRules r8 = new com.superwall.sdk.paywall.presentation.rule_logic.RuleMatchOutcome$NoMatchingRules
            r8.<init>(r2)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.rule_logic.RuleLogic.findMatchingRule(com.superwall.sdk.models.events.EventData, com.superwall.sdk.models.triggers.Trigger, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
