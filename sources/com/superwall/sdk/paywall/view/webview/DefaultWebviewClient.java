package com.superwall.sdk.paywall.view.webview;

import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.messaging.Constants;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: compiled from: DefaultWebviewClient.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\b\u0010\u0018\u00002\u00020\u0001BP\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012)\b\u0002\u0010\u0006\u001a#\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u001c\u0010\u0017\u001a\u00020\u00182\b\u0010\u000b\u001a\u0004\u0018\u00010\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u000b\u001a\u0004\u0018\u00010\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J&\u0010\u001d\u001a\u00020\r2\b\u0010\u000b\u001a\u0004\u0018\u00010\b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00032\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0018\u0010!\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u0003H\u0016J&\u0010\"\u001a\u00020\r2\b\u0010\u000b\u001a\u0004\u0018\u00010\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010#\u001a\u0004\u0018\u00010\u001cH\u0016J\u0018\u0010$\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010%\u001a\u00020\fH\u0016J$\u0010&\u001a\u00020\r2\b\u0010\u000b\u001a\u0004\u0018\u00010\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010'\u001a\u00020(H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R/\u0010\u0006\u001a#\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006)"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;", "Landroid/webkit/WebViewClient;", "forUrl", "", "ioScope", "Lkotlinx/coroutines/CoroutineScope;", "onWebViewCrash", "Lkotlin/Function2;", "Landroid/webkit/WebView;", "Lkotlin/ParameterName;", "name", "view", "Landroid/webkit/RenderProcessGoneDetail;", "", "localResourceHandler", "Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;", "<init>", "(Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;)V", "webviewClientEvents", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;", "getWebviewClientEvents", "()Lkotlinx/coroutines/flow/MutableSharedFlow;", "shouldOverrideUrlLoading", "", "request", "Landroid/webkit/WebResourceRequest;", "shouldInterceptRequest", "Landroid/webkit/WebResourceResponse;", "onPageStarted", ImagesContract.URL, "favicon", "Landroid/graphics/Bitmap;", "onPageFinished", "onReceivedHttpError", "errorResponse", "onRenderProcessGone", "detail", "onReceivedError", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "Landroid/webkit/WebResourceError;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class DefaultWebviewClient extends WebViewClient {
    private final String forUrl;
    private final CoroutineScope ioScope;
    private final LocalResourceHandler localResourceHandler;
    private final Function2<WebView, RenderProcessGoneDetail, Unit> onWebViewCrash;
    private final MutableSharedFlow<WebviewClientEvent> webviewClientEvents;

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        return true;
    }

    public /* synthetic */ DefaultWebviewClient(String str, CoroutineScope coroutineScope, Function2 function2, LocalResourceHandler localResourceHandler, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, coroutineScope, (i & 4) != 0 ? new Function2() { // from class: com.superwall.sdk.paywall.view.webview.DefaultWebviewClient$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return DefaultWebviewClient._init_$lambda$0((WebView) obj, (RenderProcessGoneDetail) obj2);
            }
        } : function2, (i & 8) != 0 ? null : localResourceHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$0(WebView v, RenderProcessGoneDetail d) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(d, "d");
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultWebviewClient(String forUrl, CoroutineScope ioScope, Function2<? super WebView, ? super RenderProcessGoneDetail, Unit> onWebViewCrash, LocalResourceHandler localResourceHandler) {
        Intrinsics.checkNotNullParameter(forUrl, "forUrl");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(onWebViewCrash, "onWebViewCrash");
        this.forUrl = forUrl;
        this.ioScope = ioScope;
        this.onWebViewCrash = onWebViewCrash;
        this.localResourceHandler = localResourceHandler;
        this.webviewClientEvents = SharedFlowKt.MutableSharedFlow$default(2, 10, null, 4, null);
    }

    public final MutableSharedFlow<WebviewClientEvent> getWebviewClientEvents() {
        return this.webviewClientEvents;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
        Uri url;
        if (request == null || (url = request.getUrl()) == null) {
            return super.shouldInterceptRequest(view, request);
        }
        LocalResourceHandler localResourceHandler = this.localResourceHandler;
        if (localResourceHandler != null && localResourceHandler.isLocalResourceUrl(url)) {
            return localResourceHandler.handleRequest(url);
        }
        return super.shouldInterceptRequest(view, request);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        super.onPageStarted(view, url, favicon);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.DefaultWebviewClient$onPageFinished$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultWebviewClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.DefaultWebviewClient$onPageFinished$1", f = "DefaultWebviewClient.kt", i = {}, l = {56}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $url;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$url = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultWebviewClient.this.new AnonymousClass1(this.$url, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DefaultWebviewClient.this.getWebviewClientEvents().emit(new WebviewClientEvent.OnPageFinished(this.$url), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        super.onPageFinished(view, url);
        BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new AnonymousClass1(url, null), 3, null);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
        String strValueOf = String.valueOf(request != null ? request.getUrl() : null);
        if (StringsKt.contains$default((CharSequence) strValueOf, (CharSequence) "favicon.ico", false, 2, (Object) null)) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05561(strValueOf, errorResponse, this, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.DefaultWebviewClient$onReceivedHttpError$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultWebviewClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.DefaultWebviewClient$onReceivedHttpError$1", f = "DefaultWebviewClient.kt", i = {}, l = {76}, m = "invokeSuspend", n = {}, s = {})
    static final class C05561 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ WebResourceResponse $errorResponse;
        final /* synthetic */ String $requestUrl;
        int label;
        final /* synthetic */ DefaultWebviewClient this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05561(String str, WebResourceResponse webResourceResponse, DefaultWebviewClient defaultWebviewClient, Continuation<? super C05561> continuation) {
            super(2, continuation);
            this.$requestUrl = str;
            this.$errorResponse = webResourceResponse;
            this.this$0 = defaultWebviewClient;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05561(this.$requestUrl, this.$errorResponse, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05561) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:39:0x00b2  */
        /* JADX WARN: Code duplicated, block: B:42:0x00d3  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            String text;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Logger logger = Logger.INSTANCE;
                LogLevel logLevel = LogLevel.error;
                LogScope logScope = LogScope.paywallView;
                String str2 = this.$requestUrl;
                WebResourceResponse webResourceResponse = this.$errorResponse;
                Integer numBoxInt = webResourceResponse != null ? Boxing.boxInt(webResourceResponse.getStatusCode()) : null;
                WebResourceResponse webResourceResponse2 = this.$errorResponse;
                Logger.debug$default(logger, logLevel, logScope, "Paywall loading failed due to network error. Url: " + str2 + " - Code: " + numBoxInt + " for " + (webResourceResponse2 != null ? webResourceResponse2.getReasonPhrase() : null), null, null, 24, null);
                MutableSharedFlow<WebviewClientEvent> webviewClientEvents = this.this$0.getWebviewClientEvents();
                WebResourceResponse webResourceResponse3 = this.$errorResponse;
                int statusCode = webResourceResponse3 != null ? webResourceResponse3.getStatusCode() : -1;
                WebResourceResponse webResourceResponse4 = this.$errorResponse;
                if (webResourceResponse4 != null) {
                    InputStream data = webResourceResponse4.getData();
                    if (data != null) {
                        Reader inputStreamReader = new InputStreamReader(data, Charsets.UTF_8);
                        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
                        try {
                            text = TextStreamsKt.readText(bufferedReader);
                            CloseableKt.closeFinally(bufferedReader, null);
                            if (text == null) {
                                text = "Unknown";
                            }
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(bufferedReader, th);
                                throw th2;
                            }
                        }
                    } else {
                        text = "Unknown";
                    }
                    str = "Error: " + webResourceResponse4.getReasonPhrase() + " -\n " + text;
                    if (str == null) {
                        str = "Unknown error";
                    }
                } else {
                    str = "Unknown error";
                }
                this.label = 1;
                if (webviewClientEvents.emit(new WebviewClientEvent.OnError(new WebviewError.NetworkError(statusCode, str, this.this$0.forUrl)), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        this.onWebViewCrash.invoke(view, detail);
        return true;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.DefaultWebviewClient$onReceivedError$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultWebviewClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.DefaultWebviewClient$onReceivedError$1", f = "DefaultWebviewClient.kt", i = {}, l = {121, 131}, m = "invokeSuspend", n = {}, s = {})
    static final class C05551 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ WebResourceError $error;
        final /* synthetic */ WebResourceRequest $request;
        int label;
        final /* synthetic */ DefaultWebviewClient this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05551(WebResourceRequest webResourceRequest, WebResourceError webResourceError, DefaultWebviewClient defaultWebviewClient, Continuation<? super C05551> continuation) {
            super(2, continuation);
            this.$request = webResourceRequest;
            this.$error = webResourceError;
            this.this$0 = defaultWebviewClient;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05551(this.$request, this.$error, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05551) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0057  */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x00d2, code lost:
        
            if (r14.this$0.getWebviewClientEvents().emit(new com.superwall.sdk.paywall.view.webview.WebviewClientEvent.OnError(new com.superwall.sdk.paywall.view.webview.WebviewError.NetworkError(r1, r15, r14.this$0.forUrl)), r14) == r0) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0106, code lost:
        
            if (r14.this$0.getWebviewClientEvents().emit(new com.superwall.sdk.paywall.view.webview.WebviewClientEvent.OnResourceError(new com.superwall.sdk.paywall.view.webview.WebviewError.NetworkError(r14.$error.getErrorCode(), r14.$error.getDescription().toString(), r14.this$0.forUrl)), r14) == r0) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0108, code lost:
        
            return r0;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instruction units count: 268
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.view.webview.DefaultWebviewClient.C05551.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05551(request, error, this, null), 3, null);
    }
}
