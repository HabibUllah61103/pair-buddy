package com.superwall.sdk.paywall.view.webview.messaging;

import android.webkit.JavascriptInterface;
import android.webkit.WebViewClient;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.MainScope;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: compiled from: RawWebMessageHandler.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler;", "Landroid/webkit/WebViewClient;", "delegate", "Lcom/superwall/sdk/paywall/view/webview/messaging/WebEventDelegate;", "mainScope", "Lcom/superwall/sdk/misc/MainScope;", "<init>", "(Lcom/superwall/sdk/paywall/view/webview/messaging/WebEventDelegate;Lcom/superwall/sdk/misc/MainScope;)V", "postMessage", "", "message", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RawWebMessageHandler extends WebViewClient {
    private final WebEventDelegate delegate;
    private final MainScope mainScope;

    public /* synthetic */ RawWebMessageHandler(WebEventDelegate webEventDelegate, MainScope mainScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(webEventDelegate, (i & 2) != 0 ? new MainScope(null, 1, null) : mainScope);
    }

    public RawWebMessageHandler(WebEventDelegate delegate, MainScope mainScope) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(mainScope, "mainScope");
        this.delegate = delegate;
        this.mainScope = mainScope;
    }

    @JavascriptInterface
    public final void postMessage(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Did Receive Message", MapsKt.hashMapOf(TuplesKt.to("message", message)), null, 16, null);
        byte[] bytes = message.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        Object wrappedPaywallMessages = PaywallMessageKt.parseWrappedPaywallMessages(StringsKt.decodeToString(bytes));
        if (Result.m11244exceptionOrNullimpl(wrappedPaywallMessages) == null) {
            WrappedPaywallMessages wrappedPaywallMessages2 = (WrappedPaywallMessages) wrappedPaywallMessages;
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Body Converted", MapsKt.hashMapOf(TuplesKt.to("message", message), TuplesKt.to("events", wrappedPaywallMessages2)), null, 16, null);
            Iterator<T> it = wrappedPaywallMessages2.getPayload().getMessages().iterator();
            while (it.hasNext()) {
                BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new RawWebMessageHandler$postMessage$1$1$1(this, (PaywallMessage) it.next(), null), 3, null);
            }
            return;
        }
        Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.paywallView, "Invalid WrappedPaywallEvent", MapsKt.hashMapOf(TuplesKt.to("message", message)), null, 16, null);
    }
}
