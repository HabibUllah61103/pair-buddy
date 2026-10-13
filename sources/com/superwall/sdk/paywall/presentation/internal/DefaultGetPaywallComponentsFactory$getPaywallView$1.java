package com.superwall.sdk.paywall.presentation.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: GetPaywallComponentsFactory.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.DefaultGetPaywallComponentsFactory", f = "GetPaywallComponentsFactory.kt", i = {}, l = {81}, m = "getPaywallView-yxL6bBk", n = {}, s = {})
final class DefaultGetPaywallComponentsFactory$getPaywallView$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DefaultGetPaywallComponentsFactory this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultGetPaywallComponentsFactory$getPaywallView$1(DefaultGetPaywallComponentsFactory defaultGetPaywallComponentsFactory, Continuation<? super DefaultGetPaywallComponentsFactory$getPaywallView$1> continuation) {
        super(continuation);
        this.this$0 = defaultGetPaywallComponentsFactory;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objMo10707getPaywallViewyxL6bBk = this.this$0.mo10707getPaywallViewyxL6bBk(null, null, null, null, this);
        return objMo10707getPaywallViewyxL6bBk == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo10707getPaywallViewyxL6bBk : Result.m11240boximpl(objMo10707getPaywallViewyxL6bBk);
    }
}
