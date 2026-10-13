package com.swmansion.pulsar.types;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Audio.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/swmansion/pulsar/types/ContinuousAudioConfig;", "", "type", "", "data", "Lcom/swmansion/pulsar/types/AudioDataConfig;", "<init>", "(Ljava/lang/String;Lcom/swmansion/pulsar/types/AudioDataConfig;)V", "getType", "()Ljava/lang/String;", "getData", "()Lcom/swmansion/pulsar/types/AudioDataConfig;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ContinuousAudioConfig {
    private final AudioDataConfig data;
    private final String type;

    public static /* synthetic */ ContinuousAudioConfig copy$default(ContinuousAudioConfig continuousAudioConfig, String str, AudioDataConfig audioDataConfig, int i, Object obj) {
        if ((i & 1) != 0) {
            str = continuousAudioConfig.type;
        }
        if ((i & 2) != 0) {
            audioDataConfig = continuousAudioConfig.data;
        }
        return continuousAudioConfig.copy(str, audioDataConfig);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final AudioDataConfig getData() {
        return this.data;
    }

    public final ContinuousAudioConfig copy(String type, AudioDataConfig data) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        return new ContinuousAudioConfig(type, data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ContinuousAudioConfig)) {
            return false;
        }
        ContinuousAudioConfig continuousAudioConfig = (ContinuousAudioConfig) other;
        return Intrinsics.areEqual(this.type, continuousAudioConfig.type) && Intrinsics.areEqual(this.data, continuousAudioConfig.data);
    }

    public int hashCode() {
        return (this.type.hashCode() * 31) + this.data.hashCode();
    }

    public String toString() {
        return "ContinuousAudioConfig(type=" + this.type + ", data=" + this.data + ")";
    }

    public ContinuousAudioConfig(String type, AudioDataConfig data) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        this.type = type;
        this.data = data;
    }

    public final String getType() {
        return this.type;
    }

    public final AudioDataConfig getData() {
        return this.data;
    }
}
