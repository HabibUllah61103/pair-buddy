package com.superwall.sdk.web;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: DeepLinkReferrer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.web.DeepLinkReferrer", f = "DeepLinkReferrer.kt", i = {0}, l = {99}, m = "checkForReferral-IoAF18A", n = {"this"}, s = {"L$0"})
final class DeepLinkReferrer$checkForReferral$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DeepLinkReferrer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DeepLinkReferrer$checkForReferral$1(DeepLinkReferrer deepLinkReferrer, Continuation<? super DeepLinkReferrer$checkForReferral$1> continuation) {
        super(continuation);
        this.this$0 = deepLinkReferrer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objMo10806checkForReferralIoAF18A = this.this$0.mo10806checkForReferralIoAF18A(this);
        return objMo10806checkForReferralIoAF18A == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo10806checkForReferralIoAF18A : Result.m11240boximpl(objMo10806checkForReferralIoAF18A);
    }
}
