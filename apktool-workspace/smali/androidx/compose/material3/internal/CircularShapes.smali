.class final Landroidx/compose/material3/internal/CircularShapes;
.super Ljava/lang/Object;
.source "CircularWavyProgressModifiers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCircularWavyProgressModifiers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularWavyProgressModifiers.kt\nandroidx/compose/material3/internal/CircularShapes\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,1409:1\n1#2:1410\n28#3:1411\n*S KotlinDebug\n*F\n+ 1 CircularWavyProgressModifiers.kt\nandroidx/compose/material3/internal/CircularShapes\n*L\n1339#1:1411\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J1\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bJ4\u0010\u001d\u001a\u00020\u001b2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u00172\u0008\u0008\u0002\u0010 \u001a\u00020\u00072\u0008\u0008\u0002\u0010!\u001a\u00020\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/material3/internal/CircularShapes;",
        "",
        "<init>",
        "()V",
        "currentSize",
        "Landroidx/compose/ui/geometry/Size;",
        "currentWavelength",
        "",
        "trackPolygon",
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "activeIndicatorPolygon",
        "activeIndicatorMorph",
        "Landroidx/graphics/shapes/Morph;",
        "currentVertexCount",
        "Landroidx/compose/runtime/MutableIntState;",
        "getCurrentVertexCount",
        "()Landroidx/compose/runtime/MutableIntState;",
        "update",
        "",
        "size",
        "wavelength",
        "strokeWidth",
        "requiresMorph",
        "",
        "update-Cqks5Fs",
        "(JFFZ)V",
        "getTrackPath",
        "Landroidx/compose/ui/graphics/Path;",
        "path",
        "getProgressPath",
        "amplitude",
        "repeatPath",
        "rotationPivotX",
        "rotationPivotY",
        "material3"
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
.field private activeIndicatorMorph:Landroidx/graphics/shapes/Morph;

.field private activeIndicatorPolygon:Landroidx/graphics/shapes/RoundedPolygon;

.field private currentSize:Landroidx/compose/ui/geometry/Size;

.field private final currentVertexCount:Landroidx/compose/runtime/MutableIntState;

.field private currentWavelength:F

.field private trackPolygon:Landroidx/graphics/shapes/RoundedPolygon;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 1268
    iput v0, p0, Landroidx/compose/material3/internal/CircularShapes;->currentWavelength:F

    const/4 v0, -0x1

    .line 1303
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/CircularShapes;->currentVertexCount:Landroidx/compose/runtime/MutableIntState;

    return-void
.end method

.method public static synthetic getProgressPath$default(Landroidx/compose/material3/internal/CircularShapes;FLandroidx/compose/ui/graphics/Path;ZFFILjava/lang/Object;)Landroidx/compose/ui/graphics/Path;
    .locals 1

    and-int/lit8 p7, p6, 0x8

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p7, :cond_0

    move p4, v0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    move p5, v0

    .line 1375
    :cond_1
    invoke-virtual/range {p0 .. p5}, Landroidx/compose/material3/internal/CircularShapes;->getProgressPath(FLandroidx/compose/ui/graphics/Path;ZFF)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCurrentVertexCount()Landroidx/compose/runtime/MutableIntState;
    .locals 1

    .line 1303
    iget-object v0, p0, Landroidx/compose/material3/internal/CircularShapes;->currentVertexCount:Landroidx/compose/runtime/MutableIntState;

    return-object v0
.end method

.method public final getProgressPath(FLandroidx/compose/ui/graphics/Path;ZFF)Landroidx/compose/ui/graphics/Path;
    .locals 18

    move-object/from16 v0, p0

    .line 1382
    iget-object v1, v0, Landroidx/compose/material3/internal/CircularShapes;->activeIndicatorMorph:Landroidx/graphics/shapes/Morph;

    if-eqz v1, :cond_0

    .line 1383
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v9, 0x14

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/internal/ShapeUtilKt;->toPath$default(Landroidx/graphics/shapes/Morph;FLandroidx/compose/ui/graphics/Path;IZZFFILjava/lang/Object;)Landroidx/compose/ui/graphics/Path;

    return-object p2

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-nez v1, :cond_1

    .line 1396
    iget-object v11, v0, Landroidx/compose/material3/internal/CircularShapes;->activeIndicatorPolygon:Landroidx/graphics/shapes/RoundedPolygon;

    if-eqz v11, :cond_1

    .line 1397
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v16, 0xa

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p2

    move/from16 v14, p3

    invoke-static/range {v11 .. v17}, Landroidx/compose/material3/internal/ShapeUtilKt;->toPath$default(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/compose/ui/graphics/Path;IZZILjava/lang/Object;)Landroidx/compose/ui/graphics/Path;

    return-object p2

    .line 1399
    :cond_1
    iget-object v11, v0, Landroidx/compose/material3/internal/CircularShapes;->trackPolygon:Landroidx/graphics/shapes/RoundedPolygon;

    if-eqz v11, :cond_2

    const/16 v16, 0xa

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p2

    move/from16 v14, p3

    invoke-static/range {v11 .. v17}, Landroidx/compose/material3/internal/ShapeUtilKt;->toPath$default(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/compose/ui/graphics/Path;IZZILjava/lang/Object;)Landroidx/compose/ui/graphics/Path;

    :cond_2
    return-object p2
