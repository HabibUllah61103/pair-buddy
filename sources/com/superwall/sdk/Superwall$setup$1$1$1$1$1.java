package com.superwall.sdk;

import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.TrackingResult;
import com.superwall.sdk.analytics.internal.trackable.Trackable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: Superwall.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/superwall/sdk/analytics/internal/TrackingResult;", "it", "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.Superwall$setup$1$1$1$1$1", f = "Superwall.kt", i = {}, l = {682}, m = "invokeSuspend", n = {}, s = {})
final class Superwall$setup$1$1$1$1$1 extends SuspendLambda implements Function2<Trackable, Continuation<? super Result<? extends TrackingResult>>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ Superwall this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Superwall$setup$1$1$1$1$1(Superwall superwall, Continuation<? super Superwall$setup$1$1$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = superwall;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Superwall$setup$1$1$1$1$1 superwall$setup$1$1$1$1$1 = new Superwall$setup$1$1$1$1$1(this.this$0, continuation);
        superwall$setup$1$1$1$1$1.L$0 = obj;
        return superwall$setup$1$1$1$1$1;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(Trackable trackable, Continuation<? super Result<TrackingResult>> continuation) {
        return ((Superwall$setup$1$1$1$1$1) create(trackable, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Trackable trackable, Continuation<? super Result<? extends TrackingResult>> continuation) {
        return invoke2(trackable, (Continuation<? super Result<TrackingResult>>) continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objTrack;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Trackable trackable = (Trackable) this.L$0;
            this.label = 1;
            objTrack = TrackingKt.track(this.this$0, trackable, this);
            if (objTrack == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            objTrack = ((Result) obj).getValue();
        }
        return Result.m11240boximpl(objTrack);
    }
}
