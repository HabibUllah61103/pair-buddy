.class public final Lcom/swmansion/pulsar/audio/AudioSimulator;
.super Ljava/lang/Object;
.source "AudioSimulator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/audio/AudioSimulator$Companion;,
        Lcom/swmansion/pulsar/audio/AudioSimulator$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioSimulator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioSimulator.kt\ncom/swmansion/pulsar/audio/AudioSimulator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,570:1\n1863#2,2:571\n1557#2:574\n1628#2,3:575\n1557#2:580\n1628#2,3:581\n1872#2,3:584\n1872#2,3:587\n1557#2:590\n1628#2,3:591\n1557#2:594\n1628#2,3:595\n1#3:573\n37#4,2:578\n*S KotlinDebug\n*F\n+ 1 AudioSimulator.kt\ncom/swmansion/pulsar/audio/AudioSimulator\n*L\n288#1:571,2\n417#1:574\n417#1:575,3\n437#1:580\n437#1:581,3\n484#1:584,3\n498#1:587,3\n384#1:590\n384#1:591,3\n387#1:594\n387#1:595,3\n419#1:578,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0004\u0018\u0000 =2\u00020\u0001:\u0001=B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000bJ\u0010\u0010\u001e\u001a\u00020\u001c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0018J\u0006\u0010 \u001a\u00020\u001cJ\u0008\u0010!\u001a\u00020\u001cH\u0002J\u0008\u0010\"\u001a\u00020\u001cH\u0002J\u0008\u0010#\u001a\u00020\u001cH\u0002J\u0008\u0010$\u001a\u00020\u0007H\u0002J\u0008\u0010%\u001a\u00020\u000bH\u0002J\u0018\u0010&\u001a\u00020\t2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\tH\u0002J\u0010\u0010*\u001a\u00020+2\u0006\u0010\u001d\u001a\u00020\tH\u0002J\u0018\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0007H\u0002J\u0016\u0010/\u001a\u0008\u0012\u0004\u0012\u000201002\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0016\u00102\u001a\u0008\u0012\u0004\u0012\u000203002\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0012\u00104\u001a\u0004\u0018\u00010\u00182\u0006\u00105\u001a\u000206H\u0002J\u0010\u00107\u001a\u00020+2\u0006\u00105\u001a\u000206H\u0002J\u0010\u00108\u001a\u00020\u00182\u0006\u00109\u001a\u00020:H\u0002J\u000e\u0010;\u001a\u00020\u001c2\u0006\u0010<\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lcom/swmansion/pulsar/audio/AudioSimulator;",
        "",
        "compatibilityMode",
        "Lcom/swmansion/pulsar/types/CompatibilityMode;",
        "<init>",
        "(Lcom/swmansion/pulsar/types/CompatibilityMode;)V",
        "sampleRate",
        "",
        "sampleRateF",
        "",
        "isEmulatorDevice",
        "",
        "audioTrack",
        "Landroid/media/AudioTrack;",
        "isInitialized",
        "playSound",
        "shouldForceAudiblePlayback",
        "audioScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "audioMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "currentPlayJob",
        "Lkotlinx/coroutines/Job;",
        "parsePattern",
        "",
        "data",
        "Lcom/swmansion/pulsar/types/PatternData;",
        "enableSound",
        "",
        "value",
        "play",
        "buffer",
        "stop",
        "configureAudioContext",
        "resetAudioContext",
        "stopAndReleaseAudioTrack",
        "resolveAudioUsage",
        "isEmulator",
        "generateWaveform",
        "waveform",
        "Lcom/swmansion/pulsar/types/WaveformType;",
        "phase",
        "normalizeFrequency",
        "",
        "alignVolume",
        "x",
        "sources",
        "generateDiscreteAudioConfig",
        "",
        "Lcom/swmansion/pulsar/types/DiscreteAudioConfig;",
        "generateContinuousAudioConfig",
        "Lcom/swmansion/pulsar/types/ContinuousAudioConfig;",
        "renderPattern",
        "config",
        "Lcom/swmansion/pulsar/types/AudioPatternConfig;",
        "calculateTotalDuration",
        "convertToByteArray",
        "samples",
        "",
        "setCompatibilityMode",
        "mode",
        "Companion",
        "Pulsar_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CONTINUOUS_FREQUENCY_MAX:D = 230.0

.field private static final CONTINUOUS_FREQUENCY_MIN:D = 80.0

.field public static final Companion:Lcom/swmansion/pulsar/audio/AudioSimulator$Companion;

.field private static final MAX_FREQUENCY:D = 440.0

.field private static final MIN_FREQUENCY:D = 60.0

.field private static final NUM_SOURCES:I = 0x3


# instance fields
.field private final audioMutex:Lkotlinx/coroutines/sync/Mutex;

.field private final audioScope:Lkotlinx/coroutines/CoroutineScope;

.field private audioTrack:Landroid/media/AudioTrack;

.field private compatibilityMode:Lcom/swmansion/pulsar/types/CompatibilityMode;

.field private currentPlayJob:Lkotlinx/coroutines/Job;

.field private final isEmulatorDevice:Z

.field private isInitialized:Z

.field private playSound:Z

.field private final sampleRate:I

.field private final sampleRateF:F

