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
@DebugMetadata(c = "com.superwall.sdk.Superwall$setInterfaceStyle$1$1", f = "Superwall.kt", i = {}, l = {831, 831, 832}, m = "invokeSuspend", n = {}, s = {})
final class Superwall$setInterfaceStyle$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ Superwall this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Superwall$setInterfaceStyle$1$1(Superwall superwall, Continuation<? super Superwall$setInterfaceStyle$1$1> continuation) {
        super(2, continuation);
        this.this$0 = superwall;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Superwall$setInterfaceStyle$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((Superwall$setInterfaceStyle$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0070, code lost:
    
        if (r6.this$0.getDependencyContainer$superwall_release().getConfigManager().recheckPreloadIfNeeded(r6) == r0) goto L20;
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
            r2 = 3
            r3 = 1
            r4 = 2
            if (r1 == 0) goto L2e
            if (r1 == r3) goto L26
            if (r1 == r4) goto L1d
            if (r1 != r2) goto L15
            kotlin.ResultKt.throwOnFailure(r7)
            goto L73
        L15:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1d:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            r7.getValue()
            goto L5d
        L26:
            java.lang.Object r1 = r6.L$0
            com.superwall.sdk.Superwall r1 = (com.superwall.sdk.Superwall) r1
            kotlin.ResultKt.throwOnFailure(r7)
            goto L45
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
            com.superwall.sdk.Superwall r1 = r6.this$0
            com.superwall.sdk.dependencies.DependencyContainer r7 = r1.getDependencyContainer$superwall_release()
            r5 = r6
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
            r6.L$0 = r1
            r6.label = r3
            java.lang.Object r7 = r7.makeSessionDeviceAttributes(r5)
            if (r7 != r0) goto L45
            goto L72
        L45:
            java.util.HashMap r7 = (java.util.HashMap) r7
            com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$DeviceAttributes r3 = new com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$DeviceAttributes
            r5 = 0
            r3.<init>(r7, r5, r4, r5)
            com.superwall.sdk.analytics.internal.trackable.Trackable r3 = (com.superwall.sdk.analytics.internal.trackable.Trackable) r3
            r7 = r6
            kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
            r6.L$0 = r5
            r6.label = r4
            java.lang.Object r7 = com.superwall.sdk.analytics.internal.TrackingKt.track(r1, r3, r7)
            if (r7 != r0) goto L5d
            goto L72
        L5d:
            com.superwall.sdk.Superwall r7 = r6.this$0
            com.superwall.sdk.dependencies.DependencyContainer r7 = r7.getDependencyContainer$superwall_release()
            com.superwall.sdk.config.ConfigManager r7 = r7.getConfigManager()
            r1 = r6
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            r6.label = r2
            java.lang.Object r7 = r7.recheckPreloadIfNeeded(r1)
            if (r7 != r0) goto L73
        L72:
            return r0
        L73:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.Superwall$setInterfaceStyle$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
