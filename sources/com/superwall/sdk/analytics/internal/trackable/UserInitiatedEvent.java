package com.superwall.sdk.analytics.internal.trackable;

import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserIntiatedEvents.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0001\u0014B7\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR&\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u000f\u0082\u0001\u0001\u0015¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableUserInitiatedEvent;", "rawName", "", "canImplicitlyTriggerPaywall", "", "audienceFilterParams", "", "", "isFeatureGatable", "<init>", "(Ljava/lang/String;ZLjava/util/Map;Z)V", "getRawName", "()Ljava/lang/String;", "getCanImplicitlyTriggerPaywall", "()Z", "getAudienceFilterParams", "()Ljava/util/Map;", "setAudienceFilterParams", "(Ljava/util/Map;)V", "Track", "Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent$Track;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class UserInitiatedEvent implements TrackableUserInitiatedEvent {
    private Map<String, ? extends Object> audienceFilterParams;
    private final boolean canImplicitlyTriggerPaywall;
    private final boolean isFeatureGatable;
    private final String rawName;

    public /* synthetic */ UserInitiatedEvent(String str, boolean z, Map map, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, map, z2);
    }

    private UserInitiatedEvent(String str, boolean z, Map<String, ? extends Object> map, boolean z2) {
        this.rawName = str;
        this.canImplicitlyTriggerPaywall = z;
        this.audienceFilterParams = map;
        this.isFeatureGatable = z2;
    }

    @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
    public String getRawName() {
        return this.rawName;
    }

    @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
    public boolean getCanImplicitlyTriggerPaywall() {
        return this.canImplicitlyTriggerPaywall;
    }

    public /* synthetic */ UserInitiatedEvent(String str, boolean z, Map map, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, (i & 4) != 0 ? MapsKt.emptyMap() : map, z2, null);
    }

    @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
    public Map<String, Object> getAudienceFilterParams() {
        return this.audienceFilterParams;
    }

    public void setAudienceFilterParams(Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.audienceFilterParams = map;
    }

    /* JADX INFO: renamed from: isFeatureGatable, reason: from getter */
    public final boolean getIsFeatureGatable() {
        return this.isFeatureGatable;
    }

    /* JADX INFO: compiled from: UserIntiatedEvents.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\n\u0010\u000bJ*\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0\rj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t`\u000eH\u0096@¢\u0006\u0002\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent$Track;", "Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;", "rawName", "", "canImplicitlyTriggerPaywall", "", "isFeatureGatable", "customParameters", "", "", "<init>", "(Ljava/lang/String;ZZLjava/util/Map;)V", "getSuperwallParameters", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Track extends UserInitiatedEvent {
        public /* synthetic */ Track(String str, boolean z, boolean z2, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, z, z2, (i & 8) != 0 ? MapsKt.emptyMap() : map);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Track(String rawName, boolean z, boolean z2, Map<String, ? extends Object> customParameters) {
            super(rawName, z, customParameters, z2, null);
            Intrinsics.checkNotNullParameter(rawName, "rawName");
            Intrinsics.checkNotNullParameter(customParameters, "customParameters");
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return MapsKt.hashMapOf(TuplesKt.to("is_feature_gatable", Boxing.boxBoolean(getIsFeatureGatable())));
        }
    }
}
