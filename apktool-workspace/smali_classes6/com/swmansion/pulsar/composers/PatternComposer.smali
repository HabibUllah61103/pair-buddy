.class public final Lcom/swmansion/pulsar/composers/PatternComposer;
.super Ljava/lang/Object;
.source "PatternComposer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/composers/PatternComposer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPatternComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PatternComposer.kt\ncom/swmansion/pulsar/composers/PatternComposer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,64:1\n1#2:65\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\rJ\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\rJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/swmansion/pulsar/composers/PatternComposer;",
        "",
        "engine",
        "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "audioSimulator",
        "Lcom/swmansion/pulsar/audio/AudioSimulator;",
        "<init>",
        "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/audio/AudioSimulator;)V",
        "vibrationEffect",
        "Landroid/os/VibrationEffect;",
        "audioBuffer",
        "",
        "parsePattern",
        "",
        "hapticsData",
        "Lcom/swmansion/pulsar/types/PatternData;",
        "play",
        "playAudioOnly",
        "stop",
        "summarizePattern",
        "",
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
.field public static final Companion:Lcom/swmansion/pulsar/composers/PatternComposer$Companion;

.field private static final TAG:Ljava/lang/String; = "Pulsar"


# instance fields
.field private audioBuffer:[B

.field private final audioSimulator:Lcom/swmansion/pulsar/audio/AudioSimulator;

.field private final engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

.field private vibrationEffect:Landroid/os/VibrationEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/composers/PatternComposer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/composers/PatternComposer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/composers/PatternComposer;->Companion:Lcom/swmansion/pulsar/composers/PatternComposer$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/audio/AudioSimulator;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioSimulator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    .line 12
    iput-object p2, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->audioSimulator:Lcom/swmansion/pulsar/audio/AudioSimulator;

    return-void
.end method

.method private final summarizePattern(Lcom/swmansion/pulsar/types/PatternData;)Ljava/lang/String;
    .locals 12

    .line 54
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getDiscretePattern()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 55
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getContinuousPattern()Lcom/swmansion/pulsar/types/ContinuousPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/ContinuousPattern;->getAmplitude()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 56
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getContinuousPattern()Lcom/swmansion/pulsar/types/ContinuousPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ContinuousPattern;->getFrequency()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 57
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getDiscretePattern()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/swmansion/pulsar/types/ConfigPoint;

    invoke-virtual {v4}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/swmansion/pulsar/types/ConfigPoint;

    invoke-virtual {v6}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    check-cast v6, Ljava/lang/Comparable;

    invoke-interface {v4, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_1

    move-object v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    check-cast v4, Ljava/lang/Long;

    const-wide/16 v6, -0x1

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2

    :cond_3
    move-wide v3, v6

    .line 58
    :goto_2
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getContinuousPattern()Lcom/swmansion/pulsar/types/ContinuousPattern;

    move-result-object v8

    invoke-virtual {v8}, Lcom/swmansion/pulsar/types/ContinuousPattern;->getAmplitude()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    move-object v9, v5

    goto :goto_4

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v9}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    check-cast v9, Ljava/lang/Comparable;

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v10}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    check-cast v10, Ljava/lang/Comparable;

    invoke-interface {v9, v10}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v11

    if-gez v11, :cond_5

    move-object v9, v10

    goto :goto_3

    :cond_6
    :goto_4
    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_5

    :cond_7
    move-wide v8, v6

    .line 59
    :goto_5
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getContinuousPattern()Lcom/swmansion/pulsar/types/ContinuousPattern;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/ContinuousPattern;->getFrequency()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_7

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v5}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    :cond_9
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v10}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    check-cast v10, Ljava/lang/Comparable;

    invoke-interface {v5, v10}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v11

    if-gez v11, :cond_9

    move-object v5, v10

    goto :goto_6

    :cond_a
    :goto_7
    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 61
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "discreteCount="

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", amplitudeCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", frequencyCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", maxDiscreteTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", maxAmplitudeTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", maxFrequencyTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final parsePattern(Lcom/swmansion/pulsar/types/PatternData;)V
    .locals 4

    const-string v0, "Pulsar"

    const-string v1, "hapticsData"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->getHapticBuilder()Lcom/swmansion/pulsar/haptics/HapticBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/swmansion/pulsar/haptics/HapticBuilder;->createVibrationEffect(Lcom/swmansion/pulsar/types/PatternData;)Landroid/os/VibrationEffect;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    :catch_0
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/composers/PatternComposer;->summarizePattern(Lcom/swmansion/pulsar/types/PatternData;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping invalid haptic pattern after Android validation failure: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 23
    :goto_0
    iput-object v1, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->vibrationEffect:Landroid/os/VibrationEffect;

    if-nez v1, :cond_0

    .line 31
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/composers/PatternComposer;->summarizePattern(Lcom/swmansion/pulsar/types/PatternData;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping invalid haptic pattern because it produced no playable vibration effect: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->audioSimulator:Lcom/swmansion/pulsar/audio/AudioSimulator;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/audio/AudioSimulator;->parsePattern(Lcom/swmansion/pulsar/types/PatternData;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->audioBuffer:[B

    return-void
.end method

.method public final play()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->audioSimulator:Lcom/swmansion/pulsar/audio/AudioSimulator;

    iget-object v1, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->audioBuffer:[B

    invoke-virtual {v0, v1}, Lcom/swmansion/pulsar/audio/AudioSimulator;->play([B)V

    .line 41
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->vibrationEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v1, v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method public final playAudioOnly()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->audioSimulator:Lcom/swmansion/pulsar/audio/AudioSimulator;

    iget-object v1, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->audioBuffer:[B

    invoke-virtual {v0, v1}, Lcom/swmansion/pulsar/audio/AudioSimulator;->play([B)V

    return-void
.end method

.method public final stop()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->audioSimulator:Lcom/swmansion/pulsar/audio/AudioSimulator;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/audio/AudioSimulator;->stop()V

    .line 50
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/PatternComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->stop()V

    return-void
.end method
