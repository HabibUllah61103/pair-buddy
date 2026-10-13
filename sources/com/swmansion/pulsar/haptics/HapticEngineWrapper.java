package com.swmansion.pulsar.haptics;

import android.content.Context;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.os.vibrator.VibratorEnvelopeEffectInfo;
import android.os.vibrator.VibratorFrequencyProfile;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.facebook.react.uimanager.ViewProps;
import com.swmansion.pulsar.types.CompatibilityMode;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.TreeJsonEncoderKt;

/* JADX INFO: compiled from: HapticEngineWrapper.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 /2\u00020\u0001:\u0001/B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u000bJ\u0006\u0010\u001b\u001a\u00020\u0016J\u0006\u0010\u001c\u001a\u00020\u0014J\u0006\u0010\u001d\u001a\u00020\u000bJ\u000e\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020 J\u0006\u0010#\u001a\u00020\u000bJ\u0006\u0010$\u001a\u00020\u000bJ\u0006\u0010%\u001a\u00020&J\b\u0010'\u001a\u0004\u0018\u00010(J\u000e\u0010)\u001a\u00020\u00162\u0006\u0010*\u001a\u00020+J\u000e\u0010,\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u000bJ\u0006\u0010.\u001a\u00020+R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "vibrationService", "Landroid/os/Vibrator;", "kotlin.jvm.PlatformType", "Landroid/os/Vibrator;", "hasVibrationPermission", "", "getHasVibrationPermission", "()Z", "hasVibrationPermission$delegate", "Lkotlin/Lazy;", "vibrator", "initialized", "isHapticsEnabled", "hapticBuilder", "Lcom/swmansion/pulsar/haptics/HapticBuilder;", "vibrate", "", "vibrationEffect", "Landroid/os/VibrationEffect;", "enableHaptics", "state", "stop", "getHapticBuilder", "isAmplitudeSupported", "isEffectSupported", "effect", "", "isPrimitiveSupported", TreeJsonEncoderKt.PRIMITIVE_TAG, "isEnvelopeSupported", "isFrequencyProfileSupported", "getMinControlPointDurationMillis", "", "getFrequencyProfile", "Landroid/os/vibrator/VibratorFrequencyProfile;", "simulateCompatibilityMode", "mode", "Lcom/swmansion/pulsar/types/CompatibilityMode;", "enableImpulseCompositionMode", ViewProps.ENABLED, "getRealCompatibilityMode", "Companion", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class HapticEngineWrapper {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String TAG = "Pulsar";
    private final Context context;
    private final HapticBuilder hapticBuilder;

    /* JADX INFO: renamed from: hasVibrationPermission$delegate, reason: from kotlin metadata */
    private final Lazy hasVibrationPermission;
    private boolean initialized;
    private boolean isHapticsEnabled;
    private final Vibrator vibrationService;
    private Vibrator vibrator;

    public HapticEngineWrapper(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.vibrationService = (Vibrator) context.getSystemService(Vibrator.class);
        this.hasVibrationPermission = LazyKt.lazy(new Function0() { // from class: com.swmansion.pulsar.haptics.HapticEngineWrapper$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(HapticEngineWrapper.hasVibrationPermission_delegate$lambda$0(this.f$0));
            }
        });
        this.isHapticsEnabled = true;
        this.hapticBuilder = new HapticBuilder(this);
        if (Build.VERSION.SDK_INT >= 31) {
            Vibrator vibrator = (Vibrator) ContextCompat.getSystemService(context, Vibrator.class);
            this.vibrator = vibrator;
            if (vibrator == null || !vibrator.hasVibrator()) {
                return;
            }
            this.initialized = true;
            return;
        }
        Object systemService = context.getSystemService("vibrator");
        Vibrator vibrator2 = systemService instanceof Vibrator ? (Vibrator) systemService : null;
        this.vibrator = vibrator2;
        if (vibrator2 == null || !vibrator2.hasVibrator()) {
            return;
        }
        this.initialized = true;
    }

    private final boolean getHasVibrationPermission() {
        return ((Boolean) this.hasVibrationPermission.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasVibrationPermission_delegate$lambda$0(HapticEngineWrapper hapticEngineWrapper) {
        return ContextCompat.checkSelfPermission(hapticEngineWrapper.context, "android.permission.VIBRATE") == 0;
    }

    public final void vibrate(VibrationEffect vibrationEffect) {
        Intrinsics.checkNotNullParameter(vibrationEffect, "vibrationEffect");
        if (this.isHapticsEnabled) {
            if (!getHasVibrationPermission()) {
                Log.w(TAG, "Skipping vibration because android.permission.VIBRATE is not granted");
                return;
            }
            try {
                this.vibrationService.vibrate(vibrationEffect);
                Unit unit = Unit.INSTANCE;
            } catch (SecurityException e) {
                Integer.valueOf(Log.w(TAG, "Skipping vibration because the app cannot use the vibrator", e));
            }
        }
    }

    public final void enableHaptics(boolean state) {
        if (this.isHapticsEnabled != state) {
            this.isHapticsEnabled = state;
            if (state) {
                return;
            }
            stop();
        }
    }

    public final void stop() {
        Vibrator vibrator;
        if (this.initialized && (vibrator = this.vibrator) != null) {
            vibrator.cancel();
        }
    }

    public final HapticBuilder getHapticBuilder() {
        return this.hapticBuilder;
    }

    public final boolean isAmplitudeSupported() {
        return this.vibrationService.hasAmplitudeControl();
    }

    public final boolean isEffectSupported(int effect) {
        return Build.VERSION.SDK_INT < 30 || this.vibrationService.areAllEffectsSupported(effect) != 2;
    }

    public final boolean isPrimitiveSupported(int primitive) {
        if (Build.VERSION.SDK_INT < 30) {
            return false;
        }
        return this.vibrationService.areAllPrimitivesSupported(primitive);
    }

    public final boolean isEnvelopeSupported() {
        return Build.VERSION.SDK_INT >= 36 && this.vibrationService.areEnvelopeEffectsSupported();
    }

    public final boolean isFrequencyProfileSupported() {
        return Build.VERSION.SDK_INT >= 36 && this.vibrationService.getFrequencyProfile() != null;
    }

    public final long getMinControlPointDurationMillis() {
        Vibrator vibrator;
        VibratorEnvelopeEffectInfo envelopeEffectInfo;
        if (!isEnvelopeSupported() || (vibrator = this.vibrator) == null || (envelopeEffectInfo = vibrator.getEnvelopeEffectInfo()) == null) {
            return 15L;
        }
        return envelopeEffectInfo.getMinControlPointDurationMillis();
    }

    public final VibratorFrequencyProfile getFrequencyProfile() {
        Vibrator vibrator;
        if (Build.VERSION.SDK_INT < 36 || (vibrator = this.vibrator) == null) {
            return null;
        }
        return vibrator.getFrequencyProfile();
    }

    public final void simulateCompatibilityMode(CompatibilityMode mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.hapticBuilder.simulateCompatibilityMode(mode);
    }

    public final void enableImpulseCompositionMode(boolean enabled) {
        this.hapticBuilder.enableImpulseCompositionMode(enabled);
    }

    public final CompatibilityMode getRealCompatibilityMode() {
        if (Build.VERSION.SDK_INT >= 36) {
            if (isFrequencyProfileSupported()) {
                return CompatibilityMode.ADVANCED_SUPPORT;
            }
            if (isAmplitudeSupported()) {
                return CompatibilityMode.STANDARD_SUPPORT;
            }
            return CompatibilityMode.LIMITED_SUPPORT;
        }
        if (isAmplitudeSupported()) {
            return CompatibilityMode.STANDARD_SUPPORT;
        }
        return CompatibilityMode.LIMITED_SUPPORT;
    }

    /* JADX INFO: compiled from: HapticEngineWrapper.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/swmansion/pulsar/haptics/HapticEngineWrapper$Companion;", "", "<init>", "()V", "TAG", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
