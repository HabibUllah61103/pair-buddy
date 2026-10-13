package com.superwall.sdk.paywall.presentation.internal.operators;

import com.google.firebase.messaging.Constants;
import com.superwall.sdk.billing.BillingError;
import com.superwall.sdk.dependencies.DependencyContainer;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: GetPaywallVC.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\u001aR\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0080@¢\u0006\u0002\u0010\u0010\u001a:\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fH\u0082@¢\u0006\u0002\u0010\u0014¨\u0006\u0015"}, d2 = {"getPaywallView", "Lkotlin/Result;", "Lcom/superwall/sdk/paywall/view/PaywallView;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "rulesOutcome", "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;", "debugInfo", "", "", "", "paywallStatePublisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "dependencyContainer", "Lcom/superwall/sdk/dependencies/DependencyContainer;", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "presentationFailure", "", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "(Ljava/lang/Throwable;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class GetPaywallVCKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.GetPaywallVCKt$getPaywallView$1, reason: invalid class name */
    /* JADX INFO: compiled from: GetPaywallVC.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.GetPaywallVCKt", f = "GetPaywallVC.kt", i = {0, 0, 0, 0, 1, 1}, l = {28, 64, 87}, m = "getPaywallView", n = {"request", "debugInfo", "paywallStatePublisher", "dependencyContainer", "debugInfo", "paywallStatePublisher"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object paywallView = GetPaywallVCKt.getPaywallView(null, null, null, null, null, this);
            return paywallView == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? paywallView : Result.m11240boximpl(paywallView);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.GetPaywallVCKt$presentationFailure$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GetPaywallVC.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.GetPaywallVCKt", f = "GetPaywallVC.kt", i = {0}, l = {103}, m = "presentationFailure", n = {Constants.IPC_BUNDLE_KEY_SEND_ERROR}, s = {"L$0"})
    static final class C05241 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C05241(Continuation<? super C05241> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GetPaywallVCKt.presentationFailure(null, null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0144 A[Catch: all -> 0x004a, TryCatch #2 {all -> 0x004a, blocks: (B:17:0x0045, B:45:0x013e, B:47:0x0144, B:51:0x0165, B:54:0x016c, B:55:0x0173, B:48:0x0151, B:50:0x0155, B:56:0x0174, B:57:0x0179), top: B:72:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0151 A[Catch: all -> 0x004a, TryCatch #2 {all -> 0x004a, blocks: (B:17:0x0045, B:45:0x013e, B:47:0x0144, B:51:0x0165, B:54:0x016c, B:55:0x0173, B:48:0x0151, B:50:0x0155, B:56:0x0174, B:57:0x0179), top: B:72:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0155 A[Catch: all -> 0x004a, TryCatch #2 {all -> 0x004a, blocks: (B:17:0x0045, B:45:0x013e, B:47:0x0144, B:51:0x0165, B:54:0x016c, B:55:0x0173, B:48:0x0151, B:50:0x0155, B:56:0x0174, B:57:0x0179), top: B:72:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x016b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x016c A[Catch: all -> 0x004a, TryCatch #2 {all -> 0x004a, blocks: (B:17:0x0045, B:45:0x013e, B:47:0x0144, B:51:0x0165, B:54:0x016c, B:55:0x0173, B:48:0x0151, B:50:0x0155, B:56:0x0174, B:57:0x0179), top: B:72:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0174 A[Catch: all -> 0x004a, TryCatch #2 {all -> 0x004a, blocks: (B:17:0x0045, B:45:0x013e, B:47:0x0144, B:51:0x0165, B:54:0x016c, B:55:0x0173, B:48:0x0151, B:50:0x0155, B:56:0x0174, B:57:0x0179), top: B:72:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01b6, code lost:
    
        if (r0 == r1) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object getPaywallView(com.superwall.sdk.paywall.presentation.internal.PresentationRequest r24, com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome r25, java.util.Map<java.lang.String, ? extends java.lang.Object> r26, kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState> r27, com.superwall.sdk.dependencies.DependencyContainer r28, kotlin.coroutines.Continuation<? super kotlin.Result<com.superwall.sdk.paywall.view.PaywallView>> r29) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.internal.operators.GetPaywallVCKt.getPaywallView(com.superwall.sdk.paywall.presentation.internal.PresentationRequest, com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome, java.util.Map, kotlinx.coroutines.flow.MutableSharedFlow, com.superwall.sdk.dependencies.DependencyContainer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object getPaywallView$default(PresentationRequest presentationRequest, RuleEvaluationOutcome ruleEvaluationOutcome, Map map, MutableSharedFlow mutableSharedFlow, DependencyContainer dependencyContainer, Continuation continuation, int i, Object obj) {
        if ((i & 8) != 0) {
            mutableSharedFlow = null;
        }
        return getPaywallView(presentationRequest, ruleEvaluationOutcome, map, mutableSharedFlow, dependencyContainer, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object presentationFailure(Throwable th, Map<String, ? extends Object> map, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Throwable> continuation) {
        C05241 c05241;
        Throwable th2;
        if (continuation instanceof C05241) {
            c05241 = (C05241) continuation;
            if ((c05241.label & Integer.MIN_VALUE) != 0) {
                c05241.label -= Integer.MIN_VALUE;
            } else {
                c05241 = new C05241(continuation);
            }
        } else {
            c05241 = new C05241(continuation);
        }
        Object obj = c05241.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05241.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Logger.INSTANCE.debug(LogLevel.error, LogScope.paywallPresentation, "Error Getting Paywall View", map, th);
            if (mutableSharedFlow != null) {
                PaywallState presentationError = new PaywallState.PresentationError(th);
                c05241.L$0 = th;
                c05241.label = 1;
                if (mutableSharedFlow.emit(presentationError, c05241) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            th2 = th;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            th2 = (Throwable) c05241.L$0;
            ResultKt.throwOnFailure(obj);
        }
        if (th2 instanceof BillingError) {
            return new PaywallPresentationRequestStatusReason.SubscriptionStatusTimeout("Google Play Billing is not available or has an error: " + th2.getMessage());
        }
        return new PaywallPresentationRequestStatusReason.NoPaywallView("The paywall view could not be created: " + th2.getMessage());
    }
}
