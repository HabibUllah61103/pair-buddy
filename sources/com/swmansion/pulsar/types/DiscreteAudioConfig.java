package com.swmansion.pulsar.types;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Audio.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/swmansion/pulsar/types/DiscreteAudioConfig;", "", "oscillator", "Lcom/swmansion/pulsar/types/OscillatorConfig;", "timestamp", "", "volume", "", "<init>", "(Lcom/swmansion/pulsar/types/OscillatorConfig;DF)V", "getOscillator", "()Lcom/swmansion/pulsar/types/OscillatorConfig;", "getTimestamp", "()D", "getVolume", "()F", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class DiscreteAudioConfig {
    private final OscillatorConfig oscillator;
    private final double timestamp;
    private final float volume;

    public static /* synthetic */ DiscreteAudioConfig copy$default(DiscreteAudioConfig discreteAudioConfig, OscillatorConfig oscillatorConfig, double d, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            oscillatorConfig = discreteAudioConfig.oscillator;
        }
        if ((i & 2) != 0) {
            d = discreteAudioConfig.timestamp;
        }
        if ((i & 4) != 0) {
            f = discreteAudioConfig.volume;
        }
        return discreteAudioConfig.copy(oscillatorConfig, d, f);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final OscillatorConfig getOscillator() {
        return this.oscillator;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final double getTimestamp() {
        return this.timestamp;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final float getVolume() {
        return this.volume;
    }

    public final DiscreteAudioConfig copy(OscillatorConfig oscillator, double timestamp, float volume) {
        Intrinsics.checkNotNullParameter(oscillator, "oscillator");
        return new DiscreteAudioConfig(oscillator, timestamp, volume);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DiscreteAudioConfig)) {
            return false;
        }
        DiscreteAudioConfig discreteAudioConfig = (DiscreteAudioConfig) other;
        return Intrinsics.areEqual(this.oscillator, discreteAudioConfig.oscillator) && Double.compare(this.timestamp, discreteAudioConfig.timestamp) == 0 && Float.compare(this.volume, discreteAudioConfig.volume) == 0;
    }

    public int hashCode() {
        return (((this.oscillator.hashCode() * 31) + Double.hashCode(this.timestamp)) * 31) + Float.hashCode(this.volume);
    }

    public String toString() {
        return "DiscreteAudioConfig(oscillator=" + this.oscillator + ", timestamp=" + this.timestamp + ", volume=" + this.volume + ")";
    }

    public DiscreteAudioConfig(OscillatorConfig oscillator, double d, float f) {
        Intrinsics.checkNotNullParameter(oscillator, "oscillator");
        this.oscillator = oscillator;
        this.timestamp = d;
        this.volume = f;
    }

    public final OscillatorConfig getOscillator() {
        return this.oscillator;
    }

    public final double getTimestamp() {
        return this.timestamp;
    }

    public final float getVolume() {
        return this.volume;
    }
}
