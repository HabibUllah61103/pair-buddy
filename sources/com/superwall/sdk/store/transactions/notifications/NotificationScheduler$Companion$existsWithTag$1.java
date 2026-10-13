package com.superwall.sdk.store.transactions.notifications;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: NotificationScheduler.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.store.transactions.notifications.NotificationScheduler$Companion", f = "NotificationScheduler.kt", i = {}, l = {40}, m = "existsWithTag", n = {}, s = {})
final class NotificationScheduler$Companion$existsWithTag$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ NotificationScheduler.Companion this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NotificationScheduler$Companion$existsWithTag$1(NotificationScheduler.Companion companion, Continuation<? super NotificationScheduler$Companion$existsWithTag$1> continuation) {
        super(continuation);
        this.this$0 = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.existsWithTag(null, null, this);
    }
}
