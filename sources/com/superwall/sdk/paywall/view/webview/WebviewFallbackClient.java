package com.superwall.sdk.paywall.view.webview;

import android.graphics.Bitmap;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.media3.container.MdtaMetadataEntry;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.messaging.Constants;
import com.superwall.sdk.models.paywall.PaywallWebviewUrl;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: WebviewFallbackClient.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001:\u0002:;Bv\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\f\u0012'\u0010\r\u001a#\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n0\u000e\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0016\u0010\u0017J&\u0010!\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u001c\u0010&\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\r\u0010'\u001a\u00020\tH\u0000¢\u0006\u0002\b(J\u001c\u0010)\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J)\u0010*\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u00192\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\t0,2\b\b\u0002\u0010-\u001a\u00020\u0019H\u0082\u0010J\u0016\u0010.\u001a\u00020\t2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\t0,H\u0002J&\u00100\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\b\u00101\u001a\u0004\u0018\u0001022\b\u00103\u001a\u0004\u0018\u000104H\u0016J\r\u00105\u001a\u00020\nH\u0000¢\u0006\u0002\b6J$\u00107\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\b\u00101\u001a\u0004\u0018\u0001022\u0006\u00108\u001a\u000209H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fX\u0082\u0004¢\u0006\u0002\n\u0000R/\u0010\r\u001a#\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\t0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\t0\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;", "Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;", "config", "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;", "ioScope", "Lkotlinx/coroutines/CoroutineScope;", "mainScope", "loadUrl", "Lkotlin/Function1;", "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;", "", "stopLoading", "Lkotlin/Function0;", "onCrashed", "Lkotlin/Function2;", "Landroid/webkit/WebView;", "Lkotlin/ParameterName;", "name", "view", "Landroid/webkit/RenderProcessGoneDetail;", "localResourceHandler", "Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;", "<init>", "(Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;)V", "failureCount", "", "urls", "", "untriedUrls", "", "timeoutFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;", "onPageStarted", ImagesContract.URL, "", "favicon", "Landroid/graphics/Bitmap;", "onLoadResource", "nextUrl", "nextUrl$superwall_release", "onPageCommitVisible", "evaluateNext", "chosenNumber", "", "accumulatedScore", "nextWeightedUrl", "fromUrls", "onReceivedHttpError", "request", "Landroid/webkit/WebResourceRequest;", "errorResponse", "Landroid/webkit/WebResourceResponse;", "loadWithFallback", "loadWithFallback$superwall_release", "onReceivedError", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "Landroid/webkit/WebResourceError;", "MaxAttemptsReachedException", "UrlState", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class WebviewFallbackClient extends DefaultWebviewClient {
    private final PaywallWebviewUrl.Config config;
    private int failureCount;
    private final CoroutineScope ioScope;
    private final Function1<PaywallWebviewUrl, Unit> loadUrl;
    private final CoroutineScope mainScope;
    private final Function2<WebView, RenderProcessGoneDetail, Unit> onCrashed;
    private final Function0<Unit> stopLoading;
    private final MutableStateFlow<UrlState> timeoutFlow;
    private final Set<PaywallWebviewUrl> untriedUrls;
    private final List<PaywallWebviewUrl> urls;

    public /* synthetic */ WebviewFallbackClient(PaywallWebviewUrl.Config config, CoroutineScope coroutineScope, CoroutineScope coroutineScope2, Function1 function1, Function0 function0, Function2 function2, LocalResourceHandler localResourceHandler, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(config, coroutineScope, coroutineScope2, function1, function0, function2, (i & 64) != 0 ? null : localResourceHandler);
    }

    /* JADX INFO: compiled from: WebviewFallbackClient.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$MaxAttemptsReachedException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class MaxAttemptsReachedException extends Exception {
        public MaxAttemptsReachedException() {
            super("Max attempts reached");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WebviewFallbackClient(PaywallWebviewUrl.Config config, CoroutineScope ioScope, CoroutineScope mainScope, Function1<? super PaywallWebviewUrl, Unit> loadUrl, Function0<Unit> stopLoading, Function2<? super WebView, ? super RenderProcessGoneDetail, Unit> onCrashed, LocalResourceHandler localResourceHandler) {
        super("", ioScope, onCrashed, localResourceHandler);
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(mainScope, "mainScope");
        Intrinsics.checkNotNullParameter(loadUrl, "loadUrl");
        Intrinsics.checkNotNullParameter(stopLoading, "stopLoading");
        Intrinsics.checkNotNullParameter(onCrashed, "onCrashed");
        this.config = config;
        this.ioScope = ioScope;
        this.mainScope = mainScope;
        this.loadUrl = loadUrl;
        this.stopLoading = stopLoading;
        this.onCrashed = onCrashed;
        List<PaywallWebviewUrl> endpoints = config.getEndpoints();
        this.urls = endpoints;
        this.untriedUrls = CollectionsKt.toMutableSet(endpoints);
        this.timeoutFlow = StateFlowKt.MutableStateFlow(UrlState.None.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: WebviewFallbackClient.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\br\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;", "", "None", "Loading", "PageStarted", "PageError", "Timeout", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$Loading;", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$None;", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$PageError;", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$PageStarted;", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$Timeout;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    interface UrlState {

        /* JADX INFO: compiled from: WebviewFallbackClient.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$None;", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class None implements UrlState {
            public static final None INSTANCE = new None();

            private None() {
            }
        }

        /* JADX INFO: compiled from: WebviewFallbackClient.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$Loading;", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Loading implements UrlState {
            public static final Loading INSTANCE = new Loading();

            private Loading() {
            }
        }

        /* JADX INFO: compiled from: WebviewFallbackClient.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$PageStarted;", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class PageStarted implements UrlState {
            public static final PageStarted INSTANCE = new PageStarted();

            private PageStarted() {
            }
        }

        /* JADX INFO: compiled from: WebviewFallbackClient.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$PageError;", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class PageError implements UrlState {
            public static final PageError INSTANCE = new PageError();

            private PageError() {
            }
        }

        /* JADX INFO: compiled from: WebviewFallbackClient.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$Timeout;", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Timeout implements UrlState {
            public static final Timeout INSTANCE = new Timeout();

            private Timeout() {
            }
        }
    }

    @Override // com.superwall.sdk.paywall.view.webview.DefaultWebviewClient, android.webkit.WebViewClient
    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        Object next;
        boolean zContains$default;
        super.onPageStarted(view, url, favicon);
        Iterator<T> it = this.urls.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            PaywallWebviewUrl paywallWebviewUrl = (PaywallWebviewUrl) next;
            zContains$default = false;
            if (url != null) {
                zContains$default = StringsKt.contains$default((CharSequence) url, (CharSequence) paywallWebviewUrl.getUrl(), false, 2, (Object) null);
            }
        } while (!zContains$default);
        PaywallWebviewUrl paywallWebviewUrl2 = (PaywallWebviewUrl) next;
        if (paywallWebviewUrl2 != null) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05611(paywallWebviewUrl2.getTimeout(), null), 3, null);
        } else {
            throw new IllegalStateException(("No such URL(" + url + " in list of - " + CollectionsKt.joinToString$default(this.urls, null, null, null, 0, null, null, 63, null) + " ").toString());
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.WebviewFallbackClient$onPageStarted$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebviewFallbackClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.WebviewFallbackClient$onPageStarted$1", f = "WebviewFallbackClient.kt", i = {}, l = {74}, m = "invokeSuspend", n = {}, s = {})
    static final class C05611 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $timeoutForUrl;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05611(long j, Continuation<? super C05611> continuation) {
            super(2, continuation);
            this.$timeoutForUrl = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WebviewFallbackClient.this.new C05611(this.$timeoutForUrl, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05611) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object value;
            Object value2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    MutableStateFlow mutableStateFlow = WebviewFallbackClient.this.timeoutFlow;
                    do {
                        value2 = mutableStateFlow.getValue();
                    } while (!mutableStateFlow.compareAndSet(value2, UrlState.Loading.INSTANCE));
                    this.label = 1;
                    if (TimeoutKt.withTimeout(this.$timeoutForUrl, new AnonymousClass2(WebviewFallbackClient.this, null), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (TimeoutCancellationException unused) {
                BuildersKt__Builders_commonKt.launch$default(WebviewFallbackClient.this.mainScope, null, null, new AnonymousClass3(WebviewFallbackClient.this, null), 3, null);
                MutableStateFlow mutableStateFlow2 = WebviewFallbackClient.this.timeoutFlow;
                do {
                    value = mutableStateFlow2.getValue();
                } while (!mutableStateFlow2.compareAndSet(value, UrlState.Timeout.INSTANCE));
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.WebviewFallbackClient$onPageStarted$1$2, reason: invalid class name */
        /* JADX INFO: compiled from: WebviewFallbackClient.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.WebviewFallbackClient$onPageStarted$1$2", f = "WebviewFallbackClient.kt", i = {}, l = {MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super UrlState>, Object> {
            int label;
            final /* synthetic */ WebviewFallbackClient this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(WebviewFallbackClient webviewFallbackClient, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.this$0 = webviewFallbackClient;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super UrlState> continuation) {
                return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.WebviewFallbackClient$onPageStarted$1$2$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: WebviewFallbackClient.kt */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.WebviewFallbackClient$onPageStarted$1$2$1", f = "WebviewFallbackClient.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class C01271 extends SuspendLambda implements Function2<UrlState, Continuation<? super Boolean>, Object> {
                /* synthetic */ Object L$0;
                int label;

                C01271(Continuation<? super C01271> continuation) {
                    super(2, continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C01271 c01271 = new C01271(continuation);
                    c01271.L$0 = obj;
                    return c01271;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(UrlState urlState, Continuation<? super Boolean> continuation) {
                    return ((C01271) create(urlState, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    UrlState urlState = (UrlState) this.L$0;
                    return Boxing.boxBoolean((urlState instanceof UrlState.PageStarted) || (urlState instanceof UrlState.PageError));
                }
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                Object objFirst = FlowKt.first(this.this$0.timeoutFlow, new C01271(null), this);
                return objFirst == coroutine_suspended ? coroutine_suspended : objFirst;
            }
        }

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.WebviewFallbackClient$onPageStarted$1$3, reason: invalid class name */
        /* JADX INFO: compiled from: WebviewFallbackClient.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.WebviewFallbackClient$onPageStarted$1$3", f = "WebviewFallbackClient.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ WebviewFallbackClient this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass3(WebviewFallbackClient webviewFallbackClient, Continuation<? super AnonymousClass3> continuation) {
                super(2, continuation);
                this.this$0 = webviewFallbackClient;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass3(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.this$0.stopLoading.invoke();
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.WebviewFallbackClient$onLoadResource$1, reason: invalid class name */
    /* JADX INFO: compiled from: WebviewFallbackClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.WebviewFallbackClient$onLoadResource$1", f = "WebviewFallbackClient.kt", i = {}, l = {97}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WebviewFallbackClient.this.new AnonymousClass1(continuation);
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
                if (Intrinsics.areEqual(WebviewFallbackClient.this.timeoutFlow.getValue(), UrlState.Loading.INSTANCE)) {
                    this.label = 1;
                    if (WebviewFallbackClient.this.timeoutFlow.emit(UrlState.PageStarted.INSTANCE, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
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
    public void onLoadResource(WebView view, String url) {
        BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new AnonymousClass1(null), 3, null);
        super.onLoadResource(view, url);
    }

    public final PaywallWebviewUrl nextUrl$superwall_release() throws MaxAttemptsReachedException {
        if (this.failureCount < this.config.getMaxAttempts()) {
            this.failureCount++;
            Set<PaywallWebviewUrl> set = this.untriedUrls;
            if (!(set instanceof Collection) || !set.isEmpty()) {
                Iterator<T> it = set.iterator();
                while (it.hasNext()) {
                    if (((PaywallWebviewUrl) it.next()).getScore() != 0) {
                        Set<PaywallWebviewUrl> set2 = this.untriedUrls;
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : set2) {
                            if (((PaywallWebviewUrl) obj).getScore() != 0) {
                                arrayList.add(obj);
                            }
                        }
                        return nextWeightedUrl(arrayList);
                    }
                }
            }
            return nextWeightedUrl(this.untriedUrls);
        }
        throw new MaxAttemptsReachedException();
    }

    @Override // android.webkit.WebViewClient
    public void onPageCommitVisible(WebView view, String url) {
        super.onPageCommitVisible(view, url);
        this.failureCount = 0;
    }

    static /* synthetic */ PaywallWebviewUrl evaluateNext$default(WebviewFallbackClient webviewFallbackClient, int i, Collection collection, int i2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        return webviewFallbackClient.evaluateNext(i, collection, i2);
    }

    private final PaywallWebviewUrl evaluateNext(int chosenNumber, Collection<PaywallWebviewUrl> untriedUrls, int accumulatedScore) {
        while (true) {
            Collection<PaywallWebviewUrl> collection = untriedUrls;
            PaywallWebviewUrl paywallWebviewUrl = (PaywallWebviewUrl) CollectionsKt.firstOrNull(collection);
            if (paywallWebviewUrl == null) {
                throw new NoSuchElementException("No more URLs to evaluate");
            }
            accumulatedScore += paywallWebviewUrl.getScore();
            if (chosenNumber < accumulatedScore) {
                return paywallWebviewUrl;
            }
            untriedUrls = CollectionsKt.drop(collection, 1);
        }
    }

    private final PaywallWebviewUrl nextWeightedUrl(Collection<PaywallWebviewUrl> fromUrls) {
        Iterator<T> it = fromUrls.iterator();
        int score = 0;
        while (it.hasNext()) {
            score += ((PaywallWebviewUrl) it.next()).getScore();
        }
        if (score == 0) {
            PaywallWebviewUrl paywallWebviewUrl = (PaywallWebviewUrl) CollectionsKt.random(this.untriedUrls, Random.INSTANCE);
            this.untriedUrls.remove(paywallWebviewUrl);
            return paywallWebviewUrl;
        }
        PaywallWebviewUrl paywallWebviewUrlEvaluateNext = evaluateNext(RangesKt.random(RangesKt.until(0, score), Random.INSTANCE), this.untriedUrls, 0);
        this.untriedUrls.remove(paywallWebviewUrlEvaluateNext);
        return paywallWebviewUrlEvaluateNext;
    }

    @Override // com.superwall.sdk.paywall.view.webview.DefaultWebviewClient, android.webkit.WebViewClient
    public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
        MutableStateFlow<UrlState> mutableStateFlow = this.timeoutFlow;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), UrlState.PageError.INSTANCE)) {
        }
        super.onReceivedHttpError(view, request, errorResponse);
    }

    public final void loadWithFallback$superwall_release() {
        if (this.urls.isEmpty()) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new WebviewFallbackClient$loadWithFallback$1(this, null), 3, null);
            return;
        }
        try {
            PaywallWebviewUrl paywallWebviewUrlNextUrl$superwall_release = nextUrl$superwall_release();
            if (this.failureCount > 0) {
                BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new WebviewFallbackClient$loadWithFallback$2(this, null), 3, null);
            }
            BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new WebviewFallbackClient$loadWithFallback$3(this, paywallWebviewUrlNextUrl$superwall_release, null), 3, null);
        } catch (MaxAttemptsReachedException unused) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new WebviewFallbackClient$loadWithFallback$url$2(this, null), 3, null);
        } catch (NoSuchElementException unused2) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new WebviewFallbackClient$loadWithFallback$url$1(this, null), 3, null);
        }
    }

    @Override // com.superwall.sdk.paywall.view.webview.DefaultWebviewClient, android.webkit.WebViewClient
    public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        MutableStateFlow<UrlState> mutableStateFlow = this.timeoutFlow;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), UrlState.PageError.INSTANCE)) {
        }
        super.onReceivedError(view, request, error);
        loadWithFallback$superwall_release();
    }
}
