.class final Landroidx/compose/material3/ButtonGroupMeasurePolicy;
.super Ljava/lang/Object;
.source "ButtonGroup.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MultiContentMeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/ButtonGroupMeasurePolicy$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nButtonGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ButtonGroup.kt\nandroidx/compose/material3/ButtonGroupMeasurePolicy\n+ 2 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,1485:1\n26#2:1486\n26#2:1487\n320#3,8:1488\n150#3,3:1496\n34#3,6:1499\n153#3:1505\n168#3,13:1506\n34#3,6:1519\n*S KotlinDebug\n*F\n+ 1 ButtonGroup.kt\nandroidx/compose/material3/ButtonGroupMeasurePolicy\n*L\n744#1:1486\n760#1:1487\n803#1:1488,8\n821#1:1496,3\n821#1:1499,6\n821#1:1505\n880#1:1506,13\n906#1:1519,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ/\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\u0012\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/material3/ButtonGroupMeasurePolicy;",
        "Landroidx/compose/ui/layout/MultiContentMeasurePolicy;",
        "overflowState",
        "Landroidx/compose/material3/ButtonGroupOverflowState;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "expandedRatio",
        "",
        "<init>",
        "(Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;F)V",
        "getOverflowState",
        "()Landroidx/compose/material3/ButtonGroupOverflowState;",
        "getHorizontalArrangement",
        "()Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "getVerticalAlignment",
        "()Landroidx/compose/ui/Alignment$Vertical;",
        "getExpandedRatio",
        "()F",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;",
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
.field private final expandedRatio:F

.field private final horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field private final overflowState:Landroidx/compose/material3/ButtonGroupOverflowState;

