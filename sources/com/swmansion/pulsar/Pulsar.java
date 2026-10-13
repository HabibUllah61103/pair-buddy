package com.swmansion.pulsar;

import android.app.Activity;
import android.content.Context;
import com.swmansion.pulsar.audio.AudioSimulator;
import com.swmansion.pulsar.composers.PatternComposer;
import com.swmansion.pulsar.composers.RealtimeComposer;
import com.swmansion.pulsar.haptics.HapticEngineWrapper;
import com.swmansion.pulsar.presets.PresetsWrapper;
import com.swmansion.pulsar.types.CompatibilityMode;
import com.swmansion.pulsar.types.RealtimeComposerStrategy;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Pulsar.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u001d\u001a\u00020\u0010H\u0014J\u0006\u0010\u001e\u001a\u00020\u0010J\u0006\u0010\u001f\u001a\u00020 J\u0012\u0010!\u001a\u00020\u001c2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0016J\u0006\u0010#\u001a\u00020$J\u000e\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020$J\u0014\u0010(\u001a\u00020&2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*J\u000e\u0010,\u001a\u00020&2\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020&2\u0006\u0010-\u001a\u00020.J\u000e\u00100\u001a\u00020&2\u0006\u0010-\u001a\u00020.J\u0006\u00101\u001a\u00020&J\u0006\u00102\u001a\u00020&J\u000e\u00103\u001a\u00020&2\u0006\u0010-\u001a\u00020.R\u001a\u0010\u0002\u001a\u00020\u0003X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005R\u0014\u0010\t\u001a\u00020\nX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/swmansion/pulsar/Pulsar;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "setContext", "engine", "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "getEngine", "()Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "audioSimulator", "Lcom/swmansion/pulsar/audio/AudioSimulator;", "_presets", "Lcom/swmansion/pulsar/presets/PresetsWrapper;", "get_presets", "()Lcom/swmansion/pulsar/presets/PresetsWrapper;", "set_presets", "(Lcom/swmansion/pulsar/presets/PresetsWrapper;)V", "realtimeComposerStrategy", "Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;", "getRealtimeComposerStrategy", "()Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;", "setRealtimeComposerStrategy", "(Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;)V", "realtimeComposer", "Lcom/swmansion/pulsar/composers/RealtimeComposer;", "createPresets", "getPresets", "getPatternComposer", "Lcom/swmansion/pulsar/composers/PatternComposer;", "getRealtimeComposer", "strategy", "hapticSupport", "Lcom/swmansion/pulsar/types/CompatibilityMode;", "forceHapticsSupportLevel", "", "mode", "preloadPresets", "presetNames", "", "", "enableHaptics", "state", "", "enableSound", "enableCache", "clearCache", "stopHaptics", "enableImpulseCompositionMode", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class Pulsar {
    private PresetsWrapper _presets;
    private final AudioSimulator audioSimulator;
    private Context context;
    private final HapticEngineWrapper engine;
    private RealtimeComposer realtimeComposer;
    private RealtimeComposerStrategy realtimeComposerStrategy;

    public Pulsar(Context context) {
        RealtimeComposerStrategy realtimeComposerStrategy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.engine = new HapticEngineWrapper(this.context);
        this.audioSimulator = new AudioSimulator(hapticSupport());
        if (hapticSupport().compareTo(CompatibilityMode.STANDARD_SUPPORT) >= 0) {
            realtimeComposerStrategy = RealtimeComposerStrategy.ENVELOPE_WITH_DISCRETE_PRIMITIVES;
        } else if (hapticSupport().compareTo(CompatibilityMode.LIMITED_SUPPORT) >= 0) {
            realtimeComposerStrategy = RealtimeComposerStrategy.PRIMITIVE_COMPLEX;
        } else {
            realtimeComposerStrategy = RealtimeComposerStrategy.PRIMITIVE_TICK;
        }
        this.realtimeComposerStrategy = realtimeComposerStrategy;
    }

    protected final Context getContext() {
        return this.context;
    }

    protected final void setContext(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    protected final HapticEngineWrapper getEngine() {
        return this.engine;
    }

    protected final PresetsWrapper get_presets() {
        return this._presets;
    }

    protected final void set_presets(PresetsWrapper presetsWrapper) {
        this._presets = presetsWrapper;
    }

    public final RealtimeComposerStrategy getRealtimeComposerStrategy() {
        return this.realtimeComposerStrategy;
    }

    public final void setRealtimeComposerStrategy(RealtimeComposerStrategy realtimeComposerStrategy) {
        Intrinsics.checkNotNullParameter(realtimeComposerStrategy, "<set-?>");
        this.realtimeComposerStrategy = realtimeComposerStrategy;
    }

    protected PresetsWrapper createPresets() {
        Context context = this.context;
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
        return new PresetsWrapper(this, new ActivityProvider((Activity) context), this.engine);
    }

    public final PresetsWrapper getPresets() {
        if (this._presets == null) {
            this._presets = createPresets();
        }
        PresetsWrapper presetsWrapper = this._presets;
        Intrinsics.checkNotNull(presetsWrapper);
        return presetsWrapper;
    }

    public final PatternComposer getPatternComposer() {
        return new PatternComposer(this.engine, this.audioSimulator);
    }

    public static /* synthetic */ RealtimeComposer getRealtimeComposer$default(Pulsar pulsar, RealtimeComposerStrategy realtimeComposerStrategy, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getRealtimeComposer");
        }
        if ((i & 1) != 0) {
            realtimeComposerStrategy = null;
        }
        return pulsar.getRealtimeComposer(realtimeComposerStrategy);
    }

    public final RealtimeComposer getRealtimeComposer(RealtimeComposerStrategy strategy) {
        if (this.realtimeComposer == null) {
            RealtimeComposerStrategy realtimeComposerStrategy = strategy == null ? this.realtimeComposerStrategy : strategy;
            this.realtimeComposer = new RealtimeComposer(this.engine, realtimeComposerStrategy, hapticSupport());
            this.realtimeComposerStrategy = realtimeComposerStrategy;
        }
        if (strategy != null && strategy != this.realtimeComposerStrategy) {
            this.realtimeComposer = new RealtimeComposer(this.engine, strategy, hapticSupport());
            this.realtimeComposerStrategy = strategy;
        }
        RealtimeComposer realtimeComposer = this.realtimeComposer;
        Intrinsics.checkNotNull(realtimeComposer);
        return realtimeComposer;
    }

    public final CompatibilityMode hapticSupport() {
        return this.engine.getRealCompatibilityMode();
    }

    public final void forceHapticsSupportLevel(CompatibilityMode mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.engine.simulateCompatibilityMode(mode);
        this.audioSimulator.setCompatibilityMode(mode);
    }

    public final void preloadPresets(List<String> presetNames) {
        Intrinsics.checkNotNullParameter(presetNames, "presetNames");
        getPresets().preloadPresetByNames(presetNames);
    }

    public final void enableHaptics(boolean state) {
        this.engine.enableHaptics(state);
    }

    public final void enableSound(boolean state) throws InterruptedException {
        this.audioSimulator.enableSound(state);
    }

    public final void enableCache(boolean state) {
        getPresets().enableCache(state);
    }

    public final void clearCache() {
        getPresets().resetCache();
    }

    public final void stopHaptics() {
        this.engine.stop();
    }

    public final void enableImpulseCompositionMode(boolean state) {
        this.engine.enableImpulseCompositionMode(state);
    }
}
