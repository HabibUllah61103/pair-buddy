package com.swmansion.pulsar.haptics;

import android.os.Build;
import android.os.VibrationEffect;
import android.os.vibrator.VibratorFrequencyProfile;
import com.swmansion.pulsar.types.CompatibilityMode;
import com.swmansion.pulsar.types.ControlPoint;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: VibrationEffectsGenerator.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007J\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0007J\u0016\u0010\u0011\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0003J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0003J\u0016\u0010\u0018\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0003J\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0003J\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0003J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;", "", "engine", "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "<init>", "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V", "getEngine", "()Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "forcedCompatibilityMode", "Lcom/swmansion/pulsar/types/CompatibilityMode;", "convertToVibrationEffect", "Landroid/os/VibrationEffect;", "controlLine", "Lcom/swmansion/pulsar/haptics/ControlLineBuilder;", "points", "", "Lcom/swmansion/pulsar/types/ControlPoint;", "convertToAdvanceEnvelope", "controlPoints", "getSharpnessInHz", "", "sharpness", "frequencyProfile", "Landroid/os/vibrator/VibratorFrequencyProfile;", "convertToBasicEnvelope", "convertToAmplitudeWaveform", "convertToTimingWaveform", "hasPlayableWaveform", "", "timings", "", "simulateCompatibilityMode", "", "mode", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class VibrationEffectsGenerator {
    private final HapticEngineWrapper engine;
    private CompatibilityMode forcedCompatibilityMode;

    public VibrationEffectsGenerator(HapticEngineWrapper engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.engine = engine;
        this.forcedCompatibilityMode = CompatibilityMode.ADVANCED_SUPPORT;
    }

    public final HapticEngineWrapper getEngine() {
        return this.engine;
    }

    public final VibrationEffect convertToVibrationEffect(ControlLineBuilder controlLine) {
        Intrinsics.checkNotNullParameter(controlLine, "controlLine");
        if (Build.VERSION.SDK_INT >= 36 && this.engine.isEnvelopeSupported() && this.forcedCompatibilityMode.compareTo(CompatibilityMode.STANDARD_SUPPORT) >= 0) {
            ArrayList<ControlPoint> linearPoints = controlLine.getLinearPoints();
            if (this.engine.isFrequencyProfileSupported() && this.forcedCompatibilityMode == CompatibilityMode.ADVANCED_SUPPORT) {
                return convertToAdvanceEnvelope(linearPoints);
            }
            return convertToBasicEnvelope(linearPoints);
        }
        ArrayList<ControlPoint> stepsPoints = controlLine.getStepsPoints();
        if (this.engine.isAmplitudeSupported() && this.forcedCompatibilityMode.compareTo(CompatibilityMode.LIMITED_SUPPORT) >= 0) {
            return convertToAmplitudeWaveform(stepsPoints);
        }
        return convertToTimingWaveform(stepsPoints);
    }

    public final VibrationEffect convertToVibrationEffect(List<ControlPoint> points) {
        Intrinsics.checkNotNullParameter(points, "points");
        if (Build.VERSION.SDK_INT >= 36 && this.engine.isEnvelopeSupported() && this.forcedCompatibilityMode.compareTo(CompatibilityMode.STANDARD_SUPPORT) >= 0) {
            if (this.engine.isFrequencyProfileSupported() && this.forcedCompatibilityMode == CompatibilityMode.ADVANCED_SUPPORT) {
                return convertToAdvanceEnvelope(points);
            }
            return convertToBasicEnvelope(points);
        }
        if (this.engine.isAmplitudeSupported() && this.forcedCompatibilityMode.compareTo(CompatibilityMode.LIMITED_SUPPORT) >= 0) {
            return convertToAmplitudeWaveform(points);
        }
        return convertToTimingWaveform(points);
    }

    private final VibrationEffect convertToAdvanceEnvelope(List<ControlPoint> controlPoints) {
        VibrationEffect.WaveformEnvelopeBuilder waveformEnvelopeBuilder = new VibrationEffect.WaveformEnvelopeBuilder();
        if (controlPoints.isEmpty()) {
            waveformEnvelopeBuilder.addControlPoint(0.0f, 1.0f, 1L);
            VibrationEffect vibrationEffectBuild = waveformEnvelopeBuilder.build();
            Intrinsics.checkNotNullExpressionValue(vibrationEffectBuild, "build(...)");
            return vibrationEffectBuild;
        }
        VibratorFrequencyProfile frequencyProfile = this.engine.getFrequencyProfile();
        float sharpness = ((ControlPoint) CollectionsKt.first((List) controlPoints)).getSharpness();
        Intrinsics.checkNotNull(frequencyProfile);
        waveformEnvelopeBuilder.setInitialFrequencyHz(getSharpnessInHz(sharpness, frequencyProfile));
        for (ControlPoint controlPoint : controlPoints) {
            waveformEnvelopeBuilder.addControlPoint(controlPoint.getIntensity(), getSharpnessInHz(controlPoint.getSharpness(), frequencyProfile), controlPoint.getDuration());
        }
        VibrationEffect vibrationEffectBuild2 = waveformEnvelopeBuilder.build();
        Intrinsics.checkNotNullExpressionValue(vibrationEffectBuild2, "build(...)");
        return vibrationEffectBuild2;
    }

    private final float getSharpnessInHz(float sharpness, VibratorFrequencyProfile frequencyProfile) {
        return (sharpness * (frequencyProfile.getMaxFrequencyHz() - frequencyProfile.getMinFrequencyHz())) + frequencyProfile.getMinFrequencyHz();
    }

    private final VibrationEffect convertToBasicEnvelope(List<ControlPoint> controlPoints) {
        VibrationEffect.BasicEnvelopeBuilder basicEnvelopeBuilder = new VibrationEffect.BasicEnvelopeBuilder();
        if (controlPoints.isEmpty()) {
            basicEnvelopeBuilder.addControlPoint(0.0f, 1.0f, 1L);
            VibrationEffect vibrationEffectBuild = basicEnvelopeBuilder.build();
            Intrinsics.checkNotNullExpressionValue(vibrationEffectBuild, "build(...)");
            return vibrationEffectBuild;
        }
        float sharpness = ((ControlPoint) CollectionsKt.first((List) controlPoints)).getSharpness();
        for (ControlPoint controlPoint : controlPoints) {
            basicEnvelopeBuilder.setInitialSharpness(sharpness).addControlPoint(controlPoint.getIntensity(), controlPoint.getSharpness(), controlPoint.getDuration());
        }
        VibrationEffect vibrationEffectBuild2 = basicEnvelopeBuilder.build();
        Intrinsics.checkNotNullExpressionValue(vibrationEffectBuild2, "build(...)");
        return vibrationEffectBuild2;
    }

    private final VibrationEffect convertToAmplitudeWaveform(List<ControlPoint> controlPoints) {
        long[] jArrPlus = new long[0];
        int[] iArrPlus = new int[0];
        for (ControlPoint controlPoint : controlPoints) {
            jArrPlus = ArraysKt.plus(jArrPlus, controlPoint.getDuration());
            iArrPlus = ArraysKt.plus(iArrPlus, MathKt.roundToInt(controlPoint.getIntensity() * 255));
        }
        if (hasPlayableWaveform(jArrPlus)) {
            return VibrationEffect.createWaveform(jArrPlus, iArrPlus, -1);
        }
        return null;
    }

    private final VibrationEffect convertToTimingWaveform(List<ControlPoint> controlPoints) {
        long[] jArrPlus = {0};
        boolean z = false;
        for (ControlPoint controlPoint : controlPoints) {
            long duration = controlPoint.getDuration();
            boolean z2 = controlPoint.getIntensity() > 0.0f;
            if (z2 != z) {
                jArrPlus = ArraysKt.plus(jArrPlus, duration);
                z = z2;
            } else if (!(jArrPlus.length == 0)) {
                int lastIndex = ArraysKt.getLastIndex(jArrPlus);
                jArrPlus[lastIndex] = jArrPlus[lastIndex] + duration;
            }
        }
        if (hasPlayableWaveform(jArrPlus)) {
            return VibrationEffect.createWaveform(jArrPlus, -1);
        }
        return null;
    }

    private final boolean hasPlayableWaveform(long[] timings) {
        if (!(timings.length == 0)) {
            for (long j : timings) {
                if (j > 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void simulateCompatibilityMode(CompatibilityMode mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.forcedCompatibilityMode = mode;
    }
}
