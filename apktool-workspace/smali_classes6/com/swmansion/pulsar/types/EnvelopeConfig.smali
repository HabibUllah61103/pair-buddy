.class public final Lcom/swmansion/pulsar/types/EnvelopeConfig;
.super Ljava/lang/Object;
.source "Audio.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/swmansion/pulsar/types/EnvelopeConfig;",
        "",
        "attack",
        "",
        "decay",
        "sustainLevel",
        "sustainDuration",
        "release",
        "<init>",
        "(DDDDD)V",
        "getAttack",
        "()D",
        "getDecay",
        "getSustainLevel",
        "getSustainDuration",
        "getRelease",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field private final attack:D

.field private final decay:D

.field private final release:D

.field private final sustainDuration:D

.field private final sustainLevel:D


# direct methods
.method public constructor <init>(DDDDD)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->attack:D

    .line 24
    iput-wide p3, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->decay:D

    .line 25
    iput-wide p5, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainLevel:D

    .line 26
    iput-wide p7, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainDuration:D

    .line 27
    iput-wide p9, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->release:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/swmansion/pulsar/types/EnvelopeConfig;DDDDDILjava/lang/Object;)Lcom/swmansion/pulsar/types/EnvelopeConfig;
    .locals 11

    and-int/lit8 v0, p11, 0x1

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->attack:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p11, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->decay:D

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p11, 0x4

    if-eqz p1, :cond_2

    iget-wide p1, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainLevel:D

    move-wide v5, p1

    goto :goto_0

    :cond_2
    move-wide/from16 v5, p5

    :goto_0
    and-int/lit8 p1, p11, 0x8

    if-eqz p1, :cond_3

    iget-wide p1, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainDuration:D

    move-wide v7, p1

    goto :goto_1

    :cond_3
    move-wide/from16 v7, p7

    :goto_1
    and-int/lit8 p1, p11, 0x10

    if-eqz p1, :cond_4

    iget-wide p1, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->release:D

    move-wide v9, p1

    goto :goto_2

    :cond_4
    move-wide/from16 v9, p9

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->copy(DDDDD)Lcom/swmansion/pulsar/types/EnvelopeConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->attack:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->decay:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainLevel:D

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainDuration:D

    return-wide v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->release:D

    return-wide v0
.end method

.method public final copy(DDDDD)Lcom/swmansion/pulsar/types/EnvelopeConfig;
    .locals 11

    new-instance v0, Lcom/swmansion/pulsar/types/EnvelopeConfig;

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/swmansion/pulsar/types/EnvelopeConfig;-><init>(DDDDD)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/swmansion/pulsar/types/EnvelopeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/swmansion/pulsar/types/EnvelopeConfig;

    iget-wide v3, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->attack:D

    iget-wide v5, p1, Lcom/swmansion/pulsar/types/EnvelopeConfig;->attack:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->decay:D

    iget-wide v5, p1, Lcom/swmansion/pulsar/types/EnvelopeConfig;->decay:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainLevel:D

    iget-wide v5, p1, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainLevel:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainDuration:D

    iget-wide v5, p1, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainDuration:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->release:D

    iget-wide v5, p1, Lcom/swmansion/pulsar/types/EnvelopeConfig;->release:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAttack()D
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->attack:D

    return-wide v0
.end method

.method public final getDecay()D
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->decay:D

    return-wide v0
.end method

.method public final getRelease()D
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->release:D

    return-wide v0
.end method

.method public final getSustainDuration()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainDuration:D

    return-wide v0
.end method

.method public final getSustainLevel()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainLevel:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->attack:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->decay:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainLevel:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainDuration:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->release:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-wide v0, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->attack:D

    iget-wide v2, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->decay:D

    iget-wide v4, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainLevel:D

    iget-wide v6, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->sustainDuration:D

    iget-wide v8, p0, Lcom/swmansion/pulsar/types/EnvelopeConfig;->release:D

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "EnvelopeConfig(attack="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sustainLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sustainDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", release="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
