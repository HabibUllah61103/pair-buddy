.class public final Lexpo/modules/ui/ListItemViewKt;
.super Ljava/lang/Object;
.source "ListItemView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListItemView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListItemView.kt\nexpo/modules/ui/ListItemViewKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,99:1\n132#2:100\n132#2:101\n*S KotlinDebug\n*F\n+ 1 ListItemView.kt\nexpo/modules/ui/ListItemViewKt\n*L\n95#1:100\n96#1:101\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "ListItemContent",
        "",
        "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
        "props",
        "Lexpo/modules/ui/ListItemProps;",
        "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ListItemProps;Landroidx/compose/runtime/Composer;I)V",
        "expo-ui_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$jwjcA7wGtOcQNeOLB5enbyZQ100(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ListItemProps;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/ui/ListItemViewKt;->ListItemContent$lambda$4(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ListItemProps;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final ListItemContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ListItemProps;Landroidx/compose/runtime/Composer;I)V
    .locals 59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "props"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, -0x4f81284e

    move-object/from16 v4, p2

    .line 32
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    const-string v4, "C(ListItemContent)32@1146L83,34@1270L8,35@1311L697,57@2387L122,56@2355L946:ListItemView.kt#v15e7d"

    invoke-static {v13, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v2, 0x6

    if-nez v4, :cond_2

    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_0

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_0
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    or-int/2addr v4, v2

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    and-int/lit8 v5, v2, 0x30

    if-nez v5, :cond_4

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_3

    :cond_3
    const/16 v5, 0x10

    :goto_3
    or-int/2addr v4, v5

    :cond_4
    and-int/lit8 v5, v4, 0x13

    const/16 v6, 0x12

    if-ne v5, v6, :cond_6

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    .line 57
    :cond_5
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_17

    .line 32
    :cond_6
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, -0x1

    const-string v6, "expo.modules.ui.ListItemContent (ListItemView.kt:31)"

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 33
    :cond_7
    sget-object v4, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    invoke-virtual {v1}, Lexpo/modules/ui/ListItemProps;->getModifiers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v6

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v7

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    sget v3, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v3, v3, 0x3

    sget v9, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v9, v9, 0x6

    or-int v10, v3, v9

    move-object v9, v13

    invoke-virtual/range {v4 .. v10}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 35
    sget-object v4, Landroidx/compose/material3/ListItemDefaults;->INSTANCE:Landroidx/compose/material3/ListItemDefaults;

    sget v5, Landroidx/compose/material3/ListItemDefaults;->$stable:I

    invoke-virtual {v4, v13, v5}, Landroidx/compose/material3/ListItemDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ListItemColors;

    move-result-object v4

    move-object v5, v4

    .line 36
    sget-object v4, Landroidx/compose/material3/ListItemDefaults;->INSTANCE:Landroidx/compose/material3/ListItemDefaults;

    .line 37
    invoke-virtual {v1}, Lexpo/modules/ui/ListItemProps;->getColors()Lexpo/modules/ui/ListItemColors;

    move-result-object v6

    const/16 v58, 0x0

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lexpo/modules/ui/ListItemColors;->getContainerColor()Landroid/graphics/Color;

    move-result-object v6

    goto :goto_5

    :cond_8
    move-object/from16 v6, v58

    :goto_5
    invoke-static {v6}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v6

    goto :goto_6

    .line 38
    :cond_9
    invoke-virtual {v5}, Landroidx/compose/material3/ListItemColors;->getContainerColor-0d7_KjU()J

    move-result-wide v6

    .line 39
    :goto_6
    invoke-virtual {v1}, Lexpo/modules/ui/ListItemProps;->getColors()Lexpo/modules/ui/ListItemColors;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lexpo/modules/ui/ListItemColors;->getContentColor()Landroid/graphics/Color;

    move-result-object v8

    goto :goto_7

    :cond_a
    move-object/from16 v8, v58

    :goto_7
    invoke-static {v8}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v8

    goto :goto_8

    .line 40
    :cond_b
    invoke-virtual {v5}, Landroidx/compose/material3/ListItemColors;->getContentColor-0d7_KjU()J

    move-result-wide v8

    .line 41
    :goto_8
    invoke-virtual {v1}, Lexpo/modules/ui/ListItemProps;->getColors()Lexpo/modules/ui/ListItemColors;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lexpo/modules/ui/ListItemColors;->getLeadingContentColor()Landroid/graphics/Color;

    move-result-object v10

    goto :goto_9

    :cond_c
    move-object/from16 v10, v58

    :goto_9
    invoke-static {v10}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v10

    goto :goto_a

    .line 42
    :cond_d
    invoke-virtual {v5}, Landroidx/compose/material3/ListItemColors;->getLeadingContentColor-0d7_KjU()J

    move-result-wide v10

    .line 43
    :goto_a
    invoke-virtual {v1}, Lexpo/modules/ui/ListItemProps;->getColors()Lexpo/modules/ui/ListItemColors;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Lexpo/modules/ui/ListItemColors;->getTrailingContentColor()Landroid/graphics/Color;

    move-result-object v12

    goto :goto_b

    :cond_e
    move-object/from16 v12, v58

    :goto_b
    invoke-static {v12}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v12

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v14

    goto :goto_c

    .line 44
    :cond_f
    invoke-virtual {v5}, Landroidx/compose/material3/ListItemColors;->getTrailingContentColor-0d7_KjU()J

    move-result-wide v14

    .line 45
    :goto_c
    invoke-virtual {v1}, Lexpo/modules/ui/ListItemProps;->getColors()Lexpo/modules/ui/ListItemColors;

    move-result-object v12

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lexpo/modules/ui/ListItemColors;->getSupportingContentColor()Landroid/graphics/Color;

    move-result-object v12

    goto :goto_d

    :cond_10
    move-object/from16 v12, v58

    :goto_d
    invoke-static {v12}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v12

    if-eqz v12, :cond_11

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v16

    goto :goto_e

    .line 46
    :cond_11
    invoke-virtual {v5}, Landroidx/compose/material3/ListItemColors;->getSupportingContentColor-0d7_KjU()J

    move-result-wide v16

    .line 47
    :goto_e
    invoke-virtual {v1}, Lexpo/modules/ui/ListItemProps;->getColors()Lexpo/modules/ui/ListItemColors;

    move-result-object v12

    if-eqz v12, :cond_12

    invoke-virtual {v12}, Lexpo/modules/ui/ListItemColors;->getOverlineContentColor()Landroid/graphics/Color;

    move-result-object v12

    goto :goto_f

    :cond_12
    move-object/from16 v12, v58

    :goto_f
    invoke-static {v12}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v18

    goto :goto_10

    .line 48
    :cond_13
    invoke-virtual {v5}, Landroidx/compose/material3/ListItemColors;->getOverlineContentColor-0d7_KjU()J

    move-result-wide v18

    .line 45
    :goto_10
    sget v5, Landroidx/compose/material3/ListItemDefaults;->$stable:I

    shl-int/lit8 v56, v5, 0xc

    const v57, 0xffffc0

    move-wide v5, v6

    move-wide v7, v8

    move-wide v9, v10

    move-object/from16 v53, v13

    move-wide v11, v14

    move-wide/from16 v15, v16

    move-wide/from16 v13, v18

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    .line 36
    invoke-virtual/range {v4 .. v57}, Landroidx/compose/material3/ListItemDefaults;->colors-LIdIuno(JJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material3/ListItemColors;

    move-result-object v10

    move-object/from16 v13, v53

    .line 51
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const-string v5, "headlineContent"

    invoke-static {v4, v5}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v4

    .line 52
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const-string v6, "overlineContent"

    invoke-static {v5, v6}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v5

    .line 53
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const-string v7, "supportingContent"

    invoke-static {v6, v7}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v6

    .line 54
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const-string v8, "leadingContent"

    invoke-static {v7, v8}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v7

    .line 55
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    const-string v9, "trailingContent"

    invoke-static {v8, v9}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v8

    .line 58
    new-instance v9, Lexpo/modules/ui/ListItemViewKt$ListItemContent$1;

    invoke-direct {v9, v4}, Lexpo/modules/ui/ListItemViewKt$ListItemContent$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v4, 0x616eae90

    const/4 v11, 0x1

    const/16 v12, 0x36

    invoke-static {v4, v11, v9, v13, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const v9, -0x73d78b26

    .line 65
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v9, "*66@2588L86"

    invoke-static {v13, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v5, :cond_14

    move-object/from16 v5, v58

    goto :goto_11

    .line 67
    :cond_14
    new-instance v9, Lexpo/modules/ui/ListItemViewKt$ListItemContent$2$1;

    invoke-direct {v9, v5}, Lexpo/modules/ui/ListItemViewKt$ListItemContent$2$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v5, 0x28721755

    invoke-static {v5, v11, v9, v13, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 66
    :goto_11
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v9, -0x73d77866

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v9, "*73@2738L86"

    invoke-static {v13, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v6, :cond_15

    move-object/from16 v6, v58

    goto :goto_12

    .line 74
    :cond_15
    new-instance v9, Lexpo/modules/ui/ListItemViewKt$ListItemContent$3$1;

    invoke-direct {v9, v6}, Lexpo/modules/ui/ListItemViewKt$ListItemContent$3$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v6, -0x490267aa

    invoke-static {v6, v11, v9, v13, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 73
    :goto_12
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v9, -0x73d76666

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v9, "*80@2882L86"

    invoke-static {v13, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v7, :cond_16

    move-object/from16 v7, v58

    goto :goto_13

    .line 81
    :cond_16
    new-instance v9, Lexpo/modules/ui/ListItemViewKt$ListItemContent$4$1;

    invoke-direct {v9, v7}, Lexpo/modules/ui/ListItemViewKt$ListItemContent$4$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v7, 0x45891957

    invoke-static {v7, v11, v9, v13, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v7

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 80
    :goto_13
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v9, -0x73d75426

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v9, "*87@3028L86"

    invoke-static {v13, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v8, :cond_17

    goto :goto_14

    .line 88
    :cond_17
    new-instance v9, Lexpo/modules/ui/ListItemViewKt$ListItemContent$5$1;

    invoke-direct {v9, v8}, Lexpo/modules/ui/ListItemViewKt$ListItemContent$5$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v8, -0x2beb65a8

    invoke-static {v8, v11, v9, v13, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    move-object/from16 v58, v8

    check-cast v58, Lkotlin/jvm/functions/Function2;

    :goto_14
    move-object/from16 v9, v58

    .line 87
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 95
    invoke-virtual {v1}, Lexpo/modules/ui/ListItemProps;->getTonalElevation()Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 100
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    goto :goto_15

    .line 95
    :cond_18
    sget-object v8, Landroidx/compose/material3/ListItemDefaults;->INSTANCE:Landroidx/compose/material3/ListItemDefaults;

    invoke-virtual {v8}, Landroidx/compose/material3/ListItemDefaults;->getElevation-D9Ej5fM()F

    move-result v8

    :goto_15
    move v11, v8

    .line 96
    invoke-virtual {v1}, Lexpo/modules/ui/ListItemProps;->getShadowElevation()Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_19

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 101
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    goto :goto_16

    .line 96
    :cond_19
    sget-object v8, Landroidx/compose/material3/ListItemDefaults;->INSTANCE:Landroidx/compose/material3/ListItemDefaults;

    invoke-virtual {v8}, Landroidx/compose/material3/ListItemDefaults;->getElevation-D9Ej5fM()F

    move-result v8

    :goto_16
    move v12, v8

    const/4 v14, 0x6

    const/4 v15, 0x0

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v3

    .line 57
    invoke-static/range {v4 .. v15}, Landroidx/compose/material3/ListItemKt;->ListItem-HXNGIdc(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ListItemColors;FFLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1a
    :goto_17
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_1b

    new-instance v4, Lexpo/modules/ui/ListItemViewKt$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lexpo/modules/ui/ListItemViewKt$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ListItemProps;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1b
    return-void
.end method

.method private static final ListItemContent$lambda$4(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ListItemProps;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p3, p2}, Lexpo/modules/ui/ListItemViewKt;->ListItemContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ListItemProps;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
