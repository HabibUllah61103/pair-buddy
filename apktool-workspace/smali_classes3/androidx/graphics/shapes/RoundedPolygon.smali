.class public final Landroidx/graphics/shapes/RoundedPolygon;
.super Ljava/lang/Object;
.source "RoundedPolygon.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/RoundedPolygon$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoundedPolygon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygon\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,759:1\n146#2,4:760\n146#2,4:764\n146#2,4:768\n1#3:772\n*S KotlinDebug\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygon\n*L\n103#1:760,4\n106#1:764,4\n111#1:768,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 (2\u00020\u0001:\u0001(B#\u0008\u0000\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u0000J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020\u001fJ\u001c\u0010!\u001a\u00020\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020\u001f2\u0008\u0008\u0002\u0010\"\u001a\u00020#H\u0007J\u0013\u0010$\u001a\u00020#2\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010&\u001a\u00020\'H\u0016R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000b\u00a8\u0006)"
    }
    d2 = {
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "",
        "features",
        "",
        "Landroidx/graphics/shapes/Feature;",
        "center",
        "Landroidx/collection/FloatFloatPair;",
        "Landroidx/graphics/shapes/Point;",
        "<init>",
        "(Ljava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getFeatures",
        "()Ljava/util/List;",
        "getCenter-1ufDz9w$graphics_shapes",
        "()J",
        "J",
        "centerX",
        "",
        "getCenterX",
        "()F",
        "centerY",
        "getCenterY",
        "cubics",
        "Landroidx/graphics/shapes/Cubic;",
        "getCubics",
        "transformed",
        "f",
        "Landroidx/graphics/shapes/PointTransformer;",
        "normalized",
        "toString",
        "",
        "calculateMaxBounds",
        "",
        "bounds",
        "calculateBounds",
        "approximate",
        "",
        "equals",
        "other",
        "hashCode",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;


# instance fields
.field private final center:J

.field private final cubics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Cubic;",
            ">;"
        }
    .end annotation
.end field

