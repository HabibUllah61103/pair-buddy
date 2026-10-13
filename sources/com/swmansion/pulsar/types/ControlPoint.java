package com.swmansion.pulsar.types;

import kotlin.Metadata;

/* JADX INFO: compiled from: Points.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/swmansion/pulsar/types/ControlPoint;", "", "intensity", "", "sharpness", "duration", "", "<init>", "(FFJ)V", "getIntensity", "()F", "getSharpness", "getDuration", "()J", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ControlPoint {
    private final long duration;
    private final float intensity;
    private final float sharpness;

    public static /* synthetic */ ControlPoint copy$default(ControlPoint controlPoint, float f, float f2, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            f = controlPoint.intensity;
        }
        if ((i & 2) != 0) {
            f2 = controlPoint.sharpness;
        }
        if ((i & 4) != 0) {
            j = controlPoint.duration;
        }
        return controlPoint.copy(f, f2, j);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final float getIntensity() {
        return this.intensity;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final float getSharpness() {
        return this.sharpness;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getDuration() {
        return this.duration;
    }

    public final ControlPoint copy(float intensity, float sharpness, long duration) {
        return new ControlPoint(intensity, sharpness, duration);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ControlPoint)) {
            return false;
        }
        ControlPoint controlPoint = (ControlPoint) other;
        return Float.compare(this.intensity, controlPoint.intensity) == 0 && Float.compare(this.sharpness, controlPoint.sharpness) == 0 && this.duration == controlPoint.duration;
    }

    public int hashCode() {
        return (((Float.hashCode(this.intensity) * 31) + Float.hashCode(this.sharpness)) * 31) + Long.hashCode(this.duration);
    }

    public String toString() {
        return "ControlPoint(intensity=" + this.intensity + ", sharpness=" + this.sharpness + ", duration=" + this.duration + ")";
    }

    public ControlPoint(float f, float f2, long j) {
        this.intensity = f;
        this.sharpness = f2;
        this.duration = j;
    }

    public final float getIntensity() {
        return this.intensity;
    }

    public final float getSharpness() {
        return this.sharpness;
    }

    public final long getDuration() {
        return this.duration;
    }
}
