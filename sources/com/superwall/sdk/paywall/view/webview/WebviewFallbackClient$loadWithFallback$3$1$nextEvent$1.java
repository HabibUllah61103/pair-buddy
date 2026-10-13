package com.superwall.sdk.paywall.view.webview;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: WebviewFallbackClient.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.WebviewFallbackClient$loadWithFallback$3$1$nextEvent$1", f = "WebviewFallbackClient.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class WebviewFallbackClient$loadWithFallback$3$1$nextEvent$1 extends SuspendLambda implements Function2<WebviewFallbackClient.UrlState, Continuation<? super Boolean>, Object> {
    /* synthetic */ Object L$0;
    int label;

    WebviewFallbackClient$loadWithFallback$3$1$nextEvent$1(Continuation<? super WebviewFallbackClient$loadWithFallback$3$1$nextEvent$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        WebviewFallbackClient$loadWithFallback$3$1$nextEvent$1 webviewFallbackClient$loadWithFallback$3$1$nextEvent$1 = new WebviewFallbackClient$loadWithFallback$3$1$nextEvent$1(continuation);
        webviewFallbackClient$loadWithFallback$3$1$nextEvent$1.L$0 = obj;
        return webviewFallbackClient$loadWithFallback$3$1$nextEvent$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(WebviewFallbackClient.UrlState urlState, Continuation<? super Boolean> continuation) {
        return ((WebviewFallbackClient$loadWithFallback$3$1$nextEvent$1) create(urlState, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        WebviewFallbackClient.UrlState urlState = (WebviewFallbackClient.UrlState) this.L$0;
        return Boxing.boxBoolean((urlState instanceof WebviewFallbackClient.UrlState.PageStarted) || (urlState instanceof WebviewFallbackClient.UrlState.Timeout) || (urlState instanceof WebviewFallbackClient.UrlState.PageError));
    }
}
