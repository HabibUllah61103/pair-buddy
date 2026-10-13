package com.swmansion.pulsar.composers;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.VibrationEffect;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.swmansion.pulsar.haptics.HapticEngineWrapper;
import com.swmansion.pulsar.types.CompatibilityMode;
import com.swmansion.pulsar.types.RealtimeComposable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: RealtimePrimitiveComposer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u0015\u001a\u00020\u0016H\u0016J \u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000eH\u0016J\b\u0010\u001d\u001a\u00020\u0016H\u0016J\b\u0010\u001e\u001a\u00020\u001bH\u0016J\b\u0010\u001f\u001a\u00020\u0016H\u0002J\u0018\u0010 \u001a\u00020!2\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000eH\u0005J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u000eH\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;", "Lcom/swmansion/pulsar/types/RealtimeComposable;", "engine", "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "compatibilityMode", "Lcom/swmansion/pulsar/types/CompatibilityMode;", "<init>", "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/CompatibilityMode;)V", "minIntervalMs", "", "maxIntervalMs", "isPlaying", "Ljava/util/concurrent/atomic/AtomicBoolean;", "currentAmplitude", "", "currentFrequency", "currentIntervalMs", "handler", "Landroid/os/Handler;", "loopRunnable", "Ljava/lang/Runnable;", "start", "", "set", "amplitude", "frequency", "startIfNeeded", "", "playDiscrete", "stop", "isActive", "loop", "createCompositionEffect", "Landroid/os/VibrationEffect;", "selectPrimitive", "", RNConstants.ARG_VALUE, "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class RealtimePrimitiveComposer implements RealtimeComposable {
    private volatile float currentAmplitude;
    private volatile float currentFrequency;
    private volatile long currentIntervalMs;
    private final HapticEngineWrapper engine;
    private final Handler handler;
    private final AtomicBoolean isPlaying;
    private final Runnable loopRunnable;
    private long maxIntervalMs;
    private long minIntervalMs;

    protected int selectPrimitive(float value) {
        return 7;
    }

    public RealtimePrimitiveComposer(HapticEngineWrapper engine, CompatibilityMode compatibilityMode) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(compatibilityMode, "compatibilityMode");
        this.engine = engine;
        this.minIntervalMs = 10L;
        this.maxIntervalMs = 100L;
        if (compatibilityMode == CompatibilityMode.LIMITED_SUPPORT) {
            this.minIntervalMs = 60L;
            this.maxIntervalMs = 200L;
        }
        this.isPlaying = new AtomicBoolean(false);
        this.currentIntervalMs = 50L;
        this.handler = new Handler(Looper.getMainLooper());
        this.loopRunnable = new Runnable() { // from class: com.swmansion.pulsar.composers.RealtimePrimitiveComposer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loop();
            }
        };
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void set(float f, float f2) {
        RealtimeComposable.DefaultImpls.set(this, f, f2);
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void start() {
        if (this.isPlaying.compareAndSet(false, true)) {
            loop();
        }
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void set(float amplitude, float frequency, boolean startIfNeeded) {
        if (!this.isPlaying.get()) {
            if (!startIfNeeded) {
                return;
            }
            start();
            if (!this.isPlaying.get()) {
                return;
            }
        }
        this.currentAmplitude = RangesKt.coerceIn(amplitude, 0.0f, 1.0f);
        this.currentFrequency = RangesKt.coerceIn(frequency, 0.0f, 1.0f);
        long j = this.minIntervalMs;
        this.currentIntervalMs = (long) (j + ((1 - frequency) * (this.maxIntervalMs - j)));
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void playDiscrete(float amplitude, float frequency) {
        this.engine.vibrate(createCompositionEffect(amplitude, frequency));
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void stop() {
        if (this.isPlaying.compareAndSet(true, false)) {
            this.handler.removeCallbacks(this.loopRunnable);
            this.engine.stop();
        }
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public boolean isActive() {
        return this.isPlaying.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loop() {
        if (this.isPlaying.get()) {
            this.engine.vibrate(createCompositionEffect(this.currentAmplitude, this.currentFrequency));
            this.handler.postDelayed(this.loopRunnable, this.currentIntervalMs);
        }
    }

    protected final VibrationEffect createCompositionEffect(float amplitude, float frequency) {
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
