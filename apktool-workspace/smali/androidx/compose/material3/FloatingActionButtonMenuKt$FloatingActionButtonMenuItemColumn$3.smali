.class final Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;
.super Ljava/lang/Object;
.source "FloatingActionButtonMenu.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/FloatingActionButtonMenuKt;->FloatingActionButtonMenuItemColumn(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingActionButtonMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingActionButtonMenu.kt\nandroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,733:1\n150#2,3:734\n34#2,6:737\n153#2:743\n168#2,13:744\n133#2,3:757\n34#2,6:760\n136#2:766\n70#2,6:767\n102#2,2:773\n34#2,6:775\n104#2:781\n70#2,6:782\n*S KotlinDebug\n*F\n+ 1 FloatingActionButtonMenu.kt\nandroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3\n*L\n262#1:734,3\n262#1:737,6\n262#1:743\n263#1:744,13\n279#1:757,3\n279#1:760,6\n279#1:766\n281#1:767,6\n291#1:773,2\n291#1:775,6\n291#1:781\n297#1:782,6\n*E\n"
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
.field final synthetic $buttonHeight:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $expanded:Z

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $itemCount$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $itemsNeedVerticalScroll$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $originalConstraints:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $staggerAnim$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $staggerAnimSpec:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$I1fU1-78hruf8NwPVJGYpTon0aY(Ljava/util/List;Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/ui/layout/MeasureScope;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->measure_3p2s80s$lambda$7(Ljava/util/List;Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/ui/layout/MeasureScope;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ooJTBoVwctg5lxt15Wl6vO3Da7w(ILkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/ui/layout/RulerScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->measure_3p2s80s$lambda$6(ILkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/ui/layout/RulerScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Alignment$Horizontal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$expanded:Z

    iput-object p2, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$buttonHeight:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$originalConstraints:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$itemCount$delegate:Landroidx/compose/runtime/MutableIntState;

    iput-object p5, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$staggerAnim$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p7, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$staggerAnimSpec:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p8, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$itemsNeedVerticalScroll$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final measure_3p2s80s$lambda$6(ILkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/ui/layout/RulerScope;)Lkotlin/Unit;
    .locals 1

    .line 295
    invoke-static {}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->access$getMenuItemRuler$p()Landroidx/compose/ui/layout/HorizontalRuler;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Ruler;

    int-to-float p0, p0

    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr p0, p1

    invoke-interface {p2, v0, p0}, Landroidx/compose/ui/layout/RulerScope;->provides(Landroidx/compose/ui/layout/Ruler;F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final measure_3p2s80s$lambda$7(Ljava/util/List;Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/ui/layout/MeasureScope;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 9

    .line 783
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 784
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 785
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 298
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    invoke-interface {p3}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-interface {p1, v2, p2, v4}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p5

    .line 299
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 300
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p5

    add-int/2addr v5, p5

    .line 301
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p5

    add-int/lit8 p5, p5, -0x1

    if-ge v1, p5, :cond_0

    add-int/2addr v5, p4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object p5, v2

    goto :goto_0

    .line 305
    :cond_1
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

    .line 250
    iget-object v3, v0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$itemCount$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->access$FloatingActionButtonMenuItemColumn$lambda$2(Landroidx/compose/runtime/MutableIntState;I)V

    .line 252
    iget-boolean v3, v0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$expanded:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$itemCount$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-static {v3}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->access$FloatingActionButtonMenuItemColumn$lambda$1(Landroidx/compose/runtime/MutableIntState;)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 253
    :goto_0
    iget-object v5, v0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$staggerAnim$delegate:Landroidx/compose/runtime/MutableState;

    .line 254
    invoke-static {v5}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->access$FloatingActionButtonMenuItemColumn$lambda$7(Landroidx/compose/runtime/MutableState;)Landroidx/compose/animation/core/Animatable;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iget-object v8, v0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v9, v0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$staggerAnimSpec:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 255
    invoke-virtual {v6}, Landroidx/compose/animation/core/Animatable;->getTargetValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-eq v10, v3, :cond_2

    .line 256
    new-instance v10, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3$1$1;

    invoke-direct {v10, v6, v3, v9, v7}, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3$1$1;-><init>(Landroidx/compose/animation/core/Animatable;ILkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    move-object v11, v10

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 260
    :cond_1
    new-instance v14, Landroidx/compose/animation/core/Animatable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v3, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v16

    const/16 v19, 0xc

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v20}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v6, v14

    .line 253
    :cond_2
    :goto_1
    invoke-static {v5, v6}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->access$FloatingActionButtonMenuItemColumn$lambda$8(Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Animatable;)V

    .line 735
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 738
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_3

    .line 739
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 736
    move-object v9, v3

    check-cast v9, Ljava/util/Collection;

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    move-wide/from16 v10, p3

    .line 262
    invoke-interface {v8, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    .line 736
    invoke-interface {v9, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 743
    :cond_3
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    .line 745
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    goto :goto_4

    .line 746
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 747
    move-object v6, v3

    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 263
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    .line 748
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-gt v5, v7, :cond_6

    move v8, v5

    .line 749
    :goto_3
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 750
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    .line 263
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v10

    if-ge v6, v10, :cond_5

    move-object v3, v9

    move v6, v10

    :cond_5
    if-eq v8, v7, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    move-object v7, v3

    :goto_4
    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    goto :goto_5

    :cond_7
    move v3, v4

    .line 265
    :goto_5
    invoke-static {}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->access$getFabMenuItemSpacingVertical$p()F

    move-result v6

    invoke-interface {v1, v6}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v6

    .line 267
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 268
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    mul-int/2addr v8, v6

    goto :goto_6

    :cond_8
    move v8, v4

    .line 272
    :goto_6
    iget-object v9, v0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$buttonHeight:Lkotlin/jvm/functions/Function0;

    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-lez v9, :cond_9

    .line 276
    invoke-static {}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->access$getFabMenuButtonPaddingBottom$p()F

    move-result v10

    invoke-interface {v1, v10}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v10

    add-int/2addr v9, v10

    .line 277
    invoke-static {}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->access$getFabMenuPaddingBottom$p()F

    move-result v10

    invoke-interface {v1, v10}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_7

    :cond_9
    move v9, v4

    .line 761
    :goto_7
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v10

    move v11, v4

    move v12, v11

    :goto_8
    if-ge v11, v10, :cond_a

    .line 762
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 759
    check-cast v13, Landroidx/compose/ui/layout/Placeable;

    .line 279
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_a
    add-int/2addr v12, v8

    add-int/2addr v12, v9

    .line 280
    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    int-to-float v9, v9

    iput v9, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 281
    iget-object v9, v0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$itemCount$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v10, v0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$staggerAnim$delegate:Landroidx/compose/runtime/MutableState;

    .line 768
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v11

    move v13, v4

    :goto_9
    if-ge v13, v11, :cond_d

    .line 769
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 770
    check-cast v14, Landroidx/compose/ui/layout/Placeable;

    .line 282
    invoke-static {v9}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->access$FloatingActionButtonMenuItemColumn$lambda$1(Landroidx/compose/runtime/MutableIntState;)I

    move-result v15

    invoke-static {v10}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->access$FloatingActionButtonMenuItemColumn$lambda$7(Landroidx/compose/runtime/MutableState;)Landroidx/compose/animation/core/Animatable;

    move-result-object v16

    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v16

    goto :goto_a

    :cond_b
    move/from16 v16, v4

    :goto_a
    sub-int v15, v15, v16

    if-lt v13, v15, :cond_c

    .line 284
    iget v15, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v15, v14

    iput v15, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 285
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v5

    if-ge v13, v14, :cond_c

    .line 286
    iget v14, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    int-to-float v15, v6

    add-float/2addr v14, v15

    iput v14, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 776
    :cond_d
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    move v9, v4

    :goto_b
    if-ge v9, v7, :cond_f

    .line 777
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 774
    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    .line 291
    invoke-static {v10}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->access$isVisible(Landroidx/compose/ui/layout/Placeable;)Z

    move-result v10

    if-eqz v10, :cond_e

    move v7, v12

    goto :goto_c

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_f
    move v7, v4

    .line 293
    :goto_c
    iget-object v9, v0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$itemsNeedVerticalScroll$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$originalConstraints:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v10}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v10

    if-le v7, v10, :cond_10

    move v4, v5

    :cond_10
    invoke-static {v9, v4}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->access$FloatingActionButtonMenuItemColumn$lambda$5(Landroidx/compose/runtime/MutableState;Z)V

    .line 295
    new-instance v9, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3$$ExternalSyntheticLambda0;

    invoke-direct {v9, v12, v8}, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/internal/Ref$FloatRef;)V

    move v4, v3

    iget-object v3, v0, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    new-instance v1, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3$$ExternalSyntheticLambda1;

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/FloatingActionButtonMenuKt$FloatingActionButtonMenuItemColumn$3$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/ui/layout/MeasureScope;I)V

    move v3, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    move v2, v4

    const/4 v4, 0x0

    move-object v6, v1

    move-object v5, v9

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1
.end method
