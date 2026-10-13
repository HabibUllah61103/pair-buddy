package com.superwall.sdk.config;

import com.superwall.sdk.paywall.request.PaywallRequest;
import com.superwall.sdk.paywall.request.ResponseIdentifiers;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PaywallPreload.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.config.PaywallPreload$preloadPaywalls$2$task$1", f = "PaywallPreload.kt", i = {}, l = {164}, m = "invokeSuspend", n = {}, s = {})
final class PaywallPreload$preloadPaywalls$2$task$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Object>, Object> {
    final /* synthetic */ String $identifier;
    int label;
    final /* synthetic */ PaywallPreload this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaywallPreload$preloadPaywalls$2$task$1(PaywallPreload paywallPreload, String str, Continuation<? super PaywallPreload$preloadPaywalls$2$task$1> continuation) {
        super(2, continuation);
        this.this$0 = paywallPreload;
        this.$identifier = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaywallPreload$preloadPaywalls$2$task$1(this.this$0, this.$identifier, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Object> continuation) {
        return invoke2(coroutineScope, (Continuation<Object>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<Object> continuation) {
        return ((PaywallPreload$preloadPaywalls$2$task$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            PaywallRequest paywallRequestMakePaywallRequest = this.this$0.getFactory().makePaywallRequest(null, new ResponseIdentifiers(this.$identifier, null), null, false, null);
            this.label = 1;
            Object paywallView = this.this$0.getPaywallManager().getPaywallView(paywallRequestMakePaywallRequest, true, true, null, this);
            return paywallView == coroutine_suspended ? coroutine_suspended : paywallView;
        } catch (Exception unused) {
            return Unit.INSTANCE;
        }
    }
}
