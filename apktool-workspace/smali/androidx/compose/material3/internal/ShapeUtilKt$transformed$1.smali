.class final Landroidx/compose/material3/internal/ShapeUtilKt$transformed$1;
.super Ljava/lang/Object;
.source "ShapeUtil.kt"

# interfaces
.implements Landroidx/graphics/shapes/PointTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/internal/ShapeUtilKt;->transformed-EL8BTi8(Landroidx/graphics/shapes/RoundedPolygon;[F)Landroidx/graphics/shapes/RoundedPolygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeUtil.kt\nandroidx/compose/material3/internal/ShapeUtilKt$transformed$1\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 5 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,179:1\n30#2:180\n53#3,3:181\n60#3:185\n70#3:188\n65#4:184\n69#4:187\n22#5:186\n*S KotlinDebug\n*F\n+ 1 ShapeUtil.kt\nandroidx/compose/material3/internal/ShapeUtilKt$transformed$1\n*L\n32#1:180\n32#1:181,3\n33#1:185\n33#1:188\n33#1:184\n33#1:187\n33#1:186\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$v$c$androidx-compose-ui-graphics-Matrix$-matrix$0:[F


# direct methods
.method constructor <init>([F)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/internal/ShapeUtilKt$transformed$1;->$$v$c$androidx-compose-ui-graphics-Matrix$-matrix$0:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform-XgqJiTY(FF)J
    .locals 6

    .line 32
    iget-object v0, p0, Landroidx/compose/material3/internal/ShapeUtilKt$transformed$1;->$$v$c$androidx-compose-ui-graphics-Matrix$-matrix$0:[F

    .line 181
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v1, p1

    .line 182
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    const-wide v4, 0xffffffffL

    and-long/2addr p1, v4

    or-long/2addr p1, v1

    .line 180
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p1

    .line 32
    invoke-static {v0, p1, p2}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide p1

    shr-long v0, p1, v3

    long-to-int v0, v0

    .line 186
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    and-long/2addr p1, v4

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 33
    invoke-static {v0, p1}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p1

    return-wide p1
.end method
