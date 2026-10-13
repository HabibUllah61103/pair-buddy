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
@DebugMetadata(c = "com.superwall.sdk.billing.GoogleBillingWrapper", f = "GoogleBillingWrapper.kt", i = {}, l = {705}, m = "queryType-gIAlu-s", n = {}, s = {})
final class GoogleBillingWrapper$queryType$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ GoogleBillingWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GoogleBillingWrapper$queryType$1(GoogleBillingWrapper googleBillingWrapper, Continuation<? super GoogleBillingWrapper$queryType$1> continuation) {
        super(continuation);
        this.this$0 = googleBillingWrapper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10580queryTypegIAlus = this.this$0.m10580queryTypegIAlus(null, this);
        return objM10580queryTypegIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10580queryTypegIAlus : Result.m11240boximpl(objM10580queryTypegIAlus);
    }
}
