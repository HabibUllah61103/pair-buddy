package com.swmansion.pulsar.composers;

import android.os.Build;
import android.os.VibrationEffect;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.swmansion.pulsar.haptics.HapticEngineWrapper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: RealtimeEnvelopeWithDiscretePrimitivesComposer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0003J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/swmansion/pulsar/composers/RealtimeEnvelopeWithDiscretePrimitivesComposer;", "Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;", "engine", "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "<init>", "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V", "playDiscrete", "", "amplitude", "", "frequency", "createCompositionEffect", "Landroid/os/VibrationEffect;", "selectPrimitive", "", RNConstants.ARG_VALUE, "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RealtimeEnvelopeWithDiscretePrimitivesComposer extends RealtimeEnvelopeComposer {
    private final HapticEngineWrapper engine;

    private final int selectPrimitive(float value) {
        if (value > 0.66f) {
            return 1;
        }
        return value > 0.33f ? 7 : 8;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealtimeEnvelopeWithDiscretePrimitivesComposer(HapticEngineWrapper engine) {
        super(engine);
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.engine = engine;
    }

    @Override // com.swmansion.pulsar.composers.RealtimeEnvelopeComposer, com.swmansion.pulsar.types.RealtimeComposable
    public void playDiscrete(float amplitude, float frequency) {
        this.engine.vibrate(createCompositionEffect(amplitude, frequency));
    }

    private final VibrationEffect createCompositionEffect(float amplitude, float frequency) {
        if (Build.VERSION.SDK_INT >= 33) {
            VibrationEffect vibrationEffectCompose = VibrationEffect.startComposition().addPrimitive(selectPrimitive(frequency), amplitude, 0).compose();
            Intrinsics.checkNotNull(vibrationEffectCompose);
            return vibrationEffectCompose;
        }
        VibrationEffect vibrationEffectCreateOneShot = VibrationEffect.createOneShot(10L, RangesKt.coerceIn((int) (amplitude * 255), 0, 255));
        Intrinsics.checkNotNull(vibrationEffectCreateOneShot);
        return vibrationEffectCreateOneShot;
    }
}
