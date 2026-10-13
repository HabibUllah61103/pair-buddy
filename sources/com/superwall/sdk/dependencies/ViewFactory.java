package com.superwall.sdk.dependencies;

import com.superwall.sdk.debug.DebugView;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.paywall.manager.PaywallViewCache;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.delegate.PaywallViewDelegateAdapter;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: FactoryProtocols.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH¦@¢\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH&¨\u0006\u000f"}, d2 = {"Lcom/superwall/sdk/dependencies/ViewFactory;", "", "makePaywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "paywall", "Lcom/superwall/sdk/models/paywall/Paywall;", "cache", "Lcom/superwall/sdk/paywall/manager/PaywallViewCache;", "delegate", "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;", "(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "makeDebugView", "Lcom/superwall/sdk/debug/DebugView;", "id", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface ViewFactory {
    DebugView makeDebugView(String id);

    Object makePaywallView(Paywall paywall, PaywallViewCache paywallViewCache, PaywallViewDelegateAdapter paywallViewDelegateAdapter, Continuation<? super PaywallView> continuation);
}
