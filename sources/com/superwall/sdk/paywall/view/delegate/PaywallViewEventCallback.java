package com.superwall.sdk.paywall.view.delegate;

import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.webview.messaging.PaywallWebEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: PaywallViewCallback.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;", "", "eventDidOccur", "", "paywallEvent", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", "paywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface PaywallViewEventCallback {
    Object eventDidOccur(PaywallWebEvent paywallWebEvent, PaywallView paywallView, Continuation<? super Unit> continuation);
}
