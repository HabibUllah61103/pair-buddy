package com.fourplex.lovio;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DistanceWidget.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B?\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\tHÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003JR\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u0005HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\t2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0014R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011¨\u0006#"}, d2 = {"Lcom/fourplex/lovio/DistancePayload;", "", "distanceMeters", "", "selfUpdatedAt", "", "partnerUpdatedAt", "computedAt", "isStale", "", "trackingState", "<init>", "(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V", "getDistanceMeters", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getSelfUpdatedAt", "()Ljava/lang/String;", "getPartnerUpdatedAt", "getComputedAt", "()Z", "getTrackingState", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/fourplex/lovio/DistancePayload;", "equals", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class DistancePayload {
    private final String computedAt;
    private final Double distanceMeters;
    private final boolean isStale;
    private final String partnerUpdatedAt;
    private final String selfUpdatedAt;
    private final String trackingState;

    public static /* synthetic */ DistancePayload copy$default(DistancePayload distancePayload, Double d, String str, String str2, String str3, boolean z, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            d = distancePayload.distanceMeters;
        }
        if ((i & 2) != 0) {
            str = distancePayload.selfUpdatedAt;
        }
        if ((i & 4) != 0) {
            str2 = distancePayload.partnerUpdatedAt;
        }
        if ((i & 8) != 0) {
            str3 = distancePayload.computedAt;
        }
        if ((i & 16) != 0) {
            z = distancePayload.isStale;
        }
        if ((i & 32) != 0) {
            str4 = distancePayload.trackingState;
        }
        boolean z2 = z;
        String str5 = str4;
        return distancePayload.copy(d, str, str2, str3, z2, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Double getDistanceMeters() {
        return this.distanceMeters;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSelfUpdatedAt() {
        return this.selfUpdatedAt;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPartnerUpdatedAt() {
        return this.partnerUpdatedAt;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getComputedAt() {
        return this.computedAt;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getIsStale() {
        return this.isStale;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTrackingState() {
        return this.trackingState;
    }

    public final DistancePayload copy(Double distanceMeters, String selfUpdatedAt, String partnerUpdatedAt, String computedAt, boolean isStale, String trackingState) {
        Intrinsics.checkNotNullParameter(trackingState, "trackingState");
        return new DistancePayload(distanceMeters, selfUpdatedAt, partnerUpdatedAt, computedAt, isStale, trackingState);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DistancePayload)) {
            return false;
        }
        DistancePayload distancePayload = (DistancePayload) other;
        return Intrinsics.areEqual((Object) this.distanceMeters, (Object) distancePayload.distanceMeters) && Intrinsics.areEqual(this.selfUpdatedAt, distancePayload.selfUpdatedAt) && Intrinsics.areEqual(this.partnerUpdatedAt, distancePayload.partnerUpdatedAt) && Intrinsics.areEqual(this.computedAt, distancePayload.computedAt) && this.isStale == distancePayload.isStale && Intrinsics.areEqual(this.trackingState, distancePayload.trackingState);
    }

    public int hashCode() {
        Double d = this.distanceMeters;
        int iHashCode = (d == null ? 0 : d.hashCode()) * 31;
        String str = this.selfUpdatedAt;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.partnerUpdatedAt;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.computedAt;
        return ((((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31) + Boolean.hashCode(this.isStale)) * 31) + this.trackingState.hashCode();
    }

    public String toString() {
        return "DistancePayload(distanceMeters=" + this.distanceMeters + ", selfUpdatedAt=" + this.selfUpdatedAt + ", partnerUpdatedAt=" + this.partnerUpdatedAt + ", computedAt=" + this.computedAt + ", isStale=" + this.isStale + ", trackingState=" + this.trackingState + ")";
    }

    public DistancePayload(Double d, String str, String str2, String str3, boolean z, String trackingState) {
        Intrinsics.checkNotNullParameter(trackingState, "trackingState");
        this.distanceMeters = d;
        this.selfUpdatedAt = str;
        this.partnerUpdatedAt = str2;
        this.computedAt = str3;
        this.isStale = z;
        this.trackingState = trackingState;
    }

    public final Double getDistanceMeters() {
        return this.distanceMeters;
    }

    public final String getSelfUpdatedAt() {
        return this.selfUpdatedAt;
    }

    public final String getPartnerUpdatedAt() {
        return this.partnerUpdatedAt;
    }

    public final String getComputedAt() {
        return this.computedAt;
    }

    public final boolean isStale() {
        return this.isStale;
    }

    public final String getTrackingState() {
        return this.trackingState;
    }
}
