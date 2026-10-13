.class public final Lcom/swmansion/pulsar/types/ConfigPoint;
.super Ljava/lang/Object;
.source "Points.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/swmansion/pulsar/types/ConfigPoint;",
        "",
        "time",
        "",
        "amplitude",
        "",
        "frequency",
        "<init>",
        "(JFF)V",
        "getTime",
        "()J",
        "getAmplitude",
        "()F",
        "getFrequency",
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
.field private final amplitude:F

.field private final frequency:F

.field private final time:J


# direct methods
.method public constructor <init>(JFF)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->time:J

    .line 31
    iput p3, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->amplitude:F

    .line 32
    iput p4, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->frequency:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/swmansion/pulsar/types/ConfigPoint;JFFILjava/lang/Object;)Lcom/swmansion/pulsar/types/ConfigPoint;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->time:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p3, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->amplitude:F

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget p4, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->frequency:F

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/swmansion/pulsar/types/ConfigPoint;->copy(JFF)Lcom/swmansion/pulsar/types/ConfigPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->time:J

    return-wide v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->amplitude:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->frequency:F

    return v0
.end method

.method public final copy(JFF)Lcom/swmansion/pulsar/types/ConfigPoint;
    .locals 1

    new-instance v0, Lcom/swmansion/pulsar/types/ConfigPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/swmansion/pulsar/types/ConfigPoint;-><init>(JFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/swmansion/pulsar/types/ConfigPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/swmansion/pulsar/types/ConfigPoint;

    iget-wide v3, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->time:J

    iget-wide v5, p1, Lcom/swmansion/pulsar/types/ConfigPoint;->time:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->amplitude:F

    iget v3, p1, Lcom/swmansion/pulsar/types/ConfigPoint;->amplitude:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->frequency:F

    iget p1, p1, Lcom/swmansion/pulsar/types/ConfigPoint;->frequency:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAmplitude()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->amplitude:F

    return v0
.end method

.method public final getFrequency()F
    .locals 1

    .line 32
    iget v0, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->frequency:F

    return v0
.end method

.method public final getTime()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->time:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->amplitude:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->frequency:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->time:J

    iget v2, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->amplitude:F

    iget v3, p0, Lcom/swmansion/pulsar/types/ConfigPoint;->frequency:F

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ConfigPoint(time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frequency="

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
