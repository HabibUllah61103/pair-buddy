.class public final Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;
.super Ljava/lang/Object;
.source "VibrationEffectsGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVibrationEffectsGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VibrationEffectsGenerator.kt\ncom/swmansion/pulsar/haptics/VibrationEffectsGenerator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,162:1\n1863#2,2:163\n1863#2,2:165\n1863#2,2:167\n1863#2,2:169\n12614#3,2:171\n*S KotlinDebug\n*F\n+ 1 VibrationEffectsGenerator.kt\ncom/swmansion/pulsar/haptics/VibrationEffectsGenerator\n*L\n73#1:163,2\n104#1:165,2\n118#1:167,2\n135#1:169,2\n155#1:171,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0007J\u0016\u0010\u0011\u001a\u00020\u000b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0003J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0003J\u0016\u0010\u0018\u001a\u00020\u000b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0003J\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0003J\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0003J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;",
        "",
        "engine",
        "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "<init>",
        "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V",
        "getEngine",
        "()Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "forcedCompatibilityMode",
        "Lcom/swmansion/pulsar/types/CompatibilityMode;",
        "convertToVibrationEffect",
        "Landroid/os/VibrationEffect;",
        "controlLine",
        "Lcom/swmansion/pulsar/haptics/ControlLineBuilder;",
        "points",
        "",
        "Lcom/swmansion/pulsar/types/ControlPoint;",
        "convertToAdvanceEnvelope",
        "controlPoints",
        "getSharpnessInHz",
        "",
        "sharpness",
        "frequencyProfile",
        "Landroid/os/vibrator/VibratorFrequencyProfile;",
        "convertToBasicEnvelope",
        "convertToAmplitudeWaveform",
        "convertToTimingWaveform",
        "hasPlayableWaveform",
        "",
        "timings",
        "",
        "simulateCompatibilityMode",
        "",
        "mode",
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
.field private final engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

.field private forcedCompatibilityMode:Lcom/swmansion/pulsar/types/CompatibilityMode;


# direct methods
.method public constructor <init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    .line 14
    sget-object p1, Lcom/swmansion/pulsar/types/CompatibilityMode;->ADVANCED_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    iput-object p1, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->forcedCompatibilityMode:Lcom/swmansion/pulsar/types/CompatibilityMode;

    return-void
.end method

