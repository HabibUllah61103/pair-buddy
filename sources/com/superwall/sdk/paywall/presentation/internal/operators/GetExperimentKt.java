package com.superwall.sdk.paywall.presentation.internal.operators;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.media3.container.MdtaMetadataEntry;
import com.facebook.imagepipeline.transcoder.JpegTranscoderUtils;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequestType;
import com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome;
import com.superwall.sdk.storage.LocalStorage;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: GetExperiment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0082@¢\u0006\u0002\u0010\u0007\u001a\u0096\u0001\u0010\b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u00122H\b\u0002\u0010\u0000\u001aB\b\u0001\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0016\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0013H\u0080@¢\u0006\u0002\u0010\u0017¨\u0006\u0018"}, d2 = {"activateSession", "", "Lcom/superwall/sdk/Superwall;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "rulesOutcome", "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getExperiment", "Lcom/superwall/sdk/models/triggers/Experiment;", "debugInfo", "", "", "", "paywallStatePublisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "Lkotlin/coroutines/Continuation;", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class GetExperimentKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.GetExperimentKt$getExperiment$1, reason: invalid class name */
    /* JADX INFO: compiled from: GetExperiment.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.GetExperimentKt", f = "GetExperiment.kt", i = {0, 0, 0, 1, 2, 3, 4, 5}, l = {62, 68, MdtaMetadataEntry.TYPE_INDICATOR_UNSIGNED_INT64, 80, JpegTranscoderUtils.DEFAULT_JPEG_QUALITY, 101}, m = "getExperiment", n = {"rulesOutcome", "paywallStatePublisher", "storage", "errorType", "paywallStatePublisher", "errorType", "errorType", "errorType"}, s = {"L$0", "L$1", "L$2", "L$0", "L$0", "L$0", "L$0", "L$0"})
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
            return GetExperimentKt.getExperiment(null, null, null, null, null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object activateSession(Superwall superwall, PresentationRequest presentationRequest, RuleEvaluationOutcome ruleEvaluationOutcome, Continuation<? super Unit> continuation) {
        if (Intrinsics.areEqual(presentationRequest.getFlags().getType(), PresentationRequestType.GetImplicitPresentationResult.INSTANCE) || Intrinsics.areEqual(presentationRequest.getFlags().getType(), PresentationRequestType.GetPresentationResult.INSTANCE)) {
            return Unit.INSTANCE;
        }
        Object objAttemptTriggerFire = GetPresenterKt.attemptTriggerFire(superwall, presentationRequest, ruleEvaluationOutcome.getTriggerResult(), continuation);
        return objAttemptTriggerFire == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAttemptTriggerFire : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0093  */
    /* JADX WARN: Code duplicated, block: B:30:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:67:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0103, code lost:
    
        if (r0.emit(r2, r5) == r6) goto L63;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object getExperiment(com.superwall.sdk.paywall.presentation.internal.PresentationRequest r17, com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome r18, java.util.Map<java.lang.String, ? extends java.lang.Object> r19, kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState> r20, com.superwall.sdk.storage.LocalStorage r21, kotlin.jvm.functions.Function3<? super com.superwall.sdk.paywall.presentation.internal.PresentationRequest, ? super com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r22, kotlin.coroutines.Continuation<? super com.superwall.sdk.models.triggers.Experiment> r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.internal.operators.GetExperimentKt.getExperiment(com.superwall.sdk.paywall.presentation.internal.PresentationRequest, com.superwall.sdk.paywall.presentation.rule_logic.RuleEvaluationOutcome, java.util.Map, kotlinx.coroutines.flow.MutableSharedFlow, com.superwall.sdk.storage.LocalStorage, kotlin.jvm.functions.Function3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.GetExperimentKt$getExperiment$2, reason: invalid class name */
    /* JADX INFO: compiled from: GetExperiment.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "outcome", "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.GetExperimentKt$getExperiment$2", f = "GetExperiment.kt", i = {}, l = {ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function3<PresentationRequest, RuleEvaluationOutcome, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(PresentationRequest presentationRequest, RuleEvaluationOutcome ruleEvaluationOutcome, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = presentationRequest;
            anonymousClass2.L$1 = ruleEvaluationOutcome;
            return anonymousClass2.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PresentationRequest presentationRequest = (PresentationRequest) this.L$0;
                RuleEvaluationOutcome ruleEvaluationOutcome = (RuleEvaluationOutcome) this.L$1;
                this.L$0 = null;
                this.label = 1;
                if (GetExperimentKt.activateSession(Superwall.INSTANCE.getInstance(), presentationRequest, ruleEvaluationOutcome, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public static /* synthetic */ Object getExperiment$default(PresentationRequest presentationRequest, RuleEvaluationOutcome ruleEvaluationOutcome, Map map, MutableSharedFlow mutableSharedFlow, LocalStorage localStorage, Function3 function3, Continuation continuation, int i, Object obj) throws Throwable {
        if ((i & 8) != 0) {
            mutableSharedFlow = null;
        }
        if ((i & 32) != 0) {
            function3 = new AnonymousClass2(null);
        }
        return getExperiment(presentationRequest, ruleEvaluationOutcome, map, mutableSharedFlow, localStorage, function3, continuation);
    }
}
