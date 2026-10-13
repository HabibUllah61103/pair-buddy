package com.superwall.sdk.analytics;

import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AttributionManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.analytics.AttributionManager$setIntegrationAttributes$2$1$1", f = "AttributionManager.kt", i = {}, l = {65}, m = "invokeSuspend", n = {}, s = {})
final class AttributionManager$setIntegrationAttributes$2$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Map<String, String> $merged;
    int label;
    final /* synthetic */ AttributionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AttributionManager$setIntegrationAttributes$2$1$1(AttributionManager attributionManager, Map<String, String> map, Continuation<? super AttributionManager$setIntegrationAttributes$2$1$1> continuation) {
        super(2, continuation);
        this.this$0 = attributionManager;
        this.$merged = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AttributionManager$setIntegrationAttributes$2$1$1(this.this$0, this.$merged, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AttributionManager$setIntegrationAttributes$2$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> track = this.this$0.getTrack();
            InternalSuperwallEvent.IntegrationAttributes integrationAttributes = new InternalSuperwallEvent.IntegrationAttributes(this.$merged);
            this.label = 1;
            if (track.invoke(integrationAttributes, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        this.this$0.getRedeemAfterSetting().invoke();
        return Unit.INSTANCE;
    }
}