.method private final convertToAdvanceEnvelope(Ljava/util/List;)Landroid/os/VibrationEffect;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ControlPoint;",
            ">;)",
            "Landroid/os/VibrationEffect;"
        }
    .end annotation

    .line 62
    new-instance v0, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;-><init>()V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "build(...)"

    if-eqz v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1, p1, v3, v4}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    .line 65
    invoke-virtual {v0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->getFrequencyProfile()Landroid/os/vibrator/VibratorFrequencyProfile;

    move-result-object v1

    .line 70
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/pulsar/types/ControlPoint;

    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ControlPoint;->getSharpness()F

    move-result v3

    .line 71
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v3, v1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->getSharpnessInHz(FLandroid/os/vibrator/VibratorFrequencyProfile;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->setInitialFrequencyHz(F)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    .line 73
    check-cast p1, Ljava/lang/Iterable;

    .line 163
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/pulsar/types/ControlPoint;

    .line 75
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ControlPoint;->getIntensity()F

    move-result v4

    .line 76
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ControlPoint;->getSharpness()F

    move-result v5

    invoke-direct {p0, v5, v1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->getSharpnessInHz(FLandroid/os/vibrator/VibratorFrequencyProfile;)F

    move-result v5

    .line 77
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ControlPoint;->getDuration()J

    move-result-wide v6

    .line 74
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final convertToAmplitudeWaveform(Ljava/util/List;)Landroid/os/VibrationEffect;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ControlPoint;",
            ">;)",
            "Landroid/os/VibrationEffect;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 115
    new-array v1, v0, [J

    .line 116
    new-array v0, v0, [I

    .line 118
    check-cast p1, Ljava/lang/Iterable;

    .line 167
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/pulsar/types/ControlPoint;

    .line 119
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ControlPoint;->getDuration()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lkotlin/collections/ArraysKt;->plus([JJ)[J

    move-result-object v1

    .line 120
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ControlPoint;->getIntensity()F

    move-result v2

    const/16 v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->plus([II)[I

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0, v1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->hasPlayableWaveform([J)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 p1, -0x1

    .line 127
    invoke-static {v1, v0, p1}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method private final convertToBasicEnvelope(Ljava/util/List;)Landroid/os/VibrationEffect;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ControlPoint;",
            ">;)",
            "Landroid/os/VibrationEffect;"
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;-><init>()V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "build(...)"

    if-eqz v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1, p1, v3, v4}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    .line 99
    invoke-virtual {v0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 102
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/pulsar/types/ControlPoint;

    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/ControlPoint;->getSharpness()F

    move-result v1

    .line 104
    check-cast p1, Ljava/lang/Iterable;

    .line 165
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/pulsar/types/ControlPoint;

    .line 106
    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->setInitialSharpness(F)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    move-result-object v4

    .line 107
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ControlPoint;->getIntensity()F

    move-result v5

    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ControlPoint;->getSharpness()F

    move-result v6

    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ControlPoint;->getDuration()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final convertToTimingWaveform(Ljava/util/List;)Landroid/os/VibrationEffect;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ControlPoint;",
            ">;)",
            "Landroid/os/VibrationEffect;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 132
    new-array v1, v0, [J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 135
    check-cast p1, Ljava/lang/Iterable;

    .line 169
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v4

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/pulsar/types/ControlPoint;

    .line 136
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ControlPoint;->getDuration()J

    move-result-wide v5

    .line 137
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ControlPoint;->getIntensity()F

    move-result v3

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eq v3, v2, :cond_2

    .line 140
    invoke-static {v1, v5, v6}, Lkotlin/collections/ArraysKt;->plus([JJ)[J

    move-result-object v1

    move v2, v3

    goto :goto_0

    .line 142
    :cond_2
    array-length v3, v1

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    if-nez v3, :cond_0

    .line 143
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v3

    aget-wide v7, v1, v3

    add-long/2addr v7, v5

    aput-wide v7, v1, v3

    goto :goto_0

    .line 147
    :cond_4
    invoke-direct {p0, v1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->hasPlayableWaveform([J)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    return-object p1

    :cond_5
    const/4 p1, -0x1

    .line 151
    invoke-static {v1, p1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method private final getSharpnessInHz(FLandroid/os/vibrator/VibratorFrequencyProfile;)F
    .locals 2

    .line 90
    invoke-virtual {p2}, Landroid/os/vibrator/VibratorFrequencyProfile;->getMaxFrequencyHz()F

    move-result v0

    invoke-virtual {p2}, Landroid/os/vibrator/VibratorFrequencyProfile;->getMinFrequencyHz()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/os/vibrator/VibratorFrequencyProfile;->getMinFrequencyHz()F

    move-result p2

    add-float/2addr p1, p2

    return p1
.end method

.method private final hasPlayableWaveform([J)Z
    .locals 8

    .line 155
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 171
    array-length v0, p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    aget-wide v4, p1, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method


# virtual methods
.method public final convertToVibrationEffect(Lcom/swmansion/pulsar/haptics/ControlLineBuilder;)Landroid/os/VibrationEffect;
    .locals 2

    const-string v0, "controlLine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_1

    .line 20
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isEnvelopeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->forcedCompatibilityMode:Lcom/swmansion/pulsar/types/CompatibilityMode;

    sget-object v1, Lcom/swmansion/pulsar/types/CompatibilityMode;->STANDARD_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lcom/swmansion/pulsar/types/CompatibilityMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/swmansion/pulsar/haptics/ControlLineBuilder;->getLinearPoints()Ljava/util/ArrayList;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isFrequencyProfileSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->forcedCompatibilityMode:Lcom/swmansion/pulsar/types/CompatibilityMode;

    sget-object v1, Lcom/swmansion/pulsar/types/CompatibilityMode;->ADVANCED_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    if-ne v0, v1, :cond_0

    .line 25
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->convertToAdvanceEnvelope(Ljava/util/List;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->convertToBasicEnvelope(Ljava/util/List;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/swmansion/pulsar/haptics/ControlLineBuilder;->getStepsPoints()Ljava/util/ArrayList;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isAmplitudeSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->forcedCompatibilityMode:Lcom/swmansion/pulsar/types/CompatibilityMode;

    sget-object v1, Lcom/swmansion/pulsar/types/CompatibilityMode;->LIMITED_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lcom/swmansion/pulsar/types/CompatibilityMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 32
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->convertToAmplitudeWaveform(Ljava/util/List;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 34
    :cond_2
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->convertToTimingWaveform(Ljava/util/List;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method public final convertToVibrationEffect(Ljava/util/List;)Landroid/os/VibrationEffect;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ControlPoint;",
            ">;)",
            "Landroid/os/VibrationEffect;"
        }
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isEnvelopeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->forcedCompatibilityMode:Lcom/swmansion/pulsar/types/CompatibilityMode;

    sget-object v1, Lcom/swmansion/pulsar/types/CompatibilityMode;->STANDARD_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lcom/swmansion/pulsar/types/CompatibilityMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isFrequencyProfileSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->forcedCompatibilityMode:Lcom/swmansion/pulsar/types/CompatibilityMode;

    sget-object v1, Lcom/swmansion/pulsar/types/CompatibilityMode;->ADVANCED_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    if-ne v0, v1, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->convertToAdvanceEnvelope(Ljava/util/List;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->convertToBasicEnvelope(Ljava/util/List;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isAmplitudeSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->forcedCompatibilityMode:Lcom/swmansion/pulsar/types/CompatibilityMode;

    sget-object v1, Lcom/swmansion/pulsar/types/CompatibilityMode;->LIMITED_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lcom/swmansion/pulsar/types/CompatibilityMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 53
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->convertToAmplitudeWaveform(Ljava/util/List;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 55
    :cond_2
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->convertToTimingWaveform(Ljava/util/List;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method public final getEngine()Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    return-object v0
.end method

.method public final simulateCompatibilityMode(Lcom/swmansion/pulsar/types/CompatibilityMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->forcedCompatibilityMode:Lcom/swmansion/pulsar/types/CompatibilityMode;

    return-void
.end method
