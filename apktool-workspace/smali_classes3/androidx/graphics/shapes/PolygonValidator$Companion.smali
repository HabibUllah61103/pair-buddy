.class public final Landroidx/graphics/shapes/PolygonValidator$Companion;
.super Ljava/lang/Object;
.source "PolygonValidation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/PolygonValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPolygonValidation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonValidation.kt\nandroidx/graphics/shapes/PolygonValidator$Companion\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,88:1\n146#2,4:89\n146#2,4:93\n146#2,4:97\n*S KotlinDebug\n*F\n+ 1 PolygonValidation.kt\nandroidx/graphics/shapes/PolygonValidator$Companion\n*L\n49#1:89,4\n52#1:93,4\n54#1:97,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/graphics/shapes/PolygonValidator$Companion;",
        "",
        "<init>",
        "()V",
        "fix",
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "polygon",
        "isCWOriented",
        "",
        "fixCWOrientation",
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/shapes/PolygonValidator$Companion;-><init>()V

    return-void
.end method

.method private final fixCWOrientation(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 4

    .line 73
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Landroidx/graphics/shapes/RoundedPolygon;->getFeatures()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v1}, Landroidx/graphics/shapes/Feature;->reversed()Landroidx/graphics/shapes/Feature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p1}, Landroidx/graphics/shapes/RoundedPolygon;->getFeatures()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroidx/graphics/shapes/RoundedPolygon;->getFeatures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v2}, Landroidx/graphics/shapes/Feature;->reversed()Landroidx/graphics/shapes/Feature;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 82
    new-instance v1, Landroidx/graphics/shapes/RoundedPolygon;

    invoke-virtual {p1}, Landroidx/graphics/shapes/RoundedPolygon;->getCenter-1ufDz9w$graphics_shapes()J

    move-result-wide v2

    const/4 p1, 0x0

    invoke-direct {v1, v0, v2, v3, p1}, Landroidx/graphics/shapes/RoundedPolygon;-><init>(Ljava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private final isCWOriented(Landroidx/graphics/shapes/RoundedPolygon;)Z
    .locals 8

    .line 64
    invoke-virtual {p1}, Landroidx/graphics/shapes/RoundedPolygon;->getCubics()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 65
    invoke-virtual {p1}, Landroidx/graphics/shapes/RoundedPolygon;->getCubics()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/graphics/shapes/Cubic;

    .line 66
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v6

    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v7

    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v5

    add-float/2addr v7, v5

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    cmpg-float p1, v4, v1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method


# virtual methods
.method public final fix(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 1

    const-string v0, "polygon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1}, Landroidx/graphics/shapes/PolygonValidator$Companion;->isCWOriented(Landroidx/graphics/shapes/RoundedPolygon;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Landroidx/graphics/shapes/PolygonValidator$Companion;->fixCWOrientation(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p1

    return-object p1
.end method
