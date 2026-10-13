package com.swmansion.pulsar.types;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Audio.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/swmansion/pulsar/types/OscillatorConfig;", "", "frequency", "Lcom/swmansion/pulsar/types/FrequencyConfig;", "envelope", "Lcom/swmansion/pulsar/types/EnvelopeConfig;", "waveform", "Lcom/swmansion/pulsar/types/WaveformType;", "<init>", "(Lcom/swmansion/pulsar/types/FrequencyConfig;Lcom/swmansion/pulsar/types/EnvelopeConfig;Lcom/swmansion/pulsar/types/WaveformType;)V", "getFrequency", "()Lcom/swmansion/pulsar/types/FrequencyConfig;", "getEnvelope", "()Lcom/swmansion/pulsar/types/EnvelopeConfig;", "getWaveform", "()Lcom/swmansion/pulsar/types/WaveformType;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class OscillatorConfig {
    private final EnvelopeConfig envelope;
    private final FrequencyConfig frequency;
    private final WaveformType waveform;

    public static /* synthetic */ OscillatorConfig copy$default(OscillatorConfig oscillatorConfig, FrequencyConfig frequencyConfig, EnvelopeConfig envelopeConfig, WaveformType waveformType, int i, Object obj) {
        if ((i & 1) != 0) {
            frequencyConfig = oscillatorConfig.frequency;
        }
        if ((i & 2) != 0) {
            envelopeConfig = oscillatorConfig.envelope;
        }
        if ((i & 4) != 0) {
            waveformType = oscillatorConfig.waveform;
        }
        return oscillatorConfig.copy(frequencyConfig, envelopeConfig, waveformType);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final FrequencyConfig getFrequency() {
        return this.frequency;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final EnvelopeConfig getEnvelope() {
        return this.envelope;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final WaveformType getWaveform() {
        return this.waveform;
    }

    public final OscillatorConfig copy(FrequencyConfig frequency, EnvelopeConfig envelope, WaveformType waveform) {
        Intrinsics.checkNotNullParameter(frequency, "frequency");
        Intrinsics.checkNotNullParameter(envelope, "envelope");
        Intrinsics.checkNotNullParameter(waveform, "waveform");
        return new OscillatorConfig(frequency, envelope, waveform);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OscillatorConfig)) {
            return false;
        }
        OscillatorConfig oscillatorConfig = (OscillatorConfig) other;
        return Intrinsics.areEqual(this.frequency, oscillatorConfig.frequency) && Intrinsics.areEqual(this.envelope, oscillatorConfig.envelope) && this.waveform == oscillatorConfig.waveform;
    }

    public int hashCode() {
        return (((this.frequency.hashCode() * 31) + this.envelope.hashCode()) * 31) + this.waveform.hashCode();
    }

    public String toString() {
        return "OscillatorConfig(frequency=" + this.frequency + ", envelope=" + this.envelope + ", waveform=" + this.waveform + ")";
    }

    public OscillatorConfig(FrequencyConfig frequency, EnvelopeConfig envelope, WaveformType waveform) {
        Intrinsics.checkNotNullParameter(frequency, "frequency");
        Intrinsics.checkNotNullParameter(envelope, "envelope");
        Intrinsics.checkNotNullParameter(waveform, "waveform");
        this.frequency = frequency;
        this.envelope = envelope;
        this.waveform = waveform;
    }

    public final FrequencyConfig getFrequency() {
        return this.frequency;
    }

    public final EnvelopeConfig getEnvelope() {
        return this.envelope;
    }

    public final WaveformType getWaveform() {
        return this.waveform;
    }
}
