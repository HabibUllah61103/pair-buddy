package com.swmansion.pulsar.composers;

import com.swmansion.pulsar.haptics.HapticEngineWrapper;
import com.swmansion.pulsar.types.CompatibilityMode;
import com.swmansion.pulsar.types.RealtimeComposable;
import com.swmansion.pulsar.types.RealtimeComposerStrategy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RealtimeComposer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\b\u0010\u0018\u001a\u00020\u0010H\u0016J\b\u0010\u0019\u001a\u00020\u0016H\u0016R\u001a\u0010\n\u001a\u00020\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/swmansion/pulsar/composers/RealtimeComposer;", "Lcom/swmansion/pulsar/types/RealtimeComposable;", "engine", "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "strategy", "Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;", "compatibilityMode", "Lcom/swmansion/pulsar/types/CompatibilityMode;", "<init>", "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;Lcom/swmansion/pulsar/types/CompatibilityMode;)V", "delegate", "getDelegate", "()Lcom/swmansion/pulsar/types/RealtimeComposable;", "setDelegate", "(Lcom/swmansion/pulsar/types/RealtimeComposable;)V", "start", "", "set", "amplitude", "", "frequency", "startIfNeeded", "", "playDiscrete", "stop", "isActive", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RealtimeComposer implements RealtimeComposable {
    private RealtimeComposable delegate;

    /* JADX INFO: compiled from: RealtimeComposer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RealtimeComposerStrategy.values().length];
            try {
                iArr[RealtimeComposerStrategy.ENVELOPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RealtimeComposerStrategy.ENVELOPE_WITH_DISCRETE_PRIMITIVES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RealtimeComposerStrategy.PRIMITIVE_TICK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[RealtimeComposerStrategy.PRIMITIVE_COMPLEX.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public RealtimeComposer(HapticEngineWrapper engine, RealtimeComposerStrategy strategy, CompatibilityMode compatibilityMode) {
        RealtimeEnvelopeComposer realtimeEnvelopeComposer;
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(compatibilityMode, "compatibilityMode");
        int i = WhenMappings.$EnumSwitchMapping$0[strategy.ordinal()];
        if (i == 1) {
            realtimeEnvelopeComposer = new RealtimeEnvelopeComposer(engine);
        } else if (i == 2) {
            realtimeEnvelopeComposer = new RealtimeEnvelopeWithDiscretePrimitivesComposer(engine);
        } else if (i == 3) {
            realtimeEnvelopeComposer = new RealtimePrimitiveTickComposer(engine, compatibilityMode);
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            realtimeEnvelopeComposer = new RealtimePrimitiveComplexComposer(engine, compatibilityMode);
        }
        this.delegate = realtimeEnvelopeComposer;
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void set(float f, float f2) {
        RealtimeComposable.DefaultImpls.set(this, f, f2);
    }

    public /* synthetic */ RealtimeComposer(HapticEngineWrapper hapticEngineWrapper, RealtimeComposerStrategy realtimeComposerStrategy, CompatibilityMode compatibilityMode, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hapticEngineWrapper, (i & 2) != 0 ? RealtimeComposerStrategy.ENVELOPE_WITH_DISCRETE_PRIMITIVES : realtimeComposerStrategy, compatibilityMode);
    }

    public final RealtimeComposable getDelegate() {
        return this.delegate;
    }

    public final void setDelegate(RealtimeComposable realtimeComposable) {
        Intrinsics.checkNotNullParameter(realtimeComposable, "<set-?>");
        this.delegate = realtimeComposable;
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void start() {
        this.delegate.start();
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void set(float amplitude, float frequency, boolean startIfNeeded) {
        this.delegate.set(amplitude, frequency, startIfNeeded);
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void playDiscrete(float amplitude, float frequency) {
        this.delegate.playDiscrete(amplitude, frequency);
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void stop() {
        this.delegate.stop();
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public boolean isActive() {
        return this.delegate.isActive();
    }
}
