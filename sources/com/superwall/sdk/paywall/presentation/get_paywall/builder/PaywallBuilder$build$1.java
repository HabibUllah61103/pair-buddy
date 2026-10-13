package com.superwall.sdk.paywall.presentation.get_paywall.builder;

import com.facebook.imagepipeline.common.RotationOptions;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: PaywallBuilder.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_paywall.builder.PaywallBuilder", f = "PaywallBuilder.kt", i = {0}, l = {RotationOptions.ROTATE_90}, m = "build-IoAF18A", n = {"this"}, s = {"L$0"})
final class PaywallBuilder$build$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PaywallBuilder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaywallBuilder$build$1(PaywallBuilder paywallBuilder, Continuation<? super PaywallBuilder$build$1> continuation) {
        super(continuation);
        this.this$0 = paywallBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10705buildIoAF18A = this.this$0.m10705buildIoAF18A(this);
        return objM10705buildIoAF18A == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10705buildIoAF18A : Result.m11240boximpl(objM10705buildIoAF18A);
    }
}
