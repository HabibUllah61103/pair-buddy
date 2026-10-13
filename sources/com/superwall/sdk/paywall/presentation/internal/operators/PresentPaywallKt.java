package com.superwall.sdk.paywall.presentation.internal.operators;

import android.app.Activity;
import androidx.appcompat.app.AppCompatDelegate;
import com.google.firebase.messaging.Constants;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.paywall.PaywallPresentationStyle;
import com.superwall.sdk.models.triggers.TriggerRuleOccurrence;
import com.superwall.sdk.paywall.presentation.internal.InternalPresentationLogic;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatus;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.request.PaywallOverrides;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import com.superwall.sdk.paywall.view.PaywallView;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: compiled from: PresentPaywall.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001aV\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0086@¢\u0006\u0002\u0010\u0012\u001aT\u0010\u0013\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u0015¨\u0006\u0016"}, d2 = {"presentPaywallView", "", "Lcom/superwall/sdk/Superwall;", "paywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "presenter", "Landroid/app/Activity;", "unsavedOccurrence", "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;", "debugInfo", "", "", "", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "paywallStatePublisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/app/Activity;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "presentPaywallViewSync", "onStateChanged", "Lkotlin/Function1;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PresentPaywallKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.PresentPaywallKt$presentPaywallView$2, reason: invalid class name */
    /* JADX INFO: compiled from: PresentPaywall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.PresentPaywallKt$presentPaywallView$2", f = "PresentPaywall.kt", i = {1}, l = {52, 88}, m = "invokeSuspend", n = {Constants.IPC_BUNDLE_KEY_SEND_ERROR}, s = {"L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Map<String, Object> $debugInfo;
        final /* synthetic */ MutableSharedFlow<PaywallState> $paywallStatePublisher;
        final /* synthetic */ PaywallView $paywallView;
        final /* synthetic */ Activity $presenter;
        final /* synthetic */ PresentationRequest $request;
        final /* synthetic */ Superwall $this_presentPaywallView;
        final /* synthetic */ TriggerRuleOccurrence $unsavedOccurrence;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(PresentationRequest presentationRequest, Superwall superwall, PaywallView paywallView, Activity activity, TriggerRuleOccurrence triggerRuleOccurrence, MutableSharedFlow<PaywallState> mutableSharedFlow, Map<String, ? extends Object> map, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$request = presentationRequest;
            this.$this_presentPaywallView = superwall;
            this.$paywallView = paywallView;
            this.$presenter = activity;
            this.$unsavedOccurrence = triggerRuleOccurrence;
            this.$paywallStatePublisher = mutableSharedFlow;
            this.$debugInfo = map;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$request, this.$this_presentPaywallView, this.$paywallView, this.$presenter, this.$unsavedOccurrence, this.$paywallStatePublisher, this.$debugInfo, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                InternalSuperwallEvent.PresentationRequest presentationRequest = new InternalSuperwallEvent.PresentationRequest(this.$request.getPresentationInfo().getEventData(), this.$request.getFlags().getType(), PaywallPresentationRequestStatus.Presentation.INSTANCE, null, this.$this_presentPaywallView.getDependencyContainer$superwall_release(), null, 32, null);
                this.label = 1;
                if (TrackingKt.track(this.$this_presentPaywallView, presentationRequest, this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Throwable th = (Throwable) this.L$0;
                ResultKt.throwOnFailure(obj);
                throw th;
            }
            ResultKt.throwOnFailure(obj);
            ((Result) obj).getValue();
            try {
                PaywallView paywallView = this.$paywallView;
                Activity activity = this.$presenter;
                PresentationRequest presentationRequest2 = this.$request;
                TriggerRuleOccurrence triggerRuleOccurrence = this.$unsavedOccurrence;
                PaywallOverrides paywallOverrides = presentationRequest2.getPaywallOverrides();
                PaywallPresentationStyle presentationStyle = paywallOverrides != null ? paywallOverrides.getPresentationStyle() : null;
                final MutableSharedFlow<PaywallState> mutableSharedFlow = this.$paywallStatePublisher;
                final PaywallView paywallView2 = this.$paywallView;
                final Superwall superwall = this.$this_presentPaywallView;
                final Map<String, Object> map = this.$debugInfo;
                paywallView.present(activity, presentationRequest2, triggerRuleOccurrence, presentationStyle, mutableSharedFlow, new Function1() { // from class: com.superwall.sdk.paywall.presentation.internal.operators.PresentPaywallKt$presentPaywallView$2$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return PresentPaywallKt.AnonymousClass2.invokeSuspend$lambda$0(paywallView2, superwall, map, mutableSharedFlow, ((Boolean) obj2).booleanValue());
                    }
                });
                return Unit.INSTANCE;
            } catch (Throwable th2) {
                this.L$0 = th2;
                this.label = 2;
                if (LogErrorsKt.logErrors(this.$this_presentPaywallView, this.$request, th2, this) != coroutine_suspended) {
                    throw th2;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(PaywallView paywallView, Superwall superwall, Map map, MutableSharedFlow mutableSharedFlow, boolean z) throws PaywallPresentationRequestStatusReason.PaywallAlreadyPresented {
            if (z) {
                BuildersKt__Builders_commonKt.launch$default(superwall.getIoScope$superwall_release(), null, null, new PresentPaywallKt$presentPaywallView$2$1$1(mutableSharedFlow, new PaywallState.Presented(paywallView.getInfo()), null), 3, null);
                return Unit.INSTANCE;
            }
            Logger.debug$default(Logger.INSTANCE, LogLevel.info, LogScope.paywallPresentation, "Paywall Already Presented", map, null, 16, null);
            BuildersKt__Builders_commonKt.launch$default(superwall.getIoScope$superwall_release(), null, null, new PresentPaywallKt$presentPaywallView$2$1$2(mutableSharedFlow, InternalPresentationLogic.INSTANCE.presentationError("SWKPresentationError", 102, "Paywall Already Presented", "Trying to present paywall while another paywall is presented."), null), 3, null);
            throw new PaywallPresentationRequestStatusReason.PaywallAlreadyPresented();
        }
    }

    public static final Object presentPaywallView(Superwall superwall, PaywallView paywallView, Activity activity, TriggerRuleOccurrence triggerRuleOccurrence, Map<String, ? extends Object> map, PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(presentationRequest, superwall, paywallView, activity, triggerRuleOccurrence, mutableSharedFlow, map, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.PresentPaywallKt$presentPaywallViewSync$1, reason: invalid class name */
    /* JADX INFO: compiled from: PresentPaywall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.PresentPaywallKt$presentPaywallViewSync$1", f = "PresentPaywall.kt", i = {}, l = {113}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Map<String, Object> $debugInfo;
        final /* synthetic */ Function1<PaywallState, Unit> $onStateChanged;
        final /* synthetic */ PaywallView $paywallView;
        final /* synthetic */ Activity $presenter;
        final /* synthetic */ PresentationRequest $request;
        final /* synthetic */ Superwall $this_presentPaywallViewSync;
        final /* synthetic */ TriggerRuleOccurrence $unsavedOccurrence;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Superwall superwall, PaywallView paywallView, Activity activity, TriggerRuleOccurrence triggerRuleOccurrence, Map<String, ? extends Object> map, PresentationRequest presentationRequest, Function1<? super PaywallState, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$this_presentPaywallViewSync = superwall;
            this.$paywallView = paywallView;
            this.$presenter = activity;
            this.$unsavedOccurrence = triggerRuleOccurrence;
            this.$debugInfo = map;
            this.$request = presentationRequest;
            this.$onStateChanged = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$this_presentPaywallViewSync, this.$paywallView, this.$presenter, this.$unsavedOccurrence, this.$debugInfo, this.$request, this.$onStateChanged, continuation);
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
                MutableSharedFlow mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
                BuildersKt__Builders_commonKt.launch$default(this.$this_presentPaywallViewSync.getIoScope$superwall_release(), null, null, new C01181(mutableSharedFlowMutableSharedFlow$default, this.$onStateChanged, null), 3, null);
                this.label = 1;
                if (PresentPaywallKt.presentPaywallView(this.$this_presentPaywallViewSync, this.$paywallView, this.$presenter, this.$unsavedOccurrence, this.$debugInfo, this.$request, mutableSharedFlowMutableSharedFlow$default, this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.PresentPaywallKt$presentPaywallViewSync$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: PresentPaywall.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.PresentPaywallKt$presentPaywallViewSync$1$1", f = "PresentPaywall.kt", i = {}, l = {AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY}, m = "invokeSuspend", n = {}, s = {})
        static final class C01181 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Function1<PaywallState, Unit> $onStateChanged;
            final /* synthetic */ MutableSharedFlow<PaywallState> $publisher;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C01181(MutableSharedFlow<PaywallState> mutableSharedFlow, Function1<? super PaywallState, Unit> function1, Continuation<? super C01181> continuation) {
                super(2, continuation);
                this.$publisher = mutableSharedFlow;
                this.$onStateChanged = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C01181(this.$publisher, this.$onStateChanged, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C01181) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.PresentPaywallKt$presentPaywallViewSync$1$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: PresentPaywall.kt */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.PresentPaywallKt$presentPaywallViewSync$1$1$1", f = "PresentPaywall.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class C01191 extends SuspendLambda implements Function2<PaywallState, Continuation<? super Unit>, Object> {
                final /* synthetic */ Function1<PaywallState, Unit> $onStateChanged;
                /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C01191(Function1<? super PaywallState, Unit> function1, Continuation<? super C01191> continuation) {
                    super(2, continuation);
                    this.$onStateChanged = function1;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C01191 c01191 = new C01191(this.$onStateChanged, continuation);
                    c01191.L$0 = obj;
                    return c01191;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(PaywallState paywallState, Continuation<? super Unit> continuation) {
                    return ((C01191) create(paywallState, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    if (FlowKt.collectLatest(this.$publisher, new C01191(this.$onStateChanged, null), this) == coroutine_suspended) {
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
    }

    public static final void presentPaywallViewSync(Superwall superwall, PaywallView paywallView, Activity presenter, TriggerRuleOccurrence triggerRuleOccurrence, Map<String, ? extends Object> debugInfo, PresentationRequest request, Function1<? super PaywallState, Unit> onStateChanged) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(paywallView, "paywallView");
        Intrinsics.checkNotNullParameter(presenter, "presenter");
        Intrinsics.checkNotNullParameter(debugInfo, "debugInfo");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(onStateChanged, "onStateChanged");
        BuildersKt__Builders_commonKt.launch$default(superwall.getMainScope$superwall_release(), null, null, new AnonymousClass1(superwall, paywallView, presenter, triggerRuleOccurrence, debugInfo, request, onStateChanged, null), 3, null);
    }
}
