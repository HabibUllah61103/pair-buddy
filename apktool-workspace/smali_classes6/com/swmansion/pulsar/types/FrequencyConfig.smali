.class public final Lcom/swmansion/pulsar/types/FrequencyConfig;
.super Ljava/lang/Object;
.source "Audio.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/swmansion/pulsar/types/FrequencyConfig;",
        "",
        "initial",
        "",
        "final",
        "decayTime",
        "<init>",
        "(DDD)V",
        "getInitial",
        "()D",
        "getFinal",
        "getDecayTime",
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
.field private final decayTime:D

.field private final final:D

.field private final initial:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->initial:D

    .line 18
    iput-wide p3, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->final:D

    .line 19
    iput-wide p5, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->decayTime:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/swmansion/pulsar/types/FrequencyConfig;DDDILjava/lang/Object;)Lcom/swmansion/pulsar/types/FrequencyConfig;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->initial:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->final:D

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-wide p5, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->decayTime:D

    :cond_2
    move-object v0, p0

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/swmansion/pulsar/types/FrequencyConfig;->copy(DDD)Lcom/swmansion/pulsar/types/FrequencyConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->initial:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->final:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->decayTime:D

    return-wide v0
.end method

.method public final copy(DDD)Lcom/swmansion/pulsar/types/FrequencyConfig;
    .locals 7

    new-instance v0, Lcom/swmansion/pulsar/types/FrequencyConfig;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/swmansion/pulsar/types/FrequencyConfig;-><init>(DDD)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/swmansion/pulsar/types/FrequencyConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/swmansion/pulsar/types/FrequencyConfig;

    iget-wide v3, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->initial:D

    iget-wide v5, p1, Lcom/swmansion/pulsar/types/FrequencyConfig;->initial:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->final:D

    iget-wide v5, p1, Lcom/swmansion/pulsar/types/FrequencyConfig;->final:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->decayTime:D

    iget-wide v5, p1, Lcom/swmansion/pulsar/types/FrequencyConfig;->decayTime:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDecayTime()D
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->decayTime:D

    return-wide v0
.end method

.method public final getFinal()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->final:D

    return-wide v0
.end method

.method public final getInitial()D
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->initial:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->initial:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->final:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->decayTime:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->initial:D

    iget-wide v2, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->final:D

    iget-wide v4, p0, Lcom/swmansion/pulsar/types/FrequencyConfig;->decayTime:D

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FrequencyConfig(initial="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", final="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
