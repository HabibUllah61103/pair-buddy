package com.swmansion.pulsar.types;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Audio.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J)\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/swmansion/pulsar/types/AudioPatternConfig;", "", "discreteData", "", "Lcom/swmansion/pulsar/types/DiscreteAudioConfig;", "continuousData", "Lcom/swmansion/pulsar/types/ContinuousAudioConfig;", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "getDiscreteData", "()Ljava/util/List;", "getContinuousData", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class AudioPatternConfig {
    private final List<ContinuousAudioConfig> continuousData;
    private final List<DiscreteAudioConfig> discreteData;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AudioPatternConfig copy$default(AudioPatternConfig audioPatternConfig, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = audioPatternConfig.discreteData;
        }
        if ((i & 2) != 0) {
            list2 = audioPatternConfig.continuousData;
        }
        return audioPatternConfig.copy(list, list2);
    }

    public final List<DiscreteAudioConfig> component1() {
        return this.discreteData;
    }

    public final List<ContinuousAudioConfig> component2() {
        return this.continuousData;
    }

    public final AudioPatternConfig copy(List<DiscreteAudioConfig> discreteData, List<ContinuousAudioConfig> continuousData) {
        Intrinsics.checkNotNullParameter(discreteData, "discreteData");
        Intrinsics.checkNotNullParameter(continuousData, "continuousData");
        return new AudioPatternConfig(discreteData, continuousData);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AudioPatternConfig)) {
            return false;
        }
        AudioPatternConfig audioPatternConfig = (AudioPatternConfig) other;
        return Intrinsics.areEqual(this.discreteData, audioPatternConfig.discreteData) && Intrinsics.areEqual(this.continuousData, audioPatternConfig.continuousData);
    }

    public int hashCode() {
        return (this.discreteData.hashCode() * 31) + this.continuousData.hashCode();
    }

    public String toString() {
        return "AudioPatternConfig(discreteData=" + this.discreteData + ", continuousData=" + this.continuousData + ")";
    }

    public AudioPatternConfig(List<DiscreteAudioConfig> discreteData, List<ContinuousAudioConfig> continuousData) {
        Intrinsics.checkNotNullParameter(discreteData, "discreteData");
        Intrinsics.checkNotNullParameter(continuousData, "continuousData");
        this.discreteData = discreteData;
        this.continuousData = continuousData;
    }

    public final List<DiscreteAudioConfig> getDiscreteData() {
        return this.discreteData;
    }

    public final List<ContinuousAudioConfig> getContinuousData() {
        return this.continuousData;
    }
}
