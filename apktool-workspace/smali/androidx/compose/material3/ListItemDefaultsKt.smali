.class public final Landroidx/compose/material3/ListItemDefaultsKt;
.super Ljava/lang/Object;
.source "ListItemDefaults.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u001aG\u0010\u0007\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u00012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0001\u00a2\u0006\u0002\u0010\u0011\"\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "hasRoundedCornerShapes",
        "",
        "Landroidx/compose/material3/ListItemShapes;",
        "getHasRoundedCornerShapes$annotations",
        "(Landroidx/compose/material3/ListItemShapes;)V",
        "getHasRoundedCornerShapes",
        "(Landroidx/compose/material3/ListItemShapes;)Z",
        "shapeForInteraction",
        "Landroidx/compose/ui/graphics/Shape;",
        "selected",
        "pressed",
        "focused",
        "hovered",
        "dragged",
        "animationSpec",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "",
        "(Landroidx/compose/material3/ListItemShapes;ZZZZZLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;",
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
.method private static final getHasRoundedCornerShapes(Landroidx/compose/material3/ListItemShapes;)Z
    .locals 1

    .line 1034
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemShapes;->getShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz v0, :cond_0

    .line 1035
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemShapes;->getSelectedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemShapes;->getPressedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemShapes;->getFocusedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemShapes;->getHoveredShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz v0, :cond_0

    .line 1039
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemShapes;->getDraggedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    instance-of p0, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic getHasRoundedCornerShapes$annotations(Landroidx/compose/material3/ListItemShapes;)V
    .locals 0

    return-void
.end method

.method public static final shapeForInteraction(Landroidx/compose/material3/ListItemShapes;ZZZZZLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/ListItemShapes;",
            "ZZZZZ",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/ui/graphics/Shape;"
        }
    .end annotation

    const v0, 0x7c053cd0

    invoke-interface {p7, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "C(shapeForInteraction)N(selected,pressed,focused,hovered,dragged,animationSpec):ListItemDefaults.kt#uh7d8r"

    invoke-static {p7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.shapeForInteraction (ListItemDefaults.kt:1049)"

    invoke-static {v0, p8, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1053
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemShapes;->getPressedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    .line 1054
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemShapes;->getDraggedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 1055
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemShapes;->getSelectedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 1056
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemShapes;->getFocusedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p1

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    .line 1057
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemShapes;->getHoveredShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p1

    goto :goto_0

    .line 1058
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemShapes;->getShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p1

    .line 1061
    :goto_0
    invoke-static {p0}, Landroidx/compose/material3/ListItemDefaultsKt;->getHasRoundedCornerShapes(Landroidx/compose/material3/ListItemShapes;)Z

    move-result p2

    if-eqz p2, :cond_7

    const p2, 0x65874c2c

    invoke-interface {p7, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string p2, ""

    invoke-static {p7, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const p2, -0x70567761

    .line 1062
    invoke-interface {p7, p2, p0}, Landroidx/compose/runtime/Composer;->startMovableGroup(ILjava/lang/Object;)V

    const-string p0, "1061@53337L65"

    invoke-static {p7, p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const-string p0, "null cannot be cast to non-null type androidx.compose.foundation.shape.RoundedCornerShape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/foundation/shape/RoundedCornerShape;

    shr-int/lit8 p0, p8, 0xf

    and-int/lit8 p0, p0, 0x70

    invoke-static {p1, p6, p7, p0}, Landroidx/compose/material3/internal/AnimatedShapeKt;->rememberAnimatedShape(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    invoke-interface {p7}, Landroidx/compose/runtime/Composer;->endMovableGroup()V

    invoke-interface {p7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface {p7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p0

    :cond_7
    const p0, 0x62605372

    invoke-interface {p7, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface {p7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p1
.end method
