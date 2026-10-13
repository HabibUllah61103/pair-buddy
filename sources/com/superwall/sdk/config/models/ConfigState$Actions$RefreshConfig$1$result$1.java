package com.superwall.sdk.config.models;

import com.superwall.sdk.config.ConfigContext;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: ConfigState.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$RefreshConfig$1$result$1", f = "ConfigState.kt", i = {}, l = {250}, m = "invokeSuspend", n = {}, s = {})
final class ConfigState$Actions$RefreshConfig$1$result$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ ConfigContext $$this$exec;
    final /* synthetic */ AtomicInteger $retryCount;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConfigState$Actions$RefreshConfig$1$result$1(AtomicInteger atomicInteger, ConfigContext configContext, Continuation<? super ConfigState$Actions$RefreshConfig$1$result$1> continuation) {
        super(1, continuation);
        this.$retryCount = atomicInteger;
        this.$$this$exec = configContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new ConfigState$Actions$RefreshConfig$1$result$1(this.$retryCount, this.$$this$exec, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Unit> continuation) {
        return ((ConfigState$Actions$RefreshConfig$1$result$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.$retryCount.incrementAndGet();
            Function1<Continuation<? super Unit>, Object> awaitUtilNetwork = this.$$this$exec.getAwaitUtilNetwork();
            this.label = 1;
            if (awaitUtilNetwork.invoke(this) == coroutine_suspended) {
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
