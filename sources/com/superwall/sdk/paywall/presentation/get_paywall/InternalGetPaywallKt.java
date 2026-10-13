package com.superwall.sdk.paywall.presentation.get_paywall;

import com.superwall.sdk.Superwall;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.paywall.presentation.internal.GetPaywallComponentsKt;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.operators.LogErrorsKt;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import com.superwall.sdk.paywall.view.PaywallView;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: compiled from: InternalGetPaywall.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a6\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0080@¢\u0006\u0002\u0010\n\u001a4\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000e0\r¨\u0006\u000f"}, d2 = {"getPaywall", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/paywall/view/PaywallView;", "", "Lcom/superwall/sdk/Superwall;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "publisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPaywallSync", "onStateChanged", "Lkotlin/Function1;", "", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class InternalGetPaywallKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_paywall.InternalGetPaywallKt$getPaywall$1, reason: invalid class name */
    /* JADX INFO: compiled from: InternalGetPaywall.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_paywall.InternalGetPaywallKt", f = "InternalGetPaywall.kt", i = {0, 0, 0, 1}, l = {37, 45}, m = "getPaywall", n = {"$this$getPaywall", "request", "publisher", "it"}, s = {"L$0", "L$1", "L$2", "L$0"})
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
            return InternalGetPaywallKt.getPaywall(null, null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object getPaywall(Superwall superwall, PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Either<PaywallView, Throwable>> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Object paywallComponents;
        Throwable th;
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
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            anonymousClass1.L$0 = superwall;
            anonymousClass1.L$1 = presentationRequest;
            anonymousClass1.L$2 = mutableSharedFlow;
            anonymousClass1.label = 1;
            paywallComponents = GetPaywallComponentsKt.getPaywallComponents(superwall, presentationRequest, mutableSharedFlow, anonymousClass1);
            if (paywallComponents != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            mutableSharedFlow = (MutableSharedFlow) anonymousClass1.L$2;
            presentationRequest = (PresentationRequest) anonymousClass1.L$1;
            superwall = (Superwall) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
            paywallComponents = ((Result) obj).getValue();
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            th = (Throwable) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return new Either.Failure(th);
        Throwable thM11244exceptionOrNullimpl = Result.m11244exceptionOrNullimpl(paywallComponents);
        if (thM11244exceptionOrNullimpl == null) {
            PaywallComponents paywallComponents2 = (PaywallComponents) paywallComponents;
            paywallComponents2.getView().set$superwall_release(presentationRequest, mutableSharedFlow, paywallComponents2.getRulesOutcome().getUnsavedOccurrence());
            return new Either.Success(paywallComponents2.getView());
        }
        anonymousClass1.L$0 = thM11244exceptionOrNullimpl;
        anonymousClass1.L$1 = null;
        anonymousClass1.L$2 = null;
        anonymousClass1.label = 2;
        if (LogErrorsKt.logErrors(superwall, presentationRequest, thM11244exceptionOrNullimpl, anonymousClass1) != coroutine_suspended) {
            th = thM11244exceptionOrNullimpl;
            return new Either.Failure(th);
        }
        return coroutine_suspended;
    }

    public static /* synthetic */ Object getPaywall$default(Superwall superwall, PresentationRequest presentationRequest, MutableSharedFlow mutableSharedFlow, Continuation continuation, int i, Object obj) throws Throwable {
        if ((i & 2) != 0) {
            mutableSharedFlow = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        }
        return getPaywall(superwall, presentationRequest, mutableSharedFlow, continuation);
    }

    public static /* synthetic */ Either getPaywallSync$default(Superwall superwall, PresentationRequest presentationRequest, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1() { // from class: com.superwall.sdk.paywall.presentation.get_paywall.InternalGetPaywallKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return InternalGetPaywallKt.getPaywallSync$lambda$2((PaywallState) obj2);
                }
            };
        }
        return getPaywallSync(superwall, presentationRequest, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getPaywallSync$lambda$2(PaywallState it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public static final Either<PaywallView, Throwable> getPaywallSync(Superwall superwall, PresentationRequest request, Function1<? super PaywallState, Unit> onStateChanged) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(onStateChanged, "onStateChanged");
        IOScope ioScope$superwall_release = Superwall.INSTANCE.getInstance().getIoScope$superwall_release();
        MutableSharedFlow mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        BuildersKt__Builders_commonKt.launch$default(ioScope$superwall_release, null, null, new AnonymousClass2(mutableSharedFlowMutableSharedFlow$default, onStateChanged, null), 3, null);
        return (Either) BuildersKt__BuildersKt.runBlocking$default(null, new AnonymousClass3(superwall, request, mutableSharedFlowMutableSharedFlow$default, null), 1, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_paywall.InternalGetPaywallKt$getPaywallSync$2, reason: invalid class name */
    /* JADX INFO: compiled from: InternalGetPaywall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_paywall.InternalGetPaywallKt$getPaywallSync$2", f = "InternalGetPaywall.kt", i = {}, l = {64}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<PaywallState, Unit> $onStateChanged;
        final /* synthetic */ MutableSharedFlow<PaywallState> $publisher;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(MutableSharedFlow<PaywallState> mutableSharedFlow, Function1<? super PaywallState, Unit> function1, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$publisher = mutableSharedFlow;
            this.$onStateChanged = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$publisher, this.$onStateChanged, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_paywall.InternalGetPaywallKt$getPaywallSync$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: InternalGetPaywall.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_paywall.InternalGetPaywallKt$getPaywallSync$2$1", f = "InternalGetPaywall.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<PaywallState, Continuation<? super Unit>, Object> {
            final /* synthetic */ Function1<PaywallState, Unit> $onStateChanged;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(Function1<? super PaywallState, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$onStateChanged = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$onStateChanged, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(PaywallState paywallState, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(paywallState, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                this.$onStateChanged.invoke((PaywallState) this.L$0);
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (FlowKt.collectLatest(this.$publisher, new AnonymousClass1(this.$onStateChanged, null), this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_paywall.InternalGetPaywallKt$getPaywallSync$3, reason: invalid class name */
    /* JADX INFO: compiled from: InternalGetPaywall.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/paywall/view/PaywallView;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_paywall.InternalGetPaywallKt$getPaywallSync$3", f = "InternalGetPaywall.kt", i = {}, l = {69}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Either<? extends PaywallView, Throwable>>, Object> {
        final /* synthetic */ MutableSharedFlow<PaywallState> $publisher;
        final /* synthetic */ PresentationRequest $request;
        final /* synthetic */ Superwall $this_getPaywallSync;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(Superwall superwall, PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$this_getPaywallSync = superwall;
            this.$request = presentationRequest;
            this.$publisher = mutableSharedFlow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.$this_getPaywallSync, this.$request, this.$publisher, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Either<? extends PaywallView, Throwable>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super Either<PaywallView, Throwable>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Either<PaywallView, Throwable>> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            Object paywall = InternalGetPaywallKt.getPaywall(this.$this_getPaywallSync, this.$request, this.$publisher, this);
            return paywall == coroutine_suspended ? coroutine_suspended : paywall;
        }
    }
}
