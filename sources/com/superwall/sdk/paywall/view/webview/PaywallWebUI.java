package com.superwall.sdk.paywall.view.webview;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.ImagesContract;
import com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: PaywallWebUI.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001:\u00014J!\u0010\b\u001a\u00020\t2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\t0\u000b¢\u0006\u0002\b\rH&J\b\u0010\u0012\u001a\u00020\tH&J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H&J\u0018\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H&JO\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001a26\u0010\u001b\u001a2\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(!\u0012\u0004\u0012\u00020\t0\u001cH&¢\u0006\u0004\b\"\u0010#J(\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020&2\u0016\u0010'\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010&\u0012\u0004\u0012\u00020\t\u0018\u00010\u000bH&J\b\u0010(\u001a\u00020\tH&J\u0010\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u000201H&J\u0010\u00102\u001a\u00020\t2\u0006\u00103\u001a\u000201H&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0012\u0010\u000e\u001a\u00020\u000fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010)\u001a\u0004\u0018\u00010*X¦\u000e¢\u0006\f\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00065"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;", "", "delegate", "Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;", "getDelegate", "()Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;", "setDelegate", "(Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;)V", "onView", "", "perform", "Lkotlin/Function1;", "Landroid/view/View;", "Lkotlin/ExtensionFunctionType;", "messageHandler", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;", "getMessageHandler", "()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;", "enableBackgroundRendering", "scrollBy", "x", "", "y", "scrollTo", "setup", ImagesContract.URL, "Lcom/superwall/sdk/models/paywall/PaywallURL;", "onRenderCrashed", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "didCrash", "priority", "setup-MkQ7Bds", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V", "evaluate", "code", "", "resultCallback", "destroyView", "onScrollChangeListener", "Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;", "getOnScrollChangeListener", "()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;", "setOnScrollChangeListener", "(Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;)V", "detach", "fromView", "Landroid/view/ViewGroup;", "attach", "toView", "OnScrollChangeListener", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface PaywallWebUI {

    /* JADX INFO: compiled from: PaywallWebUI.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H&¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;", "", "onScrollChanged", "", "currentHorizontalScroll", "", "currentVerticalScroll", "oldHorizontalScroll", "oldcurrentVerticalScroll", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface OnScrollChangeListener {
        void onScrollChanged(int currentHorizontalScroll, int currentVerticalScroll, int oldHorizontalScroll, int oldcurrentVerticalScroll);
    }

    void attach(ViewGroup toView);

    void destroyView();

    void detach(ViewGroup fromView);

    void enableBackgroundRendering();

    void evaluate(String code, Function1<? super String, Unit> resultCallback);

    PaywallUIDelegate getDelegate();

    PaywallMessageHandler getMessageHandler();

    OnScrollChangeListener getOnScrollChangeListener();

    void onView(Function1<? super View, Unit> perform);

    void scrollBy(int x, int y);

    void scrollTo(int x, int y);

    void setDelegate(PaywallUIDelegate paywallUIDelegate);

    void setOnScrollChangeListener(OnScrollChangeListener onScrollChangeListener);

    /* JADX INFO: renamed from: setup-MkQ7Bds, reason: not valid java name */
    void mo10746setupMkQ7Bds(String url, Function2<? super Boolean, ? super Integer, Unit> onRenderCrashed);
}
