package com.superwall.sdk.paywall.presentation.internal.operators;

import com.google.firebase.messaging.Constants;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatus;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: LogErrors.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0080@¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"logErrors", "", "Lcom/superwall/sdk/Superwall;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class LogErrorsKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.LogErrorsKt$logErrors$1, reason: invalid class name */
    /* JADX INFO: compiled from: LogErrors.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.LogErrorsKt", f = "LogErrors.kt", i = {0}, l = {21}, m = "logErrors", n = {Constants.IPC_BUNDLE_KEY_SEND_ERROR}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LogErrorsKt.logErrors(null, null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object logErrors(Superwall superwall, PresentationRequest presentationRequest, Throwable th, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        String message;
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
            if (th instanceof PaywallPresentationRequestStatusReason) {
                CoroutineDispatcher io = Dispatchers.getIO();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(presentationRequest, th, superwall, null);
                anonymousClass1.L$0 = th;
                anonymousClass1.label = 1;
                if (BuildersKt.withContext(io, anonymousClass2, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Throwable th2 = (Throwable) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
            th = th2;
        }
        Logger logger = Logger.INSTANCE;
        LogLevel logLevel = LogLevel.info;
        LogScope logScope = LogScope.paywallPresentation;
        if (th instanceof PaywallPresentationRequestStatusReason) {
            PaywallPresentationRequestStatusReason paywallPresentationRequestStatusReason = (PaywallPresentationRequestStatusReason) th;
            message = paywallPresentationRequestStatusReason.getDescription() + " - " + paywallPresentationRequestStatusReason.getInfo();
        } else {
            message = th.getMessage();
        }
        Logger.debug$default(logger, logLevel, logScope, "Skipped paywall presentation: " + message + ", " + ExceptionsKt.stackTraceToString(th), null, null, 24, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.LogErrorsKt$logErrors$2, reason: invalid class name */
    /* JADX INFO: compiled from: LogErrors.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.LogErrorsKt$logErrors$2", f = "LogErrors.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Job>, Object> {
        final /* synthetic */ Throwable $error;
        final /* synthetic */ PresentationRequest $request;
        final /* synthetic */ Superwall $this_logErrors;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(PresentationRequest presentationRequest, Throwable th, Superwall superwall, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$request = presentationRequest;
            this.$error = th;
            this.$this_logErrors = superwall;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$request, this.$error, this.$this_logErrors, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Job> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.LogErrorsKt$logErrors$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: LogErrors.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.LogErrorsKt$logErrors$2$1", f = "LogErrors.kt", i = {}, l = {31}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Throwable $error;
            final /* synthetic */ PresentationRequest $request;
            final /* synthetic */ Superwall $this_logErrors;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(PresentationRequest presentationRequest, Throwable th, Superwall superwall, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$request = presentationRequest;
                this.$error = th;
                this.$this_logErrors = superwall;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$request, this.$error, this.$this_logErrors, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    InternalSuperwallEvent.PresentationRequest presentationRequest = new InternalSuperwallEvent.PresentationRequest(this.$request.getPresentationInfo().getEventData(), this.$request.getFlags().getType(), PaywallPresentationRequestStatus.NoPresentation.INSTANCE, (PaywallPresentationRequestStatusReason) this.$error, this.$this_logErrors.getDependencyContainer$superwall_release(), null, 32, null);
                    this.label = 1;
                    if (TrackingKt.track(this.$this_logErrors, presentationRequest, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    ((Result) obj).getValue();
                }
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                return BuildersKt__Builders_commonKt.launch$default((CoroutineScope) this.L$0, null, null, new AnonymousClass1(this.$request, this.$error, this.$this_logErrors, null), 3, null);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
