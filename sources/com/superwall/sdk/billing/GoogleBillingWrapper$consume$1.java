package com.superwall.sdk.billing;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: GoogleBillingWrapper.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.billing.GoogleBillingWrapper", f = "GoogleBillingWrapper.kt", i = {0, 0}, l = {151}, m = "consume-gIAlu-s", n = {"this", "purchaseToken"}, s = {"L$0", "L$1"})
final class GoogleBillingWrapper$consume$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ GoogleBillingWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GoogleBillingWrapper$consume$1(GoogleBillingWrapper googleBillingWrapper, Continuation<? super GoogleBillingWrapper$consume$1> continuation) {
        super(continuation);
        this.this$0 = googleBillingWrapper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objMo10575consumegIAlus = this.this$0.mo10575consumegIAlus(null, this);
        return objMo10575consumegIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo10575consumegIAlus : Result.m11240boximpl(objMo10575consumegIAlus);
    }
}
