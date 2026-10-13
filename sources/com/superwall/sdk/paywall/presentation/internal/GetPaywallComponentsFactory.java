package com.superwall.sdk.paywall.presentation.internal;

import android.app.Activity;
import com.superwall.sdk.models.assignment.ConfirmableAssignment;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome;
import com.superwall.sdk.paywall.view.PaywallView;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: GetPaywallComponentsFactory.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H¦@¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H¦@¢\u0006\u0002\u0010\tJ\u001e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0004\u001a\u00020\u0005H¦@¢\u0006\u0004\b\u000e\u0010\u000fJ\u001e\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\rH¦@¢\u0006\u0002\u0010\u0012JJ\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\r2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010\u00162\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H¦@¢\u0006\u0004\b\u0018\u0010\u0019J8\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H¦@¢\u0006\u0002\u0010\u001dJ(\u0010\u001e\u001a\u00020\u00032\b\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"H¦@¢\u0006\u0002\u0010#¨\u0006$"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;", "", "waitForEntitlementsAndConfig", "", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "publisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkDebuggerPresentation", "evaluateRules", "Lkotlin/Result;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;", "evaluateRules-gIAlu-s", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "confirmHoldoutAssignment", "rulesOutcome", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPaywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "debugInfo", "", "", "getPaywallView-yxL6bBk", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPresenterIfNecessary", "Landroid/app/Activity;", "paywallView", "(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "confirmPaywallAssignment", "confirmableAssignment", "Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;", "isDebuggerLaunched", "", "(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface GetPaywallComponentsFactory {
    Object checkDebuggerPresentation(PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Unit> continuation);

    Object confirmHoldoutAssignment(PresentationRequest presentationRequest, RuleEvaluationOutcome ruleEvaluationOutcome, Continuation<? super Unit> continuation);

    Object confirmPaywallAssignment(ConfirmableAssignment confirmableAssignment, PresentationRequest presentationRequest, boolean z, Continuation<? super Unit> continuation);

    /* JADX INFO: renamed from: evaluateRules-gIAlu-s */
    Object mo10706evaluateRulesgIAlus(PresentationRequest presentationRequest, Continuation<? super Result<RuleEvaluationOutcome>> continuation);

    /* JADX INFO: renamed from: getPaywallView-yxL6bBk */
    Object mo10707getPaywallViewyxL6bBk(PresentationRequest presentationRequest, RuleEvaluationOutcome ruleEvaluationOutcome, Map<String, ? extends Object> map, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Result<PaywallView>> continuation);

    Object getPresenterIfNecessary(PaywallView paywallView, RuleEvaluationOutcome ruleEvaluationOutcome, PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Activity> continuation);

    Object waitForEntitlementsAndConfig(PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Unit> continuation);
}
