.class public final Landroidx/compose/material3/MaterialShapesKt$toShape$1$1;
.super Ljava/lang/Object;
.source "MaterialShapes.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/MaterialShapesKt;->toShape(Landroidx/graphics/shapes/RoundedPolygon;ILandroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/Shape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialShapes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialShapes.kt\nandroidx/compose/material3/MaterialShapesKt$toShape$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,781:1\n1#2:782\n57#3:783\n61#3:786\n60#4:784\n70#4:787\n22#5:785\n*S KotlinDebug\n*F\n+ 1 MaterialShapes.kt\nandroidx/compose/material3/MaterialShapesKt$toShape$1$1\n*L\n109#1:783\n109#1:786\n109#1:784\n109#1:787\n109#1:785\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "androidx/compose/material3/MaterialShapesKt$toShape$1$1",
        "Landroidx/compose/ui/graphics/Shape;",
        "shapePath",
        "Landroidx/compose/ui/graphics/Path;",
        "workPath",
        "lastSize",
        "Landroidx/compose/ui/geometry/Size;",
        "J",
        "createOutline",
        "Landroidx/compose/ui/graphics/Outline;",
        "size",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "createOutline-Pq9zytI",
        "(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;",
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
.field private lastSize:J

.field private final shapePath:Landroidx/compose/ui/graphics/Path;

.field private workPath:Landroidx/compose/ui/graphics/Path;


# direct methods
.method constructor <init>(Landroidx/graphics/shapes/RoundedPolygon;I)V
    .locals 7

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    .line 91
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/internal/ShapeUtilKt;->toPath$default(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/compose/ui/graphics/Path;IZZILjava/lang/Object;)Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/MaterialShapesKt$toShape$1$1;->shapePath:Landroidx/compose/ui/graphics/Path;

    .line 93
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/material3/MaterialShapesKt$toShape$1$1;->lastSize:J

    return-void
.end method


# virtual methods
.method public createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 7

    .line 100
    iget-wide p3, p0, Landroidx/compose/material3/MaterialShapesKt$toShape$1$1;->lastSize:J

    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/compose/material3/MaterialShapesKt$toShape$1$1;->workPath:Landroidx/compose/ui/graphics/Path;

    if-nez p3, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p3}, Landroidx/compose/ui/graphics/Path;->rewind()V

    goto :goto_1

    .line 101
    :cond_1
    :goto_0
    iput-wide p1, p0, Landroidx/compose/material3/MaterialShapesKt$toShape$1$1;->lastSize:J

    .line 103
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material3/MaterialShapesKt$toShape$1$1;->workPath:Landroidx/compose/ui/graphics/Path;

    .line 107
    :goto_1
    iget-object v0, p0, Landroidx/compose/material3/MaterialShapesKt$toShape$1$1;->workPath:Landroidx/compose/ui/graphics/Path;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Landroidx/compose/material3/MaterialShapesKt$toShape$1$1;->shapePath:Landroidx/compose/ui/graphics/Path;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/Path;->addPath-Uv8p0NA$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;JILjava/lang/Object;)V

    const/4 p3, 0x1

    const/4 p4, 0x0

    .line 109
    invoke-static {p4, p3, p4}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v1

    const/16 p3, 0x20

    shr-long p3, p1, p3

    long-to-int p3, p3

    .line 785
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const-wide p3, 0xffffffffL

    and-long/2addr p3, p1

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 109
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/Matrix;->scale-impl$default([FFFFILjava/lang/Object;)V

    .line 112
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Path;->transform-58bKbWc([F)V

    .line 113
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide p1

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/graphics/Path;->translate-k-4lQ0M(J)V

    .line 114
    new-instance p1, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-direct {p1, v0}, Landroidx/compose/ui/graphics/Outline$Generic;-><init>(Landroidx/compose/ui/graphics/Path;)V

    check-cast p1, Landroidx/compose/ui/graphics/Outline;

    return-object p1
.end method
