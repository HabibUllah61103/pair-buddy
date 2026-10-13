package com.superwall.sdk.paywall.view;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.paywall.manager.PaywallViewCache;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PaywallView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$loadWebView$1$2$1", f = "PaywallView.kt", i = {}, l = {TypedValues.Custom.TYPE_STRING}, m = "invokeSuspend", n = {}, s = {})
final class PaywallView$loadWebView$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ PaywallView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaywallView$loadWebView$1$2$1(PaywallView paywallView, Continuation<? super PaywallView$loadWebView$1$2$1> continuation) {
        super(2, continuation);
        this.this$0 = paywallView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaywallView$loadWebView$1$2$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PaywallView$loadWebView$1$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        PaywallView paywallView;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        Unit unit = null;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PaywallView paywallView2 = this.this$0;
                Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "Paywall cannot be recreated - cleaning cached instance for next open", null, null, 24, null);
                PaywallView.beforeOnDestroy$default(paywallView2, false, 1, null);
                this.L$0 = paywallView2;
                this.label = 1;
                if (PaywallView.destroyed$default(paywallView2, false, this, 1, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                paywallView = paywallView2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                paywallView = (PaywallView) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            paywallView.cleanup();
            PaywallViewCache paywallViewCache = paywallView.cache;
            if (paywallViewCache != null) {
                paywallViewCache.removePaywallView(paywallView.getState().getPaywall().getIdentifier());
                unit = Unit.INSTANCE;
            }
            new Either.Success(unit);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            new Either.Failure(th);
        }
        return Unit.INSTANCE;
    }
}
