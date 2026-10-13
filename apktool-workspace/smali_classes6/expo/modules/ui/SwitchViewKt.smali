.class public final Lexpo/modules/ui/SwitchViewKt;
.super Ljava/lang/Object;
.source "SwitchView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "SwitchContent",
        "",
        "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
        "props",
        "Lexpo/modules/ui/SwitchProps;",
        "onCheckedChange",
        "Lkotlin/Function1;",
        "",
        "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SwitchProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
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
.method public static synthetic $r8$lambda$CgyXuELcGPY0MkAfLgdDh4gnXQk(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SwitchProps;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lexpo/modules/ui/SwitchViewKt;->SwitchContent$lambda$1(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SwitchProps;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final SwitchContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SwitchProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
            "Lexpo/modules/ui/SwitchProps;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v12, p4

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "props"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onCheckedChange"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x78073d36

    move-object/from16 v4, p3

    .line 48
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    const-string v4, "C(SwitchContent)P(1)53@1910L83,64@2221L2252,50@1804L2673:SwitchView.kt#v15e7d"

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v12, 0x6

    if-nez v4, :cond_2

    and-int/lit8 v4, v12, 0x8

    if-nez v4, :cond_0

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_0
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    or-int/2addr v4, v12

    goto :goto_2

    :cond_2
    move v4, v12

    :goto_2
    and-int/lit8 v5, v12, 0x30

    if-nez v5, :cond_4

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_3

    :cond_3
    const/16 v5, 0x10

    :goto_3
    or-int/2addr v4, v5

    :cond_4
    and-int/lit16 v5, v12, 0x180

    if-nez v5, :cond_6

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_4

    :cond_5
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v4, v5

    :cond_6
    move v11, v4

    and-int/lit16 v4, v11, 0x93

    const/16 v5, 0x92

    if-ne v4, v5, :cond_8

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_5

    .line 51
    :cond_7
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_17

    .line 48
    :cond_8
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, -0x1

    const-string v5, "expo.modules.ui.SwitchContent (SwitchView.kt:47)"

    invoke-static {v2, v11, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 49
    :cond_9
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const-string v4, "thumbContent"

    invoke-static {v2, v4}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v2

    .line 52
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getValue()Z

    move-result v50

    .line 54
    sget-object v4, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getModifiers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v6

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v7

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    sget v10, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v10, v10, 0x3

    sget v13, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v13, v13, 0x6

    or-int/2addr v10, v13

    invoke-virtual/range {v4 .. v10}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 55
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getEnabled()Z

    move-result v6

    const v5, -0x6cd2ff2c

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "*56@2077L108"

    invoke-static {v9, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_6

    .line 57
    :cond_a
    new-instance v5, Lexpo/modules/ui/SwitchViewKt$SwitchContent$1$1;

    invoke-direct {v5, v2}, Lexpo/modules/ui/SwitchViewKt$SwitchContent$1$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const/16 v2, 0x36

    const v7, -0x47b92dac

    const/4 v8, 0x1

    invoke-static {v7, v8, v5, v9, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    :goto_6
    move-object v5, v2

    .line 56
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 65
    sget-object v13, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    .line 66
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getCheckedThumbColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd2e789

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "66@2326L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_b

    .line 67
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getCheckedThumbColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_7

    .line 66
    :cond_b
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_7
    move-wide v14, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 68
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getCheckedTrackColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd2d7e9

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "68@2451L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_c

    .line 69
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getCheckedTrackColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_8

    .line 68
    :cond_c
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_8
    move-wide/from16 v16, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 70
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getCheckedBorderColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd2c827

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "70@2578L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_d

    .line 71
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getCheckedBorderColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_9

    .line 70
    :cond_d
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_9
    move-wide/from16 v18, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 72
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getCheckedIconColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd2b86b

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "72@2702L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_e

    .line 73
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getCheckedIconColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_a

    .line 72
    :cond_e
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_a
    move-wide/from16 v20, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 74
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getUncheckedThumbColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd2a8c5

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "74@2830L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_f

    .line 75
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getUncheckedThumbColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_b

    .line 74
    :cond_f
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_b
    move-wide/from16 v22, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 76
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getUncheckedTrackColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd29865

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "76@2961L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_10

    .line 77
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getUncheckedTrackColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_c

    .line 76
    :cond_10
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_c
    move-wide/from16 v24, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 78
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getUncheckedBorderColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd287e3

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "78@3094L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_11

    .line 79
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getUncheckedBorderColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_d

    .line 78
    :cond_11
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_d
    move-wide/from16 v26, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 80
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getUncheckedIconColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd27767

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "80@3224L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_12

    .line 81
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getUncheckedIconColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_e

    .line 80
    :cond_12
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_e
    move-wide/from16 v28, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 82
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getDisabledCheckedBorderColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd26657

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "82@3368L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_13

    .line 83
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getDisabledCheckedBorderColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_f

    .line 82
    :cond_13
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_f
    move-wide/from16 v34, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 84
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getDisabledCheckedThumbColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd25379

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "84@3518L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_14

    .line 85
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getDisabledCheckedThumbColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_10

    .line 84
    :cond_14
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_10
    move-wide/from16 v30, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 86
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getDisabledCheckedTrackColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd240d9

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "86@3667L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_15

    .line 87
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getDisabledCheckedTrackColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_11

    .line 86
    :cond_15
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_11
    move-wide/from16 v32, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 88
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getDisabledCheckedIconColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd22e5b

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "88@3814L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_16

    .line 89
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getDisabledCheckedIconColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_12

    .line 88
    :cond_16
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_12
    move-wide/from16 v36, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 90
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getDisabledUncheckedBorderColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd21b93

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "90@3968L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_17

    .line 91
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getDisabledUncheckedBorderColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_13

    .line 90
    :cond_17
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_13
    move-wide/from16 v42, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 92
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getDisabledUncheckedThumbColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd207f5

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "92@4124L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_18

    .line 93
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getDisabledUncheckedThumbColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_14

    .line 92
    :cond_18
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_14
    move-wide/from16 v38, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 94
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getDisabledUncheckedTrackColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd1f495

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "94@4279L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_19

    .line 95
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getDisabledUncheckedTrackColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_15

    .line 94
    :cond_19
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_15
    move-wide/from16 v40, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 96
    invoke-virtual {v1}, Lexpo/modules/ui/SwitchProps;->getColors()Lexpo/modules/ui/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/SwitchColors;->getDisabledUncheckedIconColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v7, -0x6cd1e157

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "96@4432L8"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_1a

    .line 97
    sget-object v2, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    sget v7, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    invoke-virtual {v2, v9, v7}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/SwitchColors;->getDisabledUncheckedIconColor-0d7_KjU()J

    move-result-wide v7

    goto :goto_16

    .line 96
    :cond_1a
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    :goto_16
    move-wide/from16 v44, v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget v2, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    shl-int/lit8 v48, v2, 0x12

    const/16 v49, 0x0

    const/16 v47, 0x0

    move-object/from16 v46, v9

    .line 65
    invoke-virtual/range {v13 .. v49}, Landroidx/compose/material3/SwitchDefaults;->colors-V1nXRL4(JJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SwitchColors;

    move-result-object v7

    shr-int/lit8 v2, v11, 0x3

    and-int/lit8 v10, v2, 0x70

    const/16 v11, 0x40

    const/4 v8, 0x0

    move/from16 v2, v50

    .line 51
    invoke-static/range {v2 .. v11}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1b
    :goto_17
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_1c

    new-instance v4, Lexpo/modules/ui/SwitchViewKt$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v3, v12}, Lexpo/modules/ui/SwitchViewKt$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SwitchProps;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v2, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1c
    return-void
.end method

.method private static final SwitchContent$lambda$1(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SwitchProps;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p3

    invoke-static {p0, p1, p2, p4, p3}, Lexpo/modules/ui/SwitchViewKt;->SwitchContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SwitchProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
