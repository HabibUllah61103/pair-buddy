.class final Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;
.super Ljava/lang/Object;
.source "ButtonGroup.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nButtonGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ButtonGroup.kt\nandroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy\n+ 2 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,1485:1\n26#2:1486\n26#2:1487\n286#3,3:1488\n70#3,6:1491\n289#3:1497\n168#3,13:1498\n*S KotlinDebug\n*F\n+ 1 ButtonGroup.kt\nandroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy\n*L\n547#1:1486\n563#1:1487\n618#1:1488,3\n618#1:1491,6\n618#1:1497\n640#1:1498,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J)\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "expandedRatio",
        "",
        "<init>",
        "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;F)V",
        "getHorizontalArrangement",
        "()Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
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


# direct methods
.method public static synthetic $r8$lambda$MJKhKO1YNRPvcXEXl78-3kIrulM(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;[I[ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;->measure_3p2s80s$lambda$3(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;[I[ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/compose/foundation/layout/Arrangement$Horizontal;F)V
    .locals 0

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object p1, p0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 475
    iput p2, p0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;->expandedRatio:F

    return-void
.end method

.method private static final measure_3p2s80s$lambda$3(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;[I[ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 12

    .line 642
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 645
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    sget-object v4, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 653
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 654
    aget v3, p2, v3

    aget v4, p2, v2

    goto :goto_1

    .line 645
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    if-lez v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    .line 648
    aget v3, p2, v3

    aget v4, p2, v2

    :goto_1
    sub-int/2addr v3, v4

    goto :goto_2

    :cond_2
    move v3, v1

    .line 659
    :goto_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    aget v4, p3, v2

    add-int v7, v4, v3

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p4

    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 661
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getExpandedRatio()F
    .locals 1

    .line 475
    iget v0, p0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;->expandedRatio:F

    return v0
.end method

.method public final getHorizontalArrangement()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 1

    .line 474
    iget-object v0, p0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 34
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

    .line 481
    iget-object v3, v0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    int-to-long v4, v3

    .line 483
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 488
    new-array v10, v6, [I

    .line 489
    new-array v7, v6, [Landroidx/compose/ui/unit/Constraints;

    .line 491
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v9, v8, [Landroidx/compose/material3/ButtonGroupParentData;

    const/4 v13, 0x0

    move v11, v13

    :goto_0
    if-ge v11, v8, :cond_2

    .line 492
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v12}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v12

    instance-of v15, v12, Landroidx/compose/material3/ButtonGroupParentData;

    if-eqz v15, :cond_0

    move-object v14, v12

    check-cast v14, Landroidx/compose/material3/ButtonGroupParentData;

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    if-nez v14, :cond_1

    new-instance v15, Landroidx/compose/material3/ButtonGroupParentData;

    const/16 v19, 0x7

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v20}, Landroidx/compose/material3/ButtonGroupParentData;-><init>(FLandroidx/compose/animation/core/Animatable;Landroidx/compose/ui/Alignment$Vertical;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v14, v15

    :cond_1
    aput-object v14, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 494
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v11, v8, [Landroidx/compose/animation/core/Animatable;

    move v12, v13

    :goto_2
    if-ge v12, v8, :cond_3

    aget-object v15, v9, v12

    invoke-virtual {v15}, Landroidx/compose/material3/ButtonGroupParentData;->getPressedAnimatable()Landroidx/compose/animation/core/Animatable;

    move-result-object v15

    aput-object v15, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 496
    :cond_3
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v8

    .line 497
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v9

    move v15, v13

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    const/16 v19, 0x0

    :goto_3
    if-ge v15, v6, :cond_5

    .line 502
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v12, v20

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 503
    move-object/from16 v20, v12

    check-cast v20, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static/range {v20 .. v20}, Landroidx/compose/material3/ButtonGroupKt;->getButtonGroupParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/material3/ButtonGroupParentData;

    move-result-object v20

    .line 504
    invoke-static/range {v20 .. v20}, Landroidx/compose/material3/ButtonGroupKt;->getWeight(Landroidx/compose/material3/ButtonGroupParentData;)F

    move-result v20

    cmpl-float v22, v20, v21

    if-lez v22, :cond_4

    add-float v19, v19, v20

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_4
    sub-int v18, v9, v17

    .line 511
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v14

    invoke-interface {v12, v14}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result v12

    .line 513
    invoke-static {v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v25

    const/16 v28, 0xc

    const/16 v29, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide/from16 v22, p3

    invoke-static/range {v22 .. v29}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object v14

    aput-object v14, v7, v15

    .line 515
    aput v12, v10, v15

    sub-int v14, v18, v12

    .line 518
    invoke-static {v14, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v14

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v12, v12, v18

    add-int v17, v17, v12

    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    if-nez v16, :cond_6

    sub-int v17, v17, v18

    move v5, v13

    :goto_5
    move v15, v6

    goto/16 :goto_b

    :cond_6
    const v12, 0x7fffffff

    if-eq v9, v12, :cond_7

    move v14, v9

    goto :goto_6

    :cond_7
    move v14, v8

    :goto_6
    add-int/lit8 v15, v16, -0x1

    move-wide/from16 v21, v4

    int-to-long v3, v15

    mul-long v4, v21, v3

    sub-int v14, v14, v17

    int-to-long v14, v14

    sub-long/2addr v14, v4

    const-wide/16 v12, 0x0

    .line 539
    invoke-static {v14, v15, v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v12

    long-to-float v14, v12

    div-float v14, v14, v19

    move-wide/from16 v21, v12

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v6, :cond_8

    .line 544
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 545
    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v13}, Landroidx/compose/material3/ButtonGroupKt;->getButtonGroupParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/material3/ButtonGroupParentData;

    move-result-object v13

    invoke-static {v13}, Landroidx/compose/material3/ButtonGroupKt;->getWeight(Landroidx/compose/material3/ButtonGroupParentData;)F

    move-result v13

    mul-float/2addr v13, v14

    .line 1486
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-wide/from16 v23, v4

    int-to-long v3, v13

    sub-long v21, v21, v3

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v23

    goto :goto_7

    :cond_8
    move-wide/from16 v23, v4

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_8
    if-ge v4, v6, :cond_b

    .line 551
    aget-object v3, v7, v4

    if-nez v3, :cond_a

    .line 552
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 553
    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v3}, Landroidx/compose/material3/ButtonGroupKt;->getButtonGroupParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/material3/ButtonGroupParentData;

    move-result-object v3

    .line 554
    invoke-static {v3}, Landroidx/compose/material3/ButtonGroupKt;->getWeight(Landroidx/compose/material3/ButtonGroupParentData;)F

    move-result v3

    .line 559
    invoke-static/range {v21 .. v22}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v13

    move v15, v6

    int-to-long v5, v13

    sub-long v21, v21, v5

    mul-float/2addr v3, v14

    .line 1487
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v13

    const/4 v5, 0x0

    .line 563
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    const v5, 0x7fffffff

    if-eq v6, v5, :cond_9

    move/from16 v28, v6

    goto :goto_9

    :cond_9
    const/16 v28, 0x0

    :goto_9
    const/16 v32, 0xc

    const/16 v33, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v26, p3

    move/from16 v29, v6

    .line 566
    invoke-static/range {v26 .. v33}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object v6

    aput-object v6, v7, v4

    .line 576
    aput v29, v10, v4

    add-int v12, v12, v29

    goto :goto_a

    :cond_a
    move v15, v6

    const v5, 0x7fffffff

    :goto_a
    int-to-long v12, v12

    add-long v12, v12, v23

    long-to-int v6, v12

    sub-int v12, v9, v17

    const/4 v3, 0x0

    .line 582
    invoke-static {v6, v3, v12}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v12

    add-int/lit8 v4, v4, 0x1

    move v6, v15

    goto :goto_8

    :cond_b
    move v5, v12

    goto/16 :goto_5

    .line 588
    :goto_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v6, v4, [I

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v4, :cond_d

    aget-object v12, v7, v9

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v12

    goto :goto_d

    :cond_c
    move-wide/from16 v12, p3

    :goto_d
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v12

    aput v12, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 591
    :cond_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v13, v4, [I

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v4, :cond_e

    const/4 v3, 0x0

    aput v3, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 593
    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x1

    if-le v4, v9, :cond_11

    .line 594
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v4, :cond_11

    .line 596
    aget-object v12, v11, v9

    invoke-virtual {v12}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    iget v14, v0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;->expandedRatio:F

    mul-float/2addr v12, v14

    aget v14, v6, v9

    int-to-float v14, v14

    mul-float/2addr v12, v14

    const/4 v14, 0x1

    if-gt v14, v9, :cond_f

    .line 597
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v14

    if-ge v9, v14, :cond_f

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v12, v14

    .line 599
    invoke-static {v14}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v18

    aput v18, v13, v9

    add-int/lit8 v18, v9, -0x1

    .line 600
    aget v19, v6, v18

    invoke-static {v14}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v14

    sub-int v19, v19, v14

    aput v19, v6, v18

    add-int/lit8 v14, v9, 0x1

    .line 601
    aget v18, v6, v14

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float v3, v12, v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    sub-int v18, v18, v3

    aput v18, v6, v14

    goto :goto_11

    :cond_f
    if-nez v9, :cond_10

    add-int/lit8 v3, v9, 0x1

    .line 605
    aget v14, v6, v3

    invoke-static {v12}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v18

    sub-int v14, v14, v18

    aput v14, v6, v3

    goto :goto_10

    :cond_10
    add-int/lit8 v3, v9, -0x1

    .line 608
    aget v14, v6, v3

    invoke-static {v12}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v18

    sub-int v14, v14, v18

    aput v14, v6, v3

    .line 610
    :goto_10
    invoke-static {v12}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    aput v3, v13, v9

    .line 613
    :goto_11
    aget v3, v6, v9

    invoke-static {v12}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v12

    add-int/2addr v3, v12

    aput v3, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 1489
    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1492
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v9, 0x0

    :goto_12
    if-ge v9, v4, :cond_13

    .line 1493
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1490
    move-object v12, v3

    check-cast v12, Ljava/util/Collection;

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 620
    aget-object v14, v7, v9

    if-eqz v14, :cond_12

    invoke-virtual {v14}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v21

    move-wide/from16 v23, v21

    goto :goto_13

    :cond_12
    move-wide/from16 v23, p3

    .line 621
    :goto_13
    aget v25, v6, v9

    const/16 v29, 0xc

    const/16 v30, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v26, v25

    move-object v14, v3

    .line 620
    invoke-static/range {v23 .. v30}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v2

    .line 619
    invoke-interface {v11, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 1490
    invoke-interface {v12, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    move-object v3, v14

    goto :goto_12

    :cond_13
    move-object v14, v3

    .line 1497
    move-object v3, v14

    check-cast v3, Ljava/util/List;

    add-int v2, v17, v5

    const/4 v5, 0x0

    .line 628
    invoke-static {v2, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 629
    new-array v12, v15, [I

    .line 631
    iget-object v7, v0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 632
    move-object v8, v1

    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 635
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v11

    move v9, v2

    .line 632
    invoke-interface/range {v7 .. v12}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 1499
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v14, 0x0

    goto :goto_15

    .line 1500
    :cond_14
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1501
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 640
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    .line 1502
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    const/4 v14, 0x1

    if-gt v14, v6, :cond_16

    .line 1503
    :goto_14
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1504
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 640
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v8

    if-ge v5, v8, :cond_15

    move-object v4, v7

    move v5, v8

    :cond_15
    if-eq v14, v6, :cond_16

    add-int/lit8 v14, v14, 0x1

    goto :goto_14

    :cond_16
    move-object v14, v4

    :goto_15
    check-cast v14, Landroidx/compose/ui/layout/Placeable;

    if-eqz v14, :cond_17

    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    goto :goto_16

    :cond_17
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    .line 641
    :goto_16
    new-instance v5, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v1, v13, v12}, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;[I[I)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    move v3, v4

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1
.end method
