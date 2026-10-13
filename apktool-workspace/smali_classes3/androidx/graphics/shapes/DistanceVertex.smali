.class public final Landroidx/graphics/shapes/DistanceVertex;
.super Ljava/lang/Object;
.source "FeatureMapping.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/graphics/shapes/DistanceVertex;",
        "",
        "distance",
        "",
        "f1",
        "Landroidx/graphics/shapes/ProgressableFeature;",
        "f2",
        "<init>",
        "(FLandroidx/graphics/shapes/ProgressableFeature;Landroidx/graphics/shapes/ProgressableFeature;)V",
        "getDistance",
        "()F",
        "getF1",
        "()Landroidx/graphics/shapes/ProgressableFeature;",
        "getF2",
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
        "graphics-shapes"
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
.field private final distance:F

.field private final f1:Landroidx/graphics/shapes/ProgressableFeature;

.field private final f2:Landroidx/graphics/shapes/ProgressableFeature;


# direct methods
.method public constructor <init>(FLandroidx/graphics/shapes/ProgressableFeature;Landroidx/graphics/shapes/ProgressableFeature;)V
    .locals 1

    const-string v0, "f1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f2"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroidx/graphics/shapes/DistanceVertex;->distance:F

    .line 67
    iput-object p2, p0, Landroidx/graphics/shapes/DistanceVertex;->f1:Landroidx/graphics/shapes/ProgressableFeature;

    .line 68
    iput-object p3, p0, Landroidx/graphics/shapes/DistanceVertex;->f2:Landroidx/graphics/shapes/ProgressableFeature;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/graphics/shapes/DistanceVertex;FLandroidx/graphics/shapes/ProgressableFeature;Landroidx/graphics/shapes/ProgressableFeature;ILjava/lang/Object;)Landroidx/graphics/shapes/DistanceVertex;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Landroidx/graphics/shapes/DistanceVertex;->distance:F

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Landroidx/graphics/shapes/DistanceVertex;->f1:Landroidx/graphics/shapes/ProgressableFeature;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Landroidx/graphics/shapes/DistanceVertex;->f2:Landroidx/graphics/shapes/ProgressableFeature;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/graphics/shapes/DistanceVertex;->copy(FLandroidx/graphics/shapes/ProgressableFeature;Landroidx/graphics/shapes/ProgressableFeature;)Landroidx/graphics/shapes/DistanceVertex;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Landroidx/graphics/shapes/DistanceVertex;->distance:F

    return v0
.end method

.method public final component2()Landroidx/graphics/shapes/ProgressableFeature;
    .locals 1

    iget-object v0, p0, Landroidx/graphics/shapes/DistanceVertex;->f1:Landroidx/graphics/shapes/ProgressableFeature;

    return-object v0
.end method

.method public final component3()Landroidx/graphics/shapes/ProgressableFeature;
    .locals 1

    iget-object v0, p0, Landroidx/graphics/shapes/DistanceVertex;->f2:Landroidx/graphics/shapes/ProgressableFeature;

    return-object v0
.end method

.method public final copy(FLandroidx/graphics/shapes/ProgressableFeature;Landroidx/graphics/shapes/ProgressableFeature;)Landroidx/graphics/shapes/DistanceVertex;
    .locals 1

    const-string v0, "f1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f2"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/graphics/shapes/DistanceVertex;

    invoke-direct {v0, p1, p2, p3}, Landroidx/graphics/shapes/DistanceVertex;-><init>(FLandroidx/graphics/shapes/ProgressableFeature;Landroidx/graphics/shapes/ProgressableFeature;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/graphics/shapes/DistanceVertex;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/graphics/shapes/DistanceVertex;

    iget v1, p0, Landroidx/graphics/shapes/DistanceVertex;->distance:F

    iget v3, p1, Landroidx/graphics/shapes/DistanceVertex;->distance:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/graphics/shapes/DistanceVertex;->f1:Landroidx/graphics/shapes/ProgressableFeature;

    iget-object v3, p1, Landroidx/graphics/shapes/DistanceVertex;->f1:Landroidx/graphics/shapes/ProgressableFeature;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/graphics/shapes/DistanceVertex;->f2:Landroidx/graphics/shapes/ProgressableFeature;

    iget-object p1, p1, Landroidx/graphics/shapes/DistanceVertex;->f2:Landroidx/graphics/shapes/ProgressableFeature;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDistance()F
    .locals 1

    .line 66
    iget v0, p0, Landroidx/graphics/shapes/DistanceVertex;->distance:F

    return v0
.end method

.method public final getF1()Landroidx/graphics/shapes/ProgressableFeature;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/graphics/shapes/DistanceVertex;->f1:Landroidx/graphics/shapes/ProgressableFeature;

    return-object v0
.end method

.method public final getF2()Landroidx/graphics/shapes/ProgressableFeature;
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/graphics/shapes/DistanceVertex;->f2:Landroidx/graphics/shapes/ProgressableFeature;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/graphics/shapes/DistanceVertex;->distance:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/graphics/shapes/DistanceVertex;->f1:Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v1}, Landroidx/graphics/shapes/ProgressableFeature;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/graphics/shapes/DistanceVertex;->f2:Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v1}, Landroidx/graphics/shapes/ProgressableFeature;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DistanceVertex(distance="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/graphics/shapes/DistanceVertex;->distance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", f1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/graphics/shapes/DistanceVertex;->f1:Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", f2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/graphics/shapes/DistanceVertex;->f2:Landroidx/graphics/shapes/ProgressableFeature;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
