package com.superwall.sdk.store;

import com.superwall.sdk.delegate.PurchaseResult;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: AutomaticPurchaseController.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/delegate/PurchaseResult;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.store.AutomaticPurchaseController$purchase$value$1", f = "AutomaticPurchaseController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class AutomaticPurchaseController$purchase$value$1 extends SuspendLambda implements Function2<PurchaseResult, Continuation<? super Boolean>, Object> {
    /* synthetic */ Object L$0;
    int label;

    AutomaticPurchaseController$purchase$value$1(Continuation<? super AutomaticPurchaseController$purchase$value$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AutomaticPurchaseController$purchase$value$1 automaticPurchaseController$purchase$value$1 = new AutomaticPurchaseController$purchase$value$1(continuation);
        automaticPurchaseController$purchase$value$1.L$0 = obj;
        return automaticPurchaseController$purchase$value$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(PurchaseResult purchaseResult, Continuation<? super Boolean> continuation) {
        return ((AutomaticPurchaseController$purchase$value$1) create(purchaseResult, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return Boxing.boxBoolean(((PurchaseResult) this.L$0) != null);
    }
}
