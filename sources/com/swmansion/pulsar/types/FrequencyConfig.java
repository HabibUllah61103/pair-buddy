package com.swmansion.pulsar.types;

import kotlin.Metadata;

/* JADX INFO: compiled from: Audio.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/swmansion/pulsar/types/FrequencyConfig;", "", "initial", "", "final", "decayTime", "<init>", "(DDD)V", "getInitial", "()D", "getFinal", "getDecayTime", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class FrequencyConfig {
    private final double decayTime;
    private final double final;
    private final double initial;

    public static /* synthetic */ FrequencyConfig copy$default(FrequencyConfig frequencyConfig, double d, double d2, double d3, int i, Object obj) {
        if ((i & 1) != 0) {
            d = frequencyConfig.initial;
        }
        double d4 = d;
        if ((i & 2) != 0) {
            d2 = frequencyConfig.final;
        }
        double d5 = d2;
        if ((i & 4) != 0) {
            d3 = frequencyConfig.decayTime;
        }
        return frequencyConfig.copy(d4, d5, d3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final double getInitial() {
        return this.initial;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final double getFinal() {
        return this.final;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final double getDecayTime() {
        return this.decayTime;
    }

    public final FrequencyConfig copy(double initial, double d, double decayTime) {
        return new FrequencyConfig(initial, d, decayTime);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FrequencyConfig)) {
            return false;
        }
        FrequencyConfig frequencyConfig = (FrequencyConfig) other;
        return Double.compare(this.initial, frequencyConfig.initial) == 0 && Double.compare(this.final, frequencyConfig.final) == 0 && Double.compare(this.decayTime, frequencyConfig.decayTime) == 0;
    }

    public int hashCode() {
        return (((Double.hashCode(this.initial) * 31) + Double.hashCode(this.final)) * 31) + Double.hashCode(this.decayTime);
    }

    public String toString() {
        return "FrequencyConfig(initial=" + this.initial + ", final=" + this.final + ", decayTime=" + this.decayTime + ")";
    }

    public FrequencyConfig(double d, double d2, double d3) {
        this.initial = d;
        this.final = d2;
        this.decayTime = d3;
    }

    public final double getInitial() {
        return this.initial;
    }

    public final double getFinal() {
        return this.final;
    }

    public final double getDecayTime() {
        return this.decayTime;
    }
}
