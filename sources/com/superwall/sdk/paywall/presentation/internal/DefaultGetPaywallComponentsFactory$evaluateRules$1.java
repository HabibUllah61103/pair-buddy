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
@DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.DefaultGetPaywallComponentsFactory", f = "GetPaywallComponentsFactory.kt", i = {}, l = {68}, m = "evaluateRules-gIAlu-s", n = {}, s = {})
final class DefaultGetPaywallComponentsFactory$evaluateRules$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DefaultGetPaywallComponentsFactory this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultGetPaywallComponentsFactory$evaluateRules$1(DefaultGetPaywallComponentsFactory defaultGetPaywallComponentsFactory, Continuation<? super DefaultGetPaywallComponentsFactory$evaluateRules$1> continuation) {
        super(continuation);
        this.this$0 = defaultGetPaywallComponentsFactory;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objMo10706evaluateRulesgIAlus = this.this$0.mo10706evaluateRulesgIAlus(null, this);
        return objMo10706evaluateRulesgIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo10706evaluateRulesgIAlus : Result.m11240boximpl(objMo10706evaluateRulesgIAlus);
    }
}
