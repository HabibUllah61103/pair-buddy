package com.superwall.sdk.deeplinks;

import android.net.Uri;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import com.superwall.sdk.config.models.ConfigurationStatus;
import com.superwall.sdk.debug.DebugManager;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import com.superwall.sdk.web.WebPaywallRedeemer;
import java.util.concurrent.ConcurrentLinkedDeque;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DeepLinkRouter.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fBE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\"\u0010\b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001c¢\u0006\u0004\b\u001d\u0010\u001eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R/\u0010\b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016¨\u0006 "}, d2 = {"Lcom/superwall/sdk/deeplinks/DeepLinkRouter;", "", "redeemer", "Lcom/superwall/sdk/web/WebPaywallRedeemer;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "debugManager", "Lcom/superwall/sdk/debug/DebugManager;", "track", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "Lkotlin/coroutines/Continuation;", "", "<init>", "(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/debug/DebugManager;Lkotlin/jvm/functions/Function2;)V", "getRedeemer", "()Lcom/superwall/sdk/web/WebPaywallRedeemer;", "getIoScope", "()Lcom/superwall/sdk/misc/IOScope;", "getDebugManager", "()Lcom/superwall/sdk/debug/DebugManager;", "getTrack", "()Lkotlin/jvm/functions/Function2;", "Lkotlin/jvm/functions/Function2;", "handleDeepLink", "Lkotlin/Result;", "", "uri", "Landroid/net/Uri;", "handleDeepLink-IoAF18A", "(Landroid/net/Uri;)Ljava/lang/Object;", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DeepLinkRouter {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static ConcurrentLinkedDeque<Uri> unhandledDeepLinks = new ConcurrentLinkedDeque<>();
    private final DebugManager debugManager;
    private final IOScope ioScope;
    private final WebPaywallRedeemer redeemer;
    private final Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> track;

    /* JADX WARN: Multi-variable type inference failed */
    public DeepLinkRouter(WebPaywallRedeemer redeemer, IOScope ioScope, DebugManager debugManager, Function2<? super TrackableSuperwallEvent, ? super Continuation<? super Unit>, ? extends Object> track) {
        Intrinsics.checkNotNullParameter(redeemer, "redeemer");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(debugManager, "debugManager");
        Intrinsics.checkNotNullParameter(track, "track");
        this.redeemer = redeemer;
        this.ioScope = ioScope;
        this.debugManager = debugManager;
        this.track = track;
        BuildersKt__Builders_commonKt.launch$default(ioScope, null, null, new AnonymousClass1(null), 3, null);
    }

    public final WebPaywallRedeemer getRedeemer() {
        return this.redeemer;
    }

    public /* synthetic */ DeepLinkRouter(WebPaywallRedeemer webPaywallRedeemer, IOScope iOScope, DebugManager debugManager, Function2 function2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(webPaywallRedeemer, (i & 2) != 0 ? new IOScope(null, 1, null) : iOScope, debugManager, function2);
    }

    public final IOScope getIoScope() {
        return this.ioScope;
    }

    public final DebugManager getDebugManager() {
        return this.debugManager;
    }

    public final Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> getTrack() {
        return this.track;
    }

    /* JADX INFO: compiled from: DeepLinkRouter.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/deeplinks/DeepLinkRouter$Companion;", "", "<init>", "()V", "unhandledDeepLinks", "Ljava/util/concurrent/ConcurrentLinkedDeque;", "Landroid/net/Uri;", "handleDeepLink", "Lkotlin/Result;", "", "uri", "handleDeepLink-IoAF18A", "(Landroid/net/Uri;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: handleDeepLink-IoAF18A, reason: not valid java name */
        public final Object m10600handleDeepLinkIoAF18A(Uri uri) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            if (!Superwall.INSTANCE.getInitialized() || !(Superwall.INSTANCE.getInstance().getConfigurationState() instanceof ConfigurationStatus.Configured)) {
                Boolean.valueOf(DeepLinkRouter.unhandledDeepLinks.add(uri));
            } else {
                Result.m11240boximpl(Superwall.INSTANCE.getInstance().getDependencyContainer$superwall_release().getDeepLinkRouter().m10599handleDeepLinkIoAF18A(uri));
            }
            Logger.debug$default(Logger.INSTANCE, LogLevel.info, LogScope.deepLinks, "Superwall handling provided deep link", null, null, 24, null);
            if (Result.m11248isSuccessimpl(DeepLinkRouterKt.getRedeemableCode(uri)) || Result.m11248isSuccessimpl(DebugManager.INSTANCE.m10593outcomeForDeepLinkIoAF18A(uri))) {
                Result.Companion companion = Result.INSTANCE;
                return Result.m11241constructorimpl(true);
            }
            Logger.debug$default(Logger.INSTANCE, LogLevel.info, LogScope.deepLinks, "Superwall not handling the provided deep link", null, null, 24, null);
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m11241constructorimpl(ResultKt.createFailure(new IllegalArgumentException("Not a superwall link")));
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.deeplinks.DeepLinkRouter$1, reason: invalid class name */
    /* JADX INFO: compiled from: DeepLinkRouter.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.deeplinks.DeepLinkRouter$1", f = "DeepLinkRouter.kt", i = {}, l = {61, 62}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DeepLinkRouter.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.superwall.sdk.deeplinks.DeepLinkRouter$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: DeepLinkRouter.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "it"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.deeplinks.DeepLinkRouter$1$1", f = "DeepLinkRouter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C01151 extends SuspendLambda implements Function2<Boolean, Continuation<? super Boolean>, Object> {
            /* synthetic */ boolean Z$0;
            int label;

            C01151(Continuation<? super C01151> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C01151 c01151 = new C01151(continuation);
                c01151.Z$0 = ((Boolean) obj).booleanValue();
                return c01151;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Boolean> continuation) {
                return invoke(bool.booleanValue(), continuation);
            }

            public final Object invoke(boolean z, Continuation<? super Boolean> continuation) {
                return ((C01151) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(this.Z$0);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0055, code lost:
        
            if (kotlinx.coroutines.flow.FlowKt.first(com.superwall.sdk.Superwall.INSTANCE.getInstance().getConfigurationStateListener(), new com.superwall.sdk.deeplinks.DeepLinkRouter.AnonymousClass1.AnonymousClass2(null), r6) == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L1f
                if (r1 == r4) goto L1b
                if (r1 != r3) goto L13
                kotlin.ResultKt.throwOnFailure(r7)
                goto L58
            L13:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1b:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L3b
            L1f:
                kotlin.ResultKt.throwOnFailure(r7)
                com.superwall.sdk.Superwall$Companion r7 = com.superwall.sdk.Superwall.INSTANCE
                kotlinx.coroutines.flow.Flow r7 = r7.getHasInitialized()
                com.superwall.sdk.deeplinks.DeepLinkRouter$1$1 r1 = new com.superwall.sdk.deeplinks.DeepLinkRouter$1$1
                r1.<init>(r2)
                kotlin.jvm.functions.Function2 r1 = (kotlin.jvm.functions.Function2) r1
                r5 = r6
                kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                r6.label = r4
                java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r1, r5)
                if (r7 != r0) goto L3b
                goto L57
            L3b:
                com.superwall.sdk.Superwall$Companion r7 = com.superwall.sdk.Superwall.INSTANCE
                com.superwall.sdk.Superwall r7 = r7.getInstance()
                kotlinx.coroutines.flow.Flow r7 = r7.getConfigurationStateListener()
                com.superwall.sdk.deeplinks.DeepLinkRouter$1$2 r1 = new com.superwall.sdk.deeplinks.DeepLinkRouter$1$2
                r1.<init>(r2)
                kotlin.jvm.functions.Function2 r1 = (kotlin.jvm.functions.Function2) r1
                r2 = r6
                kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                r6.label = r3
                java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r1, r2)
                if (r7 != r0) goto L58
            L57:
                return r0
            L58:
                java.util.concurrent.ConcurrentLinkedDeque r7 = com.superwall.sdk.deeplinks.DeepLinkRouter.access$getUnhandledDeepLinks$cp()
                java.util.Collection r7 = (java.util.Collection) r7
                boolean r7 = r7.isEmpty()
                if (r7 != 0) goto L7e
                java.util.concurrent.ConcurrentLinkedDeque r7 = com.superwall.sdk.deeplinks.DeepLinkRouter.access$getUnhandledDeepLinks$cp()
                java.lang.Object r7 = r7.pop()
                android.net.Uri r7 = (android.net.Uri) r7
                com.superwall.sdk.deeplinks.DeepLinkRouter r0 = com.superwall.sdk.deeplinks.DeepLinkRouter.this
                kotlin.jvm.internal.Intrinsics.checkNotNull(r7)
                r0.m10599handleDeepLinkIoAF18A(r7)
                java.util.concurrent.ConcurrentLinkedDeque r0 = com.superwall.sdk.deeplinks.DeepLinkRouter.access$getUnhandledDeepLinks$cp()
                r0.remove(r7)
                goto L58
            L7e:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.deeplinks.DeepLinkRouter.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: com.superwall.sdk.deeplinks.DeepLinkRouter$1$2, reason: invalid class name */
        /* JADX INFO: compiled from: DeepLinkRouter.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/config/models/ConfigurationStatus;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.deeplinks.DeepLinkRouter$1$2", f = "DeepLinkRouter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass2 extends SuspendLambda implements Function2<ConfigurationStatus, Continuation<? super Boolean>, Object> {
            /* synthetic */ Object L$0;
            int label;

            AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
                anonymousClass2.L$0 = obj;
                return anonymousClass2;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(ConfigurationStatus configurationStatus, Continuation<? super Boolean> continuation) {
                return ((AnonymousClass2) create(configurationStatus, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(((ConfigurationStatus) this.L$0) instanceof ConfigurationStatus.Configured);
            }
        }
    }

    /* JADX INFO: renamed from: handleDeepLink-IoAF18A, reason: not valid java name */
    public final Object m10599handleDeepLinkIoAF18A(Uri uri) {
        Either failure;
        Intrinsics.checkNotNullParameter(uri, "uri");
        try {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new DeepLinkRouter$handleDeepLink$1$1(this, uri, null), 3, null);
            Object objMo10807handleDeepLinkIoAF18A = this.redeemer.getDeepLinkReferrer().mo10807handleDeepLinkIoAF18A(uri);
            if (Result.m11248isSuccessimpl(objMo10807handleDeepLinkIoAF18A)) {
                BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new DeepLinkRouter$handleDeepLink$1$handledAsRedemption$1$1(this, (String) objMo10807handleDeepLinkIoAF18A, null), 3, null);
            }
            failure = new Either.Success(Boolean.valueOf(Result.m11248isSuccessimpl(objMo10807handleDeepLinkIoAF18A) ? true : this.debugManager.handle(uri)));
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            failure = new Either.Failure(th);
        }
        if (failure instanceof Either.Success) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m11241constructorimpl(((Either.Success) failure).getValue());
        }
        if (!(failure instanceof Either.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        Result.Companion companion2 = Result.INSTANCE;
        return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
    }
}
