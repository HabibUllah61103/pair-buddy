package com.superwall.sdk.analytics.session;

import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AppSessionManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.analytics.session.AppSessionManager$detectNewSession$1$1", f = "AppSessionManager.kt", i = {1, 1, 2}, l = {113, AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID, 122, 128}, m = "invokeSuspend", n = {"deviceAttributes", "userAttributes", "userAttributes"}, s = {"L$0", "L$1", "L$0"})
final class AppSessionManager$detectNewSession$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ AppSessionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AppSessionManager$detectNewSession$1$1(AppSessionManager appSessionManager, Continuation<? super AppSessionManager$detectNewSession$1$1> continuation) {
        super(2, continuation);
        this.this$0 = appSessionManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AppSessionManager$detectNewSession$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AppSessionManager$detectNewSession$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0091  */
    /* JADX WARN: Code duplicated, block: B:26:0x00ae A[PHI: r1
      0x00ae: PHI (r1v7 com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$Attributes) = 
      (r1v6 com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$Attributes)
      (r1v6 com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$Attributes)
      (r1v12 com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$Attributes)
     binds: [B:22:0x008f, B:24:0x00ab, B:11:0x0027] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c3, code lost:
    
        if (com.superwall.sdk.analytics.internal.TrackingKt.track(com.superwall.sdk.Superwall.INSTANCE.getInstance(), r1, r9) == r0) goto L28;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.analytics.session.AppSessionManager$detectNewSession$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
