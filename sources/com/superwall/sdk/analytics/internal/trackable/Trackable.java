package com.superwall.sdk.analytics.internal.trackable;

import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: Trackable.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0007H¦@¢\u0006\u0002\u0010\u000fR\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/Trackable;", "", "rawName", "", "getRawName", "()Ljava/lang/String;", "audienceFilterParams", "", "getAudienceFilterParams", "()Ljava/util/Map;", "canImplicitlyTriggerPaywall", "", "getCanImplicitlyTriggerPaywall", "()Z", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface Trackable {
    Map<String, Object> getAudienceFilterParams();

    boolean getCanImplicitlyTriggerPaywall();

    String getRawName();

    Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation);
}
