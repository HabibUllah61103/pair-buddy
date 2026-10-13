.class public final Lcom/swmansion/pulsar/types/DiscreteAudioConfig;
.super Ljava/lang/Object;
.source "Audio.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/swmansion/pulsar/types/DiscreteAudioConfig;",
        "",
        "oscillator",
        "Lcom/swmansion/pulsar/types/OscillatorConfig;",
        "timestamp",
        "",
        "volume",
        "",
        "<init>",
        "(Lcom/swmansion/pulsar/types/OscillatorConfig;DF)V",
        "getOscillator",
        "()Lcom/swmansion/pulsar/types/OscillatorConfig;",
        "getTimestamp",
        "()D",
        "getVolume",
        "()F",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final oscillator:Lcom/swmansion/pulsar/types/OscillatorConfig;

.field private final timestamp:D

.field private final volume:F


# direct methods
.method public constructor <init>(Lcom/swmansion/pulsar/types/OscillatorConfig;DF)V
    .locals 1

    const-string v0, "oscillator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->oscillator:Lcom/swmansion/pulsar/types/OscillatorConfig;

    .line 32
    iput-wide p2, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->timestamp:D

    .line 33
    iput p4, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->volume:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/swmansion/pulsar/types/DiscreteAudioConfig;Lcom/swmansion/pulsar/types/OscillatorConfig;DFILjava/lang/Object;)Lcom/swmansion/pulsar/types/DiscreteAudioConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->oscillator:Lcom/swmansion/pulsar/types/OscillatorConfig;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-wide p2, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->timestamp:D

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget p4, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->volume:F

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->copy(Lcom/swmansion/pulsar/types/OscillatorConfig;DF)Lcom/swmansion/pulsar/types/DiscreteAudioConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/swmansion/pulsar/types/OscillatorConfig;
    .locals 1

    iget-object v0, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->oscillator:Lcom/swmansion/pulsar/types/OscillatorConfig;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->timestamp:D

    return-wide v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->volume:F

    return v0
.end method

.method public final copy(Lcom/swmansion/pulsar/types/OscillatorConfig;DF)Lcom/swmansion/pulsar/types/DiscreteAudioConfig;
    .locals 1

    const-string v0, "oscillator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;-><init>(Lcom/swmansion/pulsar/types/OscillatorConfig;DF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;

    iget-object v1, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->oscillator:Lcom/swmansion/pulsar/types/OscillatorConfig;

    iget-object v3, p1, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->oscillator:Lcom/swmansion/pulsar/types/OscillatorConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->timestamp:D

    iget-wide v5, p1, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->timestamp:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->volume:F

    iget p1, p1, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->volume:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getOscillator()Lcom/swmansion/pulsar/types/OscillatorConfig;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->oscillator:Lcom/swmansion/pulsar/types/OscillatorConfig;

    return-object v0
.end method

.method public final getTimestamp()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->timestamp:D

    return-wide v0
.end method

.method public final getVolume()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->volume:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->oscillator:Lcom/swmansion/pulsar/types/OscillatorConfig;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/OscillatorConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->timestamp:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->volume:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->oscillator:Lcom/swmansion/pulsar/types/OscillatorConfig;

    iget-wide v1, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->timestamp:D

    iget v3, p0, Lcom/swmansion/pulsar/types/DiscreteAudioConfig;->volume:F

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DiscreteAudioConfig(oscillator="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", timestamp="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
