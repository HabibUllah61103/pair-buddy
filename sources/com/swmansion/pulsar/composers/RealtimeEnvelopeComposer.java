package com.swmansion.pulsar.composers;

import android.os.VibrationEffect;
import com.swmansion.pulsar.haptics.HapticEngineWrapper;
import com.swmansion.pulsar.haptics.VibrationEffectsGenerator;
import com.swmansion.pulsar.types.ControlPoint;
import com.swmansion.pulsar.types.RealtimeComposable;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: RealtimeEnvelopeComposer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0016\u0018\u0000  2\u00020\u0001:\u0001 B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0015\u001a\u00020\u0016H\u0016J \u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u000fH\u0016J\b\u0010\u001d\u001a\u00020\u0016H\u0016J\b\u0010\u001e\u001a\u00020\u001bH\u0016J\b\u0010\u001f\u001a\u00020\u0016H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;", "Lcom/swmansion/pulsar/types/RealtimeComposable;", "engine", "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "<init>", "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V", "vibrationEffectsGenerator", "Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;", "getVibrationEffectsGenerator", "()Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;", "setVibrationEffectsGenerator", "(Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;)V", "isPlaying", "Ljava/util/concurrent/atomic/AtomicBoolean;", "currentAmplitude", "", "currentFrequency", "schedulerJob", "Lkotlinx/coroutines/Job;", PermissionsResponse.SCOPE_KEY, "Lkotlinx/coroutines/CoroutineScope;", "start", "", "set", "amplitude", "frequency", "startIfNeeded", "", "playDiscrete", "stop", "isActive", "scheduleSequentialHaptics", "Companion", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class RealtimeEnvelopeComposer implements RealtimeComposable {
    private static final long SEGMENT_DURATION_MS = 100;
    private volatile float currentAmplitude;
    private volatile float currentFrequency;
    private final HapticEngineWrapper engine;
    private final AtomicBoolean isPlaying;
    private Job schedulerJob;
    private final CoroutineScope scope;
    private VibrationEffectsGenerator vibrationEffectsGenerator;

    public RealtimeEnvelopeComposer(HapticEngineWrapper engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.engine = engine;
        this.vibrationEffectsGenerator = new VibrationEffectsGenerator(engine);
        this.isPlaying = new AtomicBoolean(false);
        this.scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault());
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void set(float f, float f2) {
        RealtimeComposable.DefaultImpls.set(this, f, f2);
    }

    public final VibrationEffectsGenerator getVibrationEffectsGenerator() {
        return this.vibrationEffectsGenerator;
    }

    public final void setVibrationEffectsGenerator(VibrationEffectsGenerator vibrationEffectsGenerator) {
        Intrinsics.checkNotNullParameter(vibrationEffectsGenerator, "<set-?>");
        this.vibrationEffectsGenerator = vibrationEffectsGenerator;
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void start() {
        if (this.isPlaying.compareAndSet(false, true)) {
            scheduleSequentialHaptics();
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
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void playDiscrete(float amplitude, float frequency) {
        VibrationEffect vibrationEffectConvertToVibrationEffect = this.vibrationEffectsGenerator.convertToVibrationEffect(CollectionsKt.listOf(new ControlPoint(amplitude, frequency, 100L)));
        if (vibrationEffectConvertToVibrationEffect != null) {
            this.engine.vibrate(vibrationEffectConvertToVibrationEffect);
        }
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public void stop() {
        if (this.isPlaying.compareAndSet(true, false)) {
            Job job = this.schedulerJob;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            this.engine.stop();
        }
    }

    @Override // com.swmansion.pulsar.types.RealtimeComposable
    public boolean isActive() {
        return this.isPlaying.get();
    }

    /* JADX INFO: renamed from: com.swmansion.pulsar.composers.RealtimeEnvelopeComposer$scheduleSequentialHaptics$1, reason: invalid class name */
    /* JADX INFO: compiled from: RealtimeEnvelopeComposer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.swmansion.pulsar.composers.RealtimeEnvelopeComposer$scheduleSequentialHaptics$1", f = "RealtimeEnvelopeComposer.kt", i = {0}, l = {77}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = RealtimeEnvelopeComposer.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                coroutineScope = (CoroutineScope) this.L$0;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                coroutineScope = (CoroutineScope) this.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (Throwable th) {
                    if (!RealtimeEnvelopeComposer.this.isPlaying.get()) {
                        RealtimeEnvelopeComposer.this.engine.stop();
                    }
                    throw th;
                }
            }
            while (RealtimeEnvelopeComposer.this.isPlaying.get() && CoroutineScopeKt.isActive(coroutineScope)) {
                VibrationEffect vibrationEffectConvertToVibrationEffect = RealtimeEnvelopeComposer.this.getVibrationEffectsGenerator().convertToVibrationEffect(CollectionsKt.listOf(new ControlPoint(RealtimeEnvelopeComposer.this.currentAmplitude, RealtimeEnvelopeComposer.this.currentFrequency, 100L)));
                if (vibrationEffectConvertToVibrationEffect != null) {
                    RealtimeEnvelopeComposer.this.engine.vibrate(vibrationEffectConvertToVibrationEffect);
                }
                this.L$0 = coroutineScope;
                this.label = 1;
                if (DelayKt.delay(100L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            if (!RealtimeEnvelopeComposer.this.isPlaying.get()) {
                RealtimeEnvelopeComposer.this.engine.stop();
            }
            return Unit.INSTANCE;
        }
    }

    private final void scheduleSequentialHaptics() {
        Job job = this.schedulerJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.schedulerJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(null), 3, null);
    }
}
