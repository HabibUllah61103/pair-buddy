package com.superwall.sdk.store;

import com.android.billingclient.api.Purchase;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: AutomaticPurchaseController.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "Lcom/android/billingclient/api/Purchase;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.store.AutomaticPurchaseController$syncSubscriptionStatusAndWait$subscriptionPurchases$1", f = "AutomaticPurchaseController.kt", i = {}, l = {326}, m = "invokeSuspend", n = {}, s = {})
final class AutomaticPurchaseController$syncSubscriptionStatusAndWait$subscriptionPurchases$1 extends SuspendLambda implements Function1<Continuation<? super List<? extends Purchase>>, Object> {
    int label;
    final /* synthetic */ AutomaticPurchaseController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AutomaticPurchaseController$syncSubscriptionStatusAndWait$subscriptionPurchases$1(AutomaticPurchaseController automaticPurchaseController, Continuation<? super AutomaticPurchaseController$syncSubscriptionStatusAndWait$subscriptionPurchases$1> continuation) {
        super(1, continuation);
        this.this$0 = automaticPurchaseController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new AutomaticPurchaseController$syncSubscriptionStatusAndWait$subscriptionPurchases$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super List<? extends Purchase>> continuation) {
        return ((AutomaticPurchaseController$syncSubscriptionStatusAndWait$subscriptionPurchases$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM10769queryPurchasesOfTypegIAlus;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            objM10769queryPurchasesOfTypegIAlus = this.this$0.m10769queryPurchasesOfTypegIAlus("subs", this);
            if (objM10769queryPurchasesOfTypegIAlus == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            objM10769queryPurchasesOfTypegIAlus = ((Result) obj).getValue();
        }
        ResultKt.throwOnFailure(objM10769queryPurchasesOfTypegIAlus);
        return objM10769queryPurchasesOfTypegIAlus;
    }
}
