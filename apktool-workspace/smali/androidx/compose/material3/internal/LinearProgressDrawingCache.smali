.class final Landroidx/compose/material3/internal/LinearProgressDrawingCache;
.super Ljava/lang/Object;
.source "LinearWavyProgressModifiers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinearWavyProgressModifiers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinearWavyProgressModifiers.kt\nandroidx/compose/material3/internal/LinearProgressDrawingCache\n+ 2 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 5 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 6 Rect.kt\nandroidx/compose/ui/geometry/Rect\n+ 7 MathHelpers.kt\nandroidx/compose/ui/util/MathHelpersKt\n*L\n1#1,1146:1\n61#2:1147\n57#2:1150\n57#2:1158\n61#2:1161\n70#3:1148\n60#3:1151\n53#3,3:1154\n60#3:1159\n70#3:1162\n22#4:1149\n22#4:1152\n22#4:1160\n22#4:1163\n30#5:1153\n56#6:1157\n65#7,10:1164\n65#7,10:1174\n*S KotlinDebug\n*F\n+ 1 LinearWavyProgressModifiers.kt\nandroidx/compose/material3/internal/LinearProgressDrawingCache\n*L\n912#1:1147\n913#1:1150\n1025#1:1158\n1026#1:1161\n912#1:1148\n913#1:1151\n964#1:1154,3\n1025#1:1159\n1026#1:1162\n912#1:1149\n913#1:1152\n1025#1:1160\n1026#1:1163\n964#1:1153\n973#1:1157\n1070#1:1164,10\n1072#1:1174,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JU\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00082\u0008\u0008\u0003\u0010+\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u000b2\u0008\u0008\u0001\u0010-\u001a\u00020\u00052\u0008\u0008\u0001\u0010.\u001a\u00020\u00052\u0008\u0008\u0001\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u000f\u00a2\u0006\u0004\u00082\u00103JE\u00104\u001a\u0002052\u0006\u0010*\u001a\u00020\u00082\u0008\u0008\u0001\u0010+\u001a\u00020\u00052\u0008\u0008\u0001\u0010-\u001a\u00020\u00052\u0008\u0008\u0001\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u00086\u00107J,\u00108\u001a\u00020)2\u0006\u00109\u001a\u0002052\u0006\u0010,\u001a\u00020\u000b2\u0008\u0008\u0001\u0010-\u001a\u00020\u00052\u0008\u0008\u0001\u0010.\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0015R$\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\"\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010#\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006:"
    }
    d2 = {
        "Landroidx/compose/material3/internal/LinearProgressDrawingCache;",
        "",
        "<init>",
        "()V",
        "currentWavelength",
        "",
        "currentAmplitude",
        "currentSize",
        "Landroidx/compose/ui/geometry/Size;",
        "J",
        "currentProgressFractions",
        "",
        "currentIndicatorTrackGapSize",
        "currentWaveOffset",
        "currentStroke",
        "Landroidx/compose/ui/graphics/drawscope/Stroke;",
        "currentTrackStroke",
        "progressPathScale",
        "fullProgressPath",
        "Landroidx/compose/ui/graphics/Path;",
        "getFullProgressPath",
        "()Landroidx/compose/ui/graphics/Path;",
        "pathMeasure",
        "Landroidx/compose/ui/graphics/PathMeasure;",
        "getPathMeasure",
        "()Landroidx/compose/ui/graphics/PathMeasure;",
        "trackPathToDraw",
        "getTrackPathToDraw",
        "progressPathsToDraw",
        "",
        "getProgressPathsToDraw",
        "()[Landroidx/compose/ui/graphics/Path;",
        "setProgressPathsToDraw",
        "([Landroidx/compose/ui/graphics/Path;)V",
        "[Landroidx/compose/ui/graphics/Path;",
        "currentStrokeCapWidth",
        "getCurrentStrokeCapWidth",
        "()F",
        "setCurrentStrokeCapWidth",
        "(F)V",
        "updatePaths",
        "",
        "size",
        "wavelength",
        "progressFractions",
        "amplitude",
        "waveOffset",
        "gapSize",
        "stroke",
        "trackStroke",
        "updatePaths-VygBpHg",
        "(JF[FFFFLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;)V",
        "updateFullPaths",
        "",
        "updateFullPaths-LjSzlW0",
        "(JFFFLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;)Z",
        "updateDrawPaths",
        "forceUpdate",
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
.field private currentAmplitude:F

.field private currentIndicatorTrackGapSize:F

.field private currentProgressFractions:[F

.field private currentSize:J

.field private currentStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field private currentStrokeCapWidth:F

.field private currentTrackStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field private currentWaveOffset:F

.field private currentWavelength:F

.field private final fullProgressPath:Landroidx/compose/ui/graphics/Path;

.field private final pathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

.field private progressPathScale:F

.field private progressPathsToDraw:[Landroidx/compose/ui/graphics/Path;

.field private final trackPathToDraw:Landroidx/compose/ui/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 785
    iput v0, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentWavelength:F

    .line 786
    iput v0, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentAmplitude:F

    .line 787
    sget-object v1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentSize:J

    .line 790
    iput v0, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentWaveOffset:F

    .line 791
    new-instance v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 792
    iput-object v3, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentTrackStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 800
    iput v0, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->progressPathScale:F

    .line 806
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    .line 809
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPathMeasure_androidKt;->PathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->pathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    .line 812
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->trackPathToDraw:Landroidx/compose/ui/graphics/Path;

    return-void
.end method

.method private final updateDrawPaths(Z[FFF)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v8, p4

    .line 1008
    iget-wide v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentSize:J

    sget-object v4, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1011
    iget-object v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->progressPathsToDraw:[Landroidx/compose/ui/graphics/Path;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, v2

    array-length v3, v1

    const/4 v9, 0x2

    div-int/2addr v3, v9

    if-ne v2, v3, :cond_11

    if-nez p1, :cond_0

    .line 1018
    iget-object v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentProgressFractions:[F

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    iget v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentAmplitude:F

    cmpg-float v2, v2, p3

    if-nez v2, :cond_0

    .line 1020
    iget v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentWaveOffset:F

    cmpg-float v2, v2, v8

    if-nez v2, :cond_0

    return-void

    .line 1025
    :cond_0
    iget-wide v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentSize:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    .line 1160
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 1026
    iget-wide v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentSize:J

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    .line 1163
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    .line 1028
    iget v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentIndicatorTrackGapSize:F

    .line 1037
    iget v3, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStrokeCapWidth:F

    sub-float v3, v10, v3

    .line 1038
    iget-object v4, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->trackPathToDraw:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/Path;->rewind()V

    .line 1039
    iget-object v4, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->trackPathToDraw:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v4, v3, v11}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 1040
    iget-object v4, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->progressPathsToDraw:[Landroidx/compose/ui/graphics/Path;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v12, v4

    move v14, v3

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_f

    .line 1041
    iget-object v4, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->progressPathsToDraw:[Landroidx/compose/ui/graphics/Path;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v4, v4, v15

    invoke-interface {v4}, Landroidx/compose/ui/graphics/Path;->rewind()V

    mul-int/lit8 v4, v15, 0x2

    .line 1043
    aget v5, v1, v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 1044
    aget v4, v1, v4

    mul-float v16, v5, v10

    mul-float v17, v4, v10

    const/4 v7, 0x0

    if-nez v15, :cond_3

    .line 1057
    iget v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStrokeCapWidth:F

    cmpg-float v3, v17, v2

    if-gez v3, :cond_1

    move v2, v7

    goto :goto_1

    :cond_1
    sub-float v2, v17, v2

    .line 1062
    iget v3, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentIndicatorTrackGapSize:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1065
    :goto_1
    iget v3, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStrokeCapWidth:F

    cmpl-float v3, v17, v3

    if-ltz v3, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_2
    move/from16 v18, v2

    move/from16 v19, v3

    .line 1070
    iget v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStrokeCapWidth:F

    sub-float v3, v10, v2

    cmpg-float v20, v17, v2

    if-gez v20, :cond_4

    move/from16 v20, v2

    goto :goto_3

    :cond_4
    move/from16 v20, v17

    :goto_3
    cmpl-float v21, v20, v3

    if-lez v21, :cond_5

    move/from16 v20, v3

    :cond_5
    sub-float v3, v10, v2

    cmpg-float v21, v16, v2

    if-gez v21, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v2, v16

    :goto_4
    cmpl-float v21, v2, v3

    if-lez v21, :cond_7

    move/from16 v21, v3

    goto :goto_5

    :cond_7
    move/from16 v21, v2

    :goto_5
    sub-float/2addr v4, v5

    .line 1075
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_b

    cmpg-float v2, p3, v7

    if-nez v2, :cond_8

    move v2, v7

    goto :goto_6

    .line 1079
    :cond_8
    iget v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentWavelength:F

    mul-float/2addr v2, v8

    .line 1083
    :goto_6
    iget-object v3, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->pathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    add-float v4, v21, v2

    .line 1084
    iget v5, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->progressPathScale:F

    mul-float v23, v4, v5

    add-float v4, v20, v2

    mul-float v24, v4, v5

    .line 1086
    iget-object v4, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->progressPathsToDraw:[Landroidx/compose/ui/graphics/Path;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v25, v4, v15

    const/16 v27, 0x8

    const/16 v28, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v3

    .line 1083
    invoke-static/range {v22 .. v28}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment$default(Landroidx/compose/ui/graphics/PathMeasure;FFLandroidx/compose/ui/graphics/Path;ZILjava/lang/Object;)Z

    .line 1090
    iget-object v3, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->progressPathsToDraw:[Landroidx/compose/ui/graphics/Path;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v3, v3, v15

    const/4 v4, 0x0

    .line 1091
    invoke-static {v4, v6, v4}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v22

    cmpl-float v4, v2, v7

    if-lez v4, :cond_9

    neg-float v7, v2

    :cond_9
    move/from16 v23, v7

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v2, p3

    mul-float v24, v4, v11

    const/16 v26, 0x4

    const/16 v27, 0x0

    const/16 v25, 0x0

    .line 1092
    invoke-static/range {v22 .. v27}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    cmpg-float v2, p3, v2

    if-nez v2, :cond_a

    move-object v13, v3

    move-object/from16 v2, v22

    goto :goto_7

    :cond_a
    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v2, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v4, p3

    move-object v13, v2

    move-object/from16 v2, v22

    .line 1100
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/graphics/Matrix;->scale-impl$default([FFFFILjava/lang/Object;)V

    .line 1090
    :goto_7
    invoke-interface {v13, v2}, Landroidx/compose/ui/graphics/Path;->transform-58bKbWc([F)V

    :cond_b
    if-eqz v19, :cond_c

    .line 1112
    iget v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStrokeCapWidth:F

    int-to-float v3, v9

    mul-float/2addr v2, v3

    add-float v2, v18, v2

    goto :goto_8

    :cond_c
    move/from16 v2, v18

    :goto_8
    add-float v3, v20, v2

    cmpl-float v4, v14, v3

    if-lez v4, :cond_d

    .line 1117
    iget-object v4, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->trackPathToDraw:Landroidx/compose/ui/graphics/Path;

    .line 1118
    iget v5, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStrokeCapWidth:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1117
    invoke-interface {v4, v3, v11}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    :cond_d
    cmpl-float v3, v17, v16

    if-lez v3, :cond_e

    .line 1126
    iget v3, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStrokeCapWidth:F

    sub-float v2, v21, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1127
    iget-object v3, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->trackPathToDraw:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v3, v2, v11}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    move v14, v2

    :cond_e
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v18

    move/from16 v3, v19

    goto/16 :goto_0

    .line 1133
    :cond_f
    iget v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStrokeCapWidth:F

    cmpl-float v3, v14, v2

    if-lez v3, :cond_10

    .line 1134
    iget-object v3, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->trackPathToDraw:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v3, v2, v11}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 1138
    :cond_10
    iget-object v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentProgressFractions:[F

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v9, p3

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([F[FIIIILjava/lang/Object;)[F

    .line 1139
    iput v9, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentAmplitude:F

    .line 1140
    iput v8, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentWaveOffset:F

    return-void

    .line 1012
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the given progress fraction pairs do not match the expected number of progress paths to draw. updateDrawPaths called with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1013
    array-length v1, v1

    div-int/2addr v1, v9

    .line 1012
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1013
    const-string v2, " pairs, while there are "

    .line 1012
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1014
    iget-object v2, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->progressPathsToDraw:[Landroidx/compose/ui/graphics/Path;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, v2

    .line 1012
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1014
    const-string v2, " expected progress paths."

    .line 1012
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1011
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1008
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "updateDrawPaths was called before updateFullPaths"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateFullPaths-LjSzlW0(JFFFLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;)Z
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 898
    iget-wide v7, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentSize:J

    invoke-static {v7, v8, v1, v2}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    .line 899
    iget v7, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentWavelength:F

    cmpg-float v7, v7, v3

    if-nez v7, :cond_2

    .line 900
    iget-object v7, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 901
    iget-object v7, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentTrackStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 902
    iget v7, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentIndicatorTrackGapSize:F

    cmpg-float v7, v7, v4

    if-nez v7, :cond_2

    .line 905
    iget v7, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentAmplitude:F

    cmpg-float v10, v7, v9

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v10, p4, v9

    if-nez v10, :cond_1

    :goto_0
    cmpg-float v7, v7, v9

    if-nez v7, :cond_2

    cmpg-float v7, p4, v9

    if-nez v7, :cond_2

    :cond_1
    return v8

    :cond_2
    const-wide v10, 0xffffffffL

    and-long v12, v1, v10

    long-to-int v7, v12

    .line 1149
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    const/16 v12, 0x20

    shr-long v13, v1, v12

    long-to-int v13, v13

    .line 1152
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    .line 918
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getCap-KaPHkGw()I

    move-result v14

    sget-object v15, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v15

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v14

    const/4 v15, 0x2

    if-eqz v14, :cond_3

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getCap-KaPHkGw()I

    move-result v14

    sget-object v16, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v10

    invoke-static {v14, v10}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_3
    move-wide/from16 v17, v10

    :goto_1
    cmpl-float v10, v7, v13

    if-lez v10, :cond_5

    :cond_4
    move v10, v9

    goto :goto_2

    .line 923
    :cond_5
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v10

    int-to-float v11, v15

    div-float/2addr v10, v11

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v14

    div-float/2addr v14, v11

    invoke-static {v10, v14}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 916
    :goto_2
    iput v10, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStrokeCapWidth:F

    .line 927
    iget-object v10, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v10}, Landroidx/compose/ui/graphics/Path;->rewind()V

    .line 928
    iget-object v10, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v10, v9, v9}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    cmpg-float v10, p4, v9

    const/high16 v11, 0x40000000    # 2.0f

    if-nez v10, :cond_7

    .line 932
    iget-object v10, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v10, v13, v9}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    move/from16 p4, v11

    :cond_6
    move/from16 v16, v12

    goto :goto_4

    :cond_7
    div-float v10, v3, v11

    div-float v14, v10, v11

    .line 946
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v16

    sub-float v16, v7, v16

    int-to-float v15, v15

    mul-float/2addr v15, v3

    add-float/2addr v13, v15

    move/from16 p4, v11

    move/from16 v15, v16

    move v11, v10

    :goto_3
    cmpg-float v16, v11, v13

    if-gtz v16, :cond_6

    move/from16 v16, v12

    .line 956
    iget-object v12, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v12, v14, v15, v11, v9}, Landroidx/compose/ui/graphics/Path;->quadraticTo(FFFF)V

    add-float/2addr v11, v10

    add-float/2addr v14, v10

    const/high16 v12, -0x40800000    # -1.0f

    mul-float/2addr v15, v12

    move/from16 v12, v16

    goto :goto_3

    .line 964
    :goto_4
    iget-object v10, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    div-float v7, v7, p4

    .line 1154
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v11, v9

    .line 1155
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v13, v7

    shl-long v11, v11, v16

    and-long v13, v13, v17

    or-long/2addr v11, v13

    .line 1153
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v11

    .line 964
    invoke-interface {v10, v11, v12}, Landroidx/compose/ui/graphics/Path;->translate-k-4lQ0M(J)V

    .line 967
    iget-object v7, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->pathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    iget-object v9, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v7, v9, v8}, Landroidx/compose/ui/graphics/PathMeasure;->setPath(Landroidx/compose/ui/graphics/Path;Z)V

    .line 972
    iget-object v7, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->pathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    invoke-interface {v7}, Landroidx/compose/ui/graphics/PathMeasure;->getLength()F

    move-result v7

    .line 973
    iget-object v8, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v8}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v8

    .line 1157
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v9

    invoke-virtual {v8}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v8

    sub-float/2addr v9, v8

    const v8, 0x322bcc77    # 1.0E-8f

    add-float/2addr v9, v8

    div-float/2addr v7, v9

    .line 973
    iput v7, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->progressPathScale:F

    .line 977
    iput-wide v1, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentSize:J

    .line 978
    iput v3, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentWavelength:F

    .line 979
    iput-object v5, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 980
    iput-object v6, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentTrackStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 981
    iput v4, v0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentIndicatorTrackGapSize:F

    const/4 v1, 0x1

    return v1
.end method

.method public static synthetic updatePaths-VygBpHg$default(Landroidx/compose/material3/internal/LinearProgressDrawingCache;JF[FFFFLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;ILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p10, 0x2

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 843
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->updatePaths-VygBpHg(JF[FFFFLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method


# virtual methods
.method public final getCurrentStrokeCapWidth()F
    .locals 1

    .line 822
    iget v0, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStrokeCapWidth:F

    return v0
.end method

.method public final getFullProgressPath()Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 806
    iget-object v0, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method

.method public final getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;
    .locals 1

    .line 809
    iget-object v0, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->pathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    return-object v0
.end method

.method public final getProgressPathsToDraw()[Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 819
    iget-object v0, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->progressPathsToDraw:[Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method

.method public final getTrackPathToDraw()Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 812
    iget-object v0, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->trackPathToDraw:Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method

.method public final setCurrentStrokeCapWidth(F)V
    .locals 0

    .line 822
    iput p1, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentStrokeCapWidth:F

    return-void
.end method

.method public final setProgressPathsToDraw([Landroidx/compose/ui/graphics/Path;)V
    .locals 0

    .line 819
    iput-object p1, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->progressPathsToDraw:[Landroidx/compose/ui/graphics/Path;

    return-void
.end method

.method public final updatePaths-VygBpHg(JF[FFFFLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 8

    .line 853
    iget-object v1, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentProgressFractions:[F

    if-nez v1, :cond_1

    .line 856
    array-length v1, p4

    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->currentProgressFractions:[F

    .line 857
    array-length v1, p4

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Landroidx/compose/ui/graphics/Path;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->progressPathsToDraw:[Landroidx/compose/ui/graphics/Path;

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p5

    move v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 860
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->updateFullPaths-LjSzlW0(JFFFLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;)Z

    move-result v1

    .line 861
    invoke-direct {p0, v1, p4, p5, p6}, Landroidx/compose/material3/internal/LinearProgressDrawingCache;->updateDrawPaths(Z[FFF)V

    return-void
.end method
