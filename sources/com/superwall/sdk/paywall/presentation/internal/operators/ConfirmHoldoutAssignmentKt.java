package com.superwall.sdk.paywall.presentation.internal.operators;

import com.superwall.sdk.Superwall;
import com.superwall.sdk.config.Assignments;
import com.superwall.sdk.dependencies.DependencyContainer;
import com.superwall.sdk.models.assignment.ConfirmableAssignment;
import com.superwall.sdk.models.triggers.InternalTriggerResult;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequestType;
import com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConfirmHoldoutAssignment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¨\u0006\u000b"}, d2 = {"confirmHoldoutAssignment", "", "Lcom/superwall/sdk/Superwall;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "rulesOutcome", "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;", "dependencyContainer", "Lcom/superwall/sdk/dependencies/DependencyContainer;", "assignments", "Lcom/superwall/sdk/config/Assignments;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ConfirmHoldoutAssignmentKt {
    public static /* synthetic */ void confirmHoldoutAssignment$default(Superwall superwall, PresentationRequest presentationRequest, RuleEvaluationOutcome ruleEvaluationOutcome, DependencyContainer dependencyContainer, int i, Object obj) {
        if ((i & 4) != 0) {
            dependencyContainer = null;
        }
        confirmHoldoutAssignment(superwall, presentationRequest, ruleEvaluationOutcome, dependencyContainer);
    }

    public static final void confirmHoldoutAssignment(Superwall superwall, PresentationRequest request, RuleEvaluationOutcome rulesOutcome, DependencyContainer dependencyContainer) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(rulesOutcome, "rulesOutcome");
        if (dependencyContainer == null) {
            dependencyContainer = superwall.getDependencyContainer$superwall_release();
        }
        confirmHoldoutAssignment(request, dependencyContainer.getAssignments(), rulesOutcome);
    }

    public static final void confirmHoldoutAssignment(PresentationRequest request, Assignments assignments, RuleEvaluationOutcome rulesOutcome) {
        ConfirmableAssignment confirmableAssignment;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(assignments, "assignments");
        Intrinsics.checkNotNullParameter(rulesOutcome, "rulesOutcome");
        if (Intrinsics.areEqual(request.getFlags().getType(), PresentationRequestType.GetImplicitPresentationResult.INSTANCE) || !(rulesOutcome.getTriggerResult() instanceof InternalTriggerResult.Holdout) || (confirmableAssignment = rulesOutcome.getConfirmableAssignment()) == null) {
            return;
        }
        assignments.confirmAssignment(confirmableAssignment);
    }
}
