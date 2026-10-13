package com.swmansion.pulsar.presets;

import android.os.Build;
import android.os.VibrationEffect;
import android.util.Log;
import com.swmansion.pulsar.haptics.HapticEngineWrapper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SystemEffectPresets.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/swmansion/pulsar/presets/SystemEffectPresets;", "", "engine", "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "<init>", "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V", "effectClick", "", "effectDoubleClick", "effectTick", "effectHeavyClick", "playHaptic", "preset", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SystemEffectPresets {
    private final HapticEngineWrapper engine;

    public SystemEffectPresets(HapticEngineWrapper engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.engine = engine;
    }

    public final boolean effectClick() {
        if (Build.VERSION.SDK_INT >= 29) {
            return playHaptic(0);
        }
        return false;
    }

    public final boolean effectDoubleClick() {
        if (Build.VERSION.SDK_INT >= 29) {
            return playHaptic(1);
        }
        return false;
    }

    public final boolean effectTick() {
        if (Build.VERSION.SDK_INT >= 29) {
            return playHaptic(2);
        }
        return false;
    }

    public final boolean effectHeavyClick() {
        if (Build.VERSION.SDK_INT >= 29) {
            return playHaptic(5);
        }
        return false;
    }

    private final boolean playHaptic(int preset) {
        if (Build.VERSION.SDK_INT >= 29) {
            if (!this.engine.isEffectSupported(preset)) {
                return false;
            }
            HapticEngineWrapper hapticEngineWrapper = this.engine;
            VibrationEffect vibrationEffectCreatePredefined = VibrationEffect.createPredefined(preset);
            Intrinsics.checkNotNullExpressionValue(vibrationEffectCreatePredefined, "createPredefined(...)");
            hapticEngineWrapper.vibrate(vibrationEffectCreatePredefined);
            return true;
        }
        Log.w(HapticEngineWrapper.TAG, "Incompatible Android version. System primitive preset unsupported");
        return false;
    }
}
