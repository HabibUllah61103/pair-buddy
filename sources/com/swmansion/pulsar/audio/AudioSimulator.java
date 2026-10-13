package com.swmansion.pulsar.audio;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.Build;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.os.EnvironmentCompat;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.swmansion.pulsar.types.AudioDataConfig;
import com.swmansion.pulsar.types.AudioPatternConfig;
import com.swmansion.pulsar.types.CompatibilityMode;
import com.swmansion.pulsar.types.ConfigPoint;
import com.swmansion.pulsar.types.ContinuousAudioConfig;
import com.swmansion.pulsar.types.DiscreteAudioConfig;
import com.swmansion.pulsar.types.EnvelopeConfig;
import com.swmansion.pulsar.types.FrequencyConfig;
import com.swmansion.pulsar.types.OscillatorConfig;
import com.swmansion.pulsar.types.PatternData;
import com.swmansion.pulsar.types.ValuePoint;
import com.swmansion.pulsar.types.WaveformType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: compiled from: AudioSimulator.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0004\u0018\u0000 =2\u00020\u0001:\u0001=B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000bJ\u0010\u0010\u001e\u001a\u00020\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0018J\u0006\u0010 \u001a\u00020\u001cJ\b\u0010!\u001a\u00020\u001cH\u0002J\b\u0010\"\u001a\u00020\u001cH\u0002J\b\u0010#\u001a\u00020\u001cH\u0002J\b\u0010$\u001a\u00020\u0007H\u0002J\b\u0010%\u001a\u00020\u000bH\u0002J\u0018\u0010&\u001a\u00020\t2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\tH\u0002J\u0010\u0010*\u001a\u00020+2\u0006\u0010\u001d\u001a\u00020\tH\u0002J\u0018\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0007H\u0002J\u0016\u0010/\u001a\b\u0012\u0004\u0012\u000201002\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0016\u00102\u001a\b\u0012\u0004\u0012\u000203002\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0012\u00104\u001a\u0004\u0018\u00010\u00182\u0006\u00105\u001a\u000206H\u0002J\u0010\u00107\u001a\u00020+2\u0006\u00105\u001a\u000206H\u0002J\u0010\u00108\u001a\u00020\u00182\u0006\u00109\u001a\u00020:H\u0002J\u000e\u0010;\u001a\u00020\u001c2\u0006\u0010<\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Lcom/swmansion/pulsar/audio/AudioSimulator;", "", "compatibilityMode", "Lcom/swmansion/pulsar/types/CompatibilityMode;", "<init>", "(Lcom/swmansion/pulsar/types/CompatibilityMode;)V", "sampleRate", "", "sampleRateF", "", "isEmulatorDevice", "", "audioTrack", "Landroid/media/AudioTrack;", "isInitialized", "playSound", "shouldForceAudiblePlayback", "audioScope", "Lkotlinx/coroutines/CoroutineScope;", "audioMutex", "Lkotlinx/coroutines/sync/Mutex;", "currentPlayJob", "Lkotlinx/coroutines/Job;", "parsePattern", "", "data", "Lcom/swmansion/pulsar/types/PatternData;", "enableSound", "", RNConstants.ARG_VALUE, "play", "buffer", "stop", "configureAudioContext", "resetAudioContext", "stopAndReleaseAudioTrack", "resolveAudioUsage", "isEmulator", "generateWaveform", "waveform", "Lcom/swmansion/pulsar/types/WaveformType;", TypedValues.Cycle.S_WAVE_PHASE, "normalizeFrequency", "", "alignVolume", "x", "sources", "generateDiscreteAudioConfig", "", "Lcom/swmansion/pulsar/types/DiscreteAudioConfig;", "generateContinuousAudioConfig", "Lcom/swmansion/pulsar/types/ContinuousAudioConfig;", "renderPattern", "config", "Lcom/swmansion/pulsar/types/AudioPatternConfig;", "calculateTotalDuration", "convertToByteArray", "samples", "", "setCompatibilityMode", "mode", "Companion", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AudioSimulator {
    private static final double CONTINUOUS_FREQUENCY_MAX = 230.0d;
    private static final double CONTINUOUS_FREQUENCY_MIN = 80.0d;
    private static final double MAX_FREQUENCY = 440.0d;
    private static final double MIN_FREQUENCY = 60.0d;
    private static final int NUM_SOURCES = 3;
    private final Mutex audioMutex;
    private final CoroutineScope audioScope;
    private AudioTrack audioTrack;
    private CompatibilityMode compatibilityMode;
    private Job currentPlayJob;
    private final boolean isEmulatorDevice;
    private boolean isInitialized;
    private boolean playSound;
    private final int sampleRate;
    private final float sampleRateF;
    private boolean shouldForceAudiblePlayback;

    /* JADX INFO: compiled from: AudioSimulator.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WaveformType.values().length];
            try {
                iArr[WaveformType.SINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WaveformType.SQUARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WaveformType.TRIANGLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WaveformType.SAWTOOTH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final float alignVolume(float x, int sources) {
        double d = sources;
        return (float) ((0.1d / d) + ((0.9d / d) * ((double) x)));
    }

    private static final float generateContinuousAudioConfig$normalizeFrequencyForContinuous(float f) {
        return (float) ((((double) f) * 150.0d) + CONTINUOUS_FREQUENCY_MIN);
    }

    private final double normalizeFrequency(float value) {
        return (((double) value) * 380.0d) + MIN_FREQUENCY;
    }

    public AudioSimulator(CompatibilityMode compatibilityMode) {
        Intrinsics.checkNotNullParameter(compatibilityMode, "compatibilityMode");
        this.compatibilityMode = compatibilityMode;
        this.sampleRate = 22050;
        this.sampleRateF = 22050;
        boolean zIsEmulator = isEmulator();
        this.isEmulatorDevice = zIsEmulator;
        this.playSound = zIsEmulator;
        this.audioScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
        this.audioMutex = MutexKt.Mutex$default(false, 1, null);
    }

    public final byte[] parsePattern(PatternData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (this.playSound) {
            return renderPattern(new AudioPatternConfig(generateDiscreteAudioConfig(data), generateContinuousAudioConfig(data)));
        }
        return null;
    }

    /* JADX INFO: renamed from: com.swmansion.pulsar.audio.AudioSimulator$enableSound$1, reason: invalid class name */
    /* JADX INFO: compiled from: AudioSimulator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.swmansion.pulsar.audio.AudioSimulator$enableSound$1", f = "AudioSimulator.kt", i = {1}, l = {MdtaMetadataEntry.TYPE_INDICATOR_INT32, 575}, m = "invokeSuspend", n = {"$this$withLock_u24default$iv"}, s = {"L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $value;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$value = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AudioSimulator.this.new AnonymousClass1(this.$value, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Mutex mutex;
            AudioSimulator audioSimulator;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    audioSimulator = (AudioSimulator) this.L$1;
                    mutex = (Mutex) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                try {
                    audioSimulator.stopAndReleaseAudioTrack();
                    Unit unit = Unit.INSTANCE;
                    mutex.unlock(null);
                    AudioSimulator.this.shouldForceAudiblePlayback = this.$value;
                    AudioSimulator.this.playSound = this.$value;
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    mutex.unlock(null);
                    throw th;
                }
            }
            ResultKt.throwOnFailure(obj);
            Job job = AudioSimulator.this.currentPlayJob;
            if (job != null) {
                this.label = 1;
                if (JobKt.cancelAndJoin(job, this) != coroutine_suspended) {
                }
            }
            return coroutine_suspended;
            AudioSimulator.this.currentPlayJob = null;
            mutex = AudioSimulator.this.audioMutex;
            AudioSimulator audioSimulator2 = AudioSimulator.this;
            this.L$0 = mutex;
            this.L$1 = audioSimulator2;
            this.label = 2;
            if (mutex.lock(null, this) != coroutine_suspended) {
                audioSimulator = audioSimulator2;
                audioSimulator.stopAndReleaseAudioTrack();
                Unit unit2 = Unit.INSTANCE;
                mutex.unlock(null);
                AudioSimulator.this.shouldForceAudiblePlayback = this.$value;
                AudioSimulator.this.playSound = this.$value;
                return Unit.INSTANCE;
            }
            return coroutine_suspended;
        }
    }

    public final void enableSound(boolean value) throws InterruptedException {
        BuildersKt__BuildersKt.runBlocking$default(null, new AnonymousClass1(value, null), 1, null);
    }

    public final void play(byte[] buffer) {
        if (buffer == null || !this.playSound || buffer.length == 0) {
            return;
        }
        Job job = this.currentPlayJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.currentPlayJob = BuildersKt__Builders_commonKt.launch$default(this.audioScope, null, null, new C06271(buffer, null), 3, null);
    }

    /* JADX INFO: renamed from: com.swmansion.pulsar.audio.AudioSimulator$play$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AudioSimulator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.swmansion.pulsar.audio.AudioSimulator$play$1", f = "AudioSimulator.kt", i = {0, 0, 1, 1, 1, 1, 1}, l = {575, AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID}, m = "invokeSuspend", n = {"$this$launch", "$this$withLock_u24default$iv", "$this$launch", "$this$withLock_u24default$iv", "$this$invokeSuspend_u24lambda_u242_u24lambda_u240", "totalBytesWritten", "lastWriteTime"}, s = {"L$0", "L$1", "L$0", "L$1", "L$5", "I$0", "J$0"})
    static final class C06271 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ byte[] $buffer;
        int I$0;
        long J$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06271(byte[] bArr, Continuation<? super C06271> continuation) {
            super(2, continuation);
            this.$buffer = bArr;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C06271 c06271 = AudioSimulator.this.new C06271(this.$buffer, continuation);
            c06271.L$0 = obj;
            return c06271;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06271) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:33:0x00b1 A[Catch: all -> 0x0036, Exception -> 0x0039, CancellationException -> 0x003c, TryCatch #4 {CancellationException -> 0x003c, Exception -> 0x0039, blocks: (B:7:0x002f, B:31:0x00ae, B:33:0x00b1, B:37:0x00bf, B:40:0x00cb, B:45:0x00ef, B:46:0x00f7, B:48:0x0103, B:22:0x0087, B:24:0x008d, B:25:0x0090, B:27:0x0096, B:29:0x009c, B:30:0x00a2), top: B:66:0x000d, outer: #2 }] */
        /* JADX WARN: Code duplicated, block: B:36:0x00bd  */
        /* JADX WARN: Code duplicated, block: B:37:0x00bf A[Catch: all -> 0x0036, Exception -> 0x0039, CancellationException -> 0x003c, TryCatch #4 {CancellationException -> 0x003c, Exception -> 0x0039, blocks: (B:7:0x002f, B:31:0x00ae, B:33:0x00b1, B:37:0x00bf, B:40:0x00cb, B:45:0x00ef, B:46:0x00f7, B:48:0x0103, B:22:0x0087, B:24:0x008d, B:25:0x0090, B:27:0x0096, B:29:0x009c, B:30:0x00a2), top: B:66:0x000d, outer: #2 }] */
        /* JADX WARN: Code duplicated, block: B:39:0x00ca  */
        /* JADX WARN: Code duplicated, block: B:40:0x00cb A[Catch: all -> 0x0036, Exception -> 0x0039, CancellationException -> 0x003c, TryCatch #4 {CancellationException -> 0x003c, Exception -> 0x0039, blocks: (B:7:0x002f, B:31:0x00ae, B:33:0x00b1, B:37:0x00bf, B:40:0x00cb, B:45:0x00ef, B:46:0x00f7, B:48:0x0103, B:22:0x0087, B:24:0x008d, B:25:0x0090, B:27:0x0096, B:29:0x009c, B:30:0x00a2), top: B:66:0x000d, outer: #2 }] */
        /* JADX WARN: Code duplicated, block: B:43:0x00ea  */
        /* JADX WARN: Code duplicated, block: B:45:0x00ef A[Catch: all -> 0x0036, Exception -> 0x0039, CancellationException -> 0x003c, TryCatch #4 {CancellationException -> 0x003c, Exception -> 0x0039, blocks: (B:7:0x002f, B:31:0x00ae, B:33:0x00b1, B:37:0x00bf, B:40:0x00cb, B:45:0x00ef, B:46:0x00f7, B:48:0x0103, B:22:0x0087, B:24:0x008d, B:25:0x0090, B:27:0x0096, B:29:0x009c, B:30:0x00a2), top: B:66:0x000d, outer: #2 }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00ea -> B:44:0x00ec). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ef -> B:44:0x00ec). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r20) {
            /*
                Method dump skipped, instruction units count: 306
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.swmansion.pulsar.audio.AudioSimulator.C06271.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void stop() {
        if (this.playSound) {
            BuildersKt__Builders_commonKt.launch$default(this.audioScope, null, null, new C06281(null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.swmansion.pulsar.audio.AudioSimulator$stop$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AudioSimulator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.swmansion.pulsar.audio.AudioSimulator$stop$1", f = "AudioSimulator.kt", i = {0}, l = {575}, m = "invokeSuspend", n = {"$this$withLock_u24default$iv"}, s = {"L$0"})
    static final class C06281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        int label;

        C06281(Continuation<? super C06281> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AudioSimulator.this.new C06281(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06281) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Mutex mutex;
            AudioSimulator audioSimulator;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                mutex = AudioSimulator.this.audioMutex;
                AudioSimulator audioSimulator2 = AudioSimulator.this;
                this.L$0 = mutex;
                this.L$1 = audioSimulator2;
                this.label = 1;
                if (mutex.lock(null, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                audioSimulator = audioSimulator2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                audioSimulator = (AudioSimulator) this.L$1;
                mutex = (Mutex) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            try {
                try {
                    AudioTrack audioTrack = audioSimulator.audioTrack;
                    if (audioTrack != null && audioTrack.getPlayState() == 3) {
                        audioTrack.stop();
                        audioTrack.flush();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                Unit unit = Unit.INSTANCE;
                return Unit.INSTANCE;
            } finally {
                mutex.unlock(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configureAudioContext() {
        if (!this.isInitialized || this.audioTrack == null) {
            this.audioTrack = new AudioTrack.Builder().setAudioAttributes(new AudioAttributes.Builder().setUsage(resolveAudioUsage()).setContentType(4).build()).setAudioFormat(new AudioFormat.Builder().setEncoding(2).setSampleRate(this.sampleRate).setChannelMask(4).build()).setBufferSizeInBytes(AudioTrack.getMinBufferSize(this.sampleRate, 4, 2) * 4).setTransferMode(1).build();
            this.isInitialized = true;
        }
    }

    private final void resetAudioContext() {
        try {
            AudioTrack audioTrack = this.audioTrack;
            if (audioTrack != null) {
                audioTrack.release();
            }
        } catch (Exception unused) {
        }
        this.audioTrack = null;
        this.isInitialized = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stopAndReleaseAudioTrack() {
        try {
            AudioTrack audioTrack = this.audioTrack;
            if (audioTrack != null && audioTrack.getPlayState() == 3) {
                audioTrack.stop();
                audioTrack.flush();
            }
        } catch (Exception unused) {
        }
        resetAudioContext();
    }

    private final int resolveAudioUsage() {
        return (this.isEmulatorDevice || this.shouldForceAudiblePlayback) ? 1 : 13;
    }

    private final boolean isEmulator() {
        String str = Build.FINGERPRINT;
        String str2 = Build.MODEL;
        String str3 = Build.MANUFACTURER;
        String str4 = Build.BRAND;
        String str5 = Build.DEVICE;
        String str6 = Build.HARDWARE;
        String BOARD = Build.BOARD;
        Intrinsics.checkNotNullExpressionValue(BOARD, "BOARD");
        String lowerCase = BOARD.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String BOOTLOADER = Build.BOOTLOADER;
        Intrinsics.checkNotNullExpressionValue(BOOTLOADER, "BOOTLOADER");
        String lowerCase2 = BOOTLOADER.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        Intrinsics.checkNotNull(str6);
        String lowerCase3 = str6.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
        String str7 = Build.PRODUCT;
        Intrinsics.checkNotNull(str);
        if (StringsKt.startsWith$default(str, "generic", false, 2, (Object) null) || StringsKt.startsWith$default(str, EnvironmentCompat.MEDIA_UNKNOWN, false, 2, (Object) null)) {
            return true;
        }
        Intrinsics.checkNotNull(str2);
        String str8 = str2;
        if (StringsKt.contains$default((CharSequence) str8, (CharSequence) "google_sdk", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str8, (CharSequence) "Emulator", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str8, (CharSequence) "Android SDK built for x86", false, 2, (Object) null)) {
            return true;
        }
        Intrinsics.checkNotNull(str3);
        if (StringsKt.contains$default((CharSequence) str3, (CharSequence) "Genymotion", false, 2, (Object) null)) {
            return true;
        }
        Intrinsics.checkNotNull(str4);
        if (StringsKt.startsWith$default(str4, "generic", false, 2, (Object) null)) {
            Intrinsics.checkNotNull(str5);
            if (StringsKt.startsWith$default(str5, "generic", false, 2, (Object) null)) {
                return true;
            }
        }
        if (Intrinsics.areEqual(str7, "google_sdk")) {
            return true;
        }
        String str9 = str6;
        if (StringsKt.contains$default((CharSequence) str9, (CharSequence) "goldfish", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str9, (CharSequence) "ranchu", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "nox", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) lowerCase2, (CharSequence) "nox", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) lowerCase3, (CharSequence) "nox", false, 2, (Object) null)) {
            return true;
        }
        Intrinsics.checkNotNull(str7);
        String lowerCase4 = str7.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase4, "toLowerCase(...)");
        return StringsKt.contains$default((CharSequence) lowerCase4, (CharSequence) "nox", false, 2, (Object) null);
    }

    private final float generateWaveform(WaveformType waveform, float phase) {
        float f = (phase % 6.2831855f) / 6.2831855f;
        int i = WhenMappings.$EnumSwitchMapping$0[waveform.ordinal()];
        if (i == 1) {
            return (float) Math.sin(phase);
        }
        if (i == 2) {
            return f < 0.5f ? 1.0f : -1.0f;
        }
        if (i != 3) {
            if (i == 4) {
                return (f * 2.0f) - 1.0f;
            }
            throw new NoWhenBranchMatchedException();
        }
        if (f < 0.25f) {
            return f * 4.0f;
        }
        return f < 0.75f ? 2.0f - (f * 4.0f) : (f - 1.0f) * 4.0f;
    }

    private final List<DiscreteAudioConfig> generateDiscreteAudioConfig(PatternData data) {
        ArrayList arrayList = new ArrayList();
        for (ConfigPoint configPoint : data.getDiscretePattern()) {
            double dNormalizeFrequency = normalizeFrequency(configPoint.getFrequency());
            float fAlignVolume = alignVolume(configPoint.getAmplitude(), 3);
            arrayList.add(new DiscreteAudioConfig(new OscillatorConfig(new FrequencyConfig(dNormalizeFrequency, dNormalizeFrequency * 0.2d, 0.028d), new EnvelopeConfig(0.002d, 0.0d, 1.0d, 0.0d, 0.014d), WaveformType.SINE), configPoint.getTime(), fAlignVolume));
            double d = dNormalizeFrequency * 1.5d;
            arrayList.add(new DiscreteAudioConfig(new OscillatorConfig(new FrequencyConfig(d, d * 0.4d, 0.031d), new EnvelopeConfig(0.0d, 0.0d, 1.0d, 0.0d, 0.015d), WaveformType.SINE), configPoint.getTime(), fAlignVolume));
            double d2 = dNormalizeFrequency * 0.3d;
            arrayList.add(new DiscreteAudioConfig(new OscillatorConfig(new FrequencyConfig(d2, d2 * 0.5d, 0.039d), new EnvelopeConfig(0.005d, 0.0d, 1.0d, 0.0d, 0.018d), WaveformType.SINE), configPoint.getTime(), fAlignVolume));
        }
        return arrayList;
    }

    private final List<ContinuousAudioConfig> generateContinuousAudioConfig(PatternData data) {
        List<ValuePoint> amplitude = data.getContinuousPattern().getAmplitude();
        if (amplitude.isEmpty()) {
            amplitude = CollectionsKt.emptyList();
        }
        List<ValuePoint> list = amplitude;
        List<ValuePoint> frequency = data.getContinuousPattern().getFrequency();
        if (frequency.isEmpty()) {
            frequency = CollectionsKt.emptyList();
        }
        List<ValuePoint> list2 = frequency;
        ArrayList arrayList = new ArrayList();
        Pair<List<ValuePoint>, List<ValuePoint>> pairGenerateContinuousAudioConfig$applyModifiers = generateContinuousAudioConfig$applyModifiers(list, list2, 0.6f, 0.8f);
        arrayList.add(new ContinuousAudioConfig("sine", new AudioDataConfig(pairGenerateContinuousAudioConfig$applyModifiers.component1(), pairGenerateContinuousAudioConfig$applyModifiers.component2())));
        Pair<List<ValuePoint>, List<ValuePoint>> pairGenerateContinuousAudioConfig$applyModifiers2 = generateContinuousAudioConfig$applyModifiers(list, list2, 0.2f, 0.4f);
        arrayList.add(new ContinuousAudioConfig("triangle", new AudioDataConfig(pairGenerateContinuousAudioConfig$applyModifiers2.component1(), pairGenerateContinuousAudioConfig$applyModifiers2.component2())));
        Pair<List<ValuePoint>, List<ValuePoint>> pairGenerateContinuousAudioConfig$applyModifiers3 = generateContinuousAudioConfig$applyModifiers(list, list2, 0.5f, 1.0f);
        arrayList.add(new ContinuousAudioConfig("sine", new AudioDataConfig(pairGenerateContinuousAudioConfig$applyModifiers3.component1(), pairGenerateContinuousAudioConfig$applyModifiers3.component2())));
        return arrayList;
    }

    private static final Pair<List<ValuePoint>, List<ValuePoint>> generateContinuousAudioConfig$applyModifiers(List<ValuePoint> list, List<ValuePoint> list2, float f, float f2) {
        List<ValuePoint> list3 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
        for (ValuePoint valuePoint : list3) {
            arrayList.add(new ValuePoint(valuePoint.getTime(), valuePoint.getValue() * f));
        }
        ArrayList arrayList2 = arrayList;
        List<ValuePoint> list4 = list2;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list4, 10));
        for (ValuePoint valuePoint2 : list4) {
            arrayList3.add(new ValuePoint(valuePoint2.getTime(), generateContinuousAudioConfig$normalizeFrequencyForContinuous(valuePoint2.getValue()) * f2));
        }
        return new Pair<>(arrayList2, arrayList3);
    }

    private final byte[] renderPattern(AudioPatternConfig config) {
        Iterator it;
        float freqFinal;
        int i;
        int i2;
        WaveformType next;
        int i3 = 1;
        int iCalculateTotalDuration = ((int) (calculateTotalDuration(config) * ((double) this.sampleRate))) + 1;
        if (iCalculateTotalDuration <= 0) {
            return null;
        }
        float[] fArr = new float[iCalculateTotalDuration];
        float[] fArr2 = new float[config.getContinuousData().size()];
        float[] fArr3 = new float[config.getDiscreteData().size()];
        List<ContinuousAudioConfig> continuousData = config.getContinuousData();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(continuousData, 10));
        for (ContinuousAudioConfig continuousAudioConfig : continuousData) {
            Iterator<WaveformType> it2 = WaveformType.getEntries().iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!StringsKt.equals(next.name(), continuousAudioConfig.getType(), true));
            WaveformType waveformType = next;
            if (waveformType == null) {
                waveformType = WaveformType.SINE;
            }
            arrayList.add(waveformType);
        }
        WaveformType[] waveformTypeArr = (WaveformType[]) arrayList.toArray(new WaveformType[0]);
        List<DiscreteAudioConfig> discreteData = config.getDiscreteData();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(discreteData, 10));
        for (DiscreteAudioConfig discreteAudioConfig : discreteData) {
            EnvelopeConfig envelope = discreteAudioConfig.getOscillator().getEnvelope();
            double attack = envelope.getAttack() + envelope.getDecay() + envelope.getSustainDuration() + envelope.getRelease();
            double timestamp = discreteAudioConfig.getTimestamp() / 1000.0d;
            int i4 = i3;
            int i5 = this.sampleRate;
            int i6 = (int) (((double) i5) * timestamp);
            float[] fArr4 = fArr;
            int iCeil = i6 + ((int) Math.ceil(((double) i5) * attack));
            FrequencyConfig frequency = discreteAudioConfig.getOscillator().getFrequency();
            double dMin = frequency.getDecayTime() > 0.0d ? Math.min(frequency.getDecayTime(), attack) : 0.0d;
            float fLog = (frequency.getDecayTime() <= 0.0d || frequency.getInitial() <= 0.0d) ? 0.0f : (float) Math.log(frequency.getFinal() / frequency.getInitial());
            float initial = (float) frequency.getInitial();
            float f = (float) frequency.getFinal();
            int i7 = (int) (dMin * ((double) this.sampleRate));
            int attack2 = (int) (envelope.getAttack() * ((double) this.sampleRate));
            int attack3 = (int) ((envelope.getAttack() + envelope.getDecay()) * ((double) this.sampleRate));
            double attack4 = envelope.getAttack() + envelope.getDecay() + envelope.getSustainDuration();
            int i8 = this.sampleRate;
            arrayList2.add(new DiscreteOscillatorCache(i6, iCeil, initial, f, i7, fLog, attack2, attack3, (int) (attack4 * ((double) i8)), (int) (attack * ((double) i8)), (float) envelope.getSustainLevel(), discreteAudioConfig.getVolume(), discreteAudioConfig.getOscillator().getWaveform()));
            fArr = fArr4;
            i3 = i4;
        }
        int i9 = i3;
        float[] fArr5 = fArr;
        ArrayList arrayList3 = arrayList2;
        int size = config.getContinuousData().size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = i9;
        }
        int size2 = config.getContinuousData().size();
        int[] iArr2 = new int[size2];
        for (int i11 = 0; i11 < size2; i11++) {
            iArr2[i11] = i9;
        }
        int i12 = 0;
        while (i12 < iCalculateTotalDuration) {
            float f2 = (i12 / this.sampleRateF) * 1000.0f;
            int i13 = 0;
            float volume = 0.0f;
            for (Object obj : config.getContinuousData()) {
                int i14 = i13 + 1;
                if (i13 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                ContinuousAudioConfig continuousAudioConfig2 = (ContinuousAudioConfig) obj;
                if (continuousAudioConfig2.getData().getAmplitude().isEmpty() || continuousAudioConfig2.getData().getFrequency().isEmpty()) {
                    i = iCalculateTotalDuration;
                    i2 = i12;
                } else {
                    i = iCalculateTotalDuration;
                    i2 = i12;
                    if (f2 >= continuousAudioConfig2.getData().getAmplitude().get(0).getTime()) {
                        float fRenderPattern$valueForTime = renderPattern$valueForTime(continuousAudioConfig2.getData().getAmplitude(), f2, iArr, i13);
                        float fCoerceIn = fArr2[i13] + ((6.2831855f * RangesKt.coerceIn(renderPattern$valueForTime(continuousAudioConfig2.getData().getFrequency(), f2, iArr2, i13), 20.0f, this.sampleRateF / 2.0f)) / this.sampleRateF);
                        fArr2[i13] = fCoerceIn;
                        if (fCoerceIn > 6.2831855f) {
                            fArr2[i13] = fCoerceIn - 6.2831855f;
                        }
                        volume += fRenderPattern$valueForTime * generateWaveform(waveformTypeArr[i13], fArr2[i13]);
                    }
                }
                i13 = i14;
                iCalculateTotalDuration = i;
                i12 = i2;
            }
            int i15 = iCalculateTotalDuration;
            int i16 = i12;
            Iterator it3 = arrayList3.iterator();
            int i17 = 0;
            while (it3.hasNext()) {
                Object next2 = it3.next();
                int i18 = i17 + 1;
                if (i17 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                DiscreteOscillatorCache discreteOscillatorCache = (DiscreteOscillatorCache) next2;
                int i19 = i16;
                if (i19 < discreteOscillatorCache.getStartSample() || i19 >= discreteOscillatorCache.getEndSample()) {
                    it = it3;
                } else {
                    int startSample = i19 - discreteOscillatorCache.getStartSample();
                    float sustainLevel = 1.0f;
                    if (startSample < discreteOscillatorCache.getEnvAttackSamples()) {
                        if (discreteOscillatorCache.getEnvAttackSamples() > 0) {
                            it = it3;
                            sustainLevel = startSample / discreteOscillatorCache.getEnvAttackSamples();
                        } else {
                            it = it3;
                        }
                    } else {
                        it = it3;
                        if (startSample >= discreteOscillatorCache.getEnvDecayEndSamples()) {
                            if (startSample < discreteOscillatorCache.getEnvSustainEndSamples()) {
                                sustainLevel = discreteOscillatorCache.getSustainLevel();
                            } else {
                                int envSustainEndSamples = startSample - discreteOscillatorCache.getEnvSustainEndSamples();
                                int envTotalSamples = discreteOscillatorCache.getEnvTotalSamples() - discreteOscillatorCache.getEnvSustainEndSamples();
                                sustainLevel = envTotalSamples > 0 ? 1.0f - (envSustainEndSamples / envTotalSamples) : 0.0f;
                            }
                        }
                    }
                    if (discreteOscillatorCache.getFreqDecaySamples() > 0 && startSample < discreteOscillatorCache.getFreqDecaySamples()) {
                        freqFinal = discreteOscillatorCache.getFreqInitial() * ((float) Math.exp(discreteOscillatorCache.getLogFreqRatio() * (startSample / discreteOscillatorCache.getFreqDecaySamples())));
                    } else {
                        freqFinal = discreteOscillatorCache.getFreqFinal();
                    }
                    float f3 = fArr3[i17] + ((6.2831855f * freqFinal) / this.sampleRateF);
                    fArr3[i17] = f3;
                    if (f3 > 6.2831855f) {
                        fArr3[i17] = f3 - 6.2831855f;
                    }
                    volume += discreteOscillatorCache.getVolume() * sustainLevel * generateWaveform(discreteOscillatorCache.getWaveform(), fArr3[i17]);
                }
                i17 = i18;
                it3 = it;
                i16 = i19;
            }
            int i20 = i16;
            fArr5[i20] = volume;
            i12 = i20 + 1;
            iCalculateTotalDuration = i15;
        }
        return convertToByteArray(fArr5);
    }

    /* JADX INFO: compiled from: AudioSimulator.kt */
    @Metadata(d1 = {"\u00001\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\u008a\b\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0006HÆ\u0003J\t\u0010'\u001a\u00020\u0006HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0006HÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0006HÆ\u0003J\t\u0010/\u001a\u00020\u0006HÆ\u0003J\t\u00100\u001a\u00020\u0011HÆ\u0003J\u0090\u0001\u00101\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00062\b\b\u0002\u0010\u0010\u001a\u00020\u0011HÆ\u0001¢\u0006\u0002\u00102J\u0013\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00106\u001a\u00020\u0003HÖ\u0001J\t\u00107\u001a\u000208HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0018R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0015R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015R\u0011\u0010\u000e\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0018R\u0011\u0010\u000f\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0018R\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#¨\u00069"}, d2 = {"com/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache", "", "startSample", "", "endSample", "freqInitial", "", "freqFinal", "freqDecaySamples", "logFreqRatio", "envAttackSamples", "envDecayEndSamples", "envSustainEndSamples", "envTotalSamples", "sustainLevel", "volume", "waveform", "Lcom/swmansion/pulsar/types/WaveformType;", "<init>", "(IIFFIFIIIIFFLcom/swmansion/pulsar/types/WaveformType;)V", "getStartSample", "()I", "getEndSample", "getFreqInitial", "()F", "getFreqFinal", "getFreqDecaySamples", "getLogFreqRatio", "getEnvAttackSamples", "getEnvDecayEndSamples", "getEnvSustainEndSamples", "getEnvTotalSamples", "getSustainLevel", "getVolume", "getWaveform", "()Lcom/swmansion/pulsar/types/WaveformType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "(IIFFIFIIIIFFLcom/swmansion/pulsar/types/WaveformType;)Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;", "equals", "", "other", "hashCode", "toString", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class DiscreteOscillatorCache {
        private final int endSample;
        private final int envAttackSamples;
        private final int envDecayEndSamples;
        private final int envSustainEndSamples;
        private final int envTotalSamples;
        private final int freqDecaySamples;
        private final float freqFinal;
        private final float freqInitial;
        private final float logFreqRatio;
        private final int startSample;
        private final float sustainLevel;
        private final float volume;
        private final WaveformType waveform;

        public static /* synthetic */ DiscreteOscillatorCache copy$default(DiscreteOscillatorCache discreteOscillatorCache, int i, int i2, float f, float f2, int i3, float f3, int i4, int i5, int i6, int i7, float f4, float f5, WaveformType waveformType, int i8, Object obj) {
            if ((i8 & 1) != 0) {
                i = discreteOscillatorCache.startSample;
            }
            return discreteOscillatorCache.copy(i, (i8 & 2) != 0 ? discreteOscillatorCache.endSample : i2, (i8 & 4) != 0 ? discreteOscillatorCache.freqInitial : f, (i8 & 8) != 0 ? discreteOscillatorCache.freqFinal : f2, (i8 & 16) != 0 ? discreteOscillatorCache.freqDecaySamples : i3, (i8 & 32) != 0 ? discreteOscillatorCache.logFreqRatio : f3, (i8 & 64) != 0 ? discreteOscillatorCache.envAttackSamples : i4, (i8 & 128) != 0 ? discreteOscillatorCache.envDecayEndSamples : i5, (i8 & 256) != 0 ? discreteOscillatorCache.envSustainEndSamples : i6, (i8 & 512) != 0 ? discreteOscillatorCache.envTotalSamples : i7, (i8 & 1024) != 0 ? discreteOscillatorCache.sustainLevel : f4, (i8 & 2048) != 0 ? discreteOscillatorCache.volume : f5, (i8 & 4096) != 0 ? discreteOscillatorCache.waveform : waveformType);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getStartSample() {
            return this.startSample;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final int getEnvTotalSamples() {
            return this.envTotalSamples;
        }

        /* JADX INFO: renamed from: component11, reason: from getter */
        public final float getSustainLevel() {
            return this.sustainLevel;
        }

        /* JADX INFO: renamed from: component12, reason: from getter */
        public final float getVolume() {
            return this.volume;
        }

        /* JADX INFO: renamed from: component13, reason: from getter */
        public final WaveformType getWaveform() {
            return this.waveform;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getEndSample() {
            return this.endSample;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final float getFreqInitial() {
            return this.freqInitial;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final float getFreqFinal() {
            return this.freqFinal;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final int getFreqDecaySamples() {
            return this.freqDecaySamples;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final float getLogFreqRatio() {
            return this.logFreqRatio;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final int getEnvAttackSamples() {
            return this.envAttackSamples;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final int getEnvDecayEndSamples() {
            return this.envDecayEndSamples;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final int getEnvSustainEndSamples() {
            return this.envSustainEndSamples;
        }

        public final DiscreteOscillatorCache copy(int startSample, int endSample, float freqInitial, float freqFinal, int freqDecaySamples, float logFreqRatio, int envAttackSamples, int envDecayEndSamples, int envSustainEndSamples, int envTotalSamples, float sustainLevel, float volume, WaveformType waveform) {
            Intrinsics.checkNotNullParameter(waveform, "waveform");
            return new DiscreteOscillatorCache(startSample, endSample, freqInitial, freqFinal, freqDecaySamples, logFreqRatio, envAttackSamples, envDecayEndSamples, envSustainEndSamples, envTotalSamples, sustainLevel, volume, waveform);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DiscreteOscillatorCache)) {
                return false;
            }
            DiscreteOscillatorCache discreteOscillatorCache = (DiscreteOscillatorCache) other;
            return this.startSample == discreteOscillatorCache.startSample && this.endSample == discreteOscillatorCache.endSample && Float.compare(this.freqInitial, discreteOscillatorCache.freqInitial) == 0 && Float.compare(this.freqFinal, discreteOscillatorCache.freqFinal) == 0 && this.freqDecaySamples == discreteOscillatorCache.freqDecaySamples && Float.compare(this.logFreqRatio, discreteOscillatorCache.logFreqRatio) == 0 && this.envAttackSamples == discreteOscillatorCache.envAttackSamples && this.envDecayEndSamples == discreteOscillatorCache.envDecayEndSamples && this.envSustainEndSamples == discreteOscillatorCache.envSustainEndSamples && this.envTotalSamples == discreteOscillatorCache.envTotalSamples && Float.compare(this.sustainLevel, discreteOscillatorCache.sustainLevel) == 0 && Float.compare(this.volume, discreteOscillatorCache.volume) == 0 && this.waveform == discreteOscillatorCache.waveform;
        }

        public int hashCode() {
            return (((((((((((((((((((((((Integer.hashCode(this.startSample) * 31) + Integer.hashCode(this.endSample)) * 31) + Float.hashCode(this.freqInitial)) * 31) + Float.hashCode(this.freqFinal)) * 31) + Integer.hashCode(this.freqDecaySamples)) * 31) + Float.hashCode(this.logFreqRatio)) * 31) + Integer.hashCode(this.envAttackSamples)) * 31) + Integer.hashCode(this.envDecayEndSamples)) * 31) + Integer.hashCode(this.envSustainEndSamples)) * 31) + Integer.hashCode(this.envTotalSamples)) * 31) + Float.hashCode(this.sustainLevel)) * 31) + Float.hashCode(this.volume)) * 31) + this.waveform.hashCode();
        }

        public String toString() {
            return "DiscreteOscillatorCache(startSample=" + this.startSample + ", endSample=" + this.endSample + ", freqInitial=" + this.freqInitial + ", freqFinal=" + this.freqFinal + ", freqDecaySamples=" + this.freqDecaySamples + ", logFreqRatio=" + this.logFreqRatio + ", envAttackSamples=" + this.envAttackSamples + ", envDecayEndSamples=" + this.envDecayEndSamples + ", envSustainEndSamples=" + this.envSustainEndSamples + ", envTotalSamples=" + this.envTotalSamples + ", sustainLevel=" + this.sustainLevel + ", volume=" + this.volume + ", waveform=" + this.waveform + ")";
        }

        public DiscreteOscillatorCache(int i, int i2, float f, float f2, int i3, float f3, int i4, int i5, int i6, int i7, float f4, float f5, WaveformType waveform) {
            Intrinsics.checkNotNullParameter(waveform, "waveform");
            this.startSample = i;
            this.endSample = i2;
            this.freqInitial = f;
            this.freqFinal = f2;
            this.freqDecaySamples = i3;
            this.logFreqRatio = f3;
            this.envAttackSamples = i4;
            this.envDecayEndSamples = i5;
            this.envSustainEndSamples = i6;
            this.envTotalSamples = i7;
            this.sustainLevel = f4;
            this.volume = f5;
            this.waveform = waveform;
        }

        public final int getStartSample() {
            return this.startSample;
        }

        public final int getEndSample() {
            return this.endSample;
        }

        public final float getFreqInitial() {
            return this.freqInitial;
        }

        public final float getFreqFinal() {
            return this.freqFinal;
        }

        public final int getFreqDecaySamples() {
            return this.freqDecaySamples;
        }

        public final float getLogFreqRatio() {
            return this.logFreqRatio;
        }

        public final int getEnvAttackSamples() {
            return this.envAttackSamples;
        }

        public final int getEnvDecayEndSamples() {
            return this.envDecayEndSamples;
        }

        public final int getEnvSustainEndSamples() {
            return this.envSustainEndSamples;
        }

        public final int getEnvTotalSamples() {
            return this.envTotalSamples;
        }

        public final float getSustainLevel() {
            return this.sustainLevel;
        }

        public final float getVolume() {
            return this.volume;
        }

        public final WaveformType getWaveform() {
            return this.waveform;
        }
    }

    private static final float renderPattern$valueForTime(List<ValuePoint> list, float f, int[] iArr, int i) {
        if (list.isEmpty()) {
            return 0.0f;
        }
        if (f <= list.get(0).getTime()) {
            return list.get(0).getValue();
        }
        if (f >= ((ValuePoint) CollectionsKt.last((List) list)).getTime()) {
            return ((ValuePoint) CollectionsKt.last((List) list)).getValue();
        }
        while (iArr[i] < list.size() && list.get(iArr[i]).getTime() < f) {
            iArr[i] = iArr[i] + 1;
        }
        ValuePoint valuePoint = list.get(iArr[i] - 1);
        ValuePoint valuePoint2 = list.get(iArr[i]);
        float time = valuePoint2.getTime() - valuePoint.getTime();
        if (time <= 0.0f) {
            return valuePoint.getValue();
        }
        return valuePoint.getValue() + ((valuePoint2.getValue() - valuePoint.getValue()) * ((f - valuePoint.getTime()) / time));
    }

    private final double calculateTotalDuration(AudioPatternConfig config) {
        double dMax = 0.0d;
        double dMax2 = 0.0d;
        for (ContinuousAudioConfig continuousAudioConfig : config.getContinuousData()) {
            if (!continuousAudioConfig.getData().getAmplitude().isEmpty()) {
                dMax2 = Math.max(dMax2, ((ValuePoint) CollectionsKt.last((List) continuousAudioConfig.getData().getAmplitude())).getTime() / 1000.0d);
            }
        }
        double d = dMax2 + 0.01d;
        for (DiscreteAudioConfig discreteAudioConfig : config.getDiscreteData()) {
            double timestamp = discreteAudioConfig.getTimestamp() / 1000.0d;
            EnvelopeConfig envelope = discreteAudioConfig.getOscillator().getEnvelope();
            dMax = Math.max(dMax, timestamp + envelope.getAttack() + envelope.getDecay() + envelope.getSustainDuration() + envelope.getRelease());
        }
        return Math.max(d, dMax + 0.1d);
    }

    private final byte[] convertToByteArray(float[] samples) {
        byte[] bArr = new byte[samples.length * 2];
        int length = samples.length;
        for (int i = 0; i < length; i++) {
            int iCoerceIn = RangesKt.coerceIn((int) (samples[i] * 32767.0f), -32768, 32767);
            int i2 = i * 2;
            bArr[i2] = (byte) (iCoerceIn & 255);
            bArr[i2 + 1] = (byte) ((iCoerceIn >> 8) & 255);
        }
        return bArr;
    }

    public final void setCompatibilityMode(CompatibilityMode mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.compatibilityMode = mode;
    }
}
