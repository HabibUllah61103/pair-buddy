package com.superwall.sdk.paywall.presentation.internal.operators;

import com.superwall.sdk.Superwall;
import com.superwall.sdk.config.Assignments;
import com.superwall.sdk.dependencies.DependencyContainer;
import com.superwall.sdk.models.assignment.ConfirmableAssignment;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequestType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConfirmPaywallAssignment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a0\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u001a*\u0010\u0000\u001a\u00020\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0000¨\u0006\r"}, d2 = {"confirmPaywallAssignment", "", "Lcom/superwall/sdk/Superwall;", "confirmableAssignment", "Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "isDebuggerLaunched", "", "dependencyContainer", "Lcom/superwall/sdk/dependencies/DependencyContainer;", "assignments", "Lcom/superwall/sdk/config/Assignments;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ConfirmPaywallAssignmentKt {
    public static /* synthetic */ void confirmPaywallAssignment$default(Superwall superwall, ConfirmableAssignment confirmableAssignment, PresentationRequest presentationRequest, boolean z, DependencyContainer dependencyContainer, int i, Object obj) {
        if ((i & 8) != 0) {
            dependencyContainer = null;
        }
        confirmPaywallAssignment(superwall, confirmableAssignment, presentationRequest, z, dependencyContainer);
    }

    public static final void confirmPaywallAssignment(Superwall superwall, ConfirmableAssignment confirmableAssignment, PresentationRequest request, boolean z, DependencyContainer dependencyContainer) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        if (dependencyContainer == null) {
            dependencyContainer = superwall.getDependencyContainer$superwall_release();
        }
        confirmPaywallAssignment(confirmableAssignment, request, z, dependencyContainer.getAssignments());
    }

    public static final void confirmPaywallAssignment(ConfirmableAssignment confirmableAssignment, PresentationRequest request, boolean z, Assignments assignments) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(assignments, "assignments");
        if (Intrinsics.areEqual(request.getFlags().getType(), PresentationRequestType.GetImplicitPresentationResult.INSTANCE) || z || confirmableAssignment == null) {
            return;
        }
        assignments.confirmAssignment(confirmableAssignment);
    }
}
