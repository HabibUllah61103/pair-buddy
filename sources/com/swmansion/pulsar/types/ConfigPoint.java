package com.swmansion.pulsar.types;

import kotlin.Metadata;

/* JADX INFO: compiled from: Points.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/swmansion/pulsar/types/ConfigPoint;", "", "time", "", "amplitude", "", "frequency", "<init>", "(JFF)V", "getTime", "()J", "getAmplitude", "()F", "getFrequency", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ConfigPoint {
    private final float amplitude;
    private final float frequency;
    private final long time;

    public static /* synthetic */ ConfigPoint copy$default(ConfigPoint configPoint, long j, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = configPoint.time;
        }
        if ((i & 2) != 0) {
            f = configPoint.amplitude;
        }
        if ((i & 4) != 0) {
            f2 = configPoint.frequency;
        }
        return configPoint.copy(j, f, f2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getTime() {
        return this.time;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final float getAmplitude() {
        return this.amplitude;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final float getFrequency() {
        return this.frequency;
    }

    public final ConfigPoint copy(long time, float amplitude, float frequency) {
        return new ConfigPoint(time, amplitude, frequency);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfigPoint)) {
            return false;
        }
        ConfigPoint configPoint = (ConfigPoint) other;
        return this.time == configPoint.time && Float.compare(this.amplitude, configPoint.amplitude) == 0 && Float.compare(this.frequency, configPoint.frequency) == 0;
    }

    public int hashCode() {
        return (((Long.hashCode(this.time) * 31) + Float.hashCode(this.amplitude)) * 31) + Float.hashCode(this.frequency);
    }

    public String toString() {
        return "ConfigPoint(time=" + this.time + ", amplitude=" + this.amplitude + ", frequency=" + this.frequency + ")";
    }

    public ConfigPoint(long j, float f, float f2) {
        this.time = j;
        this.amplitude = f;
        this.frequency = f2;
    }

    public final long getTime() {
        return this.time;
    }

    public final float getAmplitude() {
        return this.amplitude;
    }

    public final float getFrequency() {
        return this.frequency;
    }
}
