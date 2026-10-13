package com.swmansion.pulsar.presets;

import android.os.Build;
import android.os.VibrationEffect;
import android.util.Log;
import com.swmansion.pulsar.haptics.HapticEngineWrapper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.TreeJsonEncoderKt;

/* JADX INFO: compiled from: SystemPrimitivePresets.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u0007J\u0006\u0010\u000e\u001a\u00020\u0007J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;", "", "engine", "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "<init>", "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V", "primitiveClick", "", "primitiveThud", "primitiveSpin", "primitiveQuickRise", "primitiveSlowRise", "primitiveQuickFall", "primitiveTick", "primitiveLowTick", "playHaptic", TreeJsonEncoderKt.PRIMITIVE_TAG, "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SystemPrimitivePresets {
    private final HapticEngineWrapper engine;

    public SystemPrimitivePresets(HapticEngineWrapper engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.engine = engine;
    }

    public final boolean primitiveClick() {
        if (Build.VERSION.SDK_INT >= 30) {
            return playHaptic(1);
        }
        return false;
    }

    public final boolean primitiveThud() {
        if (Build.VERSION.SDK_INT >= 31) {
            return playHaptic(2);
        }
        return false;
    }

    public final boolean primitiveSpin() {
        if (Build.VERSION.SDK_INT >= 31) {
            return playHaptic(3);
        }
        return false;
    }

    public final boolean primitiveQuickRise() {
        if (Build.VERSION.SDK_INT >= 30) {
            return playHaptic(4);
        }
        return false;
    }

    public final boolean primitiveSlowRise() {
        if (Build.VERSION.SDK_INT >= 30) {
            return playHaptic(5);
        }
        return false;
    }

    public final boolean primitiveQuickFall() {
        if (Build.VERSION.SDK_INT >= 30) {
            return playHaptic(6);
        }
        return false;
    }

    public final boolean primitiveTick() {
        if (Build.VERSION.SDK_INT >= 30) {
            return playHaptic(7);
        }
        return false;
    }

    public final boolean primitiveLowTick() {
        if (Build.VERSION.SDK_INT >= 31) {
            return playHaptic(8);
        }
        return false;
    }

    private final boolean playHaptic(int primitive) {
        if (Build.VERSION.SDK_INT >= 30) {
            if (!this.engine.isPrimitiveSupported(primitive)) {
                return false;
            }
            HapticEngineWrapper hapticEngineWrapper = this.engine;
            VibrationEffect vibrationEffectCompose = VibrationEffect.startComposition().addPrimitive(primitive).compose();
            Intrinsics.checkNotNullExpressionValue(vibrationEffectCompose, "compose(...)");
            hapticEngineWrapper.vibrate(vibrationEffectCompose);
            return true;
        }
        Log.w(HapticEngineWrapper.TAG, "Incompatible Android version. System primitive preset unsupported");
        return false;
    }
}
