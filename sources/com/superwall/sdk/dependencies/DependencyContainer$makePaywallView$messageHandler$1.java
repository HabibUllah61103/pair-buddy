package com.superwall.sdk.dependencies;

import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: DependencyContainer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$makePaywallView$messageHandler$1", f = "DependencyContainer.kt", i = {}, l = {812}, m = "invokeSuspend", n = {}, s = {})
final class DependencyContainer$makePaywallView$messageHandler$1 extends SuspendLambda implements Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;

    DependencyContainer$makePaywallView$messageHandler$1(Continuation<? super DependencyContainer$makePaywallView$messageHandler$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DependencyContainer$makePaywallView$messageHandler$1 dependencyContainer$makePaywallView$messageHandler$1 = new DependencyContainer$makePaywallView$messageHandler$1(continuation);
        dependencyContainer$makePaywallView$messageHandler$1.L$0 = obj;
        return dependencyContainer$makePaywallView$messageHandler$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(TrackableSuperwallEvent trackableSuperwallEvent, Continuation<? super Unit> continuation) {
        return ((DependencyContainer$makePaywallView$messageHandler$1) create(trackableSuperwallEvent, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            TrackableSuperwallEvent trackableSuperwallEvent = (TrackableSuperwallEvent) this.L$0;
            this.label = 1;
            if (TrackingKt.track(Superwall.INSTANCE.getInstance(), trackableSuperwallEvent, this) == coroutine_suspended) {
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