.field private final verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method public static synthetic $r8$lambda$xvEpZTnHS_WblISMcmbuNU6VDBE(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;[ILjava/util/List;ILandroidx/compose/material3/ButtonGroupMeasurePolicy;[ILjava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->measure_3p2s80s$lambda$4(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;[ILjava/util/List;ILandroidx/compose/material3/ButtonGroupMeasurePolicy;[ILjava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;F)V
    .locals 0

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput-object p1, p0, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->overflowState:Landroidx/compose/material3/ButtonGroupOverflowState;

    .line 667
    iput-object p2, p0, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 668
    iput-object p3, p0, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 669
    iput p4, p0, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->expandedRatio:F

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 668
    sget-object p3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object p3

    .line 665
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material3/ButtonGroupMeasurePolicy;-><init>(Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;F)V

    return-void
.end method

.method private static final measure_3p2s80s$lambda$4(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;[ILjava/util/List;ILandroidx/compose/material3/ButtonGroupMeasurePolicy;[ILjava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    .line 883
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_5

    .line 886
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    sget-object v8, Landroidx/compose/material3/ButtonGroupMeasurePolicy$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v7

    aget v7, v8, v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 894
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-ge v6, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    .line 895
    aget v7, p2, v7

    aget v8, p2, v6

    goto :goto_1

    .line 886
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    if-lez v6, :cond_2

    add-int/lit8 v7, v6, -0x1

    .line 889
    aget v7, p2, v7

    aget v8, p2, v6

    :goto_1
    sub-int/2addr v7, v8

    move-object/from16 v8, p3

    goto :goto_2

    :cond_2
    move-object/from16 v8, p3

    move v7, v5

    .line 900
    :goto_2
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v9}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Landroidx/compose/material3/ButtonGroupParentData;

    if-eqz v10, :cond_3

    check-cast v9, Landroidx/compose/material3/ButtonGroupParentData;

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_4

    .line 902
    invoke-virtual {v9}, Landroidx/compose/material3/ButtonGroupParentData;->getAlignment()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v10

    invoke-interface {v9, v10, v1}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v9

    goto :goto_4

    .line 903
    :cond_4
    iget-object v9, v2, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v10

    invoke-interface {v9, v10, v1}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v9

    :goto_4
    move v13, v9

    .line 904
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/layout/Placeable;

    aget v9, p6, v6

    add-int v12, v9, v7

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p9

    invoke-static/range {v10 .. v16}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 1520
    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_5
    if-ge v5, v0, :cond_6

    .line 1521
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1522
    move-object/from16 v18, v4

    check-cast v18, Landroidx/compose/ui/layout/Placeable;

    .line 907
    iget-object v4, v2, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    invoke-interface {v4, v6, v1}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v20

    move-object/from16 v4, p8

    .line 908
    iget v6, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, p9

    move/from16 v19, v6

    invoke-static/range {v17 .. v23}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 910
    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final getExpandedRatio()F
    .locals 1

    .line 669
    iget v0, p0, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->expandedRatio:F

    return v0
.end method

.method public final getHorizontalArrangement()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 1

    .line 667
    iget-object v0, p0, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object v0
.end method

.method public final getOverflowState()Landroidx/compose/material3/ButtonGroupOverflowState;
    .locals 1

    .line 666
    iget-object v0, p0, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->overflowState:Landroidx/compose/material3/ButtonGroupOverflowState;

    return-object v0
.end method

.method public final getVerticalAlignment()Landroidx/compose/ui/Alignment$Vertical;
    .locals 1

    .line 668
    iget-object v0, p0, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    return-object v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;>;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 675
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 676
    iget-object v5, v6, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->overflowState:Landroidx/compose/material3/ButtonGroupOverflowState;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5, v7}, Landroidx/compose/material3/ButtonGroupOverflowState;->setTotalItemCount(I)V

    .line 677
    iget-object v5, v6, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-interface {v5}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v5

    invoke-interface {v0, v5}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v5

    int-to-long v7, v5

    .line 679
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    .line 683
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/List;

    .line 684
    new-array v11, v9, [I

    .line 685
    new-array v12, v9, [Landroidx/compose/ui/unit/Constraints;

    .line 687
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    new-array v14, v13, [Landroidx/compose/material3/ButtonGroupParentData;

    move v15, v2

    :goto_0
    const/16 v16, 0x0

    if-ge v15, v13, :cond_2

    .line 688
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    move/from16 v18, v3

    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v3

    instance-of v2, v3, Landroidx/compose/material3/ButtonGroupParentData;

    if-eqz v2, :cond_0

    move-object/from16 v16, v3

    check-cast v16, Landroidx/compose/material3/ButtonGroupParentData;

    :cond_0
    if-nez v16, :cond_1

    .line 689
    new-instance v19, Landroidx/compose/material3/ButtonGroupParentData;

    const/16 v23, 0x7

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v24}, Landroidx/compose/material3/ButtonGroupParentData;-><init>(FLandroidx/compose/animation/core/Animatable;Landroidx/compose/ui/Alignment$Vertical;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v16, v19

    :cond_1
    aput-object v16, v14, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v18

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move/from16 v18, v3

    .line 691
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Landroidx/compose/animation/core/Animatable;

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v2, :cond_3

    aget-object v15, v14, v13

    invoke-virtual {v15}, Landroidx/compose/material3/ButtonGroupParentData;->getPressedAnimatable()Landroidx/compose/animation/core/Animatable;

    move-result-object v15

    aput-object v15, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 693
    :cond_3
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    .line 694
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v13

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_2
    if-ge v15, v9, :cond_5

    .line 699
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    const/16 p2, 0x0

    move-object/from16 v14, v22

    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .line 700
    move-object/from16 v22, v14

    check-cast v22, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static/range {v22 .. v22}, Landroidx/compose/material3/ButtonGroupKt;->getButtonGroupParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/material3/ButtonGroupParentData;

    move-result-object v22

    .line 701
    invoke-static/range {v22 .. v22}, Landroidx/compose/material3/ButtonGroupKt;->getWeight(Landroidx/compose/material3/ButtonGroupParentData;)F

    move-result v22

    cmpl-float v23, v22, p2

    if-lez v23, :cond_4

    add-float v21, v21, v22

    add-int/lit8 v19, v19, 0x1

    .line 705
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    goto :goto_3

    :cond_4
    sub-int v22, v13, v20

    .line 708
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result v0

    const/4 v14, 0x0

    .line 710
    invoke-static {v0, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v26

    const/16 v29, 0xc

    const/16 v30, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-wide/from16 v23, p3

    invoke-static/range {v23 .. v30}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object v17

    aput-object v17, v12, v15

    .line 712
    aput v0, v11, v15

    move/from16 v23, v0

    sub-int v0, v22, v23

    .line 715
    invoke-static {v0, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v0, v23, v0

    add-int v20, v20, v0

    .line 717
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    goto :goto_2

    :cond_5
    if-nez v19, :cond_6

    move-object/from16 p2, v1

    goto/16 :goto_9

    :cond_6
    const v0, 0x7fffffff

    if-eq v13, v0, :cond_7

    move v14, v13

    goto :goto_4

    :cond_7
    move v14, v2

    :goto_4
    add-int/lit8 v15, v19, -0x1

    move-object/from16 p2, v1

    int-to-long v0, v15

    mul-long/2addr v7, v0

    sub-int v14, v14, v20

    int-to-long v0, v14

    sub-long/2addr v0, v7

    const-wide/16 v14, 0x0

    .line 736
    invoke-static {v0, v1, v14, v15}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    long-to-float v14, v0

    div-float v14, v14, v21

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v9, :cond_8

    .line 741
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/compose/ui/layout/Measurable;

    .line 742
    check-cast v21, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static/range {v21 .. v21}, Landroidx/compose/material3/ButtonGroupKt;->getButtonGroupParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/material3/ButtonGroupParentData;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroidx/compose/material3/ButtonGroupKt;->getWeight(Landroidx/compose/material3/ButtonGroupParentData;)F

    move-result v21

    mul-float v21, v21, v14

    move-wide/from16 v22, v0

    .line 1486
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v22, v0

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_8
    move-wide/from16 v22, v0

    const/4 v15, 0x0

    const/16 v21, 0x0

    :goto_6
    if-ge v15, v9, :cond_b

    .line 748
    aget-object v22, v12, v15

    if-nez v22, :cond_a

    .line 749
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/compose/ui/layout/Measurable;

    .line 750
    check-cast v22, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static/range {v22 .. v22}, Landroidx/compose/material3/ButtonGroupKt;->getButtonGroupParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/material3/ButtonGroupParentData;

    move-result-object v22

    .line 751
    invoke-static/range {v22 .. v22}, Landroidx/compose/material3/ButtonGroupKt;->getWeight(Landroidx/compose/material3/ButtonGroupParentData;)F

    move-result v22

    move-wide/from16 v23, v0

    .line 756
    invoke-static/range {v23 .. v24}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v0

    move-wide/from16 v25, v7

    int-to-long v7, v0

    sub-long v7, v23, v7

    mul-float v22, v22, v14

    .line 1487
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x0

    .line 760
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const v0, 0x7fffffff

    if-eq v1, v0, :cond_9

    move/from16 v29, v1

    goto :goto_7

    :cond_9
    const/16 v29, 0x0

    :goto_7
    const/16 v33, 0xc

    const/16 v34, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-wide/from16 v27, p3

    move/from16 v30, v1

    .line 763
    invoke-static/range {v27 .. v34}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object v1

    aput-object v1, v12, v15

    .line 773
    aput v30, v11, v15

    add-int v21, v21, v30

    move-wide/from16 v23, v7

    goto :goto_8

    :cond_a
    move-wide/from16 v23, v0

    move-wide/from16 v25, v7

    const v0, 0x7fffffff

    :goto_8
    move/from16 v1, v21

    int-to-long v7, v1

    add-long v7, v7, v25

    long-to-int v1, v7

    sub-int v7, v13, v20

    const/4 v8, 0x0

    .line 779
    invoke-static {v1, v8, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v21

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v0, v23

    move-wide/from16 v7, v25

    goto :goto_6

    .line 787
    :cond_b
    :goto_9
    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 790
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v0, :cond_d

    aget-object v8, v12, v7

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v14

    goto :goto_b

    :cond_c
    move-wide/from16 v14, p3

    :goto_b
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v8

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 792
    :cond_d
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->sum([I)I

    move-result v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v8, v5

    add-int/2addr v7, v8

    if-gt v7, v13, :cond_e

    move-object/from16 v20, v1

    move-object/from16 v19, v3

    move-object/from16 v8, v16

    goto/16 :goto_11

    .line 1489
    :cond_e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    move-object/from16 v7, p2

    move-object/from16 v20, v1

    move-object/from16 v19, v3

    move-object/from16 v8, v16

    goto :goto_d

    :cond_f
    move-object/from16 v7, p2

    const/4 v14, 0x0

    .line 1490
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    .line 804
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v14

    invoke-interface {v8, v14}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1490
    check-cast v8, Ljava/lang/Comparable;

    .line 1491
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v14

    move/from16 v15, v18

    if-gt v15, v14, :cond_11

    const/4 v15, 0x1

    .line 1492
    :goto_c
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v1

    move-object/from16 v1, v19

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    move-object/from16 v19, v3

    .line 804
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1492
    check-cast v1, Ljava/lang/Comparable;

    .line 1493
    invoke-interface {v1, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_10

    move-object v8, v1

    :cond_10
    if-eq v15, v14, :cond_12

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v19

    move-object/from16 v1, v20

    goto :goto_c

    :cond_11
    move-object/from16 v20, v1

    move-object/from16 v19, v3

    .line 803
    :cond_12
    :goto_d
    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_13

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_e

    :cond_13
    const/4 v1, 0x0

    :goto_e
    sub-int/2addr v13, v1

    move v8, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_14

    .line 811
    aget v14, v20, v3

    if-gt v14, v13, :cond_14

    add-int/2addr v8, v14

    .line 813
    iget v14, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    aget v15, v20, v3

    add-int/2addr v14, v15

    iput v14, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v14, v3, 0x1

    .line 814
    aget v3, v20, v3

    add-int/2addr v3, v5

    sub-int/2addr v13, v3

    move v3, v14

    goto :goto_f

    :cond_14
    mul-int/2addr v5, v3

    add-int v0, v8, v5

    .line 819
    iget v8, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v8, v5

    iput v8, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1497
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1500
    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v14, 0x0

    :goto_10
    if-ge v14, v8, :cond_15

    .line 1501
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move/from16 p2, v0

    .line 1498
    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    check-cast v15, Landroidx/compose/ui/layout/Measurable;

    add-int v30, v13, v1

    const/16 v33, 0xd

    const/16 v34, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-wide/from16 v27, p3

    move-object/from16 v21, v7

    move/from16 v22, v8

    .line 822
    invoke-static/range {v27 .. v34}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v7

    invoke-interface {v15, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    .line 1498
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p2

    move-object/from16 v7, v21

    move/from16 v8, v22

    goto :goto_10

    :cond_15
    move/from16 p2, v0

    .line 1505
    check-cast v5, Ljava/util/List;

    move/from16 v7, p2

    move v0, v3

    move-object v8, v5

    .line 826
    :goto_11
    iget-object v1, v6, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->overflowState:Landroidx/compose/material3/ButtonGroupOverflowState;

    invoke-interface {v1, v0}, Landroidx/compose/material3/ButtonGroupOverflowState;->setVisibleItemCount(I)V

    .line 830
    new-array v3, v0, [I

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v0, :cond_16

    const/16 v17, 0x0

    aput v17, v3, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    .line 831
    :cond_16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v15, 0x1

    if-le v1, v15, :cond_19

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v0, :cond_19

    .line 835
    aget-object v1, v19, v14

    invoke-virtual {v1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget v5, v6, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->expandedRatio:F

    mul-float/2addr v1, v5

    aget v5, v20, v14

    int-to-float v5, v5

    mul-float/2addr v1, v5

    const/4 v15, 0x1

    if-gt v15, v14, :cond_17

    add-int/lit8 v5, v0, -0x1

    if-ge v14, v5, :cond_17

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    .line 838
    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v13

    aput v13, v3, v14

    add-int/lit8 v13, v14, -0x1

    .line 839
    aget v15, v20, v13

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    sub-int/2addr v15, v5

    aput v15, v20, v13

    add-int/lit8 v5, v14, 0x1

    .line 840
    aget v13, v20, v5

    const/4 v15, 0x2

    int-to-float v15, v15

    div-float v15, v1, v15

    invoke-static {v15}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v15

    sub-int/2addr v13, v15

    aput v13, v20, v5

    goto :goto_15

    :cond_17
    if-nez v14, :cond_18

    add-int/lit8 v5, v14, 0x1

    .line 844
    aget v13, v20, v5

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v15

    sub-int/2addr v13, v15

    aput v13, v20, v5

    goto :goto_14

    :cond_18
    add-int/lit8 v5, v14, -0x1

    .line 847
    aget v13, v20, v5

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v15

    sub-int/2addr v13, v15

    aput v13, v20, v5

    .line 849
    :goto_14
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    aput v5, v3, v14

    .line 852
    :goto_15
    aget v5, v20, v14

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    add-int/2addr v5, v1

    aput v5, v20, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    :cond_19
    const/4 v14, 0x0

    :goto_16
    if-ge v14, v0, :cond_1b

    .line 858
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 859
    aget-object v5, v12, v14

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v21

    move-wide/from16 v23, v21

    goto :goto_17

    :cond_1a
    move-wide/from16 v23, p3

    .line 860
    :goto_17
    aget v25, v20, v14

    const/16 v29, 0xc

    const/16 v30, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v26, v25

    move-object v13, v3

    move-object v5, v4

    .line 859
    invoke-static/range {v23 .. v30}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v3

    .line 858
    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    .line 857
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object v4, v5

    move-object v3, v13

    goto :goto_16

    :cond_1b
    move-object v13, v3

    move-object v5, v4

    const/4 v14, 0x0

    .line 868
    invoke-static {v7, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 869
    new-array v7, v0, [I

    .line 871
    iget-object v2, v6, Landroidx/compose/material3/ButtonGroupMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 872
    move-object/from16 v20, p1

    check-cast v20, Landroidx/compose/ui/unit/Density;

    .line 874
    new-instance v3, Lkotlin/ranges/IntRange;

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v3, v14, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v11, v3}, Lkotlin/collections/ArraysKt;->sliceArray([ILkotlin/ranges/IntRange;)[I

    move-result-object v22

    .line 875
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v23

    move/from16 v21, v1

    move-object/from16 v19, v2

    move-object/from16 v24, v7

    .line 872
    invoke-interface/range {v19 .. v24}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 878
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1507
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_19

    .line 1508
    :cond_1c
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1509
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 880
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    .line 1510
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    const/4 v15, 0x1

    if-gt v15, v2, :cond_1e

    move v3, v15

    .line 1511
    :goto_18
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1512
    move-object v11, v4

    check-cast v11, Landroidx/compose/ui/layout/Placeable;

    .line 880
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v11

    if-ge v1, v11, :cond_1d

    move-object v0, v4

    move v1, v11

    :cond_1d
    if-eq v3, v2, :cond_1e

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_1e
    move-object/from16 v16, v0

    :goto_19
    check-cast v16, Landroidx/compose/ui/layout/Placeable;

    if-eqz v16, :cond_1f

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    goto :goto_1a

    :cond_1f
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    :goto_1a
    move v2, v0

    .line 882
    new-instance v0, Landroidx/compose/material3/ButtonGroupMeasurePolicy$$ExternalSyntheticLambda0;

    move-object v4, v5

    move-object v1, v10

    move-object v3, v13

    move v5, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ButtonGroupMeasurePolicy$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;[ILjava/util/List;ILandroidx/compose/material3/ButtonGroupMeasurePolicy;[ILjava/util/List;Lkotlin/jvm/internal/Ref$IntRef;)V

    move v2, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    move/from16 v1, v21

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
