package com.swmansion.pulsar.types;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Audio.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J)\u0010\r\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/swmansion/pulsar/types/AudioDataConfig;", "", "amplitude", "", "Lcom/swmansion/pulsar/types/ValuePoint;", "frequency", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "getAmplitude", "()Ljava/util/List;", "getFrequency", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class AudioDataConfig {
    private final List<ValuePoint> amplitude;
    private final List<ValuePoint> frequency;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AudioDataConfig copy$default(AudioDataConfig audioDataConfig, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = audioDataConfig.amplitude;
        }
        if ((i & 2) != 0) {
            list2 = audioDataConfig.frequency;
        }
        return audioDataConfig.copy(list, list2);
    }

    public final List<ValuePoint> component1() {
        return this.amplitude;
    }

    public final List<ValuePoint> component2() {
        return this.frequency;
    }

    public final AudioDataConfig copy(List<ValuePoint> amplitude, List<ValuePoint> frequency) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        Intrinsics.checkNotNullParameter(frequency, "frequency");
        return new AudioDataConfig(amplitude, frequency);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AudioDataConfig)) {
            return false;
        }
        AudioDataConfig audioDataConfig = (AudioDataConfig) other;
        return Intrinsics.areEqual(this.amplitude, audioDataConfig.amplitude) && Intrinsics.areEqual(this.frequency, audioDataConfig.frequency);
    }

    public int hashCode() {
        return (this.amplitude.hashCode() * 31) + this.frequency.hashCode();
    }

    public String toString() {
        return "AudioDataConfig(amplitude=" + this.amplitude + ", frequency=" + this.frequency + ")";
    }

    public AudioDataConfig(List<ValuePoint> amplitude, List<ValuePoint> frequency) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        Intrinsics.checkNotNullParameter(frequency, "frequency");
        this.amplitude = amplitude;
        this.frequency = frequency;
    }

    public final List<ValuePoint> getAmplitude() {
        return this.amplitude;
    }

    public final List<ValuePoint> getFrequency() {
        return this.frequency;
    }
}
