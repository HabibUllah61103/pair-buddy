package com.superwall.sdk;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: Superwall.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.Superwall$setPlatformWrapper$1$1", f = "Superwall.kt", i = {}, l = {818, 818}, m = "invokeSuspend", n = {}, s = {})
final class Superwall$setPlatformWrapper$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ Superwall this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Superwall$setPlatformWrapper$1$1(Superwall superwall, Continuation<? super Superwall$setPlatformWrapper$1$1> continuation) {
        super(2, continuation);
        this.this$0 = superwall;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Superwall$setPlatformWrapper$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((Superwall$setPlatformWrapper$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
    
        if (com.superwall.sdk.analytics.internal.TrackingKt.track(r1, new com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent.DeviceAttributes((java.util.HashMap) r6, null, 2, null), r5) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 1
            r3 = 2
            if (r1 == 0) goto L27
            if (r1 == r2) goto L1f
            if (r1 != r3) goto L17
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            r6.getValue()
            goto L56
        L17:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1f:
            java.lang.Object r1 = r5.L$0
            com.superwall.sdk.Superwall r1 = (com.superwall.sdk.Superwall) r1
            kotlin.ResultKt.throwOnFailure(r6)
            goto L3e
        L27:
            kotlin.ResultKt.throwOnFailure(r6)
            com.superwall.sdk.Superwall r1 = r5.this$0
            com.superwall.sdk.dependencies.DependencyContainer r6 = r1.getDependencyContainer$superwall_release()
            r4 = r5
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            r5.L$0 = r1
            r5.label = r2
            java.lang.Object r6 = r6.makeSessionDeviceAttributes(r4)
            if (r6 != r0) goto L3e
            goto L55
        L3e:
            java.util.HashMap r6 = (java.util.HashMap) r6
            com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$DeviceAttributes r2 = new com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$DeviceAttributes
            r4 = 0
            r2.<init>(r6, r4, r3, r4)
            com.superwall.sdk.analytics.internal.trackable.Trackable r2 = (com.superwall.sdk.analytics.internal.trackable.Trackable) r2
            r6 = r5
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
            r5.L$0 = r4
            r5.label = r3
            java.lang.Object r6 = com.superwall.sdk.analytics.internal.TrackingKt.track(r1, r2, r6)
            if (r6 != r0) goto L56
        L55:
            return r0
        L56:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.Superwall$setPlatformWrapper$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
