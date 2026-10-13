package com.superwall.sdk.paywall.view.webview;

import com.superwall.sdk.config.models.OnDeviceCaching;
import com.superwall.sdk.paywall.view.PaywallViewState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: SWWebView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.SWWebView$setup$1", f = "SWWebView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class SWWebView$setup$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $url;
    int label;
    final /* synthetic */ SWWebView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SWWebView$setup$1(SWWebView sWWebView, String str, Continuation<? super SWWebView$setup$1> continuation) {
        super(2, continuation);
        this.this$0 = sWWebView;
        this.$url = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SWWebView$setup$1(this.this$0, this.$url, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SWWebView$setup$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        PaywallViewState state;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        PaywallUIDelegate delegate = this.this$0.getDelegate();
        if (delegate == null || (state = delegate.getState()) == null) {
            return Unit.INSTANCE;
        }
        if (state.getPaywall().getOnDeviceCache() instanceof OnDeviceCaching.Enabled) {
            this.this$0.getSettings().setCacheMode(1);
        } else {
            this.this$0.getSettings().setCacheMode(-1);
        }
        if (state.getUseMultipleUrls()) {
            this.this$0.loadPaywallWithFallbackUrl$superwall_release(state.getPaywall());
        } else {
            this.this$0.loadUrl(this.$url);
        }
        return Unit.INSTANCE;
    }
}
