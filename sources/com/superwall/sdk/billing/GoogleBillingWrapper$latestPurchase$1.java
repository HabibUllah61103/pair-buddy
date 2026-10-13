package com.superwall.sdk.billing;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: GoogleBillingWrapper.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.billing.GoogleBillingWrapper", f = "GoogleBillingWrapper.kt", i = {0, 1, 1, 1}, l = {654, 658}, m = "latestPurchase$superwall_release", n = {"this", "this", "destination$iv$iv", "it"}, s = {"L$0", "L$0", "L$1", "L$3"})
final class GoogleBillingWrapper$latestPurchase$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ GoogleBillingWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GoogleBillingWrapper$latestPurchase$1(GoogleBillingWrapper googleBillingWrapper, Continuation<? super GoogleBillingWrapper$latestPurchase$1> continuation) {
        super(continuation);
        this.this$0 = googleBillingWrapper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.latestPurchase$superwall_release(this);
    }
}
