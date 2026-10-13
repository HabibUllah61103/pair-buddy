package com.superwall.sdk.billing;

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

/* JADX INFO: compiled from: GoogleBillingWrapper.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "Lcom/android/billingclient/api/Purchase;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.billing.GoogleBillingWrapper$queryAllPurchases$subs$1", f = "GoogleBillingWrapper.kt", i = {}, l = {146}, m = "invokeSuspend", n = {}, s = {})
final class GoogleBillingWrapper$queryAllPurchases$subs$1 extends SuspendLambda implements Function1<Continuation<? super List<? extends Purchase>>, Object> {
    int label;
    final /* synthetic */ GoogleBillingWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GoogleBillingWrapper$queryAllPurchases$subs$1(GoogleBillingWrapper googleBillingWrapper, Continuation<? super GoogleBillingWrapper$queryAllPurchases$subs$1> continuation) {
        super(1, continuation);
        this.this$0 = googleBillingWrapper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new GoogleBillingWrapper$queryAllPurchases$subs$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super List<? extends Purchase>> continuation) {
        return ((GoogleBillingWrapper$queryAllPurchases$subs$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM10580queryTypegIAlus;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            objM10580queryTypegIAlus = this.this$0.m10580queryTypegIAlus("subs", this);
            if (objM10580queryTypegIAlus == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            objM10580queryTypegIAlus = ((Result) obj).getValue();
        }
        ResultKt.throwOnFailure(objM10580queryTypegIAlus);
        return objM10580queryTypegIAlus;
    }
}
