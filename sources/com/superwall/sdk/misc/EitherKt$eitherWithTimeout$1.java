package com.superwall.sdk.misc;

import com.google.firebase.messaging.Constants;
import java.lang.Throwable;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: Either.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.misc.EitherKt", f = "Either.kt", i = {0}, l = {105}, m = "eitherWithTimeout-rnQQ1Ag", n = {Constants.IPC_BUNDLE_KEY_SEND_ERROR}, s = {"L$0"})
final class EitherKt$eitherWithTimeout$1<T, E extends Throwable> extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    EitherKt$eitherWithTimeout$1(Continuation<? super EitherKt$eitherWithTimeout$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return EitherKt.m10628eitherWithTimeoutrnQQ1Ag(0L, null, null, this);
    }
}
