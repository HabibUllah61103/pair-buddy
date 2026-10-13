package com.superwall.sdk.network;

import androidx.appcompat.app.AppCompatDelegate;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: Network.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.network.Network", f = "Network.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 2, 3}, l = {107, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 110, 111, 119}, m = "getEnrichment-exY8QGI$suspendImpl", n = {"$this", "enrichmentRequest", "maxRetry", "timeout", "$this", "enrichmentRequest", "maxRetry", "timeout", "$this", "$this"}, s = {"L$0", "L$1", "I$0", "J$0", "L$0", "L$1", "I$0", "J$0", "L$0", "L$0"})
final class Network$getEnrichment$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Network this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Network$getEnrichment$1(Network network, Continuation<? super Network$getEnrichment$1> continuation) {
        super(continuation);
        this.this$0 = network;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return Network.m10682getEnrichmentexY8QGI$suspendImpl(this.this$0, null, 0, 0L, this);
    }
}
