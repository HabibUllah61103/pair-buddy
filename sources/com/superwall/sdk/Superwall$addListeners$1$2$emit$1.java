package com.superwall.sdk;

import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: Superwall.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.Superwall$addListeners$1$2", f = "Superwall.kt", i = {0}, l = {745, 746}, m = "emit", n = {"this"}, s = {"L$0"})
final class Superwall$addListeners$1$2$emit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Superwall.AnonymousClass1.AnonymousClass2<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    Superwall$addListeners$1$2$emit$1(Superwall.AnonymousClass1.AnonymousClass2<? super T> anonymousClass2, Continuation<? super Superwall$addListeners$1$2$emit$1> continuation) {
        super(continuation);
        this.this$0 = anonymousClass2;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit((SubscriptionStatus) null, (Continuation<? super Unit>) this);
    }
}
