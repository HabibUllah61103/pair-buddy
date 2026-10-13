.class public final Landroidx/compose/material3/internal/ShapeUtilKt;
.super Ljava/lang/Object;
.source "ShapeUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeUtil.kt\nandroidx/compose/material3/internal/ShapeUtilKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,179:1\n34#2,6:180\n34#2,6:186\n1#3:192\n*S KotlinDebug\n*F\n+ 1 ShapeUtil.kt\nandroidx/compose/material3/internal/ShapeUtilKt\n*L\n126#1:180,6\n145#1:186,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a4\u0010\u0006\u001a\u00020\u0007*\u00020\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cH\u0000\u001aP\u0010\u0006\u001a\u00020\u0007*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0010H\u0000\u001aF\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0002\u001a\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0010H\u0002\u00a8\u0006\u001a"
    }
    d2 = {
        "transformed",
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "matrix",
        "Landroidx/compose/ui/graphics/Matrix;",
        "transformed-EL8BTi8",
        "(Landroidx/graphics/shapes/RoundedPolygon;[F)Landroidx/graphics/shapes/RoundedPolygon;",
        "toPath",
        "Landroidx/compose/ui/graphics/Path;",
        "path",
        "startAngle",
        "",
        "repeatPath",
        "",
        "closePath",
        "Landroidx/graphics/shapes/Morph;",
        "progress",
        "",
        "rotationPivotX",
        "rotationPivotY",
        "pathFromCubics",
        "",
        "cubics",
        "",
        "Landroidx/graphics/shapes/Cubic;",
        "radiansToDegrees",
        "radians",
        "material3"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final pathFromCubics(Landroidx/compose/ui/graphics/Path;IZZLjava/util/List;FF)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Path;",
            "IZZ",
            "Ljava/util/List<",
            "+",
            "Landroidx/graphics/shapes/Cubic;",
            ">;FF)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p4

    .line 125
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->rewind()V

    .line 181
    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v1, v11

    move-object v15, v12

    move v14, v13

    :goto_0
    if-ge v14, v10, :cond_2

    .line 182
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 183
    check-cast v2, Landroidx/graphics/shapes/Cubic;

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v1

    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v3

    invoke-interface {v0, v1, v3}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    if-eqz v7, :cond_0

    move-object v15, v2

    :cond_0
    move-object/from16 v16, v15

    move v15, v13

    goto :goto_1

    :cond_1
    move-object/from16 v16, v15

    move v15, v1

    .line 135
    :goto_1
    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v1

    move-object v3, v2

    .line 136
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v2

    move-object v4, v3

    .line 137
    invoke-virtual {v4}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v3

    move-object v5, v4

    .line 138
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v4

    move-object v6, v5

    .line 139
    invoke-virtual {v6}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v5

    .line 140
    invoke-virtual {v6}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v6

    .line 134
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v14, v14, 0x1

    move v1, v15

    move-object/from16 v15, v16

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 187
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    move v1, v11

    move v10, v13

    :goto_2
    if-ge v10, v9, :cond_4

    .line 188
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 189
    check-cast v2, Landroidx/graphics/shapes/Cubic;

    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v1

    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v3

    invoke-interface {v0, v1, v3}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    move v14, v13

    goto :goto_3

    :cond_3
    move v14, v1

    .line 151
    :goto_3
    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v1

    move-object v3, v2

    .line 152
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v2

    move-object v4, v3

    .line 153
    invoke-virtual {v4}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v3

    move-object v5, v4

    .line 154
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v4

    move-object v6, v5

    .line 155
    invoke-virtual {v6}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v5

    .line 156
    invoke-virtual {v6}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v6

    .line 150
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v10, v10, 0x1

    move v1, v14

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 161
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->close()V

    :cond_5
    if-eqz v7, :cond_6

    if-eqz v15, :cond_6

    .line 167
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v1}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v1

    sub-float v1, v1, p6

    float-to-double v1, v1

    .line 168
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v3

    sub-float v3, v3, p5

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 165
    invoke-static {v1}, Landroidx/compose/material3/internal/ShapeUtilKt;->radiansToDegrees(F)F

    move-result v1

    .line 172
    invoke-static {v12, v11, v12}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v2

    neg-float v1, v1

    int-to-float v3, v7

    add-float/2addr v1, v3

    invoke-static {v2, v1}, Landroidx/compose/ui/graphics/Matrix;->rotateZ-impl([FF)V

    invoke-interface {v0, v2}, Landroidx/compose/ui/graphics/Path;->transform-58bKbWc([F)V

    :cond_6
    return-void
.end method

.method private static final radiansToDegrees(F)F
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public static final toPath(Landroidx/graphics/shapes/Morph;FLandroidx/compose/ui/graphics/Path;IZZFF)Landroidx/compose/ui/graphics/Path;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/Morph;->asCubics(F)Ljava/util/List;

    move-result-object p0

    move p1, p4

    move-object p4, p0

    move-object p0, p2

    move p2, p1

    move p1, p3

    move p3, p5

    move p5, p6

    move p6, p7

    .line 102
    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/internal/ShapeUtilKt;->pathFromCubics(Landroidx/compose/ui/graphics/Path;IZZLjava/util/List;FF)V

    return-object p0
.end method

.method public static final toPath(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/compose/ui/graphics/Path;IZZ)Landroidx/compose/ui/graphics/Path;
    .locals 7

    .line 64
    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCubics()Ljava/util/List;

    move-result-object v4

    .line 65
    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v5

    .line 66
    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result v6

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    .line 59
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/internal/ShapeUtilKt;->pathFromCubics(Landroidx/compose/ui/graphics/Path;IZZLjava/util/List;FF)V

    return-object v0
.end method

.method public static synthetic toPath$default(Landroidx/graphics/shapes/Morph;FLandroidx/compose/ui/graphics/Path;IZZFFILjava/lang/Object;)Landroidx/compose/ui/graphics/Path;
    .locals 7

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_1

    const/16 v1, 0x10e

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v2, p8, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move v2, p4

    :goto_2
    and-int/lit8 v3, p8, 0x10

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    move v3, p5

    :goto_3
    and-int/lit8 v4, p8, 0x20

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_4

    :cond_4
    move v4, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    move/from16 p9, v5

    goto :goto_5

    :cond_5
    move/from16 p9, p7

    :goto_5
    move-object p2, p0

    move p3, p1

    move-object p4, v0

    move p5, v1

    move p6, v2

    move p7, v3

    move p8, v4

    .line 93
    invoke-static/range {p2 .. p9}, Landroidx/compose/material3/internal/ShapeUtilKt;->toPath(Landroidx/graphics/shapes/Morph;FLandroidx/compose/ui/graphics/Path;IZZFF)Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic toPath$default(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/compose/ui/graphics/Path;IZZILjava/lang/Object;)Landroidx/compose/ui/graphics/Path;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 54
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/16 p2, 0x10e

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x1

    .line 53
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/internal/ShapeUtilKt;->toPath(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/compose/ui/graphics/Path;IZZ)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final transformed-EL8BTi8(Landroidx/graphics/shapes/RoundedPolygon;[F)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 1

    .line 31
    new-instance v0, Landroidx/compose/material3/internal/ShapeUtilKt$transformed$1;

    invoke-direct {v0, p1}, Landroidx/compose/material3/internal/ShapeUtilKt$transformed$1;-><init>([F)V

    check-cast v0, Landroidx/graphics/shapes/PointTransformer;

    invoke-virtual {p0, v0}, Landroidx/graphics/shapes/RoundedPolygon;->transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method
