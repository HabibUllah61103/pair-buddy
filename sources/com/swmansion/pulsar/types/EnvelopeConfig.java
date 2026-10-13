package com.swmansion.pulsar.types;

import kotlin.Metadata;

/* JADX INFO: compiled from: Audio.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J;\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/swmansion/pulsar/types/EnvelopeConfig;", "", "attack", "", "decay", "sustainLevel", "sustainDuration", "release", "<init>", "(DDDDD)V", "getAttack", "()D", "getDecay", "getSustainLevel", "getSustainDuration", "getRelease", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class EnvelopeConfig {
    private final double attack;
    private final double decay;
    private final double release;
    private final double sustainDuration;
    private final double sustainLevel;

    public static /* synthetic */ EnvelopeConfig copy$default(EnvelopeConfig envelopeConfig, double d, double d2, double d3, double d4, double d5, int i, Object obj) {
        if ((i & 1) != 0) {
            d = envelopeConfig.attack;
        }
        double d6 = d;
        if ((i & 2) != 0) {
            d2 = envelopeConfig.decay;
        }
        return envelopeConfig.copy(d6, d2, (i & 4) != 0 ? envelopeConfig.sustainLevel : d3, (i & 8) != 0 ? envelopeConfig.sustainDuration : d4, (i & 16) != 0 ? envelopeConfig.release : d5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final double getAttack() {
        return this.attack;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final double getDecay() {
        return this.decay;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final double getSustainLevel() {
        return this.sustainLevel;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final double getSustainDuration() {
        return this.sustainDuration;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final double getRelease() {
        return this.release;
    }

    public final EnvelopeConfig copy(double attack, double decay, double sustainLevel, double sustainDuration, double release) {
        return new EnvelopeConfig(attack, decay, sustainLevel, sustainDuration, release);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EnvelopeConfig)) {
            return false;
        }
        EnvelopeConfig envelopeConfig = (EnvelopeConfig) other;
        return Double.compare(this.attack, envelopeConfig.attack) == 0 && Double.compare(this.decay, envelopeConfig.decay) == 0 && Double.compare(this.sustainLevel, envelopeConfig.sustainLevel) == 0 && Double.compare(this.sustainDuration, envelopeConfig.sustainDuration) == 0 && Double.compare(this.release, envelopeConfig.release) == 0;
    }

    public int hashCode() {
        return (((((((Double.hashCode(this.attack) * 31) + Double.hashCode(this.decay)) * 31) + Double.hashCode(this.sustainLevel)) * 31) + Double.hashCode(this.sustainDuration)) * 31) + Double.hashCode(this.release);
    }

    public String toString() {
        return "EnvelopeConfig(attack=" + this.attack + ", decay=" + this.decay + ", sustainLevel=" + this.sustainLevel + ", sustainDuration=" + this.sustainDuration + ", release=" + this.release + ")";
    }

    public EnvelopeConfig(double d, double d2, double d3, double d4, double d5) {
        this.attack = d;
        this.decay = d2;
        this.sustainLevel = d3;
        this.sustainDuration = d4;
        this.release = d5;
    }

    public final double getAttack() {
        return this.attack;
    }

    public final double getDecay() {
        return this.decay;
    }

    public final double getSustainLevel() {
        return this.sustainLevel;
    }

    public final double getSustainDuration() {
        return this.sustainDuration;
    }

    public final double getRelease() {
        return this.release;
    }
}
