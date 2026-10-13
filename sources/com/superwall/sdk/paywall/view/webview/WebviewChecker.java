package com.superwall.sdk.paywall.view.webview;

import android.webkit.WebView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: SWWebView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;", "", "<init>", "()V", "webviewExists", "", "getWebviewExists", "()Z", "webviewExists$delegate", "Lkotlin/Lazy;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class WebviewChecker {
    public static final WebviewChecker INSTANCE = new WebviewChecker();

    /* JADX INFO: renamed from: webviewExists$delegate, reason: from kotlin metadata */
    private static final Lazy webviewExists = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.paywall.view.webview.WebviewChecker$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(WebviewChecker.webviewExists_delegate$lambda$1());
        }
    });

    private WebviewChecker() {
    }

    public final boolean getWebviewExists() {
        return ((Boolean) webviewExists.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean webviewExists_delegate$lambda$1() {
        try {
            return WebView.getCurrentWebViewPackage() != null;
        } catch (Throwable unused) {
            return false;
        }
    }
}
