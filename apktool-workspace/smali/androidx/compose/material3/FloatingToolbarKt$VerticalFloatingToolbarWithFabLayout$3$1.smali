.class final Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;
.super Ljava/lang/Object;
.source "FloatingToolbar.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/FloatingToolbarKt;->VerticalFloatingToolbarWithFabLayout-Nur2B3k(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/FloatingToolbarColors;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/FloatingToolbarScrollBehavior;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function2;IFFLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
.field final synthetic $$v$c$androidx-compose-material3-FloatingToolbarVerticalFabPosition$-fabPosition$0:I

.field final synthetic $$v$c$androidx-compose-ui-unit-Dp$-collapsedShadowElevation$0:F

.field final synthetic $$v$c$androidx-compose-ui-unit-Dp$-expandedShadowElevation$0:F

.field final synthetic $$v$c$androidx-compose-ui-unit-Dp$-toolbarToFabGap$0:F

.field final synthetic $expandedProgress:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toolbarShape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method public static synthetic $r8$lambda$Zhux-uiH8Sx4ALJBq-2prrgZDEw(FLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->measure_3p2s80s$lambda$0$0(FLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eLUcIY0beCxI_lhdCawWfRuy_mY(FFLandroidx/compose/runtime/State;Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p10}, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->measure_3p2s80s$lambda$0(FFLandroidx/compose/runtime/State;Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/runtime/State;FIFFLandroidx/compose/ui/graphics/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;FIFF",
            "Landroidx/compose/ui/graphics/Shape;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$expandedProgress:Landroidx/compose/runtime/State;

    iput p2, p0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$$v$c$androidx-compose-ui-unit-Dp$-toolbarToFabGap$0:F

    iput p3, p0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$$v$c$androidx-compose-material3-FloatingToolbarVerticalFabPosition$-fabPosition$0:I

    iput p4, p0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$$v$c$androidx-compose-ui-unit-Dp$-collapsedShadowElevation$0:F

    iput p5, p0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$$v$c$androidx-compose-ui-unit-Dp$-expandedShadowElevation$0:F

    iput-object p6, p0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$toolbarShape:Landroidx/compose/ui/graphics/Shape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final measure_3p2s80s$lambda$0(FFLandroidx/compose/runtime/State;Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 16

    .line 2029
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    move/from16 v1, p0

    move/from16 v2, p1

    .line 2026
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/unit/DpKt;->lerp-Md-fbLM(FFF)F

    move-result v0

    .line 2031
    new-instance v6, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1$$ExternalSyntheticLambda1;

    move-object/from16 v1, p9

    invoke-direct {v6, v0, v1}, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1$$ExternalSyntheticLambda1;-><init>(FLandroidx/compose/ui/graphics/Shape;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v1, p10

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v9, p10

    .line 2036
    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 2037
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final measure_3p2s80s$lambda$0$0(FLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lkotlin/Unit;
    .locals 0

    .line 2032
    invoke-interface {p2, p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->toPx-0680j_4(F)F

    move-result p0

    invoke-interface {p2, p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setShadowElevation(F)V

    .line 2033
    invoke-interface {p2, p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    const/4 p0, 0x1

    .line 2034
    invoke-interface {p2, p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setClip(Z)V

    .line 2035
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1969
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    const/4 v5, 0x1

    .line 1970
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 1974
    sget-object v5, Landroidx/compose/material3/FloatingToolbarDefaults;->INSTANCE:Landroidx/compose/material3/FloatingToolbarDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/FloatingToolbarDefaults;->getFabSizeRange$material3()Lkotlin/ranges/ClosedRange;

    move-result-object v5

    iget-object v6, v0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$expandedProgress:Landroidx/compose/runtime/State;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v6

    invoke-static {v5, v7}, Landroidx/compose/material3/FloatingToolbarKt;->access$lerp(Lkotlin/ranges/ClosedRange;F)F

    move-result v5

    invoke-interface {v1, v5}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v8

    move v9, v8

    move v10, v8

    move v11, v8

    move-wide/from16 v6, p3

    .line 1977
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA(JIIII)J

    move-result-wide v8

    .line 1976
    invoke-interface {v2, v8, v9}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 1988
    sget-object v5, Landroidx/compose/material3/FloatingToolbarDefaults;->INSTANCE:Landroidx/compose/material3/FloatingToolbarDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/FloatingToolbarDefaults;->getContainerSize-D9Ej5fM()F

    move-result v5

    invoke-interface {v1, v5}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v5

    .line 1987
    invoke-interface {v4, v5}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    move-result v5

    int-to-float v6, v5

    .line 1991
    iget-object v7, v0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$expandedProgress:Landroidx/compose/runtime/State;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v6

    float-to-int v6, v6

    .line 1992
    sget-object v7, Landroidx/compose/material3/FloatingToolbarDefaults;->INSTANCE:Landroidx/compose/material3/FloatingToolbarDefaults;

    invoke-virtual {v7}, Landroidx/compose/material3/FloatingToolbarDefaults;->getContainerSize-D9Ej5fM()F

    move-result v7

    invoke-interface {v1, v7}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v7

    .line 1997
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v8

    invoke-static {v6, v3, v8}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v15

    .line 1998
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v6

    invoke-static {v7, v3, v6}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v12

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v10, p3

    .line 1996
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v6

    .line 1995
    invoke-interface {v4, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v14

    .line 2002
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    .line 2005
    iget v6, v0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$$v$c$androidx-compose-ui-unit-Dp$-toolbarToFabGap$0:F

    invoke-interface {v1, v6}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v6

    add-int/2addr v6, v5

    .line 2006
    sget-object v7, Landroidx/compose/material3/FloatingToolbarDefaults;->INSTANCE:Landroidx/compose/material3/FloatingToolbarDefaults;

    invoke-virtual {v7}, Landroidx/compose/material3/FloatingToolbarDefaults;->getFabSizeRange$material3()Lkotlin/ranges/ClosedRange;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v7}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v7

    invoke-interface {v1, v7}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v7

    add-int/2addr v6, v7

    .line 2008
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v7

    sub-int v7, v4, v7

    div-int/lit8 v15, v7, 0x2

    .line 2009
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v7

    sub-int v7, v4, v7

    div-int/lit8 v18, v7, 0x2

    .line 2012
    iget v7, v0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$$v$c$androidx-compose-material3-FloatingToolbarVerticalFabPosition$-fabPosition$0:I

    sget-object v8, Landroidx/compose/material3/FloatingToolbarVerticalFabPosition;->Companion:Landroidx/compose/material3/FloatingToolbarVerticalFabPosition$Companion;

    invoke-virtual {v8}, Landroidx/compose/material3/FloatingToolbarVerticalFabPosition$Companion;->getBottom-dDJPGzU()I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/material3/FloatingToolbarVerticalFabPosition;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2013
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    sub-int v3, v6, v3

    :cond_0
    move/from16 v19, v3

    .line 2018
    iget v3, v0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$$v$c$androidx-compose-material3-FloatingToolbarVerticalFabPosition$-fabPosition$0:I

    sget-object v7, Landroidx/compose/material3/FloatingToolbarVerticalFabPosition;->Companion:Landroidx/compose/material3/FloatingToolbarVerticalFabPosition$Companion;

    invoke-virtual {v7}, Landroidx/compose/material3/FloatingToolbarVerticalFabPosition$Companion;->getBottom-dDJPGzU()I

    move-result v7

    invoke-static {v3, v7}, Landroidx/compose/material3/FloatingToolbarVerticalFabPosition;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2019
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    sub-int/2addr v5, v3

    goto :goto_0

    :cond_1
    sub-int v5, v6, v5

    :goto_0
    move/from16 v16, v5

    .line 2024
    iget v11, v0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$$v$c$androidx-compose-ui-unit-Dp$-collapsedShadowElevation$0:F

    iget v12, v0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$$v$c$androidx-compose-ui-unit-Dp$-expandedShadowElevation$0:F

    iget-object v13, v0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$expandedProgress:Landroidx/compose/runtime/State;

    iget-object v3, v0, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1;->$toolbarShape:Landroidx/compose/ui/graphics/Shape;

    new-instance v5, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1$$ExternalSyntheticLambda0;

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    move-object v10, v5

    invoke-direct/range {v10 .. v20}, Landroidx/compose/material3/FloatingToolbarKt$VerticalFloatingToolbarWithFabLayout$3$1$$ExternalSyntheticLambda0;-><init>(FFLandroidx/compose/runtime/State;Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/graphics/Shape;)V

    move v3, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    move v2, v4

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1
.end method
