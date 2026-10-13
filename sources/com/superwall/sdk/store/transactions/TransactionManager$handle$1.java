package com.superwall.sdk.store.transactions;

import androidx.compose.runtime.ComposerKt;
import com.facebook.imageutils.JfifUtil;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: TransactionManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.store.transactions.TransactionManager", f = "TransactionManager.kt", i = {0, 0, 0, 1, 1, 2, 2, 3, 3}, l = {ComposerKt.providerKey, JfifUtil.MARKER_RST7, 251, 263}, m = "handle$superwall_release", n = {"this", "purchase", "destination$iv$iv", "this", "lastProduct", "this", "destination$iv$iv", "this", "destination$iv$iv"}, s = {"L$0", "L$2", "L$3", "L$0", "L$1", "L$0", "L$2", "L$0", "L$2"})
final class TransactionManager$handle$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TransactionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransactionManager$handle$1(TransactionManager transactionManager, Continuation<? super TransactionManager$handle$1> continuation) {
        super(continuation);
        this.this$0 = transactionManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.handle$superwall_release(null, null, this);
    }
}
