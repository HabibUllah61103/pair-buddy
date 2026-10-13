package com.superwall.sdk.store;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: StoreManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.store.StoreManager", f = "StoreManager.kt", i = {}, l = {349}, m = "consume-gIAlu-s", n = {}, s = {})
final class StoreManager$consume$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ StoreManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StoreManager$consume$1(StoreManager storeManager, Continuation<? super StoreManager$consume$1> continuation) {
        super(continuation);
        this.this$0 = storeManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objMo10770consumegIAlus = this.this$0.mo10770consumegIAlus(null, this);
        return objMo10770consumegIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo10770consumegIAlus : Result.m11240boximpl(objMo10770consumegIAlus);
    }
}
