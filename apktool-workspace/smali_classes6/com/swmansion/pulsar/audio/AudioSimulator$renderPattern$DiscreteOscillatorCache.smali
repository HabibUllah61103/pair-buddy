.class public final Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;
.super Ljava/lang/Object;
.source "AudioSimulator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/pulsar/audio/AudioSimulator;->renderPattern(Lcom/swmansion/pulsar/types/AudioPatternConfig;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DiscreteOscillatorCache"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\u008a\u0008\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0006H\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0006H\u00c6\u0003J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u0006H\u00c6\u0003J\t\u0010/\u001a\u00020\u0006H\u00c6\u0003J\t\u00100\u001a\u00020\u0011H\u00c6\u0003J\u0090\u0001\u00101\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H\u00c6\u0001\u00a2\u0006\u0002\u00102J\u0013\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00106\u001a\u00020\u0003H\u00d6\u0001J\t\u00107\u001a\u000208H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0015R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0015R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015R\u0011\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0018R\u0011\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0018R\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u00069"
    }
    d2 = {
        "com/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache",
        "",
        "startSample",
        "",
        "endSample",
        "freqInitial",
        "",
        "freqFinal",
        "freqDecaySamples",
        "logFreqRatio",
        "envAttackSamples",
        "envDecayEndSamples",
        "envSustainEndSamples",
        "envTotalSamples",
        "sustainLevel",
        "volume",
        "waveform",
        "Lcom/swmansion/pulsar/types/WaveformType;",
        "<init>",
        "(IIFFIFIIIIFFLcom/swmansion/pulsar/types/WaveformType;)V",
        "getStartSample",
        "()I",
        "getEndSample",
        "getFreqInitial",
        "()F",
        "getFreqFinal",
        "getFreqDecaySamples",
        "getLogFreqRatio",
        "getEnvAttackSamples",
        "getEnvDecayEndSamples",
        "getEnvSustainEndSamples",
        "getEnvTotalSamples",
        "getSustainLevel",
        "getVolume",
        "getWaveform",
        "()Lcom/swmansion/pulsar/types/WaveformType;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "copy",
        "(IIFFIFIIIIFFLcom/swmansion/pulsar/types/WaveformType;)Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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


# instance fields
.field private final endSample:I

.field private final envAttackSamples:I

.field private final envDecayEndSamples:I

.field private final envSustainEndSamples:I

.field private final envTotalSamples:I

.field private final freqDecaySamples:I

.field private final freqFinal:F

.field private final freqInitial:F

.field private final logFreqRatio:F

.field private final startSample:I

.field private final sustainLevel:F

.field private final volume:F

.field private final waveform:Lcom/swmansion/pulsar/types/WaveformType;


# direct methods
.method public constructor <init>(IIFFIFIIIIFFLcom/swmansion/pulsar/types/WaveformType;)V
    .locals 1

    const-string v0, "waveform"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->startSample:I

    .line 423
    iput p2, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->endSample:I

    .line 424
    iput p3, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqInitial:F

    .line 425
    iput p4, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqFinal:F

    .line 426
    iput p5, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqDecaySamples:I

    .line 427
    iput p6, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->logFreqRatio:F

    .line 428
    iput p7, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envAttackSamples:I

    .line 429
    iput p8, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envDecayEndSamples:I

    .line 430
    iput p9, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envSustainEndSamples:I

    .line 431
    iput p10, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envTotalSamples:I

    .line 432
    iput p11, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->sustainLevel:F

    .line 433
    iput p12, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->volume:F

    .line 434
    iput-object p13, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;IIFFIFIIIIFFLcom/swmansion/pulsar/types/WaveformType;ILjava/lang/Object;)Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;
    .locals 12

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->startSample:I

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->endSample:I

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqInitial:F

    goto :goto_1

    :cond_2
    move v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqFinal:F

    goto :goto_2

    :cond_3
    move/from16 v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqDecaySamples:I

    goto :goto_3

    :cond_4
    move/from16 v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->logFreqRatio:F

    goto :goto_4

    :cond_5
    move/from16 v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envAttackSamples:I

    goto :goto_5

    :cond_6
    move/from16 v6, p7

    :goto_5
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envDecayEndSamples:I

    goto :goto_6

    :cond_7
    move/from16 v7, p8

    :goto_6
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_8

    iget v8, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envSustainEndSamples:I

    goto :goto_7

    :cond_8
    move/from16 v8, p9

    :goto_7
    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_9

    iget v9, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envTotalSamples:I

    goto :goto_8

    :cond_9
    move/from16 v9, p10

    :goto_8
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_a

    iget v10, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->sustainLevel:F

    goto :goto_9

    :cond_a
    move/from16 v10, p11

    :goto_9
    and-int/lit16 v11, v0, 0x800

    if-eqz v11, :cond_b

    iget v11, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->volume:F

    goto :goto_a

    :cond_b
    move/from16 v11, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    move-object/from16 p15, v0

    goto :goto_b

    :cond_c
    move-object/from16 p15, p13

    :goto_b
    move-object p2, p0

    move p3, p1

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move/from16 p7, v4

    move/from16 p8, v5

    move/from16 p9, v6

    move/from16 p10, v7

    move/from16 p11, v8

    move/from16 p12, v9

    move/from16 p13, v10

    move/from16 p14, v11

    invoke-virtual/range {p2 .. p15}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->copy(IIFFIFIIIIFFLcom/swmansion/pulsar/types/WaveformType;)Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->startSample:I

    return v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envTotalSamples:I

    return v0
