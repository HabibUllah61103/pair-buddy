package com.superwall.sdk.analytics.session;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: AppSessionManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H¦@¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/analytics/session/AppManagerDelegate;", "", "didUpdateAppSession", "", "appSession", "Lcom/superwall/sdk/analytics/session/AppSession;", "(Lcom/superwall/sdk/analytics/session/AppSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface AppManagerDelegate {
    Object didUpdateAppSession(AppSession appSession, Continuation<? super Unit> continuation);
}
