package com.superwall.sdk.paywall.presentation.rule_logic;

import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.triggers.TriggerRule;
import com.superwall.sdk.models.triggers.TriggerRuleOccurrence;
import com.superwall.sdk.models.triggers.TriggerRuleOutcome;
import com.superwall.sdk.models.triggers.UnmatchedRule;
import com.superwall.sdk.storage.core_data.CoreDataManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: utils.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0080@¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"tryToMatchOccurrence", "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;", "Lcom/superwall/sdk/models/triggers/TriggerRule;", "storage", "Lcom/superwall/sdk/storage/core_data/CoreDataManager;", "expressionMatched", "", "(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/storage/core_data/CoreDataManager;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class UtilsKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.rule_logic.UtilsKt$tryToMatchOccurrence$1, reason: invalid class name */
    /* JADX INFO: compiled from: utils.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.rule_logic.UtilsKt", f = "utils.kt", i = {0, 0}, l = {17}, m = "tryToMatchOccurrence", n = {"$this$tryToMatchOccurrence", "occurrence"}, s = {"L$0", "L$1"})
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
            return UtilsKt.tryToMatchOccurrence(null, null, false, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object tryToMatchOccurrence(TriggerRule triggerRule, CoreDataManager coreDataManager, boolean z, Continuation<? super TriggerRuleOutcome> continuation) {
        AnonymousClass1 anonymousClass1;
        TriggerRule triggerRule2;
        TriggerRuleOccurrence triggerRuleOccurrence;
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
        Object objCountTriggerRuleOccurrences = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objCountTriggerRuleOccurrences);
            if (z) {
                TriggerRuleOccurrence occurrence = triggerRule.getOccurrence();
                if (occurrence != null) {
                    anonymousClass1.L$0 = triggerRule;
                    anonymousClass1.L$1 = occurrence;
                    anonymousClass1.label = 1;
                    objCountTriggerRuleOccurrences = coreDataManager.countTriggerRuleOccurrences(occurrence, anonymousClass1);
                    if (objCountTriggerRuleOccurrences == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    triggerRule2 = triggerRule;
                    triggerRuleOccurrence = occurrence;
                } else {
                    Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallPresentation, "No occurrence parameter found for trigger rule.", null, null, 24, null);
                    return TriggerRuleOutcome.Companion.match$default(TriggerRuleOutcome.INSTANCE, triggerRule, null, 2, null);
                }
            } else {
                return TriggerRuleOutcome.INSTANCE.noMatch(UnmatchedRule.Source.EXPRESSION, triggerRule.getExperiment().getId());
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            triggerRuleOccurrence = (TriggerRuleOccurrence) anonymousClass1.L$1;
            triggerRule2 = (TriggerRule) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objCountTriggerRuleOccurrences);
        }
        if (((Number) objCountTriggerRuleOccurrences).intValue() + 1 <= triggerRuleOccurrence.getMaxCount()) {
            return TriggerRuleOutcome.INSTANCE.match(triggerRule2, triggerRuleOccurrence);
        }
        return TriggerRuleOutcome.INSTANCE.noMatch(UnmatchedRule.Source.OCCURRENCE, triggerRule2.getExperiment().getId());
    }
}