.field private shouldForceAudiblePlayback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/audio/AudioSimulator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/audio/AudioSimulator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/audio/AudioSimulator;->Companion:Lcom/swmansion/pulsar/audio/AudioSimulator$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/pulsar/types/CompatibilityMode;)V
    .locals 2

    const-string v0, "compatibilityMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->compatibilityMode:Lcom/swmansion/pulsar/types/CompatibilityMode;

    const/16 p1, 0x5622

    .line 43
    iput p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRate:I

    int-to-float p1, p1

    .line 44
    iput p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRateF:F

    .line 45
    invoke-direct {p0}, Lcom/swmansion/pulsar/audio/AudioSimulator;->isEmulator()Z

    move-result p1

    iput-boolean p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->isEmulatorDevice:Z

    .line 48
    iput-boolean p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->playSound:Z

    .line 50
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->audioScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-static {v1, p1, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->audioMutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final synthetic access$configureAudioContext(Lcom/swmansion/pulsar/audio/AudioSimulator;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/swmansion/pulsar/audio/AudioSimulator;->configureAudioContext()V

    return-void
.end method

.method public static final synthetic access$getAudioMutex$p(Lcom/swmansion/pulsar/audio/AudioSimulator;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->audioMutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$getAudioTrack$p(Lcom/swmansion/pulsar/audio/AudioSimulator;)Landroid/media/AudioTrack;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->audioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method public static final synthetic access$getCurrentPlayJob$p(Lcom/swmansion/pulsar/audio/AudioSimulator;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->currentPlayJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$setCurrentPlayJob$p(Lcom/swmansion/pulsar/audio/AudioSimulator;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->currentPlayJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$setPlaySound$p(Lcom/swmansion/pulsar/audio/AudioSimulator;Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->playSound:Z

    return-void
.end method

.method public static final synthetic access$setShouldForceAudiblePlayback$p(Lcom/swmansion/pulsar/audio/AudioSimulator;Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->shouldForceAudiblePlayback:Z

    return-void
.end method

.method public static final synthetic access$stopAndReleaseAudioTrack(Lcom/swmansion/pulsar/audio/AudioSimulator;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/swmansion/pulsar/audio/AudioSimulator;->stopAndReleaseAudioTrack()V

    return-void
.end method

.method private final alignVolume(FI)F
    .locals 6

    int-to-double v0, p2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    div-double/2addr v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    div-double/2addr v4, v0

    float-to-double p1, p1

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    double-to-float p1, v2

    return p1
.end method

.method private final calculateTotalDuration(Lcom/swmansion/pulsar/types/AudioPatternConfig;)D
    .locals 14

    .line 536
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/AudioPatternConfig;->getContinuousData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-wide v6, 0x408f400000000000L    # 1000.0

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;

    .line 537
    invoke-virtual {v5}, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;->getData()Lcom/swmansion/pulsar/types/AudioDataConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/swmansion/pulsar/types/AudioDataConfig;->getAmplitude()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 538
    invoke-virtual {v5}, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;->getData()Lcom/swmansion/pulsar/types/AudioDataConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/swmansion/pulsar/types/AudioDataConfig;->getAmplitude()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v5}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v6

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v3, v8

    .line 544
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/AudioPatternConfig;->getDiscreteData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;

    .line 545
    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->getTimestamp()D

    move-result-wide v8

    div-double/2addr v8, v6

    .line 546
    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->getOscillator()Lcom/swmansion/pulsar/types/OscillatorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/OscillatorConfig;->getEnvelope()Lcom/swmansion/pulsar/types/EnvelopeConfig;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getAttack()D

    move-result-wide v10

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getDecay()D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getSustainDuration()D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getRelease()D

    move-result-wide v12

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 549
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    goto :goto_1

    :cond_2
    const-wide v5, 0x3fb999999999999aL    # 0.1

    add-double/2addr v1, v5

    .line 553
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private final configureAudioContext()V
    .locals 6

    .line 177
    iget-boolean v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRate:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    .line 179
    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 185
    new-instance v3, Landroid/media/AudioTrack$Builder;

    invoke-direct {v3}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 187
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 188
    invoke-direct {p0}, Lcom/swmansion/pulsar/audio/AudioSimulator;->resolveAudioUsage()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 189
    invoke-virtual {v4, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 190
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 186
    invoke-virtual {v3, v4}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v3

    .line 193
    new-instance v4, Landroid/media/AudioFormat$Builder;

    invoke-direct {v4}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 194
    invoke-virtual {v4, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 195
    iget v4, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRate:I

    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 196
    invoke-virtual {v2, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 192
    invoke-virtual {v3, v2}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    mul-int/2addr v0, v1

    .line 199
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 200
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v0

    .line 185
    iput-object v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->audioTrack:Landroid/media/AudioTrack;

    .line 203
    iput-boolean v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->isInitialized:Z

    return-void
.end method

.method private final convertToByteArray([F)[B
    .locals 6

    .line 557
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 558
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 559
    aget v3, p1, v2

    const v4, 0x46fffe00    # 32767.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, -0x8000

    const/16 v5, 0x7fff

    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    mul-int/lit8 v4, v2, 0x2

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    .line 560
    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 561
    aput-byte v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final generateContinuousAudioConfig(Lcom/swmansion/pulsar/types/PatternData;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/pulsar/types/PatternData;",
            ")",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ContinuousAudioConfig;",
            ">;"
        }
    .end annotation

    .line 371
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getContinuousPattern()Lcom/swmansion/pulsar/types/ContinuousPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ContinuousPattern;->getAmplitude()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    check-cast v0, Ljava/util/List;

    .line 372
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getContinuousPattern()Lcom/swmansion/pulsar/types/ContinuousPattern;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/ContinuousPattern;->getFrequency()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_1
    check-cast p1, Ljava/util/List;

    .line 393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3f4ccccd    # 0.8f

    .line 395
    invoke-static {v0, p1, v2, v3}, Lcom/swmansion/pulsar/audio/AudioSimulator;->generateContinuousAudioConfig$applyModifiers(Ljava/util/List;Ljava/util/List;FF)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 396
    new-instance v4, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;

    new-instance v5, Lcom/swmansion/pulsar/types/AudioDataConfig;

    invoke-direct {v5, v3, v2}, Lcom/swmansion/pulsar/types/AudioDataConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    const-string v2, "sine"

    invoke-direct {v4, v2, v5}, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;-><init>(Ljava/lang/String;Lcom/swmansion/pulsar/types/AudioDataConfig;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3ecccccd    # 0.4f

    .line 398
    invoke-static {v0, p1, v3, v4}, Lcom/swmansion/pulsar/audio/AudioSimulator;->generateContinuousAudioConfig$applyModifiers(Ljava/util/List;Ljava/util/List;FF)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 399
    new-instance v5, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;

    new-instance v6, Lcom/swmansion/pulsar/types/AudioDataConfig;

    invoke-direct {v6, v4, v3}, Lcom/swmansion/pulsar/types/AudioDataConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    const-string v3, "triangle"

    invoke-direct {v5, v3, v6}, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;-><init>(Ljava/lang/String;Lcom/swmansion/pulsar/types/AudioDataConfig;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 401
    invoke-static {v0, p1, v3, v4}, Lcom/swmansion/pulsar/audio/AudioSimulator;->generateContinuousAudioConfig$applyModifiers(Ljava/util/List;Ljava/util/List;FF)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 402
    new-instance v3, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;

    new-instance v4, Lcom/swmansion/pulsar/types/AudioDataConfig;

    invoke-direct {v4, v0, p1}, Lcom/swmansion/pulsar/types/AudioDataConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v3, v2, v4}, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;-><init>(Ljava/lang/String;Lcom/swmansion/pulsar/types/AudioDataConfig;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private static final generateContinuousAudioConfig$applyModifiers(Ljava/util/List;Ljava/util/List;FF)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ValuePoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ValuePoint;",
            ">;FF)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ValuePoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ValuePoint;",
            ">;>;"
        }
    .end annotation

    .line 384
    check-cast p0, Ljava/lang/Iterable;

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 591
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 592
    check-cast v2, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 385
    new-instance v3, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-direct {v3, v4, v5, v2}, Lcom/swmansion/pulsar/types/ValuePoint;-><init>(JF)V

    .line 592
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 593
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 387
    check-cast p1, Ljava/lang/Iterable;

    .line 594
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/Collection;

    .line 595
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 596
    check-cast p2, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 388
    new-instance v1, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {p2}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result p2

    invoke-static {p2}, Lcom/swmansion/pulsar/audio/AudioSimulator;->generateContinuousAudioConfig$normalizeFrequencyForContinuous(F)F

    move-result p2

    mul-float/2addr p2, p3

    invoke-direct {v1, v2, v3, p2}, Lcom/swmansion/pulsar/types/ValuePoint;-><init>(JF)V

    .line 596
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 597
    :cond_1
    check-cast p0, Ljava/util/List;

    .line 390
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private static final generateContinuousAudioConfig$normalizeFrequencyForContinuous(F)F
    .locals 4

    const-wide v0, 0x4062c00000000000L    # 150.0

    float-to-double v2, p0

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    add-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method private final generateDiscreteAudioConfig(Lcom/swmansion/pulsar/types/PatternData;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/pulsar/types/PatternData;",
            ")",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/DiscreteAudioConfig;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/swmansion/pulsar/types/PatternData;->getDiscretePattern()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 571
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/pulsar/types/ConfigPoint;

    .line 289
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result v4

    invoke-direct {v0, v4}, Lcom/swmansion/pulsar/audio/AudioSimulator;->normalizeFrequency(F)D

    move-result-wide v6

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double v8, v6, v4

    .line 291
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getAmplitude()F

    move-result v4

    const/4 v5, 0x3

    invoke-direct {v0, v4, v5}, Lcom/swmansion/pulsar/audio/AudioSimulator;->alignVolume(FI)F

    move-result v4

    .line 295
    new-instance v12, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;

    .line 296
    new-instance v13, Lcom/swmansion/pulsar/types/OscillatorConfig;

    .line 297
    new-instance v5, Lcom/swmansion/pulsar/types/FrequencyConfig;

    const-wide v10, 0x3f9cac083126e979L    # 0.028

    invoke-direct/range {v5 .. v11}, Lcom/swmansion/pulsar/types/FrequencyConfig;-><init>(DDD)V

    .line 302
    new-instance v14, Lcom/swmansion/pulsar/types/EnvelopeConfig;

    const-wide/16 v21, 0x0

    const-wide v23, 0x3f8cac083126e979L    # 0.014

    const-wide v15, 0x3f60624dd2f1a9fcL    # 0.002

    const-wide/16 v17, 0x0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v14 .. v24}, Lcom/swmansion/pulsar/types/EnvelopeConfig;-><init>(DDDDD)V

    .line 309
    sget-object v8, Lcom/swmansion/pulsar/types/WaveformType;->SINE:Lcom/swmansion/pulsar/types/WaveformType;

    .line 296
    invoke-direct {v13, v5, v14, v8}, Lcom/swmansion/pulsar/types/OscillatorConfig;-><init>(Lcom/swmansion/pulsar/types/FrequencyConfig;Lcom/swmansion/pulsar/types/EnvelopeConfig;Lcom/swmansion/pulsar/types/WaveformType;)V

    .line 311
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v8

    long-to-double v8, v8

    .line 295
    invoke-direct {v12, v13, v8, v9, v4}, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;-><init>(Lcom/swmansion/pulsar/types/OscillatorConfig;DF)V

    .line 294
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double v11, v6, v8

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double v13, v11, v8

    .line 320
    new-instance v5, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;

    .line 321
    new-instance v8, Lcom/swmansion/pulsar/types/OscillatorConfig;

    .line 322
    new-instance v10, Lcom/swmansion/pulsar/types/FrequencyConfig;

    const-wide v15, 0x3f9fbe76c8b43958L    # 0.031

    invoke-direct/range {v10 .. v16}, Lcom/swmansion/pulsar/types/FrequencyConfig;-><init>(DDD)V

    .line 327
    new-instance v11, Lcom/swmansion/pulsar/types/EnvelopeConfig;

    const-wide/16 v18, 0x0

    const-wide v20, 0x3f8eb851eb851eb8L    # 0.015

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v11 .. v21}, Lcom/swmansion/pulsar/types/EnvelopeConfig;-><init>(DDDDD)V

    .line 334
    sget-object v9, Lcom/swmansion/pulsar/types/WaveformType;->SINE:Lcom/swmansion/pulsar/types/WaveformType;

    .line 321
    invoke-direct {v8, v10, v11, v9}, Lcom/swmansion/pulsar/types/OscillatorConfig;-><init>(Lcom/swmansion/pulsar/types/FrequencyConfig;Lcom/swmansion/pulsar/types/EnvelopeConfig;Lcom/swmansion/pulsar/types/WaveformType;)V

    .line 336
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v9

    long-to-double v9, v9

    .line 320
    invoke-direct {v5, v8, v9, v10, v4}, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;-><init>(Lcom/swmansion/pulsar/types/OscillatorConfig;DF)V

    .line 319
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double v11, v6, v8

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v13, v11, v5

    .line 345
    new-instance v5, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;

    .line 346
    new-instance v6, Lcom/swmansion/pulsar/types/OscillatorConfig;

    .line 347
    new-instance v10, Lcom/swmansion/pulsar/types/FrequencyConfig;

    const-wide v15, 0x3fa3f7ced916872bL    # 0.039

    invoke-direct/range {v10 .. v16}, Lcom/swmansion/pulsar/types/FrequencyConfig;-><init>(DDD)V

    .line 352
    new-instance v11, Lcom/swmansion/pulsar/types/EnvelopeConfig;

    const-wide v20, 0x3f926e978d4fdf3bL    # 0.018

    const-wide v12, 0x3f747ae147ae147bL    # 0.005

    const-wide/16 v14, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v11 .. v21}, Lcom/swmansion/pulsar/types/EnvelopeConfig;-><init>(DDDDD)V

    .line 359
    sget-object v7, Lcom/swmansion/pulsar/types/WaveformType;->SINE:Lcom/swmansion/pulsar/types/WaveformType;

    .line 346
    invoke-direct {v6, v10, v11, v7}, Lcom/swmansion/pulsar/types/OscillatorConfig;-><init>(Lcom/swmansion/pulsar/types/FrequencyConfig;Lcom/swmansion/pulsar/types/EnvelopeConfig;Lcom/swmansion/pulsar/types/WaveformType;)V

    .line 361
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v7

    long-to-double v7, v7

    .line 345
    invoke-direct {v5, v6, v7, v8, v4}, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;-><init>(Lcom/swmansion/pulsar/types/OscillatorConfig;DF)V

    .line 344
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-object v1
.end method

.method private final generateWaveform(Lcom/swmansion/pulsar/types/WaveformType;F)F
    .locals 3

    const v0, 0x40c90fdb

    rem-float v1, p2, v0

    div-float/2addr v1, v0

    .line 265
    sget-object v0, Lcom/swmansion/pulsar/audio/AudioSimulator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/WaveformType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 p2, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    const/high16 v2, 0x40000000    # 2.0f

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    return v1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const/high16 p1, 0x3e800000    # 0.25f

    cmpg-float p1, v1, p1

    const/high16 p2, 0x40800000    # 4.0f

    if-gez p1, :cond_2

    mul-float/2addr v1, p2

    return v1

    :cond_2
    const/high16 p1, 0x3f400000    # 0.75f

    cmpg-float p1, v1, p1

    if-gez p1, :cond_3

    mul-float/2addr v1, p2

    sub-float/2addr v2, v1

    return v2

    :cond_3
    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    return v1

    :cond_4
    const/high16 p1, 0x3f000000    # 0.5f

    cmpg-float p1, v1, p1

    if-gez p1, :cond_5

    return v0

    :cond_5
    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_6
    float-to-double p1, p2

    .line 266
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private final isEmulator()Z
    .locals 16

    .line 235
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 236
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 237
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 238
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 239
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 240
    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 241
    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v7, "BOARD"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "toLowerCase(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    sget-object v8, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    const-string v9, "BOOTLOADER"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 246
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v11, "generic"

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v0, v11, v12, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 247
    const-string v15, "unknown"

    invoke-static {v0, v15, v12, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/CharSequence;

    const-string v0, "google_sdk"

    move-object v15, v0

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v1, v15, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 249
    const-string v15, "Emulator"

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v1, v15, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 250
    const-string v15, "Android SDK built for x86"

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v1, v15, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 251
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/CharSequence;

    const-string v1, "Genymotion"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v2, v1, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 252
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v11, v12, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v11, v12, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 253
    :cond_0
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "goldfish"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v5, v0, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    const-string v0, "ranchu"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v5, v0, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    check-cast v6, Ljava/lang/CharSequence;

    const-string v0, "nox"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v6, v1, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    check-cast v8, Ljava/lang/CharSequence;

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v8, v1, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 258
    check-cast v9, Ljava/lang/CharSequence;

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v9, v1, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 259
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v12

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final normalizeFrequency(F)D
    .locals 4

    const-wide v0, 0x4077c00000000000L    # 380.0

    float-to-double v2, p1

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    add-double/2addr v2, v0

    return-wide v2
.end method

.method private final renderPattern(Lcom/swmansion/pulsar/types/AudioPatternConfig;)[B
    .locals 34

    move-object/from16 v0, p0

    .line 408
    invoke-direct/range {p0 .. p1}, Lcom/swmansion/pulsar/audio/AudioSimulator;->calculateTotalDuration(Lcom/swmansion/pulsar/types/AudioPatternConfig;)D

    move-result-wide v1

    .line 409
    iget v3, v0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRate:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    return-object v3

    .line 412
    :cond_0
    new-array v4, v1, [F

    .line 413
    invoke-virtual/range {p1 .. p1}, Lcom/swmansion/pulsar/types/AudioPatternConfig;->getContinuousData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [F

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/swmansion/pulsar/types/AudioPatternConfig;->getDiscreteData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [F

    .line 417
    invoke-virtual/range {p1 .. p1}, Lcom/swmansion/pulsar/types/AudioPatternConfig;->getContinuousData()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 574
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 575
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 576
    check-cast v10, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;

    .line 418
    invoke-static {}, Lcom/swmansion/pulsar/types/WaveformType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/swmansion/pulsar/types/WaveformType;

    invoke-virtual {v13}, Lcom/swmansion/pulsar/types/WaveformType;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_2
    move-object v12, v3

    :goto_1
    check-cast v12, Lcom/swmansion/pulsar/types/WaveformType;

    if-nez v12, :cond_3

    sget-object v12, Lcom/swmansion/pulsar/types/WaveformType;->SINE:Lcom/swmansion/pulsar/types/WaveformType;

    .line 576
    :cond_3
    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 577
    :cond_4
    check-cast v8, Ljava/util/List;

    .line 574
    check-cast v8, Ljava/util/Collection;

    const/4 v3, 0x0

    .line 579
    new-array v7, v3, [Lcom/swmansion/pulsar/types/WaveformType;

    invoke-interface {v8, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 419
    check-cast v7, [Lcom/swmansion/pulsar/types/WaveformType;

    .line 437
    invoke-virtual/range {p1 .. p1}, Lcom/swmansion/pulsar/types/AudioPatternConfig;->getDiscreteData()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 580
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .line 581
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 582
    check-cast v9, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;

    .line 438
    invoke-virtual {v9}, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->getOscillator()Lcom/swmansion/pulsar/types/OscillatorConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/swmansion/pulsar/types/OscillatorConfig;->getEnvelope()Lcom/swmansion/pulsar/types/EnvelopeConfig;

    move-result-object v12

    .line 439
    invoke-virtual {v12}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getAttack()D

    move-result-wide v13

    invoke-virtual {v12}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getDecay()D

    move-result-wide v15

    add-double/2addr v13, v15

    invoke-virtual {v12}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getSustainDuration()D

    move-result-wide v15

    add-double/2addr v13, v15

    invoke-virtual {v12}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getRelease()D

    move-result-wide v15

    add-double/2addr v13, v15

    .line 440
    invoke-virtual {v9}, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->getTimestamp()D

    move-result-wide v15

    const-wide v17, 0x408f400000000000L    # 1000.0

    div-double v15, v15, v17

    move/from16 v17, v2

    iget v2, v0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRate:I

    move-object/from16 v19, v12

    int-to-double v11, v2

    mul-double/2addr v11, v15

    double-to-int v11, v11

    move-object v12, v4

    int-to-double v3, v2

    mul-double/2addr v3, v13

    .line 441
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int v22, v11, v2

    .line 442
    invoke-virtual {v9}, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->getOscillator()Lcom/swmansion/pulsar/types/OscillatorConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/OscillatorConfig;->getFrequency()Lcom/swmansion/pulsar/types/FrequencyConfig;

    move-result-object v2

    .line 443
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/FrequencyConfig;->getDecayTime()D

    move-result-wide v3

    const-wide/16 v20, 0x0

    cmpl-double v3, v3, v20

    if-lez v3, :cond_5

    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/FrequencyConfig;->getDecayTime()D

    move-result-wide v3

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    goto :goto_3

    :cond_5
    move-wide/from16 v3, v20

    .line 444
    :goto_3
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/FrequencyConfig;->getDecayTime()D

    move-result-wide v23

    cmpl-double v16, v23, v20

    if-lez v16, :cond_6

    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/FrequencyConfig;->getInitial()D

    move-result-wide v23

    cmpl-double v16, v23, v20

    if-lez v16, :cond_6

    .line 445
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/FrequencyConfig;->getFinal()D

    move-result-wide v20

    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/FrequencyConfig;->getInitial()D

    move-result-wide v23

    div-double v20, v20, v23

    move-object/from16 v16, v2

    move-wide/from16 v23, v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    double-to-float v2, v2

    move/from16 v26, v2

    goto :goto_4

    :cond_6
    move-object/from16 v16, v2

    move-wide/from16 v23, v3

    const/16 v26, 0x0

    .line 446
    :goto_4
    new-instance v20, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;

    .line 449
    invoke-virtual/range {v16 .. v16}, Lcom/swmansion/pulsar/types/FrequencyConfig;->getInitial()D

    move-result-wide v2

    double-to-float v2, v2

    .line 450
    invoke-virtual/range {v16 .. v16}, Lcom/swmansion/pulsar/types/FrequencyConfig;->getFinal()D

    move-result-wide v3

    double-to-float v3, v3

    .line 451
    iget v4, v0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRate:I

    move/from16 v16, v2

    move/from16 v18, v3

    int-to-double v2, v4

    mul-double v3, v23, v2

    double-to-int v2, v3

    .line 453
    invoke-virtual/range {v19 .. v19}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getAttack()D

    move-result-wide v3

    iget v15, v0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRate:I

    move/from16 v25, v2

    move-wide/from16 v23, v3

    int-to-double v2, v15

    mul-double v3, v23, v2

    double-to-int v2, v3

    .line 454
    invoke-virtual/range {v19 .. v19}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getAttack()D

    move-result-wide v3

    invoke-virtual/range {v19 .. v19}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getDecay()D

    move-result-wide v23

    add-double v3, v3, v23

    iget v15, v0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRate:I

    move/from16 v27, v2

    move-wide/from16 v23, v3

    int-to-double v2, v15

    mul-double v3, v23, v2

    double-to-int v2, v3

    .line 455
    invoke-virtual/range {v19 .. v19}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getAttack()D

    move-result-wide v3

    invoke-virtual/range {v19 .. v19}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getDecay()D

    move-result-wide v23

    add-double v3, v3, v23

    invoke-virtual/range {v19 .. v19}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getSustainDuration()D

    move-result-wide v23

    add-double v3, v3, v23

    iget v15, v0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRate:I

    move/from16 v28, v2

    move-wide/from16 v23, v3

    int-to-double v2, v15

    mul-double v3, v23, v2

    double-to-int v2, v3

    int-to-double v3, v15

    mul-double/2addr v13, v3

    double-to-int v3, v13

    .line 457
    invoke-virtual/range {v19 .. v19}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->getSustainLevel()D

    move-result-wide v13

    double-to-float v4, v13

    .line 458
    invoke-virtual {v9}, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->getVolume()F

    move-result v32

    .line 459
    invoke-virtual {v9}, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->getOscillator()Lcom/swmansion/pulsar/types/OscillatorConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/swmansion/pulsar/types/OscillatorConfig;->getWaveform()Lcom/swmansion/pulsar/types/WaveformType;

    move-result-object v33

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v21, v11

    move/from16 v23, v16

    move/from16 v24, v18

    .line 446
    invoke-direct/range {v20 .. v33}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;-><init>(IIFFIFIIIIFFLcom/swmansion/pulsar/types/WaveformType;)V

    move-object/from16 v2, v20

    .line 582
    invoke-interface {v10, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v4, v12

    move/from16 v2, v17

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_7
    move/from16 v17, v2

    move-object v12, v4

    .line 583
    check-cast v10, Ljava/util/List;

    .line 463
    invoke-virtual/range {p1 .. p1}, Lcom/swmansion/pulsar/types/AudioPatternConfig;->getContinuousData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_8

    aput v17, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 464
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/swmansion/pulsar/types/AudioPatternConfig;->getContinuousData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v4, v2, [I

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v2, :cond_9

    aput v17, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1a

    int-to-float v8, v2

    .line 480
    iget v9, v0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRateF:F

    div-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    .line 484
    invoke-virtual/range {p1 .. p1}, Lcom/swmansion/pulsar/types/AudioPatternConfig;->getContinuousData()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 585
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v16, v11, 0x1

    if-gez v11, :cond_a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_a
    check-cast v14, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;

    .line 485
    invoke-virtual {v14}, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;->getData()Lcom/swmansion/pulsar/types/AudioDataConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/swmansion/pulsar/types/AudioDataConfig;->getAmplitude()Ljava/util/List;

    move-result-object v17

    check-cast v17, Ljava/util/Collection;

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_c

    invoke-virtual {v14}, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;->getData()Lcom/swmansion/pulsar/types/AudioDataConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/swmansion/pulsar/types/AudioDataConfig;->getFrequency()Ljava/util/List;

    move-result-object v17

    check-cast v17, Ljava/util/Collection;

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_c

    .line 486
    invoke-virtual {v14}, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;->getData()Lcom/swmansion/pulsar/types/AudioDataConfig;

    move-result-object v17

    const v19, 0x40c90fdb

    invoke-virtual/range {v17 .. v17}, Lcom/swmansion/pulsar/types/AudioDataConfig;->getAmplitude()Ljava/util/List;

    move-result-object v15

    move/from16 v17, v1

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/swmansion/pulsar/types/ValuePoint;

    move/from16 v20, v2

    invoke-virtual {v15}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v1

    long-to-float v1, v1

    cmpg-float v1, v8, v1

    if-ltz v1, :cond_d

    .line 487
    invoke-virtual {v14}, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;->getData()Lcom/swmansion/pulsar/types/AudioDataConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/AudioDataConfig;->getAmplitude()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v8, v3, v11}, Lcom/swmansion/pulsar/audio/AudioSimulator;->renderPattern$valueForTime(Ljava/util/List;F[II)F

    move-result v1

    .line 488
    invoke-virtual {v14}, Lcom/swmansion/pulsar/types/ContinuousAudioConfig;->getData()Lcom/swmansion/pulsar/types/AudioDataConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/AudioDataConfig;->getFrequency()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v8, v4, v11}, Lcom/swmansion/pulsar/audio/AudioSimulator;->renderPattern$valueForTime(Ljava/util/List;F[II)F

    move-result v2

    .line 489
    iget v14, v0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRateF:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-static {v2, v15, v14}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    .line 491
    aget v14, v5, v11

    mul-float v15, v19, v2

    iget v2, v0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRateF:F

    div-float/2addr v15, v2

    add-float/2addr v14, v15

    aput v14, v5, v11

    cmpl-float v2, v14, v19

    if-lez v2, :cond_b

    sub-float v14, v14, v19

    .line 492
    aput v14, v5, v11

    .line 494
    :cond_b
    aget-object v2, v7, v11

    aget v11, v5, v11

    invoke-direct {v0, v2, v11}, Lcom/swmansion/pulsar/audio/AudioSimulator;->generateWaveform(Lcom/swmansion/pulsar/types/WaveformType;F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v13, v1

    goto :goto_9

    :cond_c
    move/from16 v17, v1

    move/from16 v20, v2

    :cond_d
    :goto_9
    move/from16 v11, v16

    move/from16 v1, v17

    move/from16 v2, v20

    goto/16 :goto_8

    :cond_e
    move/from16 v17, v1

    move/from16 v20, v2

    const v19, 0x40c90fdb

    .line 498
    move-object v1, v10

    check-cast v1, Ljava/lang/Iterable;

    .line 588
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    if-gez v2, :cond_f

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_f
    check-cast v8, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;

    .line 499
    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getStartSample()I

    move-result v11

    move/from16 v14, v20

    if-lt v14, v11, :cond_18

    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getEndSample()I

    move-result v11

    if-lt v14, v11, :cond_10

    goto/16 :goto_d

    .line 501
    :cond_10
    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getStartSample()I

    move-result v11

    sub-int v11, v14, v11

    .line 504
    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getEnvAttackSamples()I

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    if-ge v11, v15, :cond_12

    .line 505
    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getEnvAttackSamples()I

    move-result v15

    if-lez v15, :cond_11

    int-to-float v15, v11

    move-object/from16 v20, v1

    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getEnvAttackSamples()I

    move-result v1

    int-to-float v1, v1

    div-float v16, v15, v1

    goto :goto_b

    :cond_11
    move-object/from16 v20, v1

    goto :goto_b

    :cond_12
    move-object/from16 v20, v1

    .line 506
    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getEnvDecayEndSamples()I

    move-result v1

    if-ge v11, v1, :cond_13

    goto :goto_b

    .line 507
    :cond_13
    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getEnvSustainEndSamples()I

    move-result v1

    if-ge v11, v1, :cond_14

    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getSustainLevel()F

    move-result v16

    goto :goto_b

    .line 509
    :cond_14
    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getEnvSustainEndSamples()I

    move-result v1

    sub-int v1, v11, v1

    .line 510
    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getEnvTotalSamples()I

    move-result v15

    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getEnvSustainEndSamples()I

    move-result v21

    sub-int v15, v15, v21

    if-lez v15, :cond_15

    int-to-float v1, v1

    int-to-float v15, v15

    div-float/2addr v1, v15

    sub-float v16, v16, v1

    goto :goto_b

    :cond_15
    const/16 v16, 0x0

    .line 515
    :goto_b
    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getFreqDecaySamples()I

    move-result v1

    if-lez v1, :cond_16

    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getFreqDecaySamples()I

    move-result v1

    if-ge v11, v1, :cond_16

    int-to-float v1, v11

    .line 516
    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getFreqDecaySamples()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v1, v11

    .line 517
    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getFreqInitial()F

    move-result v11

    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getLogFreqRatio()F

    move-result v15

    mul-float/2addr v15, v1

    move/from16 v21, v2

    float-to-double v1, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v11, v1

    goto :goto_c

    :cond_16
    move/from16 v21, v2

    .line 519
    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getFreqFinal()F

    move-result v11

    .line 522
    :goto_c
    aget v1, v6, v21

    mul-float v15, v19, v11

    iget v2, v0, Lcom/swmansion/pulsar/audio/AudioSimulator;->sampleRateF:F

    div-float/2addr v15, v2

    add-float/2addr v1, v15

    aput v1, v6, v21

    cmpl-float v2, v1, v19

    if-lez v2, :cond_17

    sub-float v1, v1, v19

    .line 523
    aput v1, v6, v21

    .line 525
    :cond_17
    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getVolume()F

    move-result v1

    mul-float v1, v1, v16

    invoke-virtual {v8}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->getWaveform()Lcom/swmansion/pulsar/types/WaveformType;

    move-result-object v2

    aget v8, v6, v21

    invoke-direct {v0, v2, v8}, Lcom/swmansion/pulsar/audio/AudioSimulator;->generateWaveform(Lcom/swmansion/pulsar/types/WaveformType;F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v13, v1

    goto :goto_e

    :cond_18
    :goto_d
    move-object/from16 v20, v1

    :goto_e
    move v2, v9

    move-object/from16 v1, v20

    move/from16 v20, v14

    goto/16 :goto_a

    :cond_19
    move/from16 v14, v20

    .line 528
    aput v13, v12, v14

    add-int/lit8 v2, v14, 0x1

    move/from16 v1, v17

    goto/16 :goto_7

    .line 531
    :cond_1a
    invoke-direct {v0, v12}, Lcom/swmansion/pulsar/audio/AudioSimulator;->convertToByteArray([F)[B

    move-result-object v1

    return-object v1
.end method

.method private static final renderPattern$valueForTime(Ljava/util/List;F[II)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ValuePoint;",
            ">;F[II)F"
        }
    .end annotation

    .line 467
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 468
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v2

    long-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {p0}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result p0

    return p0

    .line 469
    :cond_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v2

    long-to-float v0, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {p0}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result p0

    return p0

    .line 470
    :cond_2
    :goto_0
    aget v0, p2, p3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    aget v0, p2, p3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v2

    long-to-float v0, v2

    cmpg-float v0, v0, p1

    if-gez v0, :cond_3

    aget v0, p2, p3

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, p3

    goto :goto_0

    .line 471
    :cond_3
    aget v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 472
    aget p2, p2, p3

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 473
    invoke-virtual {p0}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide p2

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v2

    sub-long/2addr p2, v2

    long-to-float p2, p2

    cmpg-float p3, p2, v1

    if-gtz p3, :cond_4

    .line 474
    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result p0

    return p0

    .line 475
    :cond_4
    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v1

    long-to-float p3, v1

    sub-float/2addr p1, p3

    div-float/2addr p1, p2

    .line 476
    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result p2

    invoke-virtual {p0}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result p0

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result p3

    sub-float/2addr p0, p3

    mul-float/2addr p0, p1

    add-float/2addr p2, p0

    return p2
.end method

.method private final resetAudioContext()V
    .locals 1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->audioTrack:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->isInitialized:Z

    return-void
.end method

.method private final resolveAudioUsage()I
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->isEmulatorDevice:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->shouldForceAudiblePlayback:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final stopAndReleaseAudioTrack()V
    .locals 3

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 219
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/pulsar/audio/AudioSimulator;->resetAudioContext()V

    return-void
.end method


# virtual methods
.method public final enableSound(Z)V
    .locals 2

    .line 66
    new-instance v0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;-><init>(Lcom/swmansion/pulsar/audio/AudioSimulator;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final parsePattern(Lcom/swmansion/pulsar/types/PatternData;)[B
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-boolean v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->playSound:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    new-instance v0, Lcom/swmansion/pulsar/types/AudioPatternConfig;

    .line 58
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/audio/AudioSimulator;->generateDiscreteAudioConfig(Lcom/swmansion/pulsar/types/PatternData;)Ljava/util/List;

    move-result-object v1

    .line 59
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/audio/AudioSimulator;->generateContinuousAudioConfig(Lcom/swmansion/pulsar/types/PatternData;)Ljava/util/List;

    move-result-object p1

    .line 57
    invoke-direct {v0, v1, p1}, Lcom/swmansion/pulsar/types/AudioPatternConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 62
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/audio/AudioSimulator;->renderPattern(Lcom/swmansion/pulsar/types/AudioPatternConfig;)[B

    move-result-object p1

    return-object p1
.end method

.method public final play([B)V
    .locals 9

    if-eqz p1, :cond_2

    .line 78
    iget-boolean v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->playSound:Z

    if-eqz v0, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->currentPlayJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->audioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;-><init>(Lcom/swmansion/pulsar/audio/AudioSimulator;[BLkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->currentPlayJob:Lkotlinx/coroutines/Job;

    :cond_2
    return-void
.end method

.method public final setCompatibilityMode(Lcom/swmansion/pulsar/types/CompatibilityMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    iput-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->compatibilityMode:Lcom/swmansion/pulsar/types/CompatibilityMode;

    return-void
.end method

.method public final stop()V
    .locals 7

    .line 157
    iget-boolean v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->playSound:Z

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator;->audioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/swmansion/pulsar/audio/AudioSimulator$stop$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/swmansion/pulsar/audio/AudioSimulator$stop$1;-><init>(Lcom/swmansion/pulsar/audio/AudioSimulator;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
