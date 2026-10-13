package com.superwall.sdk.analytics.internal;

import com.superwall.sdk.analytics.internal.trackable.Trackable;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: TrackingLogic.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/analytics/internal/TrackingParameters;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.analytics.internal.TrackingLogic$Companion$processParameters$2", f = "TrackingLogic.kt", i = {}, l = {44}, m = "invokeSuspend", n = {}, s = {})
final class TrackingLogic$Companion$processParameters$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super TrackingParameters>, Object> {
    final /* synthetic */ String $appSessionId;
    final /* synthetic */ Trackable $trackableEvent;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TrackingLogic$Companion$processParameters$2(Trackable trackable, String str, Continuation<? super TrackingLogic$Companion$processParameters$2> continuation) {
        super(2, continuation);
        this.$trackableEvent = trackable;
        this.$appSessionId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TrackingLogic$Companion$processParameters$2(this.$trackableEvent, this.$appSessionId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super TrackingParameters> continuation) {
        return ((TrackingLogic$Companion$processParameters$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = this.$trackableEvent.getSuperwallParameters(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        Map mutableMap = MapsKt.toMutableMap((Map) obj);
        mutableMap.put("app_session_id", this.$appSessionId);
        Map<String, Object> audienceFilterParams = this.$trackableEvent.getAudienceFilterParams();
        String rawName = this.$trackableEvent.getRawName();
        Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("is_superwall", Boxing.boxBoolean(true)));
        Map mapMutableMapOf2 = MapsKt.mutableMapOf(TuplesKt.to("$is_standard_event", Boxing.boxBoolean(this.$trackableEvent instanceof TrackableSuperwallEvent)), TuplesKt.to("$event_name", rawName), TuplesKt.to("event_name", rawName));
        for (Map.Entry entry : mutableMap.entrySet()) {
            String str = (String) entry.getKey();
            Object objClean = TrackingLogic.INSTANCE.clean(entry.getValue());
            if (objClean != null) {
                mapMutableMapOf2.put("$" + str, objClean);
                mapMutableMapOf.put(str, objClean);
            }
        }
        for (Map.Entry<String, Object> entry2 : audienceFilterParams.entrySet()) {
            String key = entry2.getKey();
            Object objClean2 = TrackingLogic.INSTANCE.clean(entry2.getValue());
            if (objClean2 != null && !StringsKt.startsWith$default(key, "$", false, 2, (Object) null)) {
                mapMutableMapOf.put(key, objClean2);
                mapMutableMapOf2.put(key, objClean2);
            }
        }
        return new TrackingParameters(mapMutableMapOf, mapMutableMapOf2);
    }
}
