package com.swmansion.pulsar.haptics;

import android.os.VibrationEffect;
import com.facebook.react.uimanager.ViewProps;
import com.swmansion.pulsar.types.CompatibilityMode;
import com.swmansion.pulsar.types.PatternData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HapticBuilder.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000bJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/swmansion/pulsar/haptics/HapticBuilder;", "", "engine", "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "<init>", "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V", "vibrationEffectsGenerator", "Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;", "impulseCompositionBuilder", "Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;", "impulseCompositionEnabled", "", "enableImpulseCompositionMode", "", ViewProps.ENABLED, "createVibrationEffect", "Landroid/os/VibrationEffect;", "preset", "Lcom/swmansion/pulsar/types/PatternData;", "convertToControlPoints", "Lcom/swmansion/pulsar/haptics/ControlLineBuilder;", "simulateCompatibilityMode", "mode", "Lcom/swmansion/pulsar/types/CompatibilityMode;", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class HapticBuilder {
    private final HapticEngineWrapper engine;
    private final ImpulseCompositionHapticBuilder impulseCompositionBuilder;
    private boolean impulseCompositionEnabled;
    private VibrationEffectsGenerator vibrationEffectsGenerator;

    public HapticBuilder(HapticEngineWrapper engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.engine = engine;
        this.vibrationEffectsGenerator = new VibrationEffectsGenerator(engine);
        this.impulseCompositionBuilder = new ImpulseCompositionHapticBuilder();
        this.impulseCompositionEnabled = true;
    }

    public final void enableImpulseCompositionMode(boolean enabled) {
        this.impulseCompositionEnabled = enabled;
    }

    public final VibrationEffect createVibrationEffect(PatternData preset) {
        VibrationEffect vibrationEffectCreateCompositionEffect;
        Intrinsics.checkNotNullParameter(preset, "preset");
        return (this.impulseCompositionEnabled && ImpulseCompositionHapticBuilder.INSTANCE.isImpulsesOnly(preset) && (vibrationEffectCreateCompositionEffect = this.impulseCompositionBuilder.createCompositionEffect(preset, this.engine)) != null) ? vibrationEffectCreateCompositionEffect : this.vibrationEffectsGenerator.convertToVibrationEffect(convertToControlPoints(preset));
    }

    private final ControlLineBuilder convertToControlPoints(PatternData preset) {
        ValueLineBuilder valueLineBuilder = new ValueLineBuilder(preset.getContinuousPattern().getAmplitude());
        ValueLineBuilder valueLineBuilder2 = new ValueLineBuilder(preset.getContinuousPattern().getFrequency());
        PeakLineBuilder peakLineBuilder = new PeakLineBuilder(this.engine.getMinControlPointDurationMillis());
        ValueLineBuilder valueLineBuilderConvertToContinuousPatternOfAmplitude = peakLineBuilder.convertToContinuousPatternOfAmplitude(preset.getDiscretePattern(), valueLineBuilder);
        ValueLineBuilder valueLineBuilderConvertToContinuousPatternOfFrequency = peakLineBuilder.convertToContinuousPatternOfFrequency(preset.getDiscretePattern(), valueLineBuilder2);
        valueLineBuilder.mergeLine(valueLineBuilderConvertToContinuousPatternOfAmplitude);
        valueLineBuilder2.mergeLine(valueLineBuilderConvertToContinuousPatternOfFrequency);
        return new ControlLineBuilder(new ConfigLineBuilder(valueLineBuilder, valueLineBuilder2));
    }

    public final void simulateCompatibilityMode(CompatibilityMode mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.vibrationEffectsGenerator.simulateCompatibilityMode(mode);
    }
}
