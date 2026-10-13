package com.superwall.sdk.web;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: WebPaywallRedeemer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.web.WebPaywallRedeemer", f = "WebPaywallRedeemer.kt", i = {0, 0, 1, 1}, l = {338, 340}, m = "checkForWebEntitlements-AKGx8qU", n = {"this", "userId", "this", "userId"}, s = {"L$0", "L$1", "L$0", "L$1"})
final class WebPaywallRedeemer$checkForWebEntitlements$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ WebPaywallRedeemer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WebPaywallRedeemer$checkForWebEntitlements$1(WebPaywallRedeemer webPaywallRedeemer, Continuation<? super WebPaywallRedeemer$checkForWebEntitlements$1> continuation) {
        super(continuation);
        this.this$0 = webPaywallRedeemer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m10808checkForWebEntitlementsAKGx8qU(null, null, this);
    }
}