.end method

.method public final component11()F
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->sustainLevel:F

    return v0
.end method

.method public final component12()F
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->volume:F

    return v0
.end method

.method public final component13()Lcom/swmansion/pulsar/types/WaveformType;
    .locals 1

    iget-object v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->endSample:I

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqInitial:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqFinal:F

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqDecaySamples:I

    return v0
.end method

.method public final component6()F
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->logFreqRatio:F

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envAttackSamples:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envDecayEndSamples:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envSustainEndSamples:I

    return v0
.end method

.method public final copy(IIFFIFIIIIFFLcom/swmansion/pulsar/types/WaveformType;)Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;
    .locals 15

    const-string v0, "waveform"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v1 .. v14}, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;-><init>(IIFFIFIIIIFFLcom/swmansion/pulsar/types/WaveformType;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->startSample:I

    iget v3, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->startSample:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->endSample:I

    iget v3, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->endSample:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqInitial:F

    iget v3, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqInitial:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqFinal:F

    iget v3, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqFinal:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqDecaySamples:I

    iget v3, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqDecaySamples:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->logFreqRatio:F

    iget v3, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->logFreqRatio:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envAttackSamples:I

    iget v3, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envAttackSamples:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envDecayEndSamples:I

    iget v3, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envDecayEndSamples:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envSustainEndSamples:I

    iget v3, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envSustainEndSamples:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envTotalSamples:I

    iget v3, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envTotalSamples:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->sustainLevel:F

    iget v3, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->sustainLevel:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->volume:F

    iget v3, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->volume:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    iget-object p1, p1, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    if-eq v1, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getEndSample()I
    .locals 1

    .line 423
    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->endSample:I

    return v0
.end method

.method public final getEnvAttackSamples()I
    .locals 1

    .line 428
    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envAttackSamples:I

    return v0
.end method

.method public final getEnvDecayEndSamples()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envDecayEndSamples:I

    return v0
.end method

.method public final getEnvSustainEndSamples()I
    .locals 1

    .line 430
    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envSustainEndSamples:I

    return v0
.end method

.method public final getEnvTotalSamples()I
    .locals 1

    .line 431
    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envTotalSamples:I

    return v0
.end method

.method public final getFreqDecaySamples()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqDecaySamples:I

    return v0
.end method

.method public final getFreqFinal()F
    .locals 1

    .line 425
    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqFinal:F

    return v0
.end method

.method public final getFreqInitial()F
    .locals 1

    .line 424
    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqInitial:F

    return v0
.end method

.method public final getLogFreqRatio()F
    .locals 1

    .line 427
    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->logFreqRatio:F

    return v0
.end method

.method public final getStartSample()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->startSample:I

    return v0
.end method

.method public final getSustainLevel()F
    .locals 1

    .line 432
    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->sustainLevel:F

    return v0
.end method

.method public final getVolume()F
    .locals 1

    .line 433
    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->volume:F

    return v0
.end method

.method public final getWaveform()Lcom/swmansion/pulsar/types/WaveformType;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->startSample:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->endSample:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqInitial:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqFinal:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqDecaySamples:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->logFreqRatio:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envAttackSamples:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envDecayEndSamples:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envSustainEndSamples:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envTotalSamples:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->sustainLevel:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->volume:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/WaveformType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->startSample:I

    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->endSample:I

    iget v2, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqInitial:F

    iget v3, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqFinal:F

    iget v4, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->freqDecaySamples:I

    iget v5, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->logFreqRatio:F

    iget v6, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envAttackSamples:I

    iget v7, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envDecayEndSamples:I

    iget v8, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envSustainEndSamples:I

    iget v9, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->envTotalSamples:I

    iget v10, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->sustainLevel:F

    iget v11, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->volume:F

    iget-object v12, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$renderPattern$DiscreteOscillatorCache;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "DiscreteOscillatorCache(startSample="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", endSample="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freqInitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freqFinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freqDecaySamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logFreqRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", envAttackSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", envDecayEndSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", envSustainEndSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", envTotalSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sustainLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waveform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
