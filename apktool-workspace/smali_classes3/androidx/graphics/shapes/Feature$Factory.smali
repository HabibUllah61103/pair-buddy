.class public final Landroidx/graphics/shapes/Feature$Factory;
.super Ljava/lang/Object;
.source "Features.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeatures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Features.kt\nandroidx/graphics/shapes/Feature$Factory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1#2:226\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0008J\u0014\u0010\u000b\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0014\u0010\u000c\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0005H\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/graphics/shapes/Feature$Factory;",
        "",
        "<init>",
        "()V",
        "buildIgnorableFeature",
        "Landroidx/graphics/shapes/Feature;",
        "cubics",
        "",
        "Landroidx/graphics/shapes/Cubic;",
        "buildEdge",
        "cubic",
        "buildConvexCorner",
        "buildConcaveCorner",
        "validated",
        "feature",
        "isContinuous",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/shapes/Feature$Factory;-><init>()V

    return-void
.end method

.method private final isContinuous(Landroidx/graphics/shapes/Feature;)Z
    .locals 7

    .line 98
    invoke-virtual {p1}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/graphics/shapes/Cubic;

    .line 99
    invoke-virtual {p1}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_2

    move v3, v2

    .line 100
    :goto_0
    invoke-virtual {p1}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/graphics/shapes/Cubic;

    .line 102
    invoke-virtual {v4}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v5

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x38d1b717    # 1.0E-4f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 103
    invoke-virtual {v4}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v5

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v0

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eq v3, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    move-object v0, v4

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v2
.end method

.method private final validated(Landroidx/graphics/shapes/Feature;)Landroidx/graphics/shapes/Feature;
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0, p1}, Landroidx/graphics/shapes/Feature$Factory;->isContinuous(Landroidx/graphics/shapes/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Feature must be continuous, with the anchor points of all cubics matching the anchor points of the preceding and succeeding cubics"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Features need at least one cubic."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final buildConcaveCorner(Ljava/util/List;)Landroidx/graphics/shapes/Feature;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/graphics/shapes/Cubic;",
            ">;)",
            "Landroidx/graphics/shapes/Feature;"
        }
    .end annotation

    const-string v0, "cubics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Landroidx/graphics/shapes/Feature$Corner;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/graphics/shapes/Feature$Corner;-><init>(Ljava/util/List;Z)V

    check-cast v0, Landroidx/graphics/shapes/Feature;

    invoke-direct {p0, v0}, Landroidx/graphics/shapes/Feature$Factory;->validated(Landroidx/graphics/shapes/Feature;)Landroidx/graphics/shapes/Feature;

    move-result-object p1

    return-object p1
.end method

.method public final buildConvexCorner(Ljava/util/List;)Landroidx/graphics/shapes/Feature;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/graphics/shapes/Cubic;",
            ">;)",
            "Landroidx/graphics/shapes/Feature;"
        }
    .end annotation

    const-string v0, "cubics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Landroidx/graphics/shapes/Feature$Corner;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/graphics/shapes/Feature$Corner;-><init>(Ljava/util/List;Z)V

    check-cast v0, Landroidx/graphics/shapes/Feature;

    invoke-direct {p0, v0}, Landroidx/graphics/shapes/Feature$Factory;->validated(Landroidx/graphics/shapes/Feature;)Landroidx/graphics/shapes/Feature;

    move-result-object p1

    return-object p1
.end method

.method public final buildEdge(Landroidx/graphics/shapes/Cubic;)Landroidx/graphics/shapes/Feature;
    .locals 1

    const-string v0, "cubic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroidx/graphics/shapes/Feature$Edge;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/graphics/shapes/Feature$Edge;-><init>(Ljava/util/List;)V

    check-cast v0, Landroidx/graphics/shapes/Feature;

    return-object v0
.end method

.method public final buildIgnorableFeature(Ljava/util/List;)Landroidx/graphics/shapes/Feature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/graphics/shapes/Cubic;",
            ">;)",
            "Landroidx/graphics/shapes/Feature;"
        }
    .end annotation

    const-string v0, "cubics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroidx/graphics/shapes/Feature$Edge;

    invoke-direct {v0, p1}, Landroidx/graphics/shapes/Feature$Edge;-><init>(Ljava/util/List;)V

    check-cast v0, Landroidx/graphics/shapes/Feature;

    invoke-direct {p0, v0}, Landroidx/graphics/shapes/Feature$Factory;->validated(Landroidx/graphics/shapes/Feature;)Landroidx/graphics/shapes/Feature;

    move-result-object p1

    return-object p1
.end method
