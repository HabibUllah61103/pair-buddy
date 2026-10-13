.class final synthetic Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode$cacheDrawNode$1$1$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "CircularWavyProgressModifiers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode;-><init>(JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function5<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Landroidx/compose/ui/geometry/Size;",
        "Landroidx/compose/ui/graphics/Path;",
        "Landroidx/compose/ui/graphics/Path;",
        ">;"
    }
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode;

    const-string/jumbo v5, "trackPathProvider-yzxVdVo(FFFJLandroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;"

    const/4 v6, 0x0

    const/4 v1, 0x5

    const-string/jumbo v4, "trackPathProvider"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 845
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    check-cast p4, Landroidx/compose/ui/geometry/Size;

    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v4

    move-object v6, p5

    check-cast v6, Landroidx/compose/ui/graphics/Path;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode$cacheDrawNode$1$1$2;->invoke-yzxVdVo(FFFJLandroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-yzxVdVo(FFFJLandroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 8

    .line 845
    iget-object v0, p0, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode$cacheDrawNode$1$1$2;->receiver:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode;->trackPathProvider-yzxVdVo(FFFJLandroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    return-object p1
.end method
