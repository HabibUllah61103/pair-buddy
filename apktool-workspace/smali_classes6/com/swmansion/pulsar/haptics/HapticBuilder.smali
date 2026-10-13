.class public final Lcom/swmansion/pulsar/haptics/HapticBuilder;
.super Ljava/lang/Object;
.source "HapticBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000bJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/swmansion/pulsar/haptics/HapticBuilder;",
        "",
        "engine",
        "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "<init>",
        "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V",
        "vibrationEffectsGenerator",
        "Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;",
        "impulseCompositionBuilder",
        "Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;",
        "impulseCompositionEnabled",
        "",
        "enableImpulseCompositionMode",
        "",
        "enabled",
        "createVibrationEffect",
        "Landroid/os/VibrationEffect;",
        "preset",
        "Lcom/swmansion/pulsar/types/PatternData;",
        "convertToControlPoints",
        "Lcom/swmansion/pulsar/haptics/ControlLineBuilder;",
        "simulateCompatibilityMode",
        "mode",
        "Lcom/swmansion/pulsar/types/CompatibilityMode;",
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

.field private final impulseCompositionBuilder:Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;

.field private impulseCompositionEnabled:Z

.field private vibrationEffectsGenerator:Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;


# direct methods
.method public constructor <init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/pulsar/haptics/HapticBuilder;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    .line 12
    new-instance v0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;

    invoke-direct {v0, p1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V

    iput-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticBuilder;->vibrationEffectsGenerator:Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;

    .line 13
    new-instance p1, Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;

    invoke-direct {p1}, Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;-><init>()V

    iput-object p1, p0, Lcom/swmansion/pulsar/haptics/HapticBuilder;->impulseCompositionBuilder:Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/swmansion/pulsar/haptics/HapticBuilder;->impulseCompositionEnabled:Z

    return-void
.end method

.method private final convertToControlPoints(Lcom/swmansion/pulsar/types/PatternData;)Lcom/swmansion/pulsar/haptics/ControlLineBuilder;
    .locals 5

    .line 31
    new-instance v0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;

    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getContinuousPattern()Lcom/swmansion/pulsar/types/ContinuousPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/ContinuousPattern;->getAmplitude()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;-><init>(Ljava/util/List;)V

    .line 32
    new-instance v1, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;

    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getContinuousPattern()Lcom/swmansion/pulsar/types/ContinuousPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ContinuousPattern;->getFrequency()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;-><init>(Ljava/util/List;)V

    .line 34
    new-instance v2, Lcom/swmansion/pulsar/haptics/PeakLineBuilder;

    iget-object v3, p0, Lcom/swmansion/pulsar/haptics/HapticBuilder;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v3}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->getMinControlPointDurationMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/swmansion/pulsar/haptics/PeakLineBuilder;-><init>(J)V

    .line 35
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getDiscretePattern()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/swmansion/pulsar/haptics/PeakLineBuilder;->convertToContinuousPatternOfAmplitude(Ljava/util/List;Lcom/swmansion/pulsar/haptics/ValueLineBuilder;)Lcom/swmansion/pulsar/haptics/ValueLineBuilder;

    move-result-object v3

    .line 36
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getDiscretePattern()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/swmansion/pulsar/haptics/PeakLineBuilder;->convertToContinuousPatternOfFrequency(Ljava/util/List;Lcom/swmansion/pulsar/haptics/ValueLineBuilder;)Lcom/swmansion/pulsar/haptics/ValueLineBuilder;

    move-result-object p1

    .line 38
    invoke-virtual {v0, v3}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->mergeLine(Lcom/swmansion/pulsar/haptics/ValueLineBuilder;)V

    .line 39
    invoke-virtual {v1, p1}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->mergeLine(Lcom/swmansion/pulsar/haptics/ValueLineBuilder;)V

    .line 41
    new-instance p1, Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;

    invoke-direct {p1, v0, v1}, Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;-><init>(Lcom/swmansion/pulsar/haptics/ValueLineBuilder;Lcom/swmansion/pulsar/haptics/ValueLineBuilder;)V

    .line 43
    new-instance v0, Lcom/swmansion/pulsar/haptics/ControlLineBuilder;

    invoke-direct {v0, p1}, Lcom/swmansion/pulsar/haptics/ControlLineBuilder;-><init>(Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;)V

    return-object v0
.end method


# virtual methods
.method public final createVibrationEffect(Lcom/swmansion/pulsar/types/PatternData;)Landroid/os/VibrationEffect;
    .locals 2

    const-string v0, "preset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-boolean v0, p0, Lcom/swmansion/pulsar/haptics/HapticBuilder;->impulseCompositionEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;->Companion:Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$Companion;->isImpulsesOnly(Lcom/swmansion/pulsar/types/PatternData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticBuilder;->impulseCompositionBuilder:Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;

    iget-object v1, p0, Lcom/swmansion/pulsar/haptics/HapticBuilder;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0, p1, v1}, Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;->createCompositionEffect(Lcom/swmansion/pulsar/types/PatternData;Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/haptics/HapticBuilder;->convertToControlPoints(Lcom/swmansion/pulsar/types/PatternData;)Lcom/swmansion/pulsar/haptics/ControlLineBuilder;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticBuilder;->vibrationEffectsGenerator:Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->convertToVibrationEffect(Lcom/swmansion/pulsar/haptics/ControlLineBuilder;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method public final enableImpulseCompositionMode(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/swmansion/pulsar/haptics/HapticBuilder;->impulseCompositionEnabled:Z

    return-void
.end method

.method public final simulateCompatibilityMode(Lcom/swmansion/pulsar/types/CompatibilityMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticBuilder;->vibrationEffectsGenerator:Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->simulateCompatibilityMode(Lcom/swmansion/pulsar/types/CompatibilityMode;)V

    return-void
.end method
