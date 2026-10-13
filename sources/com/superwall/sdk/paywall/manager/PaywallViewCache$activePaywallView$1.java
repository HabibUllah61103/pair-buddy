package com.superwall.sdk.paywall.manager;

import com.superwall.sdk.paywall.view.PaywallView;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PaywallViewCache.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/paywall/view/PaywallView;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.manager.PaywallViewCache$activePaywallView$1", f = "PaywallViewCache.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class PaywallViewCache$activePaywallView$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PaywallView>, Object> {
    int label;
    final /* synthetic */ PaywallViewCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaywallViewCache$activePaywallView$1(PaywallViewCache paywallViewCache, Continuation<? super PaywallViewCache$activePaywallView$1> continuation) {
        super(2, continuation);
        this.this$0 = paywallViewCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaywallViewCache$activePaywallView$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super PaywallView> continuation) {
        return ((PaywallViewCache$activePaywallView$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        String str = this.this$0._activePaywallVcKey;
        if (str != null) {
            return (PaywallView) this.this$0.store.retrieveView(str);
        }
        return null;
    }
}
