package com.superwall.sdk.paywall.presentation;

import androidx.core.app.NotificationCompat;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.TrackingResult;
import com.superwall.sdk.analytics.internal.trackable.UserInitiatedEvent;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: PublicPresentation.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/superwall/sdk/analytics/internal/TrackingResult;", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent$Track;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt$internallyRegister$registerContext$1", f = "PublicPresentation.kt", i = {}, l = {315}, m = "invokeSuspend", n = {}, s = {})
final class PublicPresentationKt$internallyRegister$registerContext$1 extends SuspendLambda implements Function2<UserInitiatedEvent.Track, Continuation<? super Result<? extends TrackingResult>>, Object> {
    final /* synthetic */ Superwall $this_internallyRegister;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PublicPresentationKt$internallyRegister$registerContext$1(Superwall superwall, Continuation<? super PublicPresentationKt$internallyRegister$registerContext$1> continuation) {
        super(2, continuation);
        this.$this_internallyRegister = superwall;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PublicPresentationKt$internallyRegister$registerContext$1 publicPresentationKt$internallyRegister$registerContext$1 = new PublicPresentationKt$internallyRegister$registerContext$1(this.$this_internallyRegister, continuation);
        publicPresentationKt$internallyRegister$registerContext$1.L$0 = obj;
        return publicPresentationKt$internallyRegister$registerContext$1;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(UserInitiatedEvent.Track track, Continuation<? super Result<TrackingResult>> continuation) {
        return ((PublicPresentationKt$internallyRegister$registerContext$1) create(track, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(UserInitiatedEvent.Track track, Continuation<? super Result<? extends TrackingResult>> continuation) {
        return invoke2(track, (Continuation<? super Result<TrackingResult>>) continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objTrack;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            UserInitiatedEvent.Track track = (UserInitiatedEvent.Track) this.L$0;
            this.label = 1;
            objTrack = TrackingKt.track(this.$this_internallyRegister, track, this);
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