.field private final features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Feature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/shapes/RoundedPolygon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/shapes/RoundedPolygon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;J)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/graphics/shapes/Feature;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "features"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroidx/graphics/shapes/RoundedPolygon;->center:J

    .line 40
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v2

    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lez v3, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v3}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x3

    if-ne v3, v7, :cond_0

    .line 49
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v3}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Cubic;

    const/high16 v7, 0x3f000000    # 0.5f

    .line 50
    invoke-virtual {v3, v7}, Landroidx/graphics/shapes/Cubic;->split(F)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Cubic;

    const/4 v8, 0x2

    .line 51
    new-array v9, v8, [Landroidx/graphics/shapes/Cubic;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v10}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v5

    aput-object v7, v9, v4

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 52
    new-array v9, v8, [Landroidx/graphics/shapes/Cubic;

    aput-object v3, v9, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v3}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v9, v4

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v6

    move-object v7, v3

    .line 56
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ltz v1, :cond_a

    move v9, v5

    move-object v8, v6

    :goto_1
    if-nez v9, :cond_1

    if-eqz v3, :cond_1

    move-object v10, v3

    goto :goto_2

    .line 59
    :cond_1
    iget-object v10, v0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_4

    if-nez v7, :cond_3

    :cond_2
    move-object v1, v6

    move-object v6, v8

    goto/16 :goto_5

    :cond_3
    move-object v10, v7

    goto :goto_2

    .line 61
    :cond_4
    iget-object v10, v0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v10}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v10

    .line 62
    :goto_2
    move-object v11, v10

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    move v12, v5

    :goto_3
    if-ge v12, v11, :cond_9

    .line 64
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/graphics/shapes/Cubic;

    .line 65
    invoke-virtual {v13}, Landroidx/graphics/shapes/Cubic;->zeroLength$graphics_shapes()Z

    move-result v14

    if-nez v14, :cond_7

    if-eqz v8, :cond_5

    .line 66
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v6, :cond_6

    move-object v6, v13

    move-object v8, v6

    goto :goto_4

    :cond_6
    move-object v8, v13

    goto :goto_4

    :cond_7
    if-eqz v8, :cond_8

    .line 75
    new-instance v14, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v8}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes()[F

    move-result-object v8

    array-length v15, v8

    invoke-static {v8, v15}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v8

    const-string v15, "copyOf(...)"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v14, v8}, Landroidx/graphics/shapes/Cubic;-><init>([F)V

    .line 76
    invoke-virtual {v14}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes()[F

    move-result-object v8

    const/4 v15, 0x6

    invoke-virtual {v13}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v16

    aput v16, v8, v15

    .line 77
    invoke-virtual {v14}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes()[F

    move-result-object v8

    const/4 v15, 0x7

    invoke-virtual {v13}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v13

    aput v13, v8, v15

    move-object v8, v14

    :cond_8
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_9
    if-eq v9, v1, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_a
    move-object v1, v6

    :goto_5
    if-eqz v6, :cond_b

    if-eqz v1, :cond_b

    .line 85
    invoke-virtual {v6}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v7

    .line 86
    invoke-virtual {v6}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v8

    .line 87
    invoke-virtual {v6}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v9

    .line 88
    invoke-virtual {v6}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v10

    .line 89
    invoke-virtual {v6}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v11

    .line 90
    invoke-virtual {v6}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v12

    .line 91
    invoke-virtual {v1}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v13

    .line 92
    invoke-virtual {v1}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v14

    .line 84
    invoke-static/range {v7 .. v14}, Landroidx/graphics/shapes/CubicKt;->Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v1

    .line 83
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 97
    :cond_b
    invoke-virtual {v0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v6

    invoke-virtual {v0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result v7

    invoke-virtual {v0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v8

    invoke-virtual {v0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result v9

    invoke-virtual {v0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v10

    invoke-virtual {v0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result v11

    invoke-virtual {v0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v12

    invoke-virtual {v0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result v13

    invoke-static/range {v6 .. v13}, Landroidx/graphics/shapes/CubicKt;->Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :goto_6
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    .line 102
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 104
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_7
    if-ge v5, v1, :cond_d

    .line 105
    iget-object v3, v0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Cubic;

    .line 108
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v4

    check-cast v2, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v6, 0x38d1b717    # 1.0E-4f

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_c

    .line 109
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v4

    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v2

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_c

    add-int/lit8 v5, v5, 0x1

    move-object v2, v3

    goto :goto_7

    .line 114
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 115
    const-string v2, "RoundedPolygon must be contiguous, with the anchor points of all curves matching the anchor points of the preceding and succeeding cubics"

    .line 114
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/graphics/shapes/RoundedPolygon;-><init>(Ljava/util/List;J)V

    return-void
.end method

.method public static synthetic calculateBounds$default(Landroidx/graphics/shapes/RoundedPolygon;[FZILjava/lang/Object;)[F
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x4

    .line 208
    new-array p1, p1, [F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 206
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/shapes/RoundedPolygon;->calculateBounds([FZ)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic calculateMaxBounds$default(Landroidx/graphics/shapes/RoundedPolygon;[FILjava/lang/Object;)[F
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    .line 177
    new-array p1, p1, [F

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/RoundedPolygon;->calculateMaxBounds([F)[F

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final calculateBounds()[F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Landroidx/graphics/shapes/RoundedPolygon;->calculateBounds$default(Landroidx/graphics/shapes/RoundedPolygon;[FZILjava/lang/Object;)[F

    move-result-object v0

    return-object v0
.end method

.method public final calculateBounds([F)[F
    .locals 3

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Landroidx/graphics/shapes/RoundedPolygon;->calculateBounds$default(Landroidx/graphics/shapes/RoundedPolygon;[FZILjava/lang/Object;)[F

    move-result-object p1

    return-object p1
.end method

.method public final calculateBounds([FZ)[F
    .locals 11

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 216
    iget-object v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    move v6, v3

    move v2, v1

    :goto_0
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v6, v0, :cond_0

    .line 217
    iget-object v10, p0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/graphics/shapes/Cubic;

    .line 218
    invoke-virtual {v10, p1, p2}, Landroidx/graphics/shapes/Cubic;->calculateBounds$graphics_shapes([FZ)V

    .line 219
    aget v10, p1, v3

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 220
    aget v9, p1, v9

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 221
    aget v8, p1, v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 222
    aget v7, p1, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 224
    :cond_0
    aput v4, p1, v3

    .line 225
    aput v5, p1, v9

    .line 226
    aput v1, p1, v8

    .line 227
    aput v2, p1, v7

    return-object p1

    .line 211
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required bounds size of 4"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final calculateMaxBounds([F)[F
    .locals 9

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 181
    iget-object v4, p0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/graphics/shapes/Cubic;

    .line 182
    invoke-virtual {v4}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v5

    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v4}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v6

    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Landroidx/graphics/shapes/Utils;->distanceSquared(FF)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    .line 183
    invoke-virtual {v4, v6}, Landroidx/graphics/shapes/Cubic;->pointOnCurve-OOQOV4g$graphics_shapes(F)J

    move-result-wide v6

    .line 184
    invoke-static {v6, v7}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v4

    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v8

    sub-float/2addr v4, v8

    invoke-static {v6, v7}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v6

    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v4, v6}, Landroidx/graphics/shapes/Utils;->distanceSquared(FF)F

    move-result v4

    .line 185
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    float-to-double v2, v2

    .line 187
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 188
    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v2

    sub-float/2addr v2, v0

    aput v2, p1, v1

    .line 189
    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result v1

    sub-float/2addr v1, v0

    const/4 v2, 0x1

    aput v1, p1, v2

    .line 190
    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v1

    add-float/2addr v1, v0

    const/4 v2, 0x2

    aput v1, p1, v2

    .line 191
    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result v1

    add-float/2addr v1, v0

    const/4 v0, 0x3

    aput v1, p1, v0

    return-object p1

    .line 178
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required bounds size of 4"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 235
    :cond_0
    instance-of v0, p1, Landroidx/graphics/shapes/RoundedPolygon;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 237
    :cond_1
    iget-object v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    check-cast p1, Landroidx/graphics/shapes/RoundedPolygon;

    iget-object p1, p1, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getCenter-1ufDz9w$graphics_shapes()J
    .locals 2

    .line 32
    iget-wide v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->center:J

    return-wide v0
.end method

.method public final getCenterX()F
    .locals 2

    .line 34
    iget-wide v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->center:J

    invoke-static {v0, v1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    return v0
.end method

.method public final getCenterY()F
    .locals 2

    .line 37
    iget-wide v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->center:J

    invoke-static {v0, v1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v0

    return v0
.end method

.method public final getCubics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Cubic;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    return-object v0
.end method

.method public final getFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Feature;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 241
    iget-object v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final normalized()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 147
    invoke-static {p0, v0, v1, v2, v0}, Landroidx/graphics/shapes/RoundedPolygon;->calculateBounds$default(Landroidx/graphics/shapes/RoundedPolygon;[FZILjava/lang/Object;)[F

    move-result-object v0

    const/4 v3, 0x2

    .line 148
    aget v4, v0, v3

    aget v5, v0, v1

    sub-float/2addr v4, v5

    .line 149
    aget v2, v0, v2

    const/4 v5, 0x1

    aget v6, v0, v5

    sub-float/2addr v2, v6

    .line 150
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-float v4, v6, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 152
    aget v1, v0, v1

    sub-float/2addr v4, v1

    sub-float v1, v6, v2

    div-float/2addr v1, v3

    .line 153
    aget v0, v0, v5

    sub-float/2addr v1, v0

    .line 154
    new-instance v0, Landroidx/graphics/shapes/RoundedPolygon$normalized$1;

    invoke-direct {v0, v4, v6, v1}, Landroidx/graphics/shapes/RoundedPolygon$normalized$1;-><init>(FFF)V

    check-cast v0, Landroidx/graphics/shapes/PointTransformer;

    invoke-virtual {p0, v0}, Landroidx/graphics/shapes/RoundedPolygon;->transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[RoundedPolygon. Cubics = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string v1, " || Features = "

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    iget-object v1, p0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    const-string v1, " || Center = ("

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    const-string v1, ", "

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    const-string v1, ")]"

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 6

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-wide v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->center:J

    invoke-static {v0, v1, p1}, Landroidx/graphics/shapes/PointKt;->transformed-so9K2fw(JLandroidx/graphics/shapes/PointTransformer;)J

    move-result-wide v0

    .line 133
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v2

    .line 134
    iget-object v3, p0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 135
    iget-object v5, p0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v5, p1}, Landroidx/graphics/shapes/Feature;->transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Feature;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 132
    new-instance v2, Landroidx/graphics/shapes/RoundedPolygon;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v1, v3}, Landroidx/graphics/shapes/RoundedPolygon;-><init>(Ljava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
