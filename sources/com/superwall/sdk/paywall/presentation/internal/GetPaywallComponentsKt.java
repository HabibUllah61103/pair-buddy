package com.superwall.sdk.paywall.presentation.internal;

import android.app.Activity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.extractor.ts.TsExtractor;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.models.assignment.ConfirmableAssignment;
import com.superwall.sdk.paywall.presentation.get_paywall.PaywallComponents;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: GetPaywallComponents.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\u001a2\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H\u0086@¢\u0006\u0002\u0010\t\u001a6\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H\u0080@¢\u0006\u0002\u0010\r\u001a,\u0010\u000e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0080@¢\u0006\u0002\u0010\u0012\u001a/\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0002\u0010\u0014¨\u0006\u0015"}, d2 = {"getPaywallComponents", "Lkotlin/Result;", "Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;", "Lcom/superwall/sdk/Superwall;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "publisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "runGetPaywallComponents", "factory", "Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;", "(Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "confirmAssignment", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;", "", "(Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPaywallComponentsSync", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class GetPaywallComponentsKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsKt$confirmAssignment$1, reason: invalid class name */
    /* JADX INFO: compiled from: GetPaywallComponents.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsKt", f = "GetPaywallComponents.kt", i = {0, 0, 1, 1, 2, 2, 2, 3}, l = {70, TsExtractor.TS_SYNC_BYTE, MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT, 77}, m = "confirmAssignment", n = {"factory", "request", "factory", "request", "factory", "request", "rules", "confirmableAssignment"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$2", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GetPaywallComponentsKt.confirmAssignment(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsKt$getPaywallComponents$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GetPaywallComponents.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsKt", f = "GetPaywallComponents.kt", i = {}, l = {18}, m = "getPaywallComponents", n = {}, s = {})
    static final class C05201 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C05201(Continuation<? super C05201> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object paywallComponents = GetPaywallComponentsKt.getPaywallComponents(null, null, null, this);
            return paywallComponents == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? paywallComponents : Result.m11240boximpl(paywallComponents);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsKt$runGetPaywallComponents$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GetPaywallComponents.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsKt", f = "GetPaywallComponents.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6}, l = {30, 33, 35, 38, 41, 44, ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG}, m = "runGetPaywallComponents", n = {"factory", "request", "publisher", "factory", "request", "publisher", "debugInfo", "factory", "request", "publisher", "debugInfo", "factory", "request", "publisher", "debugInfo", "outcome", "factory", "request", "publisher", "debugInfo", "outcome", "factory", "request", "debugInfo", "paywallView", "outcome", "debugInfo", "paywallView", "outcome", "presenter"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3"})
    static final class C05221 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C05221(Continuation<? super C05221> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objRunGetPaywallComponents = GetPaywallComponentsKt.runGetPaywallComponents(null, null, null, this);
            return objRunGetPaywallComponents == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRunGetPaywallComponents : Result.m11240boximpl(objRunGetPaywallComponents);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object getPaywallComponents(Superwall superwall, PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Result<PaywallComponents>> continuation) throws Throwable {
        C05201 c05201;
        if (continuation instanceof C05201) {
            c05201 = (C05201) continuation;
            if ((c05201.label & Integer.MIN_VALUE) != 0) {
                c05201.label -= Integer.MIN_VALUE;
            } else {
                c05201 = new C05201(continuation);
            }
        } else {
            c05201 = new C05201(continuation);
        }
        Object obj = c05201.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05201.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return ((Result) obj).getValue();
        }
        ResultKt.throwOnFailure(obj);
        GetPaywallComponentsFactory getPaywallComponentsFactory$superwall_release = superwall.getDependencyContainer$superwall_release().getGetPaywallComponentsFactory$superwall_release();
        c05201.label = 1;
        Object objRunGetPaywallComponents = runGetPaywallComponents(getPaywallComponentsFactory$superwall_release, presentationRequest, mutableSharedFlow, c05201);
        return objRunGetPaywallComponents == coroutine_suspended ? coroutine_suspended : objRunGetPaywallComponents;
    }

    public static /* synthetic */ Object getPaywallComponents$default(Superwall superwall, PresentationRequest presentationRequest, MutableSharedFlow mutableSharedFlow, Continuation continuation, int i, Object obj) throws Throwable {
        if ((i & 2) != 0) {
            mutableSharedFlow = null;
        }
        return getPaywallComponents(superwall, presentationRequest, mutableSharedFlow, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0099 A[PHI: r1 r2 r8 r9 r10
      0x0099: PHI (r1v12 com.superwall.sdk.paywall.presentation.internal.PresentationRequest) = 
      (r1v9 com.superwall.sdk.paywall.presentation.internal.PresentationRequest)
      (r1v15 com.superwall.sdk.paywall.presentation.internal.PresentationRequest)
     binds: [B:45:0x0140, B:22:0x0096] A[DONT_GENERATE, DONT_INLINE]
      0x0099: PHI (r2v1 com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory) = 
      (r2v0 com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory)
      (r2v4 com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory)
     binds: [B:45:0x0140, B:22:0x0096] A[DONT_GENERATE, DONT_INLINE]
      0x0099: PHI (r8v27 com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome) = 
      (r8v24 com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome)
      (r8v30 com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome)
     binds: [B:45:0x0140, B:22:0x0096] A[DONT_GENERATE, DONT_INLINE]
      0x0099: PHI (r9v22 java.util.Map<java.lang.String, ? extends java.lang.Object>) = 
      (r9v19 java.util.Map<java.lang.String, ? extends java.lang.Object>)
      (r9v25 java.util.Map<java.lang.String, ? extends java.lang.Object>)
     binds: [B:45:0x0140, B:22:0x0096] A[DONT_GENERATE, DONT_INLINE]
      0x0099: PHI (r10v12 kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState>) = 
      (r10v9 kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState>)
      (r10v14 kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState>)
     binds: [B:45:0x0140, B:22:0x0096] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:26:0x00ba A[PHI: r1 r8 r9 r10 r11
      0x00ba: PHI (r1v8 com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory) = 
      (r1v5 com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory)
      (r1v11 com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory)
     binds: [B:42:0x0125, B:25:0x00b1] A[DONT_GENERATE, DONT_INLINE]
      0x00ba: PHI (r8v22 java.util.Map<java.lang.String, ? extends java.lang.Object>) = 
      (r8v19 java.util.Map<java.lang.String, ? extends java.lang.Object>)
      (r8v26 java.util.Map<java.lang.String, ? extends java.lang.Object>)
     binds: [B:42:0x0125, B:25:0x00b1] A[DONT_GENERATE, DONT_INLINE]
      0x00ba: PHI (r9v18 kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState>) = 
      (r9v15 kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState>)
      (r9v21 kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState>)
     binds: [B:42:0x0125, B:25:0x00b1] A[DONT_GENERATE, DONT_INLINE]
      0x00ba: PHI (r10v8 com.superwall.sdk.paywall.presentation.internal.PresentationRequest) = 
      (r10v5 com.superwall.sdk.paywall.presentation.internal.PresentationRequest)
      (r10v11 com.superwall.sdk.paywall.presentation.internal.PresentationRequest)
     binds: [B:42:0x0125, B:25:0x00b1] A[DONT_GENERATE, DONT_INLINE]
      0x00ba: PHI (r11v7 java.lang.Object) = (r11v6 java.lang.Object), (r11v11 java.lang.Object) binds: [B:42:0x0125, B:25:0x00b1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:39:0x010f  */
    /* JADX WARN: Code duplicated, block: B:40:0x0111  */
    /* JADX WARN: Code duplicated, block: B:43:0x0127  */
    /* JADX WARN: Code duplicated, block: B:46:0x0142  */
    /* JADX WARN: Code duplicated, block: B:49:0x0156  */
    /* JADX WARN: Code duplicated, block: B:50:0x0157  */
    /* JADX WARN: Code duplicated, block: B:53:0x0172  */
    /* JADX WARN: Code duplicated, block: B:54:0x0173  */
    /* JADX WARN: Code duplicated, block: B:58:0x019b  */
    /* JADX WARN: Code duplicated, block: B:70:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:71:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:73:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:75:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object runGetPaywallComponents(GetPaywallComponentsFactory getPaywallComponentsFactory, PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Result<PaywallComponents>> continuation) {
        C05221 c05221;
        Either failure;
        Map<String, ? extends Object> mapEmptyMap;
        PresentationRequest presentationRequest2;
        MutableSharedFlow<PaywallState> mutableSharedFlow2;
        GetPaywallComponentsFactory getPaywallComponentsFactory2;
        Map<String, ? extends Object> map;
        Object objMo10706evaluateRulesgIAlus;
        GetPaywallComponentsFactory getPaywallComponentsFactory3;
        PresentationRequest presentationRequest3;
        MutableSharedFlow<PaywallState> mutableSharedFlow3;
        Map<String, ? extends Object> map2;
        RuleEvaluationOutcome ruleEvaluationOutcome;
        PresentationRequest presentationRequest4;
        GetPaywallComponentsFactory getPaywallComponentsFactory4;
        RuleEvaluationOutcome ruleEvaluationOutcome2;
        Map<String, ? extends Object> map3;
        MutableSharedFlow<PaywallState> mutableSharedFlow4;
        Object objMo10707getPaywallViewyxL6bBk;
        Map<String, ? extends Object> map4;
        PresentationRequest presentationRequest5;
        PaywallView paywallView;
        Map<String, ? extends Object> map5;
        PaywallView paywallView2;
        RuleEvaluationOutcome ruleEvaluationOutcome3;
        GetPaywallComponentsFactory getPaywallComponentsFactory5;
        PresentationRequest presentationRequest6;
        Activity activity;
        ConfirmableAssignment confirmableAssignment;
        boolean zIsDebuggerLaunched;
        Map<String, ? extends Object> map6;
        Activity activity2;
        if (continuation instanceof C05221) {
            c05221 = (C05221) continuation;
            if ((c05221.label & Integer.MIN_VALUE) != 0) {
                c05221.label -= Integer.MIN_VALUE;
            } else {
                c05221 = new C05221(continuation);
            }
        } else {
            c05221 = new C05221(continuation);
        }
        C05221 c05222 = c05221;
        Object presenterIfNecessary = c05222.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (c05222.label) {
                case 0:
                    ResultKt.throwOnFailure(presenterIfNecessary);
                    c05222.L$0 = getPaywallComponentsFactory;
                    c05222.L$1 = presentationRequest;
                    c05222.L$2 = mutableSharedFlow;
                    c05222.label = 1;
                    if (getPaywallComponentsFactory.waitForEntitlementsAndConfig(presentationRequest, mutableSharedFlow, c05222) != coroutine_suspended) {
                        mapEmptyMap = MapsKt.emptyMap();
                        c05222.L$0 = getPaywallComponentsFactory;
                        c05222.L$1 = presentationRequest;
                        c05222.L$2 = mutableSharedFlow;
                        c05222.L$3 = mapEmptyMap;
                        c05222.label = 2;
                        if (getPaywallComponentsFactory.checkDebuggerPresentation(presentationRequest, mutableSharedFlow, c05222) == coroutine_suspended) {
                            MutableSharedFlow<PaywallState> mutableSharedFlow5 = mutableSharedFlow;
                            presentationRequest2 = presentationRequest;
                            mutableSharedFlow2 = mutableSharedFlow5;
                            getPaywallComponentsFactory2 = getPaywallComponentsFactory;
                            map = mapEmptyMap;
                            c05222.L$0 = getPaywallComponentsFactory2;
                            c05222.L$1 = presentationRequest2;
                            c05222.L$2 = mutableSharedFlow2;
                            c05222.L$3 = map;
                            c05222.label = 3;
                            objMo10706evaluateRulesgIAlus = getPaywallComponentsFactory2.mo10706evaluateRulesgIAlus(presentationRequest2, c05222);
                            if (objMo10706evaluateRulesgIAlus != coroutine_suspended) {
                                getPaywallComponentsFactory3 = getPaywallComponentsFactory2;
                                presentationRequest3 = presentationRequest2;
                                mutableSharedFlow3 = mutableSharedFlow2;
                                map2 = map;
                                ResultKt.throwOnFailure(objMo10706evaluateRulesgIAlus);
                                ruleEvaluationOutcome = (RuleEvaluationOutcome) objMo10706evaluateRulesgIAlus;
                                c05222.L$0 = getPaywallComponentsFactory3;
                                c05222.L$1 = presentationRequest3;
                                c05222.L$2 = mutableSharedFlow3;
                                c05222.L$3 = map2;
                                c05222.L$4 = ruleEvaluationOutcome;
                                c05222.label = 4;
                                if (getPaywallComponentsFactory3.confirmHoldoutAssignment(presentationRequest3, ruleEvaluationOutcome, c05222) == coroutine_suspended) {
                                    GetPaywallComponentsFactory getPaywallComponentsFactory6 = getPaywallComponentsFactory3;
                                    presentationRequest4 = presentationRequest3;
                                    getPaywallComponentsFactory4 = getPaywallComponentsFactory6;
                                    ruleEvaluationOutcome2 = ruleEvaluationOutcome;
                                    map3 = map2;
                                    mutableSharedFlow4 = mutableSharedFlow3;
                                    c05222.L$0 = getPaywallComponentsFactory4;
                                    c05222.L$1 = presentationRequest4;
                                    c05222.L$2 = mutableSharedFlow4;
                                    c05222.L$3 = map3;
                                    c05222.L$4 = ruleEvaluationOutcome2;
                                    c05222.label = 5;
                                    objMo10707getPaywallViewyxL6bBk = getPaywallComponentsFactory4.mo10707getPaywallViewyxL6bBk(presentationRequest4, ruleEvaluationOutcome2, map3, mutableSharedFlow4, c05222);
                                    if (objMo10707getPaywallViewyxL6bBk != coroutine_suspended) {
                                        map4 = map3;
                                        presentationRequest5 = presentationRequest4;
                                        ResultKt.throwOnFailure(objMo10707getPaywallViewyxL6bBk);
                                        paywallView = (PaywallView) objMo10707getPaywallViewyxL6bBk;
                                        c05222.L$0 = getPaywallComponentsFactory4;
                                        c05222.L$1 = presentationRequest5;
                                        c05222.L$2 = map4;
                                        c05222.L$3 = paywallView;
                                        c05222.L$4 = ruleEvaluationOutcome2;
                                        c05222.label = 6;
                                        presenterIfNecessary = getPaywallComponentsFactory4.getPresenterIfNecessary(paywallView, ruleEvaluationOutcome2, presentationRequest5, mutableSharedFlow4, c05222);
                                        if (presenterIfNecessary == coroutine_suspended) {
                                            map5 = map4;
                                            paywallView2 = paywallView;
                                            ruleEvaluationOutcome3 = ruleEvaluationOutcome2;
                                            getPaywallComponentsFactory5 = getPaywallComponentsFactory4;
                                            presentationRequest6 = presentationRequest5;
                                            activity = (Activity) presenterIfNecessary;
                                            confirmableAssignment = ruleEvaluationOutcome3.getConfirmableAssignment();
                                            zIsDebuggerLaunched = presentationRequest6.getFlags().isDebuggerLaunched();
                                            c05222.L$0 = map5;
                                            c05222.L$1 = paywallView2;
                                            c05222.L$2 = ruleEvaluationOutcome3;
                                            c05222.L$3 = activity;
                                            c05222.L$4 = null;
                                            c05222.label = 7;
                                            if (getPaywallComponentsFactory5.confirmPaywallAssignment(confirmableAssignment, presentationRequest6, zIsDebuggerLaunched, c05222) != coroutine_suspended) {
                                                map6 = map5;
                                                activity2 = activity;
                                                failure = new Either.Success(new PaywallComponents(paywallView2, activity2, ruleEvaluationOutcome3, map6));
                                                if (failure instanceof Either.Success) {
                                                    Result.Companion companion = Result.INSTANCE;
                                                    return Result.m11241constructorimpl(((Either.Success) failure).getValue());
                                                }
                                                if (failure instanceof Either.Failure) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                Result.Companion companion2 = Result.INSTANCE;
                                                return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return coroutine_suspended;
                case 1:
                    mutableSharedFlow = (MutableSharedFlow) c05222.L$2;
                    presentationRequest = (PresentationRequest) c05222.L$1;
                    getPaywallComponentsFactory = (GetPaywallComponentsFactory) c05222.L$0;
                    ResultKt.throwOnFailure(presenterIfNecessary);
                    mapEmptyMap = MapsKt.emptyMap();
                    c05222.L$0 = getPaywallComponentsFactory;
                    c05222.L$1 = presentationRequest;
                    c05222.L$2 = mutableSharedFlow;
                    c05222.L$3 = mapEmptyMap;
                    c05222.label = 2;
                    if (getPaywallComponentsFactory.checkDebuggerPresentation(presentationRequest, mutableSharedFlow, c05222) == coroutine_suspended) {
                        MutableSharedFlow<PaywallState> mutableSharedFlow6 = mutableSharedFlow;
                        presentationRequest2 = presentationRequest;
                        mutableSharedFlow2 = mutableSharedFlow6;
                        getPaywallComponentsFactory2 = getPaywallComponentsFactory;
                        map = mapEmptyMap;
                        c05222.L$0 = getPaywallComponentsFactory2;
                        c05222.L$1 = presentationRequest2;
                        c05222.L$2 = mutableSharedFlow2;
                        c05222.L$3 = map;
                        c05222.label = 3;
                        objMo10706evaluateRulesgIAlus = getPaywallComponentsFactory2.mo10706evaluateRulesgIAlus(presentationRequest2, c05222);
                        if (objMo10706evaluateRulesgIAlus != coroutine_suspended) {
                            getPaywallComponentsFactory3 = getPaywallComponentsFactory2;
                            presentationRequest3 = presentationRequest2;
                            mutableSharedFlow3 = mutableSharedFlow2;
                            map2 = map;
                            ResultKt.throwOnFailure(objMo10706evaluateRulesgIAlus);
                            ruleEvaluationOutcome = (RuleEvaluationOutcome) objMo10706evaluateRulesgIAlus;
                            c05222.L$0 = getPaywallComponentsFactory3;
                            c05222.L$1 = presentationRequest3;
                            c05222.L$2 = mutableSharedFlow3;
                            c05222.L$3 = map2;
                            c05222.L$4 = ruleEvaluationOutcome;
                            c05222.label = 4;
                            if (getPaywallComponentsFactory3.confirmHoldoutAssignment(presentationRequest3, ruleEvaluationOutcome, c05222) == coroutine_suspended) {
                                GetPaywallComponentsFactory getPaywallComponentsFactory7 = getPaywallComponentsFactory3;
                                presentationRequest4 = presentationRequest3;
                                getPaywallComponentsFactory4 = getPaywallComponentsFactory7;
                                ruleEvaluationOutcome2 = ruleEvaluationOutcome;
                                map3 = map2;
                                mutableSharedFlow4 = mutableSharedFlow3;
                                c05222.L$0 = getPaywallComponentsFactory4;
                                c05222.L$1 = presentationRequest4;
                                c05222.L$2 = mutableSharedFlow4;
                                c05222.L$3 = map3;
                                c05222.L$4 = ruleEvaluationOutcome2;
                                c05222.label = 5;
                                objMo10707getPaywallViewyxL6bBk = getPaywallComponentsFactory4.mo10707getPaywallViewyxL6bBk(presentationRequest4, ruleEvaluationOutcome2, map3, mutableSharedFlow4, c05222);
                                if (objMo10707getPaywallViewyxL6bBk != coroutine_suspended) {
                                    map4 = map3;
                                    presentationRequest5 = presentationRequest4;
                                    ResultKt.throwOnFailure(objMo10707getPaywallViewyxL6bBk);
                                    paywallView = (PaywallView) objMo10707getPaywallViewyxL6bBk;
                                    c05222.L$0 = getPaywallComponentsFactory4;
                                    c05222.L$1 = presentationRequest5;
                                    c05222.L$2 = map4;
                                    c05222.L$3 = paywallView;
                                    c05222.L$4 = ruleEvaluationOutcome2;
                                    c05222.label = 6;
                                    presenterIfNecessary = getPaywallComponentsFactory4.getPresenterIfNecessary(paywallView, ruleEvaluationOutcome2, presentationRequest5, mutableSharedFlow4, c05222);
                                    if (presenterIfNecessary == coroutine_suspended) {
                                        map5 = map4;
                                        paywallView2 = paywallView;
                                        ruleEvaluationOutcome3 = ruleEvaluationOutcome2;
                                        getPaywallComponentsFactory5 = getPaywallComponentsFactory4;
                                        presentationRequest6 = presentationRequest5;
                                        activity = (Activity) presenterIfNecessary;
                                        confirmableAssignment = ruleEvaluationOutcome3.getConfirmableAssignment();
                                        zIsDebuggerLaunched = presentationRequest6.getFlags().isDebuggerLaunched();
                                        c05222.L$0 = map5;
                                        c05222.L$1 = paywallView2;
                                        c05222.L$2 = ruleEvaluationOutcome3;
                                        c05222.L$3 = activity;
                                        c05222.L$4 = null;
                                        c05222.label = 7;
                                        if (getPaywallComponentsFactory5.confirmPaywallAssignment(confirmableAssignment, presentationRequest6, zIsDebuggerLaunched, c05222) != coroutine_suspended) {
                                            map6 = map5;
                                            activity2 = activity;
                                            failure = new Either.Success(new PaywallComponents(paywallView2, activity2, ruleEvaluationOutcome3, map6));
                                            if (failure instanceof Either.Success) {
                                                Result.Companion companion3 = Result.INSTANCE;
                                                return Result.m11241constructorimpl(((Either.Success) failure).getValue());
                                            }
                                            if (failure instanceof Either.Failure) {
                                                throw new NoWhenBranchMatchedException();
                                            }
                                            Result.Companion companion4 = Result.INSTANCE;
                                            return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return coroutine_suspended;
                case 2:
                    map = (Map) c05222.L$3;
                    mutableSharedFlow2 = (MutableSharedFlow) c05222.L$2;
                    presentationRequest2 = (PresentationRequest) c05222.L$1;
                    getPaywallComponentsFactory2 = (GetPaywallComponentsFactory) c05222.L$0;
                    ResultKt.throwOnFailure(presenterIfNecessary);
                    c05222.L$0 = getPaywallComponentsFactory2;
                    c05222.L$1 = presentationRequest2;
                    c05222.L$2 = mutableSharedFlow2;
                    c05222.L$3 = map;
                    c05222.label = 3;
                    objMo10706evaluateRulesgIAlus = getPaywallComponentsFactory2.mo10706evaluateRulesgIAlus(presentationRequest2, c05222);
                    if (objMo10706evaluateRulesgIAlus != coroutine_suspended) {
                        getPaywallComponentsFactory3 = getPaywallComponentsFactory2;
                        presentationRequest3 = presentationRequest2;
                        mutableSharedFlow3 = mutableSharedFlow2;
                        map2 = map;
                        ResultKt.throwOnFailure(objMo10706evaluateRulesgIAlus);
                        ruleEvaluationOutcome = (RuleEvaluationOutcome) objMo10706evaluateRulesgIAlus;
                        c05222.L$0 = getPaywallComponentsFactory3;
                        c05222.L$1 = presentationRequest3;
                        c05222.L$2 = mutableSharedFlow3;
                        c05222.L$3 = map2;
                        c05222.L$4 = ruleEvaluationOutcome;
                        c05222.label = 4;
                        if (getPaywallComponentsFactory3.confirmHoldoutAssignment(presentationRequest3, ruleEvaluationOutcome, c05222) == coroutine_suspended) {
                            GetPaywallComponentsFactory getPaywallComponentsFactory8 = getPaywallComponentsFactory3;
                            presentationRequest4 = presentationRequest3;
                            getPaywallComponentsFactory4 = getPaywallComponentsFactory8;
                            ruleEvaluationOutcome2 = ruleEvaluationOutcome;
                            map3 = map2;
                            mutableSharedFlow4 = mutableSharedFlow3;
                            c05222.L$0 = getPaywallComponentsFactory4;
                            c05222.L$1 = presentationRequest4;
                            c05222.L$2 = mutableSharedFlow4;
                            c05222.L$3 = map3;
                            c05222.L$4 = ruleEvaluationOutcome2;
                            c05222.label = 5;
                            objMo10707getPaywallViewyxL6bBk = getPaywallComponentsFactory4.mo10707getPaywallViewyxL6bBk(presentationRequest4, ruleEvaluationOutcome2, map3, mutableSharedFlow4, c05222);
                            if (objMo10707getPaywallViewyxL6bBk != coroutine_suspended) {
                                map4 = map3;
                                presentationRequest5 = presentationRequest4;
                                ResultKt.throwOnFailure(objMo10707getPaywallViewyxL6bBk);
                                paywallView = (PaywallView) objMo10707getPaywallViewyxL6bBk;
                                c05222.L$0 = getPaywallComponentsFactory4;
                                c05222.L$1 = presentationRequest5;
                                c05222.L$2 = map4;
                                c05222.L$3 = paywallView;
                                c05222.L$4 = ruleEvaluationOutcome2;
                                c05222.label = 6;
                                presenterIfNecessary = getPaywallComponentsFactory4.getPresenterIfNecessary(paywallView, ruleEvaluationOutcome2, presentationRequest5, mutableSharedFlow4, c05222);
                                if (presenterIfNecessary == coroutine_suspended) {
                                    map5 = map4;
                                    paywallView2 = paywallView;
                                    ruleEvaluationOutcome3 = ruleEvaluationOutcome2;
                                    getPaywallComponentsFactory5 = getPaywallComponentsFactory4;
                                    presentationRequest6 = presentationRequest5;
                                    activity = (Activity) presenterIfNecessary;
                                    confirmableAssignment = ruleEvaluationOutcome3.getConfirmableAssignment();
                                    zIsDebuggerLaunched = presentationRequest6.getFlags().isDebuggerLaunched();
                                    c05222.L$0 = map5;
                                    c05222.L$1 = paywallView2;
                                    c05222.L$2 = ruleEvaluationOutcome3;
                                    c05222.L$3 = activity;
                                    c05222.L$4 = null;
                                    c05222.label = 7;
                                    if (getPaywallComponentsFactory5.confirmPaywallAssignment(confirmableAssignment, presentationRequest6, zIsDebuggerLaunched, c05222) != coroutine_suspended) {
                                        map6 = map5;
                                        activity2 = activity;
                                        failure = new Either.Success(new PaywallComponents(paywallView2, activity2, ruleEvaluationOutcome3, map6));
                                        if (failure instanceof Either.Success) {
                                            Result.Companion companion5 = Result.INSTANCE;
                                            return Result.m11241constructorimpl(((Either.Success) failure).getValue());
                                        }
                                        if (failure instanceof Either.Failure) {
                                            throw new NoWhenBranchMatchedException();
                                        }
                                        Result.Companion companion6 = Result.INSTANCE;
                                        return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
                                    }
                                }
                            }
                        }
                    }
                    return coroutine_suspended;
                case 3:
                    map = (Map) c05222.L$3;
                    mutableSharedFlow2 = (MutableSharedFlow) c05222.L$2;
                    presentationRequest2 = (PresentationRequest) c05222.L$1;
                    getPaywallComponentsFactory2 = (GetPaywallComponentsFactory) c05222.L$0;
                    ResultKt.throwOnFailure(presenterIfNecessary);
                    objMo10706evaluateRulesgIAlus = ((Result) presenterIfNecessary).getValue();
                    getPaywallComponentsFactory3 = getPaywallComponentsFactory2;
                    presentationRequest3 = presentationRequest2;
                    mutableSharedFlow3 = mutableSharedFlow2;
                    map2 = map;
                    ResultKt.throwOnFailure(objMo10706evaluateRulesgIAlus);
                    ruleEvaluationOutcome = (RuleEvaluationOutcome) objMo10706evaluateRulesgIAlus;
                    c05222.L$0 = getPaywallComponentsFactory3;
                    c05222.L$1 = presentationRequest3;
                    c05222.L$2 = mutableSharedFlow3;
                    c05222.L$3 = map2;
                    c05222.L$4 = ruleEvaluationOutcome;
                    c05222.label = 4;
                    if (getPaywallComponentsFactory3.confirmHoldoutAssignment(presentationRequest3, ruleEvaluationOutcome, c05222) == coroutine_suspended) {
                        GetPaywallComponentsFactory getPaywallComponentsFactory9 = getPaywallComponentsFactory3;
                        presentationRequest4 = presentationRequest3;
                        getPaywallComponentsFactory4 = getPaywallComponentsFactory9;
                        ruleEvaluationOutcome2 = ruleEvaluationOutcome;
                        map3 = map2;
                        mutableSharedFlow4 = mutableSharedFlow3;
                        c05222.L$0 = getPaywallComponentsFactory4;
                        c05222.L$1 = presentationRequest4;
                        c05222.L$2 = mutableSharedFlow4;
                        c05222.L$3 = map3;
                        c05222.L$4 = ruleEvaluationOutcome2;
                        c05222.label = 5;
                        objMo10707getPaywallViewyxL6bBk = getPaywallComponentsFactory4.mo10707getPaywallViewyxL6bBk(presentationRequest4, ruleEvaluationOutcome2, map3, mutableSharedFlow4, c05222);
                        if (objMo10707getPaywallViewyxL6bBk != coroutine_suspended) {
                            map4 = map3;
                            presentationRequest5 = presentationRequest4;
                            ResultKt.throwOnFailure(objMo10707getPaywallViewyxL6bBk);
                            paywallView = (PaywallView) objMo10707getPaywallViewyxL6bBk;
                            c05222.L$0 = getPaywallComponentsFactory4;
                            c05222.L$1 = presentationRequest5;
                            c05222.L$2 = map4;
                            c05222.L$3 = paywallView;
                            c05222.L$4 = ruleEvaluationOutcome2;
                            c05222.label = 6;
                            presenterIfNecessary = getPaywallComponentsFactory4.getPresenterIfNecessary(paywallView, ruleEvaluationOutcome2, presentationRequest5, mutableSharedFlow4, c05222);
                            if (presenterIfNecessary == coroutine_suspended) {
                                map5 = map4;
                                paywallView2 = paywallView;
                                ruleEvaluationOutcome3 = ruleEvaluationOutcome2;
                                getPaywallComponentsFactory5 = getPaywallComponentsFactory4;
                                presentationRequest6 = presentationRequest5;
                                activity = (Activity) presenterIfNecessary;
                                confirmableAssignment = ruleEvaluationOutcome3.getConfirmableAssignment();
                                zIsDebuggerLaunched = presentationRequest6.getFlags().isDebuggerLaunched();
                                c05222.L$0 = map5;
                                c05222.L$1 = paywallView2;
                                c05222.L$2 = ruleEvaluationOutcome3;
                                c05222.L$3 = activity;
                                c05222.L$4 = null;
                                c05222.label = 7;
                                if (getPaywallComponentsFactory5.confirmPaywallAssignment(confirmableAssignment, presentationRequest6, zIsDebuggerLaunched, c05222) != coroutine_suspended) {
                                    map6 = map5;
                                    activity2 = activity;
                                    failure = new Either.Success(new PaywallComponents(paywallView2, activity2, ruleEvaluationOutcome3, map6));
                                    if (failure instanceof Either.Success) {
                                        Result.Companion companion7 = Result.INSTANCE;
                                        return Result.m11241constructorimpl(((Either.Success) failure).getValue());
                                    }
                                    if (failure instanceof Either.Failure) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    Result.Companion companion8 = Result.INSTANCE;
                                    return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
                                }
                            }
                        }
                    }
                    return coroutine_suspended;
                case 4:
                    ruleEvaluationOutcome = (RuleEvaluationOutcome) c05222.L$4;
                    map2 = (Map) c05222.L$3;
                    mutableSharedFlow3 = (MutableSharedFlow) c05222.L$2;
                    presentationRequest3 = (PresentationRequest) c05222.L$1;
                    getPaywallComponentsFactory3 = (GetPaywallComponentsFactory) c05222.L$0;
                    ResultKt.throwOnFailure(presenterIfNecessary);
                    GetPaywallComponentsFactory getPaywallComponentsFactory10 = getPaywallComponentsFactory3;
                    presentationRequest4 = presentationRequest3;
                    getPaywallComponentsFactory4 = getPaywallComponentsFactory10;
                    ruleEvaluationOutcome2 = ruleEvaluationOutcome;
                    map3 = map2;
                    mutableSharedFlow4 = mutableSharedFlow3;
                    c05222.L$0 = getPaywallComponentsFactory4;
                    c05222.L$1 = presentationRequest4;
                    c05222.L$2 = mutableSharedFlow4;
                    c05222.L$3 = map3;
                    c05222.L$4 = ruleEvaluationOutcome2;
                    c05222.label = 5;
                    objMo10707getPaywallViewyxL6bBk = getPaywallComponentsFactory4.mo10707getPaywallViewyxL6bBk(presentationRequest4, ruleEvaluationOutcome2, map3, mutableSharedFlow4, c05222);
                    if (objMo10707getPaywallViewyxL6bBk != coroutine_suspended) {
                        map4 = map3;
                        presentationRequest5 = presentationRequest4;
                        ResultKt.throwOnFailure(objMo10707getPaywallViewyxL6bBk);
                        paywallView = (PaywallView) objMo10707getPaywallViewyxL6bBk;
                        c05222.L$0 = getPaywallComponentsFactory4;
                        c05222.L$1 = presentationRequest5;
                        c05222.L$2 = map4;
                        c05222.L$3 = paywallView;
                        c05222.L$4 = ruleEvaluationOutcome2;
                        c05222.label = 6;
                        presenterIfNecessary = getPaywallComponentsFactory4.getPresenterIfNecessary(paywallView, ruleEvaluationOutcome2, presentationRequest5, mutableSharedFlow4, c05222);
                        if (presenterIfNecessary == coroutine_suspended) {
                            map5 = map4;
                            paywallView2 = paywallView;
                            ruleEvaluationOutcome3 = ruleEvaluationOutcome2;
                            getPaywallComponentsFactory5 = getPaywallComponentsFactory4;
                            presentationRequest6 = presentationRequest5;
                            activity = (Activity) presenterIfNecessary;
                            confirmableAssignment = ruleEvaluationOutcome3.getConfirmableAssignment();
                            zIsDebuggerLaunched = presentationRequest6.getFlags().isDebuggerLaunched();
                            c05222.L$0 = map5;
                            c05222.L$1 = paywallView2;
                            c05222.L$2 = ruleEvaluationOutcome3;
                            c05222.L$3 = activity;
                            c05222.L$4 = null;
                            c05222.label = 7;
                            if (getPaywallComponentsFactory5.confirmPaywallAssignment(confirmableAssignment, presentationRequest6, zIsDebuggerLaunched, c05222) != coroutine_suspended) {
                                map6 = map5;
                                activity2 = activity;
                                failure = new Either.Success(new PaywallComponents(paywallView2, activity2, ruleEvaluationOutcome3, map6));
                                if (failure instanceof Either.Success) {
                                    Result.Companion companion9 = Result.INSTANCE;
                                    return Result.m11241constructorimpl(((Either.Success) failure).getValue());
                                }
                                if (failure instanceof Either.Failure) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                Result.Companion companion10 = Result.INSTANCE;
                                return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
                            }
                        }
                    }
                    return coroutine_suspended;
                case 5:
                    RuleEvaluationOutcome ruleEvaluationOutcome4 = (RuleEvaluationOutcome) c05222.L$4;
                    map4 = (Map) c05222.L$3;
                    MutableSharedFlow<PaywallState> mutableSharedFlow7 = (MutableSharedFlow) c05222.L$2;
                    PresentationRequest presentationRequest7 = (PresentationRequest) c05222.L$1;
                    GetPaywallComponentsFactory getPaywallComponentsFactory11 = (GetPaywallComponentsFactory) c05222.L$0;
                    ResultKt.throwOnFailure(presenterIfNecessary);
                    objMo10707getPaywallViewyxL6bBk = ((Result) presenterIfNecessary).getValue();
                    ruleEvaluationOutcome2 = ruleEvaluationOutcome4;
                    mutableSharedFlow4 = mutableSharedFlow7;
                    presentationRequest5 = presentationRequest7;
                    getPaywallComponentsFactory4 = getPaywallComponentsFactory11;
                    ResultKt.throwOnFailure(objMo10707getPaywallViewyxL6bBk);
                    paywallView = (PaywallView) objMo10707getPaywallViewyxL6bBk;
                    c05222.L$0 = getPaywallComponentsFactory4;
                    c05222.L$1 = presentationRequest5;
                    c05222.L$2 = map4;
                    c05222.L$3 = paywallView;
                    c05222.L$4 = ruleEvaluationOutcome2;
                    c05222.label = 6;
                    presenterIfNecessary = getPaywallComponentsFactory4.getPresenterIfNecessary(paywallView, ruleEvaluationOutcome2, presentationRequest5, mutableSharedFlow4, c05222);
                    if (presenterIfNecessary == coroutine_suspended) {
                        map5 = map4;
                        paywallView2 = paywallView;
                        ruleEvaluationOutcome3 = ruleEvaluationOutcome2;
                        getPaywallComponentsFactory5 = getPaywallComponentsFactory4;
                        presentationRequest6 = presentationRequest5;
                        activity = (Activity) presenterIfNecessary;
                        confirmableAssignment = ruleEvaluationOutcome3.getConfirmableAssignment();
                        zIsDebuggerLaunched = presentationRequest6.getFlags().isDebuggerLaunched();
                        c05222.L$0 = map5;
                        c05222.L$1 = paywallView2;
                        c05222.L$2 = ruleEvaluationOutcome3;
                        c05222.L$3 = activity;
                        c05222.L$4 = null;
                        c05222.label = 7;
                        if (getPaywallComponentsFactory5.confirmPaywallAssignment(confirmableAssignment, presentationRequest6, zIsDebuggerLaunched, c05222) != coroutine_suspended) {
                            map6 = map5;
                            activity2 = activity;
                            failure = new Either.Success(new PaywallComponents(paywallView2, activity2, ruleEvaluationOutcome3, map6));
                            if (failure instanceof Either.Success) {
                                Result.Companion companion11 = Result.INSTANCE;
                                return Result.m11241constructorimpl(((Either.Success) failure).getValue());
                            }
                            if (failure instanceof Either.Failure) {
                                throw new NoWhenBranchMatchedException();
                            }
                            Result.Companion companion12 = Result.INSTANCE;
                            return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
                        }
                    }
                    return coroutine_suspended;
                case 6:
                    RuleEvaluationOutcome ruleEvaluationOutcome5 = (RuleEvaluationOutcome) c05222.L$4;
                    PaywallView paywallView3 = (PaywallView) c05222.L$3;
                    Map<String, ? extends Object> map7 = (Map) c05222.L$2;
                    presentationRequest6 = (PresentationRequest) c05222.L$1;
                    getPaywallComponentsFactory5 = (GetPaywallComponentsFactory) c05222.L$0;
                    ResultKt.throwOnFailure(presenterIfNecessary);
                    ruleEvaluationOutcome3 = ruleEvaluationOutcome5;
                    map5 = map7;
                    paywallView2 = paywallView3;
                    activity = (Activity) presenterIfNecessary;
                    confirmableAssignment = ruleEvaluationOutcome3.getConfirmableAssignment();
                    zIsDebuggerLaunched = presentationRequest6.getFlags().isDebuggerLaunched();
                    c05222.L$0 = map5;
                    c05222.L$1 = paywallView2;
                    c05222.L$2 = ruleEvaluationOutcome3;
                    c05222.L$3 = activity;
                    c05222.L$4 = null;
                    c05222.label = 7;
                    if (getPaywallComponentsFactory5.confirmPaywallAssignment(confirmableAssignment, presentationRequest6, zIsDebuggerLaunched, c05222) != coroutine_suspended) {
                        map6 = map5;
                        activity2 = activity;
                        failure = new Either.Success(new PaywallComponents(paywallView2, activity2, ruleEvaluationOutcome3, map6));
                        if (failure instanceof Either.Success) {
                            Result.Companion companion13 = Result.INSTANCE;
                            return Result.m11241constructorimpl(((Either.Success) failure).getValue());
                        }
                        if (failure instanceof Either.Failure) {
                            throw new NoWhenBranchMatchedException();
                        }
                        Result.Companion companion14 = Result.INSTANCE;
                        return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
                    }
                    return coroutine_suspended;
                case 7:
                    activity2 = (Activity) c05222.L$3;
                    ruleEvaluationOutcome3 = (RuleEvaluationOutcome) c05222.L$2;
                    paywallView2 = (PaywallView) c05222.L$1;
                    map6 = (Map) c05222.L$0;
                    ResultKt.throwOnFailure(presenterIfNecessary);
                    failure = new Either.Success(new PaywallComponents(paywallView2, activity2, ruleEvaluationOutcome3, map6));
                    if (failure instanceof Either.Success) {
                        Result.Companion companion15 = Result.INSTANCE;
                        return Result.m11241constructorimpl(((Either.Success) failure).getValue());
                    }
                    if (failure instanceof Either.Failure) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Result.Companion companion16 = Result.INSTANCE;
                    return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            failure = new Either.Failure(th);
        }
    }

    public static /* synthetic */ Object runGetPaywallComponents$default(GetPaywallComponentsFactory getPaywallComponentsFactory, PresentationRequest presentationRequest, MutableSharedFlow mutableSharedFlow, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            mutableSharedFlow = null;
        }
        return runGetPaywallComponents(getPaywallComponentsFactory, presentationRequest, mutableSharedFlow, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0096 A[Catch: all -> 0x00ea, TryCatch #0 {all -> 0x00ea, blocks: (B:15:0x0034, B:46:0x00cd, B:47:0x00da, B:20:0x004b, B:42:0x00ab, B:23:0x0057, B:37:0x0090, B:39:0x0096, B:49:0x00e2, B:50:0x00e9, B:27:0x006d, B:33:0x0081, B:30:0x0074), top: B:59:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ab A[Catch: all -> 0x00ea, PHI: r2 r8 r9
      0x00ab: PHI (r2v3 com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory) = 
      (r2v2 com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory)
      (r2v6 com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory)
     binds: [B:40:0x00a8, B:20:0x004b] A[DONT_GENERATE, DONT_INLINE]
      0x00ab: PHI (r8v5 java.lang.Object) = (r8v3 java.lang.Object), (r8v17 java.lang.Object) binds: [B:40:0x00a8, B:20:0x004b] A[DONT_GENERATE, DONT_INLINE]
      0x00ab: PHI (r9v10 com.superwall.sdk.paywall.presentation.internal.PresentationRequest) = 
      (r9v9 com.superwall.sdk.paywall.presentation.internal.PresentationRequest)
      (r9v19 com.superwall.sdk.paywall.presentation.internal.PresentationRequest)
     binds: [B:40:0x00a8, B:20:0x004b] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x00ea, blocks: (B:15:0x0034, B:46:0x00cd, B:47:0x00da, B:20:0x004b, B:42:0x00ab, B:23:0x0057, B:37:0x0090, B:39:0x0096, B:49:0x00e2, B:50:0x00e9, B:27:0x006d, B:33:0x0081, B:30:0x0074), top: B:59:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00e2 A[Catch: all -> 0x00ea, TryCatch #0 {all -> 0x00ea, blocks: (B:15:0x0034, B:46:0x00cd, B:47:0x00da, B:20:0x004b, B:42:0x00ab, B:23:0x0057, B:37:0x0090, B:39:0x0096, B:49:0x00e2, B:50:0x00e9, B:27:0x006d, B:33:0x0081, B:30:0x0074), top: B:59:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c8, code lost:
    
        if (r2.confirmPaywallAssignment(r8, r9, r10, r0) == r1) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object confirmAssignment(com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory r8, com.superwall.sdk.paywall.presentation.internal.PresentationRequest r9, kotlin.coroutines.Continuation<? super com.superwall.sdk.misc.Either<com.superwall.sdk.models.assignment.ConfirmedAssignment, java.lang.Throwable>> r10) {
        /*
            Method dump skipped, instruction units count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsKt.confirmAssignment(com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsFactory, com.superwall.sdk.paywall.presentation.internal.PresentationRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object getPaywallComponentsSync$default(Superwall superwall, PresentationRequest presentationRequest, MutableSharedFlow mutableSharedFlow, int i, Object obj) {
        if ((i & 2) != 0) {
            mutableSharedFlow = null;
        }
        return getPaywallComponentsSync(superwall, presentationRequest, mutableSharedFlow);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsKt$getPaywallComponentsSync$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GetPaywallComponents.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsKt$getPaywallComponentsSync$1", f = "GetPaywallComponents.kt", i = {}, l = {103}, m = "invokeSuspend", n = {}, s = {})
    static final class C05211 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends PaywallComponents>>, Object> {
        final /* synthetic */ MutableSharedFlow<PaywallState> $publisher;
        final /* synthetic */ PresentationRequest $request;
        final /* synthetic */ Superwall $this_getPaywallComponentsSync;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05211(Superwall superwall, PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super C05211> continuation) {
            super(2, continuation);
            this.$this_getPaywallComponentsSync = superwall;
            this.$request = presentationRequest;
            this.$publisher = mutableSharedFlow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05211(this.$this_getPaywallComponentsSync, this.$request, this.$publisher, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends PaywallComponents>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super Result<PaywallComponents>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<PaywallComponents>> continuation) {
            return ((C05211) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objRunGetPaywallComponents;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                objRunGetPaywallComponents = GetPaywallComponentsKt.runGetPaywallComponents(this.$this_getPaywallComponentsSync.getDependencyContainer$superwall_release().getGetPaywallComponentsFactory$superwall_release(), this.$request, this.$publisher, this);
                if (objRunGetPaywallComponents == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objRunGetPaywallComponents = ((Result) obj).getValue();
            }
            return Result.m11240boximpl(objRunGetPaywallComponents);
        }
    }

    public static final Object getPaywallComponentsSync(Superwall superwall, PresentationRequest request, MutableSharedFlow<PaywallState> mutableSharedFlow) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        return ((Result) BuildersKt__BuildersKt.runBlocking$default(null, new C05211(superwall, request, mutableSharedFlow, null), 1, null)).getValue();
    }
}
