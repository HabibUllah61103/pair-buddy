.class public final Lcom/swmansion/pulsar/types/ControlPoint;
.super Ljava/lang/Object;
.source "Points.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/swmansion/pulsar/types/ControlPoint;",
        "",
        "intensity",
        "",
        "sharpness",
        "duration",
        "",
        "<init>",
        "(FFJ)V",
        "getIntensity",
        "()F",
        "getSharpness",
        "getDuration",
        "()J",
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
.field private final duration:J

.field private final intensity:F

.field private final sharpness:F


# direct methods
.method public constructor <init>(FFJ)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/swmansion/pulsar/types/ControlPoint;->intensity:F

    .line 10
    iput p2, p0, Lcom/swmansion/pulsar/types/ControlPoint;->sharpness:F

    .line 11
    iput-wide p3, p0, Lcom/swmansion/pulsar/types/ControlPoint;->duration:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/swmansion/pulsar/types/ControlPoint;FFJILjava/lang/Object;)Lcom/swmansion/pulsar/types/ControlPoint;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/swmansion/pulsar/types/ControlPoint;->intensity:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/swmansion/pulsar/types/ControlPoint;->sharpness:F

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-wide p3, p0, Lcom/swmansion/pulsar/types/ControlPoint;->duration:J

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/swmansion/pulsar/types/ControlPoint;->copy(FFJ)Lcom/swmansion/pulsar/types/ControlPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/types/ControlPoint;->intensity:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/swmansion/pulsar/types/ControlPoint;->sharpness:F

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/ControlPoint;->duration:J

    return-wide v0
.end method

.method public final copy(FFJ)Lcom/swmansion/pulsar/types/ControlPoint;
    .locals 1

    new-instance v0, Lcom/swmansion/pulsar/types/ControlPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/swmansion/pulsar/types/ControlPoint;-><init>(FFJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/swmansion/pulsar/types/ControlPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/swmansion/pulsar/types/ControlPoint;

    iget v1, p0, Lcom/swmansion/pulsar/types/ControlPoint;->intensity:F

    iget v3, p1, Lcom/swmansion/pulsar/types/ControlPoint;->intensity:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/swmansion/pulsar/types/ControlPoint;->sharpness:F

    iget v3, p1, Lcom/swmansion/pulsar/types/ControlPoint;->sharpness:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/swmansion/pulsar/types/ControlPoint;->duration:J

    iget-wide v5, p1, Lcom/swmansion/pulsar/types/ControlPoint;->duration:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDuration()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/swmansion/pulsar/types/ControlPoint;->duration:J

    return-wide v0
.end method

.method public final getIntensity()F
    .locals 1

    .line 9
    iget v0, p0, Lcom/swmansion/pulsar/types/ControlPoint;->intensity:F

    return v0
.end method

.method public final getSharpness()F
    .locals 1

    .line 10
    iget v0, p0, Lcom/swmansion/pulsar/types/ControlPoint;->sharpness:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/swmansion/pulsar/types/ControlPoint;->intensity:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/pulsar/types/ControlPoint;->sharpness:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/swmansion/pulsar/types/ControlPoint;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/swmansion/pulsar/types/ControlPoint;->intensity:F

    iget v1, p0, Lcom/swmansion/pulsar/types/ControlPoint;->sharpness:F

    iget-wide v2, p0, Lcom/swmansion/pulsar/types/ControlPoint;->duration:J

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ControlPoint(intensity="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", sharpness="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
