package com.superwall.sdk.paywall.presentation;

import androidx.compose.runtime.ComposerKt;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.dependencies.RequestFactory;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.models.config.FeatureGatingBehavior;
import com.superwall.sdk.paywall.presentation.internal.InternalPresentationKt;
import com.superwall.sdk.paywall.presentation.internal.InternalPresentationLogic;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequestType;
import com.superwall.sdk.paywall.presentation.internal.request.PaywallOverrides;
import com.superwall.sdk.paywall.presentation.internal.request.PresentationInfo;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallResult;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallSkippedReason;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: compiled from: PublicPresentation.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0080@¢\u0006\u0002\u0010\u0004\u001a\u001e\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0080@¢\u0006\u0002\u0010\n\u001a\u0018\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\rH\u0000\u001a\u0012\u0010\u000e\u001a\u00020\u0001*\u00020\u000fH\u0086@¢\u0006\u0002\u0010\u0010\u001a\n\u0010\u0011\u001a\u00020\u0001*\u00020\u000f\u001a\u0012\u0010\u0012\u001a\u00020\u0001*\u00020\u000fH\u0086@¢\u0006\u0002\u0010\u0010\u001a\n\u0010\u0013\u001a\u00020\u0001*\u00020\u000f\u001aJ\u0010\u0014\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0016\b\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001cH\u0007\u001aJ\u0010\u001d\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0016\b\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001cH\u0002¨\u0006\u001f"}, d2 = {"dismissPaywall", "", "params", "Lcom/superwall/sdk/paywall/presentation/DismissParams;", "(Lcom/superwall/sdk/paywall/presentation/DismissParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "performTrackAndPresent", "context", "Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;", "request", "Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;", "(Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerPaywall", "Lcom/superwall/sdk/paywall/presentation/RegisterContext;", "Lcom/superwall/sdk/paywall/presentation/RegisterRequest;", "dismiss", "Lcom/superwall/sdk/Superwall;", "(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dismissSync", "dismissForNextPaywall", "dismissSyncForNextPaywall", "register", "placement", "", "", "", "handler", "Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;", "feature", "Lkotlin/Function0;", "internallyRegister", "completion", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PublicPresentationKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.PublicPresentationKt$performTrackAndPresent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PublicPresentation.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt", f = "PublicPresentation.kt", i = {0, 0, 1}, l = {97, 110, 112}, m = "performTrackAndPresent", n = {"context", "request", "request"}, s = {"L$0", "L$1", "L$0"})
    static final class C05131 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05131(Continuation<? super C05131> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PublicPresentationKt.performTrackAndPresent(null, null, this);
        }
    }

    public static final void register(Superwall superwall, String placement) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(placement, "placement");
        register$default(superwall, placement, null, null, null, 14, null);
    }

    public static final void register(Superwall superwall, String placement, Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(placement, "placement");
        register$default(superwall, placement, map, null, null, 12, null);
    }

    public static final void register(Superwall superwall, String placement, Map<String, ? extends Object> map, PaywallPresentationHandler paywallPresentationHandler) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(placement, "placement");
        register$default(superwall, placement, map, paywallPresentationHandler, null, 8, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissPaywall$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PublicPresentation.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissPaywall$2", f = "PublicPresentation.kt", i = {0, 0}, l = {49, 59}, m = "invokeSuspend", n = {"$this$withContext", "completionSignal"}, s = {"L$0", "L$1"})
    static final class C05112 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ DismissParams $params;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05112(DismissParams dismissParams, Continuation<? super C05112> continuation) {
            super(2, continuation);
            this.$params = dismissParams;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05112 c05112 = new C05112(this.$params, continuation);
            c05112.L$0 = obj;
            return c05112;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05112) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:39:0x0088  */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00b5, code lost:
        
            if (r3.await(r11) == r1) goto L45;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                r12 = this;
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r0 = r12.label
                r2 = 2
                r3 = 1
                r4 = 0
                if (r0 == 0) goto L2f
                if (r0 == r3) goto L1d
                if (r0 != r2) goto L15
                kotlin.ResultKt.throwOnFailure(r13)
                r11 = r12
                goto Lb8
            L15:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r0)
                throw r13
            L1d:
                java.lang.Object r0 = r12.L$1
                r3 = r0
                kotlinx.coroutines.CompletableDeferred r3 = (kotlinx.coroutines.CompletableDeferred) r3
                java.lang.Object r0 = r12.L$0
                kotlinx.coroutines.CoroutineScope r0 = (kotlinx.coroutines.CoroutineScope) r0
                kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Throwable -> L2b
                r11 = r12
                goto L62
            L2b:
                r0 = move-exception
                r13 = r0
                r11 = r12
                goto L82
            L2f:
                kotlin.ResultKt.throwOnFailure(r13)
                java.lang.Object r13 = r12.L$0
                kotlinx.coroutines.CoroutineScope r13 = (kotlinx.coroutines.CoroutineScope) r13
                kotlinx.coroutines.CompletableDeferred r5 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred$default(r4, r3, r4)
                com.superwall.sdk.paywall.presentation.DismissParams r0 = r12.$params
                com.superwall.sdk.paywall.view.PaywallView r7 = r0.getPaywallView()     // Catch: java.lang.Throwable -> L7e
                if (r7 == 0) goto L68
                kotlin.jvm.functions.Function5 r6 = r0.getDismissAction()     // Catch: java.lang.Throwable -> L7e
                com.superwall.sdk.paywall.presentation.internal.state.PaywallResult r8 = r0.getResult()     // Catch: java.lang.Throwable -> L7e
                com.superwall.sdk.paywall.presentation.PaywallCloseReason r9 = r0.getCloseReason()     // Catch: java.lang.Throwable -> L7e
                com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissPaywall$2$$ExternalSyntheticLambda0 r10 = new com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissPaywall$2$$ExternalSyntheticLambda0     // Catch: java.lang.Throwable -> L7e
                r10.<init>()     // Catch: java.lang.Throwable -> L7e
                r12.L$0 = r13     // Catch: java.lang.Throwable -> L7e
                r12.L$1 = r5     // Catch: java.lang.Throwable -> L7e
                r12.label = r3     // Catch: java.lang.Throwable -> L7e
                r11 = r12
                java.lang.Object r13 = r6.invoke(r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L7c
                if (r13 != r1) goto L61
                goto Lb7
            L61:
                r3 = r5
            L62:
                kotlin.Unit r13 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L65
                goto L74
            L65:
                r0 = move-exception
                r13 = r0
                goto L82
            L68:
                r11 = r12
                kotlin.Unit r13 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7c
                boolean r13 = r5.complete(r13)     // Catch: java.lang.Throwable -> L7c
                java.lang.Boolean r13 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r13)     // Catch: java.lang.Throwable -> L7c
                r3 = r5
            L74:
                com.superwall.sdk.misc.Either$Success r0 = new com.superwall.sdk.misc.Either$Success     // Catch: java.lang.Throwable -> L65
                r0.<init>(r13)     // Catch: java.lang.Throwable -> L65
                com.superwall.sdk.misc.Either r0 = (com.superwall.sdk.misc.Either) r0     // Catch: java.lang.Throwable -> L65
                goto La0
            L7c:
                r0 = move-exception
                goto L80
            L7e:
                r0 = move-exception
                r11 = r12
            L80:
                r13 = r0
                r3 = r5
            L82:
                boolean r0 = com.superwall.sdk.utilities.ErrorTrackingKt.access$shouldLog(r13)
                if (r0 == 0) goto L99
                com.superwall.sdk.Superwall$Companion r0 = com.superwall.sdk.Superwall.INSTANCE
                boolean r0 = r0.getInitialized()
                if (r0 == 0) goto L99
                com.superwall.sdk.Superwall$Companion r0 = com.superwall.sdk.Superwall.INSTANCE
                com.superwall.sdk.Superwall r0 = r0.getInstance()
                com.superwall.sdk.utilities.ErrorTrackingKt.trackError(r0, r13)
            L99:
                com.superwall.sdk.misc.Either$Failure r0 = new com.superwall.sdk.misc.Either$Failure
                r0.<init>(r13)
                com.superwall.sdk.misc.Either r0 = (com.superwall.sdk.misc.Either) r0
            La0:
                com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissPaywall$2$$ExternalSyntheticLambda1 r13 = new com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissPaywall$2$$ExternalSyntheticLambda1
                r13.<init>()
                com.superwall.sdk.misc.EitherKt.onError(r0, r13)
                r13 = r11
                kotlin.coroutines.Continuation r13 = (kotlin.coroutines.Continuation) r13
                r11.L$0 = r4
                r11.L$1 = r4
                r11.label = r2
                java.lang.Object r13 = r3.await(r13)
                if (r13 != r1) goto Lb8
            Lb7:
                return r1
            Lb8:
                kotlin.Unit r13 = kotlin.Unit.INSTANCE
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.PublicPresentationKt.C05112.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$3$lambda$1$lambda$0(CompletableDeferred completableDeferred) {
            completableDeferred.complete(Unit.INSTANCE);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$4(Throwable th) {
            th.printStackTrace();
            return Unit.INSTANCE;
        }
    }

    public static final Object dismissPaywall(DismissParams dismissParams, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(dismissParams.getDispatcher(), new C05112(dismissParams, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x010d  */
    /* JADX WARN: Code duplicated, block: B:53:0x0118  */
    /* JADX WARN: Code duplicated, block: B:55:0x011c  */
    /* JADX WARN: Code duplicated, block: B:60:0x013e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0138, code lost:
    
        if (r11.emit(r12, r0) == r1) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object performTrackAndPresent(com.superwall.sdk.paywall.presentation.TrackAndPresentContext r10, com.superwall.sdk.paywall.presentation.TrackAndPresentRequest r11, kotlin.coroutines.Continuation<? super kotlin.Unit> r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.PublicPresentationKt.performTrackAndPresent(com.superwall.sdk.paywall.presentation.TrackAndPresentContext, com.superwall.sdk.paywall.presentation.TrackAndPresentRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final void registerPaywall(RegisterContext context, RegisterRequest request) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        MutableSharedFlow mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        BuildersKt__Builders_commonKt.launch$default(context.getCollectionScope(), null, null, new C05141(completableDeferredCompletableDeferred$default, mutableSharedFlowMutableSharedFlow$default, request, context, null), 3, null);
        context.getSerialTaskManager().addTask(new C05152(completableDeferredCompletableDeferred$default, context, request, mutableSharedFlowMutableSharedFlow$default, null));
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.PublicPresentationKt$registerPaywall$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PublicPresentation.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt$registerPaywall$1", f = "PublicPresentation.kt", i = {}, l = {143}, m = "invokeSuspend", n = {}, s = {})
    static final class C05141 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ CompletableDeferred<Unit> $collectionWillStart;
        final /* synthetic */ RegisterContext $context;
        final /* synthetic */ MutableSharedFlow<PaywallState> $publisher;
        final /* synthetic */ RegisterRequest $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05141(CompletableDeferred<Unit> completableDeferred, MutableSharedFlow<PaywallState> mutableSharedFlow, RegisterRequest registerRequest, RegisterContext registerContext, Continuation<? super C05141> continuation) {
            super(2, continuation);
            this.$collectionWillStart = completableDeferred;
            this.$publisher = mutableSharedFlow;
            this.$request = registerRequest;
            this.$context = registerContext;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05141(this.$collectionWillStart, this.$publisher, this.$request, this.$context, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05141) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.$collectionWillStart.complete(Unit.INSTANCE);
                MutableSharedFlow<PaywallState> mutableSharedFlow = this.$publisher;
                final RegisterRequest registerRequest = this.$request;
                final RegisterContext registerContext = this.$context;
                this.label = 1;
                if (mutableSharedFlow.collect(new FlowCollector() { // from class: com.superwall.sdk.paywall.presentation.PublicPresentationKt.registerPaywall.1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit((PaywallState) obj2, (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(PaywallState paywallState, Continuation<? super Unit> continuation) {
                        Function1<Throwable, Unit> onErrorHandler$superwall_release;
                        Function1<PaywallSkippedReason, Unit> onSkipHandler$superwall_release;
                        Function1<Throwable, Unit> onErrorHandler$superwall_release2;
                        Function0<Unit> completion;
                        Function2<PaywallInfo, PaywallResult, Unit> onDismissHandler$superwall_release;
                        Function1<PaywallInfo, Unit> onPresentHandler$superwall_release;
                        Function2<CustomCallback, Continuation<? super CustomCallbackResult>, Object> onCustomCallbackHandler$superwall_release;
                        Function2<String, Function2<? super CustomCallback, ? super Continuation<? super CustomCallbackResult>, ? extends Object>, Unit> registerCustomCallback;
                        RegisterRequest registerRequest2 = registerRequest;
                        RegisterContext registerContext2 = registerContext;
                        try {
                            Unit unit = null;
                            if (paywallState instanceof PaywallState.Presented) {
                                PaywallPresentationHandler handler = registerRequest2.getHandler();
                                if (handler != null && (onCustomCallbackHandler$superwall_release = handler.getOnCustomCallbackHandler$superwall_release()) != null && (registerCustomCallback = registerContext2.getRegisterCustomCallback()) != null) {
                                    registerCustomCallback.invoke(((PaywallState.Presented) paywallState).getPaywallInfo().getIdentifier(), onCustomCallbackHandler$superwall_release);
                                }
                                PaywallPresentationHandler handler2 = registerRequest2.getHandler();
                                if (handler2 != null && (onPresentHandler$superwall_release = handler2.getOnPresentHandler$superwall_release()) != null) {
                                    onPresentHandler$superwall_release.invoke(((PaywallState.Presented) paywallState).getPaywallInfo());
                                    unit = Unit.INSTANCE;
                                }
                            } else if (paywallState instanceof PaywallState.Dismissed) {
                                PaywallInfo paywallInfo = ((PaywallState.Dismissed) paywallState).getPaywallInfo();
                                PaywallResult paywallResult = ((PaywallState.Dismissed) paywallState).getPaywallResult();
                                Function1<String, Unit> unregisterCustomCallback = registerContext2.getUnregisterCustomCallback();
                                if (unregisterCustomCallback != null) {
                                    unregisterCustomCallback.invoke(paywallInfo.getIdentifier());
                                }
                                PaywallPresentationHandler handler3 = registerRequest2.getHandler();
                                if (handler3 != null && (onDismissHandler$superwall_release = handler3.getOnDismissHandler$superwall_release()) != null) {
                                    onDismissHandler$superwall_release.invoke(paywallInfo, paywallResult);
                                }
                                if ((paywallResult instanceof PaywallResult.Purchased) || (paywallResult instanceof PaywallResult.Restored)) {
                                    Function0<Unit> completion2 = registerRequest2.getCompletion();
                                    if (completion2 != null) {
                                        completion2.invoke();
                                        unit = Unit.INSTANCE;
                                    }
                                } else {
                                    if (!(paywallResult instanceof PaywallResult.Declined)) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    PaywallCloseReason closeReason = paywallInfo.getCloseReason();
                                    FeatureGatingBehavior featureGatingBehavior = paywallInfo.getFeatureGatingBehavior();
                                    if (closeReason.getStateShouldComplete() && Intrinsics.areEqual(featureGatingBehavior, FeatureGatingBehavior.NonGated.INSTANCE) && (completion = registerRequest2.getCompletion()) != null) {
                                        completion.invoke();
                                    }
                                    if (Intrinsics.areEqual(closeReason, PaywallCloseReason.WebViewFailedToLoad.INSTANCE) && Intrinsics.areEqual(featureGatingBehavior, FeatureGatingBehavior.Gated.INSTANCE)) {
                                        Throwable thPresentationError = InternalPresentationLogic.INSTANCE.presentationError("SWKPresentationError", 106, "Webview Failed", "Trying to present gated paywall but the webview could not load.");
                                        PaywallPresentationHandler handler4 = registerRequest2.getHandler();
                                        if (handler4 != null && (onErrorHandler$superwall_release2 = handler4.getOnErrorHandler$superwall_release()) != null) {
                                            onErrorHandler$superwall_release2.invoke(thPresentationError);
                                        }
                                    }
                                    unit = Unit.INSTANCE;
                                }
                            } else if (paywallState instanceof PaywallState.Skipped) {
                                PaywallSkippedReason paywallSkippedReason = ((PaywallState.Skipped) paywallState).getPaywallSkippedReason();
                                PaywallPresentationHandler handler5 = registerRequest2.getHandler();
                                if (handler5 != null && (onSkipHandler$superwall_release = handler5.getOnSkipHandler$superwall_release()) != null) {
                                    onSkipHandler$superwall_release.invoke(paywallSkippedReason);
                                }
                                Function0<Unit> completion3 = registerRequest2.getCompletion();
                                if (completion3 != null) {
                                    completion3.invoke();
                                    unit = Unit.INSTANCE;
                                }
                            } else {
                                if (!(paywallState instanceof PaywallState.PresentationError)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                PaywallPresentationHandler handler6 = registerRequest2.getHandler();
                                if (handler6 != null && (onErrorHandler$superwall_release = handler6.getOnErrorHandler$superwall_release()) != null) {
                                    onErrorHandler$superwall_release.invoke(((PaywallState.PresentationError) paywallState).getError());
                                    unit = Unit.INSTANCE;
                                }
                            }
                            new Either.Success(unit);
                        } catch (Throwable th) {
                            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
                            }
                            new Either.Failure(th);
                        }
                        return Unit.INSTANCE;
                    }
                }, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.PublicPresentationKt$registerPaywall$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PublicPresentation.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt$registerPaywall$2", f = "PublicPresentation.kt", i = {}, l = {ComposerKt.providerValuesKey, 204}, m = "invokeSuspend", n = {}, s = {})
    static final class C05152 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ CompletableDeferred<Unit> $collectionWillStart;
        final /* synthetic */ RegisterContext $context;
        final /* synthetic */ MutableSharedFlow<PaywallState> $publisher;
        final /* synthetic */ RegisterRequest $request;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05152(CompletableDeferred<Unit> completableDeferred, RegisterContext registerContext, RegisterRequest registerRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super C05152> continuation) {
            super(1, continuation);
            this.$collectionWillStart = completableDeferred;
            this.$context = registerContext;
            this.$request = registerRequest;
            this.$publisher = mutableSharedFlow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C05152(this.$collectionWillStart, this.$context, this.$request, this.$publisher, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C05152) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0070, code lost:
        
            if (com.superwall.sdk.paywall.presentation.PublicPresentationKt.performTrackAndPresent(r13, r6, r12) == r0) goto L23;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                r12 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r12.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L2b
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Throwable -> L7d
                goto L73
            L12:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r0)
                throw r13
            L1a:
                java.lang.Object r1 = r12.L$2
                kotlinx.coroutines.flow.MutableSharedFlow r1 = (kotlinx.coroutines.flow.MutableSharedFlow) r1
                java.lang.Object r4 = r12.L$1
                com.superwall.sdk.paywall.presentation.RegisterRequest r4 = (com.superwall.sdk.paywall.presentation.RegisterRequest) r4
                java.lang.Object r5 = r12.L$0
                com.superwall.sdk.paywall.presentation.RegisterContext r5 = (com.superwall.sdk.paywall.presentation.RegisterContext) r5
                kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Throwable -> L7d
            L29:
                r11 = r1
                goto L45
            L2b:
                kotlin.ResultKt.throwOnFailure(r13)
                kotlinx.coroutines.CompletableDeferred<kotlin.Unit> r13 = r12.$collectionWillStart
                com.superwall.sdk.paywall.presentation.RegisterContext r5 = r12.$context
                com.superwall.sdk.paywall.presentation.RegisterRequest r4 = r12.$request
                kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState> r1 = r12.$publisher
                r12.L$0 = r5     // Catch: java.lang.Throwable -> L7d
                r12.L$1 = r4     // Catch: java.lang.Throwable -> L7d
                r12.L$2 = r1     // Catch: java.lang.Throwable -> L7d
                r12.label = r3     // Catch: java.lang.Throwable -> L7d
                java.lang.Object r13 = r13.await(r12)     // Catch: java.lang.Throwable -> L7d
                if (r13 != r0) goto L29
                goto L72
            L45:
                com.superwall.sdk.paywall.presentation.TrackAndPresentContext r13 = r5.getTrackAndPresentContext()     // Catch: java.lang.Throwable -> L7d
                com.superwall.sdk.paywall.presentation.TrackAndPresentRequest r6 = new com.superwall.sdk.paywall.presentation.TrackAndPresentRequest     // Catch: java.lang.Throwable -> L7d
                java.lang.String r7 = r4.getPlacement()     // Catch: java.lang.Throwable -> L7d
                java.util.Map r8 = r4.getParams()     // Catch: java.lang.Throwable -> L7d
                com.superwall.sdk.paywall.presentation.internal.request.PaywallOverrides r9 = r4.getPaywallOverrides()     // Catch: java.lang.Throwable -> L7d
                kotlin.jvm.functions.Function0 r1 = r4.getCompletion()     // Catch: java.lang.Throwable -> L7d
                if (r1 == 0) goto L5e
                goto L5f
            L5e:
                r3 = 0
            L5f:
                r10 = r3
                r6.<init>(r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L7d
                r1 = 0
                r12.L$0 = r1     // Catch: java.lang.Throwable -> L7d
                r12.L$1 = r1     // Catch: java.lang.Throwable -> L7d
                r12.L$2 = r1     // Catch: java.lang.Throwable -> L7d
                r12.label = r2     // Catch: java.lang.Throwable -> L7d
                java.lang.Object r13 = com.superwall.sdk.paywall.presentation.PublicPresentationKt.performTrackAndPresent(r13, r6, r12)     // Catch: java.lang.Throwable -> L7d
                if (r13 != r0) goto L73
            L72:
                return r0
            L73:
                kotlin.Unit r13 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7d
                com.superwall.sdk.misc.Either$Success r0 = new com.superwall.sdk.misc.Either$Success     // Catch: java.lang.Throwable -> L7d
                r0.<init>(r13)     // Catch: java.lang.Throwable -> L7d
                com.superwall.sdk.misc.Either r0 = (com.superwall.sdk.misc.Either) r0     // Catch: java.lang.Throwable -> L7d
                goto L9d
            L7d:
                r0 = move-exception
                r13 = r0
                boolean r0 = com.superwall.sdk.utilities.ErrorTrackingKt.access$shouldLog(r13)
                if (r0 == 0) goto L96
                com.superwall.sdk.Superwall$Companion r0 = com.superwall.sdk.Superwall.INSTANCE
                boolean r0 = r0.getInitialized()
                if (r0 == 0) goto L96
                com.superwall.sdk.Superwall$Companion r0 = com.superwall.sdk.Superwall.INSTANCE
                com.superwall.sdk.Superwall r0 = r0.getInstance()
                com.superwall.sdk.utilities.ErrorTrackingKt.trackError(r0, r13)
            L96:
                com.superwall.sdk.misc.Either$Failure r0 = new com.superwall.sdk.misc.Either$Failure
                r0.<init>(r13)
                com.superwall.sdk.misc.Either r0 = (com.superwall.sdk.misc.Either) r0
            L9d:
                kotlin.Unit r13 = kotlin.Unit.INSTANCE
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.PublicPresentationKt.C05152.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final Object dismiss(Superwall superwall, Continuation<? super Unit> continuation) {
        Object objDismissPaywall = dismissPaywall(new DismissParams(Dispatchers.getMain(), superwall.getPaywallView(), new PaywallResult.Declined(), PaywallCloseReason.SystemLogic.INSTANCE, new AnonymousClass2(null)), continuation);
        return objDismissPaywall == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDismissPaywall : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismiss$2, reason: invalid class name */
    /* JADX INFO: compiled from: PublicPresentation.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tH\n"}, d2 = {"<anonymous>", "", "view", "Lcom/superwall/sdk/paywall/view/PaywallView;", "result", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "reason", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "completion", "Lkotlin/Function0;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismiss$2", f = "PublicPresentation.kt", i = {}, l = {230}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function5<PaywallView, PaywallResult, PaywallCloseReason, Function0<? extends Unit>, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        /* synthetic */ Object L$3;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(5, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(PaywallView paywallView, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason, Function0<Unit> function0, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = paywallView;
            anonymousClass2.L$1 = paywallResult;
            anonymousClass2.L$2 = paywallCloseReason;
            anonymousClass2.L$3 = function0;
            return anonymousClass2.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function5
        public /* bridge */ /* synthetic */ Object invoke(PaywallView paywallView, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason, Function0<? extends Unit> function0, Continuation<? super Unit> continuation) {
            return invoke2(paywallView, paywallResult, paywallCloseReason, (Function0<Unit>) function0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.label = 1;
                if (InternalPresentationKt.dismiss((PaywallView) this.L$0, (PaywallResult) this.L$1, (PaywallCloseReason) this.L$2, (Function0) this.L$3, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissSync$1, reason: invalid class name */
    /* JADX INFO: compiled from: PublicPresentation.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissSync$1", f = "PublicPresentation.kt", i = {}, l = {241}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Superwall $this_dismissSync;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Superwall superwall, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$this_dismissSync = superwall;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$this_dismissSync, continuation);
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
                this.label = 1;
                if (PublicPresentationKt.dismiss(this.$this_dismissSync, this) == coroutine_suspended) {
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

    public static final void dismissSync(Superwall superwall) throws InterruptedException {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        BuildersKt__BuildersKt.runBlocking$default(null, new AnonymousClass1(superwall, null), 1, null);
    }

    public static final Object dismissForNextPaywall(Superwall superwall, Continuation<? super Unit> continuation) {
        Object objDismissPaywall = dismissPaywall(new DismissParams(Dispatchers.getMain(), superwall.getPaywallView(), new PaywallResult.Declined(), PaywallCloseReason.ForNextPaywall.INSTANCE, new C05102(null)), continuation);
        return objDismissPaywall == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDismissPaywall : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissForNextPaywall$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PublicPresentation.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tH\n"}, d2 = {"<anonymous>", "", "view", "Lcom/superwall/sdk/paywall/view/PaywallView;", "result", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "reason", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "completion", "Lkotlin/Function0;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissForNextPaywall$2", f = "PublicPresentation.kt", i = {}, l = {256}, m = "invokeSuspend", n = {}, s = {})
    static final class C05102 extends SuspendLambda implements Function5<PaywallView, PaywallResult, PaywallCloseReason, Function0<? extends Unit>, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        /* synthetic */ Object L$3;
        int label;

        C05102(Continuation<? super C05102> continuation) {
            super(5, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(PaywallView paywallView, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason, Function0<Unit> function0, Continuation<? super Unit> continuation) {
            C05102 c05102 = new C05102(continuation);
            c05102.L$0 = paywallView;
            c05102.L$1 = paywallResult;
            c05102.L$2 = paywallCloseReason;
            c05102.L$3 = function0;
            return c05102.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function5
        public /* bridge */ /* synthetic */ Object invoke(PaywallView paywallView, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason, Function0<? extends Unit> function0, Continuation<? super Unit> continuation) {
            return invoke2(paywallView, paywallResult, paywallCloseReason, (Function0<Unit>) function0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.label = 1;
                if (InternalPresentationKt.dismiss((PaywallView) this.L$0, (PaywallResult) this.L$1, (PaywallCloseReason) this.L$2, (Function0) this.L$3, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissSyncForNextPaywall$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PublicPresentation.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissSyncForNextPaywall$1", f = "PublicPresentation.kt", i = {}, l = {267}, m = "invokeSuspend", n = {}, s = {})
    static final class C05121 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Superwall $this_dismissSyncForNextPaywall;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05121(Superwall superwall, Continuation<? super C05121> continuation) {
            super(2, continuation);
            this.$this_dismissSyncForNextPaywall = superwall;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05121(this.$this_dismissSyncForNextPaywall, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05121) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PublicPresentationKt.dismissForNextPaywall(this.$this_dismissSyncForNextPaywall, this) == coroutine_suspended) {
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

    public static final void dismissSyncForNextPaywall(Superwall superwall) throws InterruptedException {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        BuildersKt__BuildersKt.runBlocking$default(null, new C05121(superwall, null), 1, null);
    }

    public static /* synthetic */ void register$default(Superwall superwall, String str, Map map, PaywallPresentationHandler paywallPresentationHandler, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            map = null;
        }
        if ((i & 4) != 0) {
            paywallPresentationHandler = null;
        }
        if ((i & 8) != 0) {
            function0 = null;
        }
        register(superwall, str, map, paywallPresentationHandler, function0);
    }

    public static final void register(Superwall superwall, String placement, Map<String, ? extends Object> map, PaywallPresentationHandler paywallPresentationHandler, Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(placement, "placement");
        internallyRegister(superwall, placement, map, paywallPresentationHandler, function0);
    }

    static /* synthetic */ void internallyRegister$default(Superwall superwall, String str, Map map, PaywallPresentationHandler paywallPresentationHandler, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            map = null;
        }
        if ((i & 4) != 0) {
            paywallPresentationHandler = null;
        }
        if ((i & 8) != 0) {
            function0 = null;
        }
        internallyRegister(superwall, str, map, paywallPresentationHandler, function0);
    }

    private static final void internallyRegister(final Superwall superwall, String str, Map<String, ? extends Object> map, PaywallPresentationHandler paywallPresentationHandler, Function0<Unit> function0) {
        registerPaywall(new RegisterContext(Dispatchers.getMain(), CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), superwall.getSerialTaskManager(), new TrackAndPresentContext(new PublicPresentationKt$internallyRegister$registerContext$1(superwall, null), new Function4() { // from class: com.superwall.sdk.paywall.presentation.PublicPresentationKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return PublicPresentationKt.internallyRegister$lambda$3(superwall, (PresentationInfo) obj, (PaywallOverrides) obj2, ((Boolean) obj3).booleanValue(), (PresentationRequestType) obj4);
            }
        }, new Function0() { // from class: com.superwall.sdk.paywall.presentation.PublicPresentationKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(superwall.isPaywallPresented());
            }
        }, new PublicPresentationKt$internallyRegister$registerContext$4(superwall, null)), new Function2() { // from class: com.superwall.sdk.paywall.presentation.PublicPresentationKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return PublicPresentationKt.internallyRegister$lambda$5(superwall, (String) obj, (Function2) obj2);
            }
        }, new Function1() { // from class: com.superwall.sdk.paywall.presentation.PublicPresentationKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PublicPresentationKt.internallyRegister$lambda$6(superwall, (String) obj);
            }
        }), new RegisterRequest(str, map, paywallPresentationHandler, function0, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PresentationRequest internallyRegister$lambda$3(Superwall superwall, PresentationInfo info, PaywallOverrides paywallOverrides, boolean z, PresentationRequestType type) {
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(type, "type");
        return RequestFactory.DefaultImpls.makePresentationRequest$default(superwall.getDependencyContainer$superwall_release(), info, paywallOverrides, null, null, null, z, type, 28, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit internallyRegister$lambda$5(Superwall superwall, String paywallId, Function2 callbackHandler) {
        Intrinsics.checkNotNullParameter(paywallId, "paywallId");
        Intrinsics.checkNotNullParameter(callbackHandler, "callbackHandler");
        superwall.getDependencyContainer$superwall_release().getCustomCallbackRegistry().register(paywallId, callbackHandler);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit internallyRegister$lambda$6(Superwall superwall, String paywallId) {
        Intrinsics.checkNotNullParameter(paywallId, "paywallId");
        superwall.getDependencyContainer$superwall_release().getCustomCallbackRegistry().unregister(paywallId);
        return Unit.INSTANCE;
    }
}