.end method

.method public final getTrackPath(Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 7

    .line 1365
    iget-object v0, p0, Landroidx/compose/material3/internal/CircularShapes;->trackPolygon:Landroidx/graphics/shapes/RoundedPolygon;

    if-eqz v0, :cond_0

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/internal/ShapeUtilKt;->toPath$default(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/compose/ui/graphics/Path;IZZILjava/lang/Object;)Landroidx/compose/ui/graphics/Path;

    return-object v1

    :cond_0
    move-object v1, p1

    return-object v1
.end method

.method public final update-Cqks5Fs(JFFZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    .line 1327
    iget-object v3, v0, Landroidx/compose/material3/internal/CircularShapes;->currentSize:Landroidx/compose/ui/geometry/Size;

    move-wide/from16 v4, p1

    invoke-static {v4, v5, v3}, Landroidx/compose/ui/geometry/Size;->equals-impl(JLjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Landroidx/compose/material3/internal/CircularShapes;->currentWavelength:F

    cmpg-float v3, v1, v3

    if-nez v3, :cond_1

    if-eqz p5, :cond_0

    .line 1328
    iget-object v1, v0, Landroidx/compose/material3/internal/CircularShapes;->activeIndicatorMorph:Landroidx/graphics/shapes/Morph;

    if-nez v1, :cond_0

    .line 1331
    new-instance v1, Landroidx/graphics/shapes/Morph;

    iget-object v2, v0, Landroidx/compose/material3/internal/CircularShapes;->trackPolygon:Landroidx/graphics/shapes/RoundedPolygon;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Landroidx/compose/material3/internal/CircularShapes;->activeIndicatorPolygon:Landroidx/graphics/shapes/RoundedPolygon;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Landroidx/graphics/shapes/Morph;-><init>(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)V

    iput-object v1, v0, Landroidx/compose/material3/internal/CircularShapes;->activeIndicatorMorph:Landroidx/graphics/shapes/Morph;

    :cond_0
    return-void

    .line 1338
    :cond_1
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v3

    const/4 v6, 0x2

    int-to-float v7, v6

    div-float/2addr v3, v7

    div-float v7, p4, v7

    sub-float/2addr v3, v7

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v9, v3

    mul-double/2addr v9, v7

    float-to-double v7, v1

    div-double/2addr v9, v7

    .line 1411
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v3, v7

    const/4 v7, 0x5

    .line 1339
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1341
    iget-object v3, v0, Landroidx/compose/material3/internal/CircularShapes;->currentVertexCount:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v3}, Landroidx/compose/runtime/MutableIntState;->getIntValue()I

    move-result v3

    if-eq v9, v3, :cond_2

    .line 1344
    sget-object v8, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    const/16 v13, 0xe

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Landroidx/graphics/shapes/ShapesKt;->circle$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/graphics/shapes/RoundedPolygon;->normalized()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/material3/internal/CircularShapes;->trackPolygon:Landroidx/graphics/shapes/RoundedPolygon;

    .line 1346
    sget-object v8, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    .line 1349
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    const v3, 0x3eb33333    # 0.35f

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v12, v3, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1350
    new-instance v13, Landroidx/graphics/shapes/CornerRounding;

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    invoke-direct {v13, v3, v2, v6, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v17, 0xe2

    const/16 v18, 0x0

    const/high16 v11, 0x3f400000    # 0.75f

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1346
    invoke-static/range {v8 .. v18}, Landroidx/graphics/shapes/ShapesKt;->star$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v2

    .line 1352
    invoke-virtual {v2}, Landroidx/graphics/shapes/RoundedPolygon;->normalized()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v2

    .line 1345
    iput-object v2, v0, Landroidx/compose/material3/internal/CircularShapes;->activeIndicatorPolygon:Landroidx/graphics/shapes/RoundedPolygon;

    if-eqz p5, :cond_2

    .line 1354
    new-instance v2, Landroidx/graphics/shapes/Morph;

    iget-object v3, v0, Landroidx/compose/material3/internal/CircularShapes;->trackPolygon:Landroidx/graphics/shapes/RoundedPolygon;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v0, Landroidx/compose/material3/internal/CircularShapes;->activeIndicatorPolygon:Landroidx/graphics/shapes/RoundedPolygon;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v6}, Landroidx/graphics/shapes/Morph;-><init>(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)V

    iput-object v2, v0, Landroidx/compose/material3/internal/CircularShapes;->activeIndicatorMorph:Landroidx/graphics/shapes/Morph;

    .line 1358
    :cond_2
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/material3/internal/CircularShapes;->currentSize:Landroidx/compose/ui/geometry/Size;

    .line 1359
    iput v1, v0, Landroidx/compose/material3/internal/CircularShapes;->currentWavelength:F

    .line 1360
    iget-object v1, v0, Landroidx/compose/material3/internal/CircularShapes;->currentVertexCount:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v1, v9}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void

    .line 1326
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wavelength should be greater than zero"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
