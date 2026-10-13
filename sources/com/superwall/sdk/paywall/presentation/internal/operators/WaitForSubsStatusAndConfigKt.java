package com.superwall.sdk.paywall.presentation.internal.operators;

import androidx.media3.extractor.ts.TsExtractor;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.config.models.ConfigState;
import com.superwall.sdk.dependencies.DependencyContainer;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatus;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: WaitForSubsStatusAndConfig.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\"\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0080@¢\u0006\u0002\u0010\u0006\u001a4\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0080@¢\u0006\u0002\u0010\u000f¨\u0006\u0010"}, d2 = {"configOrThrow", "", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/superwall/sdk/config/models/ConfigState;", "retriesLeft", "", "(Lkotlinx/coroutines/flow/StateFlow;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "waitForEntitlementsAndConfig", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "paywallStatePublisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "dependencyContainer", "Lcom/superwall/sdk/dependencies/DependencyContainer;", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class WaitForSubsStatusAndConfigKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$configOrThrow$1, reason: invalid class name */
    /* JADX INFO: compiled from: WaitForSubsStatusAndConfig.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt", f = "WaitForSubsStatusAndConfig.kt", i = {0, 0}, l = {36, 43}, m = "configOrThrow", n = {"$this$configOrThrow", "retriesLeft"}, s = {"L$0", "I$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
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
            return WaitForSubsStatusAndConfigKt.configOrThrow(null, 0, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WaitForSubsStatusAndConfig.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt", f = "WaitForSubsStatusAndConfig.kt", i = {0, 0, 0, 2, 2, 2}, l = {56, 88, 107, TsExtractor.TS_STREAM_TYPE_E_AC3, 154}, m = "waitForEntitlementsAndConfig", n = {"request", "paywallStatePublisher", "dependencyContainer", "request", "paywallStatePublisher", "dependencyContainer"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2"})
    static final class C05261 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C05261(Continuation<? super C05261> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WaitForSubsStatusAndConfigKt.waitForEntitlementsAndConfig(null, null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006a, code lost:
    
        if (kotlinx.coroutines.TimeoutKt.m12756withTimeoutKLykuaI(r6, r10, r0) == r1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0078, code lost:
    
        if (configOrThrow(r8, r9 - 1, r0) == r1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007a, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object configOrThrow(kotlinx.coroutines.flow.StateFlow<? extends com.superwall.sdk.config.models.ConfigState> r8, int r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            boolean r0 = r10 instanceof com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r10
            com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$configOrThrow$1 r0 = (com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$configOrThrow$1 r0 = new com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$configOrThrow$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L42
            if (r2 == r5) goto L36
            if (r2 != r4) goto L2e
            kotlin.ResultKt.throwOnFailure(r10)
            goto L7b
        L2e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L36:
            int r9 = r0.I$0
            java.lang.Object r8 = r0.L$0
            kotlinx.coroutines.flow.StateFlow r8 = (kotlinx.coroutines.flow.StateFlow) r8
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
            goto L7b
        L40:
            r10 = move-exception
            goto L6d
        L42:
            kotlin.ResultKt.throwOnFailure(r10)
            if (r9 <= 0) goto L50
            kotlin.time.Duration$Companion r10 = kotlin.time.Duration.INSTANCE     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
            kotlin.time.DurationUnit r10 = kotlin.time.DurationUnit.SECONDS     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
            long r6 = kotlin.time.DurationKt.toDuration(r5, r10)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
            goto L59
        L50:
            kotlin.time.Duration$Companion r10 = kotlin.time.Duration.INSTANCE     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
            kotlin.time.DurationUnit r10 = kotlin.time.DurationUnit.SECONDS     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
            r2 = 5
            long r6 = kotlin.time.DurationKt.toDuration(r2, r10)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
        L59:
            com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$configOrThrow$2 r10 = new com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$configOrThrow$2     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
            r10.<init>(r8, r3)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
            kotlin.jvm.functions.Function2 r10 = (kotlin.jvm.functions.Function2) r10     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
            r0.L$0 = r8     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
            r0.I$0 = r9     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
            r0.label = r5     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
            java.lang.Object r8 = kotlinx.coroutines.TimeoutKt.m12756withTimeoutKLykuaI(r6, r10, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L40
            if (r8 != r1) goto L7b
            goto L7a
        L6d:
            if (r9 <= 0) goto L7e
            int r9 = r9 - r5
            r0.L$0 = r3
            r0.label = r4
            java.lang.Object r8 = configOrThrow(r8, r9, r0)
            if (r8 != r1) goto L7b
        L7a:
            return r1
        L7b:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L7e:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt.configOrThrow(kotlinx.coroutines.flow.StateFlow, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object configOrThrow$default(StateFlow stateFlow, int i, Continuation continuation, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 1;
        }
        return configOrThrow(stateFlow, i, continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$configOrThrow$2, reason: invalid class name */
    /* JADX INFO: compiled from: WaitForSubsStatusAndConfig.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/config/models/ConfigState;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$configOrThrow$2", f = "WaitForSubsStatusAndConfig.kt", i = {}, l = {37}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ConfigState>, Object> {
        final /* synthetic */ StateFlow<ConfigState> $this_configOrThrow;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(StateFlow<? extends ConfigState> stateFlow, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$this_configOrThrow = stateFlow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$this_configOrThrow, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ConfigState> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$configOrThrow$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: WaitForSubsStatusAndConfig.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "result", "Lcom/superwall/sdk/config/models/ConfigState;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$configOrThrow$2$1", f = "WaitForSubsStatusAndConfig.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<ConfigState, Continuation<? super Boolean>, Object> {
            /* synthetic */ Object L$0;
            int label;

            AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(ConfigState configState, Continuation<? super Boolean> continuation) {
                return ((AnonymousClass1) create(configState, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ConfigState configState = (ConfigState) this.L$0;
                if (configState instanceof ConfigState.Failed) {
                    throw ((ConfigState.Failed) configState).getThrowable();
                }
                return Boxing.boxBoolean(configState instanceof ConfigState.Retrieved);
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
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
            Object objFirst = FlowKt.first(this.$this_configOrThrow, new AnonymousClass1(null), this);
            return objFirst == coroutine_suspended ? coroutine_suspended : objFirst;
        }
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0129  */
    /* JADX WARN: Code duplicated, block: B:67:0x0156  */
    /* JADX WARN: Code duplicated, block: B:68:0x0159  */
    /* JADX WARN: Code duplicated, block: B:70:0x016e  */
    /* JADX WARN: Code duplicated, block: B:79:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0104, code lost:
    
        if (r1 == r3) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0189, code lost:
    
        if (r7.emit(r1, r2) == r3) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01e4, code lost:
    
        if (r14.emit(r1, r2) == r3) goto L81;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object waitForEntitlementsAndConfig(com.superwall.sdk.paywall.presentation.internal.PresentationRequest r29, kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState> r30, com.superwall.sdk.dependencies.DependencyContainer r31, kotlin.coroutines.Continuation<? super kotlin.Unit> r32) throws com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason.NoConfig, com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason.SubscriptionStatusTimeout {
        /*
            Method dump skipped, instruction units count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt.waitForEntitlementsAndConfig(com.superwall.sdk.paywall.presentation.internal.PresentationRequest, kotlinx.coroutines.flow.MutableSharedFlow, com.superwall.sdk.dependencies.DependencyContainer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object waitForEntitlementsAndConfig$default(PresentationRequest presentationRequest, MutableSharedFlow mutableSharedFlow, DependencyContainer dependencyContainer, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            mutableSharedFlow = null;
        }
        if ((i & 4) != 0) {
            dependencyContainer = null;
        }
        return waitForEntitlementsAndConfig(presentationRequest, mutableSharedFlow, dependencyContainer, continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WaitForSubsStatusAndConfig.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$2", f = "WaitForSubsStatusAndConfig.kt", i = {}, l = {59}, m = "invokeSuspend", n = {}, s = {})
    static final class C05272 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super SubscriptionStatus>, Object> {
        final /* synthetic */ PresentationRequest $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05272(PresentationRequest presentationRequest, Continuation<? super C05272> continuation) {
            super(2, continuation);
            this.$request = presentationRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05272(this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super SubscriptionStatus> continuation) {
            return ((C05272) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
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
            final StateFlow<SubscriptionStatus> entitlements = this.$request.getFlags().getEntitlements();
            this.label = 1;
            Object objFirst = FlowKt.first(new Flow<SubscriptionStatus>() { // from class: com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$2$invokeSuspend$$inlined$filter$1

                /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$2$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ FlowCollector $this_unsafeFlow;

                    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$2$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$2$invokeSuspend$$inlined$filter$1$2", f = "WaitForSubsStatusAndConfig.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        Object L$1;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector) {
                        this.$this_unsafeFlow = flowCollector;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
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
                        Object obj2 = anonymousClass1.result;
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = anonymousClass1.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj2);
                            FlowCollector flowCollector = this.$this_unsafeFlow;
                            if (!(((SubscriptionStatus) obj) instanceof SubscriptionStatus.Unknown)) {
                                anonymousClass1.label = 1;
                                if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            }
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj2);
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super SubscriptionStatus> flowCollector, Continuation continuation) {
                    Object objCollect = entitlements.collect(new AnonymousClass2(flowCollector), continuation);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }
            }, this);
            return objFirst == coroutine_suspended ? coroutine_suspended : objFirst;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$3, reason: invalid class name */
    /* JADX INFO: compiled from: WaitForSubsStatusAndConfig.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$3", f = "WaitForSubsStatusAndConfig.kt", i = {}, l = {72}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ DependencyContainer $dependencyContainer;
        final /* synthetic */ PresentationRequest $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(PresentationRequest presentationRequest, DependencyContainer dependencyContainer, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$request = presentationRequest;
            this.$dependencyContainer = dependencyContainer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.$request, this.$dependencyContainer, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                InternalSuperwallEvent.PresentationRequest presentationRequest = new InternalSuperwallEvent.PresentationRequest(this.$request.getPresentationInfo().getEventData(), this.$request.getFlags().getType(), PaywallPresentationRequestStatus.Timeout.INSTANCE, new PaywallPresentationRequestStatusReason.SubscriptionStatusTimeout(null, 1, null), this.$dependencyContainer, null, 32, null);
                this.label = 1;
                if (this.$dependencyContainer.mo10617trackgIAlus(presentationRequest, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$4, reason: invalid class name */
    /* JADX INFO: compiled from: WaitForSubsStatusAndConfig.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$4", f = "WaitForSubsStatusAndConfig.kt", i = {}, l = {121}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ DependencyContainer $dependencyContainer;
        final /* synthetic */ PresentationRequest $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(PresentationRequest presentationRequest, DependencyContainer dependencyContainer, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$request = presentationRequest;
            this.$dependencyContainer = dependencyContainer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass4(this.$request, this.$dependencyContainer, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                InternalSuperwallEvent.PresentationRequest presentationRequest = new InternalSuperwallEvent.PresentationRequest(this.$request.getPresentationInfo().getEventData(), this.$request.getFlags().getType(), PaywallPresentationRequestStatus.Timeout.INSTANCE, new PaywallPresentationRequestStatusReason.NoConfig(), this.$dependencyContainer, null, 32, null);
                this.label = 1;
                if (this.$dependencyContainer.mo10617trackgIAlus(presentationRequest, this) == coroutine_suspended) {
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
}
