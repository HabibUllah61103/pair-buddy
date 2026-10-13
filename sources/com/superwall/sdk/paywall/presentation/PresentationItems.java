package com.superwall.sdk.paywall.presentation;

import expo.modules.interfaces.permissions.PermissionsResponse;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: compiled from: PresentationItems.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\b\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/PresentationItems;", "", "<init>", "()V", "queue", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", PermissionsResponse.SCOPE_KEY, "Lkotlinx/coroutines/CoroutineScope;", "newValue", "Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;", "last", "getLast", "()Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;", "setLast", "(Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;)V", "_last", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "paywallInfo", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "setPaywallInfo", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "_paywallInfo", "reset", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PresentationItems {
    private LastPresentationItems _last;
    private PaywallInfo _paywallInfo;
    private final ExecutorCoroutineDispatcher queue;
    private final CoroutineScope scope;

    public PresentationItems() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        ExecutorCoroutineDispatcher executorCoroutineDispatcherFrom = ExecutorsKt.from(executorServiceNewSingleThreadExecutor);
        this.queue = executorCoroutineDispatcherFrom;
        this.scope = CoroutineScopeKt.CoroutineScope(executorCoroutineDispatcherFrom);
    }

    public final LastPresentationItems getLast() {
        return (LastPresentationItems) BuildersKt.runBlocking(this.queue, new PresentationItems$last$1(this, null));
    }

    public final void setLast(LastPresentationItems lastPresentationItems) {
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new PresentationItems$last$2(this, lastPresentationItems, null), 3, null);
    }

    public final PaywallInfo getPaywallInfo() {
        return (PaywallInfo) BuildersKt.runBlocking(this.queue, new PresentationItems$paywallInfo$1(this, null));
    }

    public final void setPaywallInfo(PaywallInfo paywallInfo) {
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new PresentationItems$paywallInfo$2(this, paywallInfo, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.PresentationItems$reset$1, reason: invalid class name */
    /* JADX INFO: compiled from: PresentationItems.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.PresentationItems$reset$1", f = "PresentationItems.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PresentationItems.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PresentationItems.this._last = null;
                PresentationItems.this._paywallInfo = null;
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void reset() {
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(null), 3, null);
    }
}
