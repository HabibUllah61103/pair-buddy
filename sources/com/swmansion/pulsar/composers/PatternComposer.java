package com.swmansion.pulsar.composers;

import android.os.VibrationEffect;
import android.util.Log;
import com.swmansion.pulsar.audio.AudioSimulator;
import com.swmansion.pulsar.haptics.HapticEngineWrapper;
import com.swmansion.pulsar.types.ConfigPoint;
import com.swmansion.pulsar.types.PatternData;
import com.swmansion.pulsar.types.ValuePoint;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PatternComposer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\rJ\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\rJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/swmansion/pulsar/composers/PatternComposer;", "", "engine", "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "audioSimulator", "Lcom/swmansion/pulsar/audio/AudioSimulator;", "<init>", "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/audio/AudioSimulator;)V", "vibrationEffect", "Landroid/os/VibrationEffect;", "audioBuffer", "", "parsePattern", "", "hapticsData", "Lcom/swmansion/pulsar/types/PatternData;", "play", "playAudioOnly", "stop", "summarizePattern", "", "Companion", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PatternComposer {
    private static final String TAG = "Pulsar";
    private byte[] audioBuffer;
    private final AudioSimulator audioSimulator;
    private final HapticEngineWrapper engine;
    private VibrationEffect vibrationEffect;

    public PatternComposer(HapticEngineWrapper engine, AudioSimulator audioSimulator) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(audioSimulator, "audioSimulator");
        this.engine = engine;
        this.audioSimulator = audioSimulator;
    }

    public final void parsePattern(PatternData hapticsData) {
        VibrationEffect vibrationEffectCreateVibrationEffect;
        Intrinsics.checkNotNullParameter(hapticsData, "hapticsData");
        try {
            vibrationEffectCreateVibrationEffect = this.engine.getHapticBuilder().createVibrationEffect(hapticsData);
        } catch (IllegalArgumentException unused) {
            Log.w("Pulsar", "Skipping invalid haptic pattern after Android validation failure: " + summarizePattern(hapticsData));
            vibrationEffectCreateVibrationEffect = null;
        }
        this.vibrationEffect = vibrationEffectCreateVibrationEffect;
        if (vibrationEffectCreateVibrationEffect == null) {
            Log.w("Pulsar", "Skipping invalid haptic pattern because it produced no playable vibration effect: " + summarizePattern(hapticsData));
        }
        this.audioBuffer = this.audioSimulator.parsePattern(hapticsData);
    }

    public final void play() {
        this.audioSimulator.play(this.audioBuffer);
        VibrationEffect vibrationEffect = this.vibrationEffect;
        if (vibrationEffect != null) {
            this.engine.vibrate(vibrationEffect);
        }
    }

    public final void playAudioOnly() {
        this.audioSimulator.play(this.audioBuffer);
    }

    public final void stop() {
        this.audioSimulator.stop();
        this.engine.stop();
    }

    private final String summarizePattern(PatternData hapticsData) {
        Long lValueOf;
        Long lValueOf2;
        int size = hapticsData.getDiscretePattern().size();
        int size2 = hapticsData.getContinuousPattern().getAmplitude().size();
        int size3 = hapticsData.getContinuousPattern().getFrequency().size();
        Iterator<T> it = hapticsData.getDiscretePattern().iterator();
        Long lValueOf3 = null;
        if (it.hasNext()) {
            lValueOf = Long.valueOf(((ConfigPoint) it.next()).getTime());
            while (it.hasNext()) {
                Long lValueOf4 = Long.valueOf(((ConfigPoint) it.next()).getTime());
                if (lValueOf.compareTo(lValueOf4) < 0) {
                    lValueOf = lValueOf4;
                }
            }
        } else {
            lValueOf = null;
        }
        Long l = lValueOf;
        long jLongValue = l != null ? l.longValue() : -1L;
        Iterator<T> it2 = hapticsData.getContinuousPattern().getAmplitude().iterator();
        if (it2.hasNext()) {
            lValueOf2 = Long.valueOf(((ValuePoint) it2.next()).getTime());
            while (it2.hasNext()) {
                Long lValueOf5 = Long.valueOf(((ValuePoint) it2.next()).getTime());
                if (lValueOf2.compareTo(lValueOf5) < 0) {
                    lValueOf2 = lValueOf5;
                }
            }
        } else {
            lValueOf2 = null;
        }
        Long l2 = lValueOf2;
        long jLongValue2 = l2 != null ? l2.longValue() : -1L;
        Iterator<T> it3 = hapticsData.getContinuousPattern().getFrequency().iterator();
        if (it3.hasNext()) {
            lValueOf3 = Long.valueOf(((ValuePoint) it3.next()).getTime());
            while (it3.hasNext()) {
                Long lValueOf6 = Long.valueOf(((ValuePoint) it3.next()).getTime());
                if (lValueOf3.compareTo(lValueOf6) < 0) {
                    lValueOf3 = lValueOf6;
                }
            }
        }
        Long l3 = lValueOf3;
        return "discreteCount=" + size + ", amplitudeCount=" + size2 + ", frequencyCount=" + size3 + ", maxDiscreteTime=" + jLongValue + ", maxAmplitudeTime=" + jLongValue2 + ", maxFrequencyTime=" + (l3 != null ? l3.longValue() : -1L);
    }
}
