.class public final Lexpo/modules/ui/ShapeViewKt$shapeFromShapeRecord$1;
.super Ljava/lang/Object;
.source "ShapeView.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/ShapeViewKt;->shapeFromShapeRecord(Lexpo/modules/ui/ShapeRecord;)Landroidx/compose/ui/graphics/Shape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "expo/modules/ui/ShapeViewKt$shapeFromShapeRecord$1",
        "Landroidx/compose/ui/graphics/Shape;",
        "createOutline",
        "Landroidx/compose/ui/graphics/Outline;",
        "size",
        "Landroidx/compose/ui/geometry/Size;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "createOutline-Pq9zytI",
        "(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;",
        "expo-ui_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $shapeRecord:Lexpo/modules/ui/ShapeRecord;


# direct methods
.method constructor <init>(Lexpo/modules/ui/ShapeRecord;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/ui/ShapeViewKt$shapeFromShapeRecord$1;->$shapeRecord:Lexpo/modules/ui/ShapeRecord;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 1

    const-string v0, "layoutDirection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "density"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object p3, p0, Lexpo/modules/ui/ShapeViewKt$shapeFromShapeRecord$1;->$shapeRecord:Lexpo/modules/ui/ShapeRecord;

    invoke-static {p3, p1, p2, p4}, Lexpo/modules/ui/ShapeViewKt;->pathFromShapeRecord-12SF9DM(Lexpo/modules/ui/ShapeRecord;JLandroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    .line 181
    new-instance p2, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-direct {p2, p1}, Landroidx/compose/ui/graphics/Outline$Generic;-><init>(Landroidx/compose/ui/graphics/Path;)V

    check-cast p2, Landroidx/compose/ui/graphics/Outline;

    return-object p2
.end method
