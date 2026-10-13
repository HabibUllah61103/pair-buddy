package com.superwall.sdk.paywall.presentation.rule_logic;

import com.superwall.sdk.models.assignment.ConfirmableAssignment;
import com.superwall.sdk.models.triggers.InternalTriggerResult;
import com.superwall.sdk.models.triggers.TriggerRuleOccurrence;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RuleLogic.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J+\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;", "", "confirmableAssignment", "Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;", "unsavedOccurrence", "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;", "triggerResult", "Lcom/superwall/sdk/models/triggers/InternalTriggerResult;", "<init>", "(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;)V", "getConfirmableAssignment", "()Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;", "getUnsavedOccurrence", "()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;", "getTriggerResult", "()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class RuleEvaluationOutcome {
    private final ConfirmableAssignment confirmableAssignment;
    private final InternalTriggerResult triggerResult;
    private final TriggerRuleOccurrence unsavedOccurrence;

    public static /* synthetic */ RuleEvaluationOutcome copy$default(RuleEvaluationOutcome ruleEvaluationOutcome, ConfirmableAssignment confirmableAssignment, TriggerRuleOccurrence triggerRuleOccurrence, InternalTriggerResult internalTriggerResult, int i, Object obj) {
        if ((i & 1) != 0) {
            confirmableAssignment = ruleEvaluationOutcome.confirmableAssignment;
        }
        if ((i & 2) != 0) {
            triggerRuleOccurrence = ruleEvaluationOutcome.unsavedOccurrence;
        }
        if ((i & 4) != 0) {
            internalTriggerResult = ruleEvaluationOutcome.triggerResult;
        }
        return ruleEvaluationOutcome.copy(confirmableAssignment, triggerRuleOccurrence, internalTriggerResult);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ConfirmableAssignment getConfirmableAssignment() {
        return this.confirmableAssignment;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final TriggerRuleOccurrence getUnsavedOccurrence() {
        return this.unsavedOccurrence;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final InternalTriggerResult getTriggerResult() {
        return this.triggerResult;
    }

    public final RuleEvaluationOutcome copy(ConfirmableAssignment confirmableAssignment, TriggerRuleOccurrence unsavedOccurrence, InternalTriggerResult triggerResult) {
        Intrinsics.checkNotNullParameter(triggerResult, "triggerResult");
        return new RuleEvaluationOutcome(confirmableAssignment, unsavedOccurrence, triggerResult);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RuleEvaluationOutcome)) {
            return false;
        }
        RuleEvaluationOutcome ruleEvaluationOutcome = (RuleEvaluationOutcome) other;
        return Intrinsics.areEqual(this.confirmableAssignment, ruleEvaluationOutcome.confirmableAssignment) && Intrinsics.areEqual(this.unsavedOccurrence, ruleEvaluationOutcome.unsavedOccurrence) && Intrinsics.areEqual(this.triggerResult, ruleEvaluationOutcome.triggerResult);
    }

    public int hashCode() {
        ConfirmableAssignment confirmableAssignment = this.confirmableAssignment;
        int iHashCode = (confirmableAssignment == null ? 0 : confirmableAssignment.hashCode()) * 31;
        TriggerRuleOccurrence triggerRuleOccurrence = this.unsavedOccurrence;
        return ((iHashCode + (triggerRuleOccurrence != null ? triggerRuleOccurrence.hashCode() : 0)) * 31) + this.triggerResult.hashCode();
    }

    public String toString() {
        return "RuleEvaluationOutcome(confirmableAssignment=" + this.confirmableAssignment + ", unsavedOccurrence=" + this.unsavedOccurrence + ", triggerResult=" + this.triggerResult + ")";
    }

    public RuleEvaluationOutcome(ConfirmableAssignment confirmableAssignment, TriggerRuleOccurrence triggerRuleOccurrence, InternalTriggerResult triggerResult) {
        Intrinsics.checkNotNullParameter(triggerResult, "triggerResult");
        this.confirmableAssignment = confirmableAssignment;
        this.unsavedOccurrence = triggerRuleOccurrence;
        this.triggerResult = triggerResult;
    }

    public /* synthetic */ RuleEvaluationOutcome(ConfirmableAssignment confirmableAssignment, TriggerRuleOccurrence triggerRuleOccurrence, InternalTriggerResult internalTriggerResult, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : confirmableAssignment, (i & 2) != 0 ? null : triggerRuleOccurrence, internalTriggerResult);
    }

    public final ConfirmableAssignment getConfirmableAssignment() {
        return this.confirmableAssignment;
    }

    public final TriggerRuleOccurrence getUnsavedOccurrence() {
        return this.unsavedOccurrence;
    }

    public final InternalTriggerResult getTriggerResult() {
        return this.triggerResult;
    }
}
