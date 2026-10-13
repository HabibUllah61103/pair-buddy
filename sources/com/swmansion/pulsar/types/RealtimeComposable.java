package com.swmansion.pulsar.types;

import kotlin.Metadata;

/* JADX INFO: compiled from: RealtimeComposer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J \u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH&J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H&J\b\u0010\u000b\u001a\u00020\u0003H&J\b\u0010\f\u001a\u00020\tH&¨\u0006\r"}, d2 = {"Lcom/swmansion/pulsar/types/RealtimeComposable;", "", "start", "", "set", "amplitude", "", "frequency", "startIfNeeded", "", "playDiscrete", "stop", "isActive", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface RealtimeComposable {
    boolean isActive();

    void playDiscrete(float amplitude, float frequency);

    void set(float amplitude, float frequency);

    void set(float amplitude, float frequency, boolean startIfNeeded);

    void start();

    void stop();

    /* JADX INFO: compiled from: RealtimeComposer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void set(RealtimeComposable realtimeComposable, float f, float f2) {
            realtimeComposable.set(f, f2, false);
        }
    }
}
