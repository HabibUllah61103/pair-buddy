package com.superwall.sdk;

import com.superwall.sdk.models.customer.CustomerInfo;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: Superwall.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.Superwall$addListeners$2$3", f = "Superwall.kt", i = {0}, l = {761, 762}, m = "emit", n = {"this"}, s = {"L$0"})
final class Superwall$addListeners$2$3$emit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Superwall.AnonymousClass2.AnonymousClass3<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    Superwall$addListeners$2$3$emit$1(Superwall.AnonymousClass2.AnonymousClass3<? super T> anonymousClass3, Continuation<? super Superwall$addListeners$2$3$emit$1> continuation) {
        super(continuation);
        this.this$0 = anonymousClass3;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit((Pair<CustomerInfo, CustomerInfo>) null, (Continuation<? super Unit>) this);
    }
}
