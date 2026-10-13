.class public final Lexpo/modules/ui/menu/DropdownMenuItemKt;
.super Ljava/lang/Object;
.source "DropdownMenuItem.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDropdownMenuItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DropdownMenuItem.kt\nexpo/modules/ui/menu/DropdownMenuItemKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,67:1\n1128#2,6:68\n*S KotlinDebug\n*F\n+ 1 DropdownMenuItem.kt\nexpo/modules/ui/menu/DropdownMenuItemKt\n*L\n62#1:68,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "DropdownMenuItemContent",
        "",
        "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
        "props",
        "Lexpo/modules/ui/menu/DropdownMenuItemProps;",
        "onItemPressed",
        "Lkotlin/Function0;",
        "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/DropdownMenuItemProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
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
.method public static synthetic $r8$lambda$-OwHalcjs4ks4qJH3uMbs9GWLCo(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/DropdownMenuItemProps;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lexpo/modules/ui/menu/DropdownMenuItemKt;->DropdownMenuItemContent$lambda$4(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/DropdownMenuItemProps;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zRxFxhGT4r8lNe2ac0PiH3rVD4E(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ui/menu/DropdownMenuItemKt;->DropdownMenuItemContent$lambda$3$lambda$2(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final DropdownMenuItemContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/DropdownMenuItemProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
            "Lexpo/modules/ui/menu/DropdownMenuItemProps;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const-string v4, "<this>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "props"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onItemPressed"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x6977080a

    move-object/from16 v5, p3

    .line 36
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    const-string v5, "C(DropdownMenuItemContent)P(1)41@1500L12,46@1692L83,47@1803L640,44@1545L84,61@2679L29,43@1516L1196:DropdownMenuItem.kt#xj3gtm"

    invoke-static {v14, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_2

    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_0

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    :cond_0
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    :goto_0
    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    or-int/2addr v5, v3

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    and-int/lit8 v6, v3, 0x30

    if-nez v6, :cond_4

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_3

    :cond_3
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v5, v6

    :cond_4
    and-int/lit16 v6, v3, 0x180

    const/16 v12, 0x100

    if-nez v6, :cond_6

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v12

    goto :goto_4

    :cond_5
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v5, v6

    :cond_6
    move v13, v5

    and-int/lit16 v5, v13, 0x93

    const/16 v6, 0x92

    if-ne v5, v6, :cond_8

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    .line 44
    :cond_7
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_11

    .line 36
    :cond_8
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, -0x1

    const-string v6, "expo.modules.ui.menu.DropdownMenuItemContent (DropdownMenuItem.kt:35)"

    invoke-static {v4, v13, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 37
    :cond_9
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const-string v5, "text"

    invoke-static {v4, v5}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v4

    .line 38
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const-string v6, "leadingIcon"

    invoke-static {v5, v6}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v15

    .line 39
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const-string v6, "trailingIcon"

    invoke-static {v5, v6}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v5

    .line 41
    invoke-virtual {v1}, Lexpo/modules/ui/menu/DropdownMenuItemProps;->getElementColors()Lexpo/modules/ui/menu/DropdownMenuItemColors;

    move-result-object v16

    .line 42
    sget-object v6, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    sget v7, Landroidx/compose/material3/MenuDefaults;->$stable:I

    invoke-virtual {v6, v14, v7}, Landroidx/compose/material3/MenuDefaults;->itemColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MenuItemColors;

    move-result-object v17

    .line 46
    invoke-virtual {v1}, Lexpo/modules/ui/menu/DropdownMenuItemProps;->getEnabled()Z

    move-result v21

    move-object v6, v5

    .line 47
    sget-object v5, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    move-object v7, v6

    invoke-virtual {v1}, Lexpo/modules/ui/menu/DropdownMenuItemProps;->getModifiers()Ljava/util/List;

    move-result-object v6

    move-object v8, v7

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v7

    move-object v9, v8

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v8

    move-object v10, v9

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    sget v11, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v11, v11, 0x3

    sget v18, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v18, v18, 0x6

    or-int v11, v11, v18

    move-object/from16 v27, v14

    move-object v14, v10

    move-object/from16 v10, v27

    invoke-virtual/range {v5 .. v11}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v22

    move-object/from16 v18, v10

    .line 48
    sget-object v5, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    .line 49
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/ui/menu/DropdownMenuItemColors;->getTextColor()Landroid/graphics/Color;

    move-result-object v6

    invoke-static {v6}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v6

    goto :goto_6

    :cond_a
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/material3/MenuItemColors;->getTextColor-0d7_KjU()J

    move-result-wide v6

    .line 50
    :goto_6
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/ui/menu/DropdownMenuItemColors;->getLeadingIconColor()Landroid/graphics/Color;

    move-result-object v8

    invoke-static {v8}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v8

    goto :goto_7

    :cond_b
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/material3/MenuItemColors;->getLeadingIconColor-0d7_KjU()J

    move-result-wide v8

    .line 51
    :goto_7
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/ui/menu/DropdownMenuItemColors;->getTrailingIconColor()Landroid/graphics/Color;

    move-result-object v10

    invoke-static {v10}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v10

    goto :goto_8

    :cond_c
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/material3/MenuItemColors;->getTrailingIconColor-0d7_KjU()J

    move-result-wide v10

    .line 52
    :goto_8
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/ui/menu/DropdownMenuItemColors;->getDisabledTextColor()Landroid/graphics/Color;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v19

    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v19

    goto :goto_9

    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/material3/MenuItemColors;->getDisabledTextColor-0d7_KjU()J

    move-result-wide v19

    .line 53
    :goto_9
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/ui/menu/DropdownMenuItemColors;->getDisabledLeadingIconColor()Landroid/graphics/Color;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v23

    if-eqz v23, :cond_e

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v23

    goto :goto_a

    :cond_e
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/material3/MenuItemColors;->getDisabledLeadingIconColor-0d7_KjU()J

    move-result-wide v23

    .line 54
    :goto_a
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/ui/menu/DropdownMenuItemColors;->getDisabledTrailingIconColor()Landroid/graphics/Color;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v16

    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v16

    goto :goto_b

    :cond_f
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/material3/MenuItemColors;->getDisabledTrailingIconColor-0d7_KjU()J

    move-result-wide v16

    :goto_b
    sget v25, Landroidx/compose/material3/MenuDefaults;->$stable:I

    shl-int/lit8 v25, v25, 0x12

    move/from16 v26, v12

    move-wide/from16 v27, v19

    move/from16 v19, v13

    move-wide/from16 v12, v27

    const/16 v20, 0x0

    move-object v3, v14

    move-object v1, v15

    move/from16 v0, v19

    move-wide/from16 v14, v23

    move/from16 v19, v25

    move/from16 v2, v26

    .line 48
    invoke-virtual/range {v5 .. v20}, Landroidx/compose/material3/MenuDefaults;->itemColors-5tl4gsc(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/MenuItemColors;

    move-result-object v11

    move-object/from16 v14, v18

    const v5, -0x182a27ce

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "*56@2492L54"

    invoke-static {v14, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x36

    const/4 v7, 0x1

    if-nez v1, :cond_10

    move-object v8, v5

    goto :goto_c

    .line 57
    :cond_10
    new-instance v8, Lexpo/modules/ui/menu/DropdownMenuItemKt$DropdownMenuItemContent$1$1;

    invoke-direct {v8, v1}, Lexpo/modules/ui/menu/DropdownMenuItemKt$DropdownMenuItemContent$1$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v1, 0xa683628

    invoke-static {v1, v7, v8, v14, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v8, v1

    .line 56
    :goto_c
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v1, -0x182a19ee

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "*59@2603L54"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v3, :cond_11

    goto :goto_d

    .line 60
    :cond_11
    new-instance v1, Lexpo/modules/ui/menu/DropdownMenuItemKt$DropdownMenuItemContent$2$1;

    invoke-direct {v1, v3}, Lexpo/modules/ui/menu/DropdownMenuItemKt$DropdownMenuItemContent$2$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v3, 0x79ba70f7

    invoke-static {v3, v7, v1, v14, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    :goto_d
    move-object v9, v5

    .line 59
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 45
    new-instance v1, Lexpo/modules/ui/menu/DropdownMenuItemKt$DropdownMenuItemContent$3;

    invoke-direct {v1, v4}, Lexpo/modules/ui/menu/DropdownMenuItemKt$DropdownMenuItemContent$3;-><init>(Lexpo/modules/ui/SlotView;)V

    const v3, -0x15c729c6

    invoke-static {v3, v7, v1, v14, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const v1, 0x4c5de2

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "CC(remember):DropdownMenuItem.kt#9igjgp"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v0, v0, 0x380

    if-ne v0, v2, :cond_12

    goto :goto_e

    :cond_12
    const/4 v7, 0x0

    .line 68
    :goto_e
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v7, :cond_14

    .line 69
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_13

    goto :goto_f

    :cond_13
    move-object/from16 v2, p2

    goto :goto_10

    .line 62
    :cond_14
    :goto_f
    new-instance v0, Lexpo/modules/ui/menu/DropdownMenuItemKt$$ExternalSyntheticLambda0;

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lexpo/modules/ui/menu/DropdownMenuItemKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 71
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 62
    :goto_10
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v15, 0x6

    const/16 v16, 0x180

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v10, v21

    move-object/from16 v7, v22

    .line 44
    invoke-static/range {v5 .. v16}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_15
    :goto_11
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v1, Lexpo/modules/ui/menu/DropdownMenuItemKt$$ExternalSyntheticLambda1;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p4

    invoke-direct {v1, v3, v4, v2, v5}, Lexpo/modules/ui/menu/DropdownMenuItemKt$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/DropdownMenuItemProps;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_16
    return-void
.end method

.method private static final DropdownMenuItemContent$lambda$3$lambda$2(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 63
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 64
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final DropdownMenuItemContent$lambda$4(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/DropdownMenuItemProps;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p3

    invoke-static {p0, p1, p2, p4, p3}, Lexpo/modules/ui/menu/DropdownMenuItemKt;->DropdownMenuItemContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/DropdownMenuItemProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
