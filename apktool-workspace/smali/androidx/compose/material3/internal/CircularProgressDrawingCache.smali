.class final Landroidx/compose/material3/internal/CircularProgressDrawingCache;
.super Ljava/lang/Object;
.source "CircularWavyProgressModifiers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCircularWavyProgressModifiers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularWavyProgressModifiers.kt\nandroidx/compose/material3/internal/CircularProgressDrawingCache\n+ 2 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 MathHelpers.kt\nandroidx/compose/ui/util/MathHelpersKt\n+ 7 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 8 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n*L\n1#1,1409:1\n61#2:1410\n57#2:1413\n70#3:1411\n60#3:1414\n60#3:1428\n70#3:1431\n53#3,3:1433\n60#3:1437\n70#3:1440\n53#3,3:1442\n22#4:1412\n22#4:1415\n22#4:1429\n22#4:1438\n1#5:1416\n65#6,10:1417\n65#7:1427\n69#7:1430\n65#7:1436\n69#7:1439\n30#8:1432\n30#8:1441\n*S KotlinDebug\n*F\n+ 1 CircularWavyProgressModifiers.kt\nandroidx/compose/material3/internal/CircularProgressDrawingCache\n*L\n1096#1:1410\n1097#1:1413\n1096#1:1411\n1097#1:1414\n1226#1:1428\n1226#1:1431\n1226#1:1433,3\n1234#1:1437\n1234#1:1440\n1234#1:1442,3\n1096#1:1412\n1097#1:1415\n1226#1:1429\n1234#1:1438\n1212#1:1417,10\n1226#1:1427\n1226#1:1430\n1234#1:1436\n1234#1:1439\n1226#1:1432\n1234#1:1441\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u00f0\u0002\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u00082\u008b\u0001\u00101\u001a\u0086\u0001\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(6\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(7\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(0\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(8\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(9\u0012\u0004\u0012\u00020\u001a022w\u0010:\u001as\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(6\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(7\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(0\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(9\u0012\u0006\u0012\u0004\u0018\u00010\u001a0;2\u0006\u0010<\u001a\u00020\u00142\u0008\u0008\u0001\u0010=\u001a\u00020\u00052\u0008\u0008\u0001\u0010>\u001a\u00020\u00052\u0008\u0008\u0001\u00105\u001a\u00020\u00052\u0008\u0008\u0001\u0010?\u001a\u00020\u00052\u0008\u0008\u0001\u00106\u001a\u00020\u00052\u0008\u0008\u0001\u0010@\u001a\u00020\u00052\u0006\u0010A\u001a\u00020\u000f2\u0006\u0010B\u001a\u00020\u000f\u00a2\u0006\u0004\u0008C\u0010DJ\u00d4\u0002\u0010E\u001a\u00020\u00142\u0006\u00100\u001a\u00020\u00082\u008b\u0001\u00101\u001a\u0086\u0001\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(6\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(7\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(0\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(8\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(9\u0012\u0004\u0012\u00020\u001a022w\u0010:\u001as\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(6\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(7\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(0\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(9\u0012\u0006\u0012\u0004\u0018\u00010\u001a0;2\u0006\u0010<\u001a\u00020\u00142\u0008\u0008\u0001\u00105\u001a\u00020\u00052\u0008\u0008\u0001\u00106\u001a\u00020\u00052\u0008\u0008\u0001\u0010@\u001a\u00020\u00052\u0006\u0010A\u001a\u00020\u000f2\u0006\u0010B\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\'\u0010H\u001a\u00020/2\u0006\u00109\u001a\u00020\u001a2\u0006\u00100\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008I\u0010JJ.\u0010K\u001a\u00020/2\u0006\u0010L\u001a\u00020\u00142\u0008\u0008\u0001\u0010=\u001a\u00020\u00052\u0008\u0008\u0001\u0010>\u001a\u00020\u00052\u0008\u0008\u0001\u0010?\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0017R\u0010\u0010\u0018\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0017R\u0011\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001cR\u0011\u0010\u001f\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001cR\u0011\u0010!\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001cR\u0011\u0010#\u001a\u00020$\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\'\u001a\u00020$\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010&R\u001a\u0010)\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u0006M"
    }
    d2 = {
        "Landroidx/compose/material3/internal/CircularProgressDrawingCache;",
        "",
        "<init>",
        "()V",
        "currentAmplitude",
        "",
        "currentWavelength",
        "currentSize",
        "Landroidx/compose/ui/geometry/Size;",
        "J",
        "currentStartProgress",
        "currentEndProgress",
        "currentIndicatorTrackGapSize",
        "currentWaveOffset",
        "currentStroke",
        "Landroidx/compose/ui/graphics/drawscope/Stroke;",
        "currentTrackStroke",
        "progressPathLength",
        "trackPathLength",
        "currentProgressMotionEnabled",
        "",
        "scaleMatrix",
        "Landroidx/compose/ui/graphics/Matrix;",
        "[F",
        "transformMatrix",
        "fullProgressPath",
        "Landroidx/compose/ui/graphics/Path;",
        "getFullProgressPath",
        "()Landroidx/compose/ui/graphics/Path;",
        "fullTrackPath",
        "getFullTrackPath",
        "progressPathToDraw",
        "getProgressPathToDraw",
        "trackPathToDraw",
        "getTrackPathToDraw",
        "progressPathMeasure",
        "Landroidx/compose/ui/graphics/PathMeasure;",
        "getProgressPathMeasure",
        "()Landroidx/compose/ui/graphics/PathMeasure;",
        "trackPathMeasure",
        "getTrackPathMeasure",
        "currentStrokeCapWidth",
        "getCurrentStrokeCapWidth",
        "()F",
        "setCurrentStrokeCapWidth",
        "(F)V",
        "updatePaths",
        "",
        "size",
        "progressPathProvider",
        "Lkotlin/Function6;",
        "Lkotlin/ParameterName;",
        "name",
        "amplitude",
        "wavelength",
        "strokeWidth",
        "supportsMotion",
        "path",
        "trackPathProvider",
        "Lkotlin/Function5;",
        "enableProgressMotion",
        "startProgress",
        "endProgress",
        "waveOffset",
        "gapSize",
        "stroke",
        "trackStroke",
        "updatePaths-bLEYqPY",
        "(JLkotlin/jvm/functions/Function6;Lkotlin/jvm/functions/Function5;ZFFFFFFLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;)V",
        "updateFullPaths",
        "updateFullPaths-SaZ-u-8",
        "(JLkotlin/jvm/functions/Function6;Lkotlin/jvm/functions/Function5;ZFFFLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;)Z",
        "processPath",
        "processPath-HkQT9uY",
        "(Landroidx/compose/ui/graphics/Path;J[F)V",
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

.field private currentEndProgress:F

.field private currentIndicatorTrackGapSize:F

.field private currentProgressMotionEnabled:Z

.field private currentSize:J

.field private currentStartProgress:F

.field private currentStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field private currentStrokeCapWidth:F

.field private currentTrackStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field private currentWaveOffset:F

.field private currentWavelength:F

.field private final fullProgressPath:Landroidx/compose/ui/graphics/Path;

.field private final fullTrackPath:Landroidx/compose/ui/graphics/Path;

.field private progressPathLength:F

.field private final progressPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

.field private final progressPathToDraw:Landroidx/compose/ui/graphics/Path;

.field private final scaleMatrix:[F

.field private trackPathLength:F

.field private final trackPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

.field private final trackPathToDraw:Landroidx/compose/ui/graphics/Path;

.field private final transformMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 903
    iput v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentAmplitude:F

    .line 904
    iput v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentWavelength:F

    .line 905
    sget-object v1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentSize:J

    .line 913
    iput v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentWaveOffset:F

    .line 914
    new-instance v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 915
    iput-object v3, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentTrackStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 922
    invoke-static {v0, v1, v0}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->scaleMatrix:[F

    .line 923
    invoke-static {v0, v1, v0}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->transformMatrix:[F

    .line 929
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    .line 936
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->fullTrackPath:Landroidx/compose/ui/graphics/Path;

    .line 939
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathToDraw:Landroidx/compose/ui/graphics/Path;

    .line 942
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->trackPathToDraw:Landroidx/compose/ui/graphics/Path;

    .line 945
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPathMeasure_androidKt;->PathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    .line 948
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPathMeasure_androidKt;->PathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->trackPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    return-void
.end method

.method private final processPath-HkQT9uY(Landroidx/compose/ui/graphics/Path;J[F)V
    .locals 2

    .line 1160
    invoke-interface {p1, p4}, Landroidx/compose/ui/graphics/Path;->transform-58bKbWc([F)V

    .line 1161
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object p4

    .line 1163
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide p2

    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Landroidx/compose/ui/graphics/Path;->translate-k-4lQ0M(J)V

    return-void
.end method

.method private final updateDrawPaths(ZFFF)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 1185
    iget-wide v4, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentSize:J

    sget-object v6, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_6

    if-nez p1, :cond_0

    .line 1190
    iget v4, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentStartProgress:F

    cmpg-float v4, v4, v1

    if-nez v4, :cond_0

    .line 1191
    iget v4, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentEndProgress:F

    cmpg-float v4, v4, v2

    if-nez v4, :cond_0

    .line 1192
    iget v4, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentWaveOffset:F

    cmpg-float v4, v4, v3

    if-nez v4, :cond_0

    return-void

    .line 1198
    :cond_0
    iget-object v4, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->trackPathToDraw:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/Path;->rewind()V

    .line 1199
    iget-object v4, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathToDraw:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/Path;->rewind()V

    .line 1201
    iget v4, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathLength:F

    mul-float v6, v1, v4

    mul-float v7, v2, v4

    .line 1204
    iget v4, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentIndicatorTrackGapSize:F

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1205
    iget v5, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentStrokeCapWidth:F

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v8, 0x2

    int-to-float v8, v8

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    .line 1211
    iget-boolean v5, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentProgressMotionEnabled:Z

    const/4 v12, 0x0

    if-eqz v5, :cond_4

    cmpg-float v5, v3, v12

    if-gez v5, :cond_1

    move v5, v12

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v9, v5, v8

    if-lez v9, :cond_2

    move v5, v8

    .line 1213
    :cond_2
    iget v8, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathLength:F

    mul-float/2addr v8, v5

    .line 1215
    iget-object v13, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    add-float v14, v6, v8

    add-float v15, v7, v8

    .line 1218
    iget-object v6, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathToDraw:Landroidx/compose/ui/graphics/Path;

    const/16 v18, 0x8

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v6

    .line 1215
    invoke-static/range {v13 .. v19}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment$default(Landroidx/compose/ui/graphics/PathMeasure;FFLandroidx/compose/ui/graphics/Path;ZILjava/lang/Object;)Z

    const/16 v6, 0x168

    int-to-float v6, v6

    mul-float/2addr v5, v6

    rem-float/2addr v5, v6

    cmpg-float v6, v5, v12

    if-nez v6, :cond_3

    goto/16 :goto_1

    .line 1223
    :cond_3
    iget-object v6, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v6}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    .line 1225
    iget-object v7, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathToDraw:Landroidx/compose/ui/graphics/Path;

    .line 1226
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v8

    const/16 v10, 0x20

    shr-long/2addr v8, v10

    long-to-int v8, v8

    .line 1429
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    neg-float v8, v8

    .line 1226
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v13

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    long-to-int v9, v13

    .line 1429
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    neg-float v9, v9

    .line 1433
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v13, v8

    .line 1434
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long/2addr v13, v10

    and-long/2addr v8, v15

    or-long/2addr v8, v13

    .line 1432
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v8

    .line 1225
    invoke-interface {v7, v8, v9}, Landroidx/compose/ui/graphics/Path;->translate-k-4lQ0M(J)V

    .line 1228
    iget-object v7, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->transformMatrix:[F

    invoke-static {v7}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 1229
    iget-object v7, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathToDraw:Landroidx/compose/ui/graphics/Path;

    .line 1230
    iget-object v8, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->transformMatrix:[F

    neg-float v5, v5

    invoke-static {v8, v5}, Landroidx/compose/ui/graphics/Matrix;->rotateZ-impl([FF)V

    .line 1229
    invoke-interface {v7, v8}, Landroidx/compose/ui/graphics/Path;->transform-58bKbWc([F)V

    .line 1233
    iget-object v5, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathToDraw:Landroidx/compose/ui/graphics/Path;

    .line 1234
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v7

    shr-long/2addr v7, v10

    long-to-int v7, v7

    .line 1438
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 1234
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v8

    and-long/2addr v8, v15

    long-to-int v6, v8

    .line 1438
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 1442
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    .line 1443
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v13, v6

    shl-long v6, v7, v10

    and-long v8, v13, v15

    or-long/2addr v6, v8

    .line 1441
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v6

    .line 1233
    invoke-interface {v5, v6, v7}, Landroidx/compose/ui/graphics/Path;->translate-k-4lQ0M(J)V

    goto :goto_1

    .line 1239
    :cond_4
    iget-object v5, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    .line 1242
    iget-object v8, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathToDraw:Landroidx/compose/ui/graphics/Path;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 1239
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment$default(Landroidx/compose/ui/graphics/PathMeasure;FFLandroidx/compose/ui/graphics/Path;ZILjava/lang/Object;)Z

    .line 1245
    :goto_1
    iget v5, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->trackPathLength:F

    cmpl-float v6, v5, v12

    if-lez v6, :cond_5

    mul-float v6, v2, v5

    add-float v8, v6, v4

    sub-float v9, v5, v4

    .line 1248
    iget-object v7, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->trackPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    .line 1251
    iget-object v10, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->trackPathToDraw:Landroidx/compose/ui/graphics/Path;

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v11, 0x0

    .line 1248
    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment$default(Landroidx/compose/ui/graphics/PathMeasure;FFLandroidx/compose/ui/graphics/Path;ZILjava/lang/Object;)Z

    .line 1256
    :cond_5
    iput v1, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentStartProgress:F

    .line 1257
    iput v2, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentEndProgress:F

    .line 1258
    iput v3, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentWaveOffset:F

    return-void

    .line 1185
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "updateDrawPaths was called before updateFullPaths"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateFullPaths-SaZ-u-8(JLkotlin/jvm/functions/Function6;Lkotlin/jvm/functions/Function5;ZFFFLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function6<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/ui/geometry/Size;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Landroidx/compose/ui/graphics/Path;",
            "+",
            "Landroidx/compose/ui/graphics/Path;",
            ">;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/ui/geometry/Size;",
            "-",
            "Landroidx/compose/ui/graphics/Path;",
            "+",
            "Landroidx/compose/ui/graphics/Path;",
            ">;ZFFF",
            "Landroidx/compose/ui/graphics/drawscope/Stroke;",
            "Landroidx/compose/ui/graphics/drawscope/Stroke;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 1084
    iget-wide v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentSize:J

    invoke-static {v9, v10, v1, v2}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1085
    iget v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentAmplitude:F

    cmpg-float v9, v9, v4

    if-nez v9, :cond_0

    .line 1086
    iget v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentWavelength:F

    cmpg-float v9, v9, v5

    if-nez v9, :cond_0

    .line 1087
    iget-object v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1088
    iget-object v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentTrackStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1089
    iget v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentIndicatorTrackGapSize:F

    cmpg-float v9, v9, v6

    if-nez v9, :cond_0

    .line 1090
    iget-boolean v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentProgressMotionEnabled:Z

    if-ne v9, v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const-wide v9, 0xffffffffL

    and-long/2addr v9, v1

    long-to-int v9, v9

    .line 1412
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    const/16 v10, 0x20

    shr-long v10, v1, v10

    long-to-int v10, v10

    .line 1415
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 1102
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getCap-KaPHkGw()I

    move-result v11

    sget-object v12, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v12

    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-eqz v11, :cond_1

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getCap-KaPHkGw()I

    move-result v11

    sget-object v14, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v14

    invoke-static {v11, v14}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_1
    cmpl-float v11, v9, v10

    if-lez v11, :cond_3

    :cond_2
    move v11, v13

    goto :goto_0

    .line 1107
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v11

    int-to-float v14, v12

    div-float/2addr v11, v14

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v15

    div-float/2addr v15, v14

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 1100
    :goto_0
    iput v11, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentStrokeCapWidth:F

    .line 1110
    iget-object v11, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->scaleMatrix:[F

    invoke-static {v11}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 1111
    iget-object v14, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->scaleMatrix:[F

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v11

    sub-float v15, v10, v11

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v10

    sub-float v16, v9, v10

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Landroidx/compose/ui/graphics/Matrix;->scale-impl$default([FFFFILjava/lang/Object;)V

    .line 1113
    iget-object v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v9}, Landroidx/compose/ui/graphics/Path;->rewind()V

    .line 1119
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    .line 1120
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .line 1121
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    .line 1122
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v18

    .line 1123
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 1124
    iget-object v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    move-object/from16 v14, p3

    move-object/from16 v20, v9

    .line 1118
    invoke-interface/range {v14 .. v20}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    iget-object v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    iget-object v10, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->scaleMatrix:[F

    invoke-direct {v0, v9, v1, v2, v10}, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->processPath-HkQT9uY(Landroidx/compose/ui/graphics/Path;J[F)V

    .line 1127
    iget-object v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    iget-object v10, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroidx/compose/ui/graphics/PathMeasure;->setPath(Landroidx/compose/ui/graphics/Path;Z)V

    if-eqz v3, :cond_4

    .line 1130
    iget-object v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    invoke-interface {v9}, Landroidx/compose/ui/graphics/PathMeasure;->getLength()F

    move-result v9

    int-to-float v10, v12

    div-float/2addr v9, v10

    goto :goto_1

    .line 1132
    :cond_4
    iget-object v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    invoke-interface {v9}, Landroidx/compose/ui/graphics/PathMeasure;->getLength()F

    move-result v9

    .line 1128
    :goto_1
    iput v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathLength:F

    .line 1135
    iget-object v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->fullTrackPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v9}, Landroidx/compose/ui/graphics/Path;->rewind()V

    .line 1137
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v18

    iget-object v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->fullTrackPath:Landroidx/compose/ui/graphics/Path;

    move-object/from16 v14, p4

    move-object/from16 v19, v9

    invoke-interface/range {v14 .. v19}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/Path;

    if-eqz v9, :cond_5

    .line 1139
    iget-object v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->fullTrackPath:Landroidx/compose/ui/graphics/Path;

    iget-object v10, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->scaleMatrix:[F

    invoke-direct {v0, v9, v1, v2, v10}, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->processPath-HkQT9uY(Landroidx/compose/ui/graphics/Path;J[F)V

    .line 1140
    iget-object v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->trackPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    iget-object v10, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->fullTrackPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v9, v10, v11}, Landroidx/compose/ui/graphics/PathMeasure;->setPath(Landroidx/compose/ui/graphics/Path;Z)V

    .line 1141
    iget-object v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->trackPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    invoke-interface {v9}, Landroidx/compose/ui/graphics/PathMeasure;->getLength()F

    move-result v9

    iput v9, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->trackPathLength:F

    goto :goto_2

    .line 1143
    :cond_5
    iput v13, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->trackPathLength:F

    .line 1147
    :goto_2
    iput-wide v1, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentSize:J

    .line 1148
    iput v4, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentAmplitude:F

    .line 1149
    iput v5, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentWavelength:F

    .line 1150
    iput-object v7, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 1151
    iput-object v8, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentTrackStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 1152
    iput v6, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentIndicatorTrackGapSize:F

    .line 1153
    iput-boolean v3, v0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentProgressMotionEnabled:Z

    return v11
.end method


# virtual methods
.method public final getCurrentStrokeCapWidth()F
    .locals 1

    .line 951
    iget v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentStrokeCapWidth:F

    return v0
.end method

.method public final getFullProgressPath()Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 929
    iget-object v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->fullProgressPath:Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method

.method public final getFullTrackPath()Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 936
    iget-object v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->fullTrackPath:Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method

.method public final getProgressPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;
    .locals 1

    .line 945
    iget-object v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    return-object v0
.end method

.method public final getProgressPathToDraw()Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 939
    iget-object v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->progressPathToDraw:Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method

.method public final getTrackPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;
    .locals 1

    .line 948
    iget-object v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->trackPathMeasure:Landroidx/compose/ui/graphics/PathMeasure;

    return-object v0
.end method

.method public final getTrackPathToDraw()Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 942
    iget-object v0, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->trackPathToDraw:Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method

.method public final setCurrentStrokeCapWidth(F)V
    .locals 0

    .line 951
    iput p1, p0, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->currentStrokeCapWidth:F

    return-void
.end method

.method public final updatePaths-bLEYqPY(JLkotlin/jvm/functions/Function6;Lkotlin/jvm/functions/Function5;ZFFFFFFLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function6<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/ui/geometry/Size;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Landroidx/compose/ui/graphics/Path;",
            "+",
            "Landroidx/compose/ui/graphics/Path;",
            ">;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/ui/geometry/Size;",
            "-",
            "Landroidx/compose/ui/graphics/Path;",
            "+",
            "Landroidx/compose/ui/graphics/Path;",
            ">;ZFFFFFF",
            "Landroidx/compose/ui/graphics/drawscope/Stroke;",
            "Landroidx/compose/ui/graphics/drawscope/Stroke;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    .line 1010
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->updateFullPaths-SaZ-u-8(JLkotlin/jvm/functions/Function6;Lkotlin/jvm/functions/Function5;ZFFFLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;)Z

    move-result p1

    move/from16 p2, p6

    move/from16 p3, p7

    move/from16 p4, p9

    .line 1021
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material3/internal/CircularProgressDrawingCache;->updateDrawPaths(ZFFF)V

    return-void
.end method
