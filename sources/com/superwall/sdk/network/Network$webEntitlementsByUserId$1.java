package com.superwall.sdk.network;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: Network.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.network.Network", f = "Network.kt", i = {}, l = {148}, m = "webEntitlementsByUserId-5PBZuVg$suspendImpl", n = {}, s = {})
final class Network$webEntitlementsByUserId$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Network this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Network$webEntitlementsByUserId$1(Network network, Continuation<? super Network$webEntitlementsByUserId$1> continuation) {
        super(continuation);
        this.this$0 = network;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return Network.m10684webEntitlementsByUserId5PBZuVg$suspendImpl(this.this$0, null, null, this);
    }
}
