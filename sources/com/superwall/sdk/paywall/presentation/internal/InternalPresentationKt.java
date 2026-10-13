package com.superwall.sdk.paywall.presentation.internal;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.paywall.presentation.PaywallCloseReason;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallResult;
import com.superwall.sdk.paywall.view.PaywallView;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: InternalPresentation.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a(\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0080@¢\u0006\u0002\u0010\n\u001a:\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0013H\u0080@¢\u0006\u0002\u0010\u0014\u001a>\u0010\u0015\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0013H\u0080@¢\u0006\u0002\u0010\u0016*\u0016\u0010\u0000\"\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0017"}, d2 = {"PaywallStatePublisher", "Lkotlinx/coroutines/flow/Flow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "internallyPresent", "", "Lcom/superwall/sdk/Superwall;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "publisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dismiss", "paywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "result", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "closeReason", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "completion", "Lkotlin/Function0;", "(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dismissAfterPaymentSheet", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class InternalPresentationKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.InternalPresentationKt$internallyPresent$1, reason: invalid class name */
    /* JADX INFO: compiled from: InternalPresentation.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.InternalPresentationKt", f = "InternalPresentation.kt", i = {0, 0, 0, 1, 1, 1, 2, 2}, l = {29, 31, 44, ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF}, m = "internallyPresent", n = {"$this$internallyPresent", "request", "publisher", "$this$internallyPresent", "request", "publisher", "$this$internallyPresent", "request"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1"})
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
            return InternalPresentationKt.internallyPresent(null, null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00af A[Catch: all -> 0x00de, TryCatch #2 {all -> 0x00de, blocks: (B:38:0x00a4, B:40:0x00af, B:43:0x00d2, B:44:0x00dd), top: B:55:0x00a4 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d2 A[Catch: all -> 0x00de, TryCatch #2 {all -> 0x00de, blocks: (B:38:0x00a4, B:40:0x00af, B:43:0x00d2, B:44:0x00dd), top: B:55:0x00a4 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ef, code lost:
    
        if (com.superwall.sdk.paywall.presentation.internal.operators.LogErrorsKt.logErrors(r13, r14, r0, r10) == r2) goto L50;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object internallyPresent(com.superwall.sdk.Superwall r13, com.superwall.sdk.paywall.presentation.internal.PresentationRequest r14, kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState> r15, kotlin.coroutines.Continuation<? super kotlin.Unit> r16) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.internal.InternalPresentationKt.internallyPresent(com.superwall.sdk.Superwall, com.superwall.sdk.paywall.presentation.internal.PresentationRequest, kotlinx.coroutines.flow.MutableSharedFlow, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object dismiss$default(PaywallView paywallView, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason, Function0 function0, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            paywallCloseReason = PaywallCloseReason.SystemLogic.INSTANCE;
        }
        if ((i & 8) != 0) {
            function0 = null;
        }
        return dismiss(paywallView, paywallResult, paywallCloseReason, function0, continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.InternalPresentationKt$dismiss$2, reason: invalid class name */
    /* JADX INFO: compiled from: InternalPresentation.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.InternalPresentationKt$dismiss$2", f = "InternalPresentation.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PaywallCloseReason $closeReason;
        final /* synthetic */ Function0<Unit> $completion;
        final /* synthetic */ PaywallView $paywallView;
        final /* synthetic */ PaywallResult $result;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(PaywallView paywallView, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason, Function0<Unit> function0, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$paywallView = paywallView;
            this.$result = paywallResult;
            this.$closeReason = paywallCloseReason;
            this.$completion = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$paywallView, this.$result, this.$closeReason, this.$completion, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$paywallView.dismiss$superwall_release(this.$result, this.$closeReason, this.$completion);
            return Unit.INSTANCE;
        }
    }

    public static final Object dismiss(PaywallView paywallView, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason, Function0<Unit> function0, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(paywallView, paywallResult, paywallCloseReason, function0, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public static /* synthetic */ Object dismissAfterPaymentSheet$default(Superwall superwall, PaywallView paywallView, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason, Function0 function0, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            paywallCloseReason = PaywallCloseReason.SystemLogic.INSTANCE;
        }
        PaywallCloseReason paywallCloseReason2 = paywallCloseReason;
        if ((i & 8) != 0) {
            function0 = null;
        }
        return dismissAfterPaymentSheet(superwall, paywallView, paywallResult, paywallCloseReason2, function0, continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.InternalPresentationKt$dismissAfterPaymentSheet$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InternalPresentation.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.InternalPresentationKt$dismissAfterPaymentSheet$2", f = "InternalPresentation.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05232 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PaywallCloseReason $closeReason;
        final /* synthetic */ Function0<Unit> $completion;
        final /* synthetic */ PaywallView $paywallView;
        final /* synthetic */ PaywallResult $result;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05232(PaywallView paywallView, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason, Function0<Unit> function0, Continuation<? super C05232> continuation) {
            super(2, continuation);
            this.$paywallView = paywallView;
            this.$result = paywallResult;
            this.$closeReason = paywallCloseReason;
            this.$completion = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05232(this.$paywallView, this.$result, this.$closeReason, this.$completion, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05232) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$paywallView.dismiss$superwall_release(this.$result, this.$closeReason, this.$completion);
            return Unit.INSTANCE;
        }
    }

    public static final Object dismissAfterPaymentSheet(Superwall superwall, PaywallView paywallView, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason, Function0<Unit> function0, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C05232(paywallView, paywallResult, paywallCloseReason, function0, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }
}
