.class public final Lexpo/modules/ui/SegmentedButtonViewKt;
.super Ljava/lang/Object;
.source "SegmentedButtonView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedButtonView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedButtonView.kt\nexpo/modules/ui/SegmentedButtonViewKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,116:1\n1128#2,6:117\n*S KotlinDebug\n*F\n+ 1 SegmentedButtonView.kt\nexpo/modules/ui/SegmentedButtonViewKt\n*L\n106#1:117,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001aA\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0004\u0012\u00020\u00010\u0008H\u0007\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "SegmentedButtonContent",
        "",
        "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
        "props",
        "Lexpo/modules/ui/SegmentedButtonProps;",
        "onClick",
        "Lkotlin/Function0;",
        "onCheckedChange",
        "Lkotlin/Function1;",
        "Lexpo/modules/ui/GenericEventPayload1;",
        "",
        "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SegmentedButtonProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
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
.method public static synthetic $r8$lambda$6C4IOFo5NTPcGnKHK85Z--Zqb7o(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SegmentedButtonProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lexpo/modules/ui/SegmentedButtonViewKt;->SegmentedButtonContent$lambda$6(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SegmentedButtonProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YAEP0xhBVdYo5s_boDElB6KuDmE(Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/ui/SegmentedButtonViewKt;->SegmentedButtonContent$lambda$5$lambda$4$lambda$3(Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eWrB0lDQ-BoZzCUNy0RH0y9BN0U(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SegmentedButtonProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lexpo/modules/ui/SegmentedButtonViewKt;->SegmentedButtonContent$lambda$1(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SegmentedButtonProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final SegmentedButtonContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SegmentedButtonProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
            "Lexpo/modules/ui/SegmentedButtonProps;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/ui/GenericEventPayload1<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "props"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCheckedChange"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x8d2b1dc

    move-object/from16 v6, p4

    .line 46
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v6, "C(SegmentedButtonContent)P(2,1)52@2017L858,67@2915L39,68@2989L83:SegmentedButtonView.kt#v15e7d"

    invoke-static {v10, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v6, v5, 0x6

    if-nez v6, :cond_2

    and-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_0

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    :cond_0
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    :goto_0
    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    :goto_1
    or-int/2addr v6, v5

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    and-int/lit8 v7, v5, 0x30

    if-nez v7, :cond_4

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x20

    goto :goto_3

    :cond_3
    const/16 v7, 0x10

    :goto_3
    or-int/2addr v6, v7

    :cond_4
    and-int/lit16 v7, v5, 0x180

    if-nez v7, :cond_6

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x100

    goto :goto_4

    :cond_5
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v6, v7

    :cond_6
    and-int/lit16 v7, v5, 0xc00

    const/16 v8, 0x800

    if-nez v7, :cond_8

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    goto :goto_5

    :cond_7
    const/16 v7, 0x400

    :goto_5
    or-int/2addr v6, v7

    :cond_8
    and-int/lit16 v7, v6, 0x493

    const/16 v9, 0x492

    if-ne v7, v9, :cond_a

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_6

    .line 114
    :cond_9
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_f

    .line 46
    :cond_a
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, -0x1

    const-string v9, "expo.modules.ui.SegmentedButtonContent (SegmentedButtonView.kt:45)"

    invoke-static {v0, v6, v7, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 47
    :cond_b
    invoke-virtual {v2}, Lexpo/modules/ui/SegmentedButtonProps;->getColors()Lexpo/modules/ui/SegmentedButtonColors;

    move-result-object v0

    .line 48
    invoke-virtual {v1}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const-string v9, "label"

    invoke-static {v7, v9}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v7

    .line 49
    invoke-virtual {v1}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v9

    invoke-virtual {v9}, Lexpo/modules/kotlin/views/ComposeFunctionHolder;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v11, v9, Landroid/view/ViewGroup;

    const/16 v35, 0x0

    if-eqz v11, :cond_c

    check-cast v9, Landroid/view/ViewGroup;

    goto :goto_7

    :cond_c
    move-object/from16 v9, v35

    :goto_7
    const/16 v36, 0x0

    if-eqz v9, :cond_d

    .line 50
    invoke-virtual {v1}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    move/from16 v37, v11

    goto :goto_8

    :cond_d
    move/from16 v37, v36

    :goto_8
    const/4 v11, 0x1

    if-eqz v9, :cond_e

    .line 51
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move/from16 v38, v9

    goto :goto_9

    :cond_e
    move/from16 v38, v11

    :goto_9
    move v9, v6

    .line 53
    sget-object v6, Landroidx/compose/material3/SegmentedButtonDefaults;->INSTANCE:Landroidx/compose/material3/SegmentedButtonDefaults;

    .line 54
    invoke-virtual {v0}, Lexpo/modules/ui/SegmentedButtonColors;->getActiveBorderColor()Landroid/graphics/Color;

    move-result-object v12

    invoke-static {v12}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v12

    .line 55
    invoke-virtual {v0}, Lexpo/modules/ui/SegmentedButtonColors;->getActiveContentColor()Landroid/graphics/Color;

    move-result-object v14

    invoke-static {v14}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v14

    .line 56
    invoke-virtual {v0}, Lexpo/modules/ui/SegmentedButtonColors;->getInactiveBorderColor()Landroid/graphics/Color;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v17

    .line 57
    invoke-virtual {v0}, Lexpo/modules/ui/SegmentedButtonColors;->getInactiveContentColor()Landroid/graphics/Color;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v19

    .line 58
    invoke-virtual {v0}, Lexpo/modules/ui/SegmentedButtonColors;->getDisabledActiveBorderColor()Landroid/graphics/Color;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v23

    .line 59
    invoke-virtual {v0}, Lexpo/modules/ui/SegmentedButtonColors;->getDisabledActiveContentColor()Landroid/graphics/Color;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v21

    .line 60
    invoke-virtual {v0}, Lexpo/modules/ui/SegmentedButtonColors;->getDisabledInactiveBorderColor()Landroid/graphics/Color;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v29

    .line 61
    invoke-virtual {v0}, Lexpo/modules/ui/SegmentedButtonColors;->getDisabledInactiveContentColor()Landroid/graphics/Color;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v27

    .line 62
    invoke-virtual {v0}, Lexpo/modules/ui/SegmentedButtonColors;->getActiveContainerColor()Landroid/graphics/Color;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v25

    .line 63
    invoke-virtual {v0}, Lexpo/modules/ui/SegmentedButtonColors;->getInactiveContainerColor()Landroid/graphics/Color;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v31

    .line 64
    invoke-virtual {v0}, Lexpo/modules/ui/SegmentedButtonColors;->getDisabledActiveContainerColor()Landroid/graphics/Color;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v33

    .line 65
    invoke-virtual {v0}, Lexpo/modules/ui/SegmentedButtonColors;->getDisabledInactiveContainerColor()Landroid/graphics/Color;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v39

    move v0, v9

    move-wide/from16 v42, v31

    move-object/from16 v31, v10

    move/from16 v32, v11

    move-wide v11, v12

    move-wide v9, v14

    move-wide/from16 v15, v19

    move-wide/from16 v13, v42

    move-wide/from16 v19, v33

    const/16 v33, 0x180

    const/16 v34, 0x0

    move/from16 v41, v32

    const/16 v32, 0x0

    move-object v1, v7

    move-wide/from16 v7, v25

    move-wide/from16 v25, v39

    move/from16 v2, v41

    .line 53
    invoke-virtual/range {v6 .. v34}, Landroidx/compose/material3/SegmentedButtonDefaults;->colors-XqyqHi0(JJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SegmentedButtonColors;

    move-result-object v13

    .line 68
    sget-object v6, Landroidx/compose/material3/SegmentedButtonDefaults;->INSTANCE:Landroidx/compose/material3/SegmentedButtonDefaults;

    const/16 v11, 0xc00

    const/4 v12, 0x4

    const/4 v9, 0x0

    move-object/from16 v10, v31

    move/from16 v7, v37

    move/from16 v8, v38

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/material3/SegmentedButtonDefaults;->itemShape(IILandroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/Shape;

    move-result-object v14

    .line 69
    sget-object v6, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    invoke-virtual/range {p1 .. p1}, Lexpo/modules/ui/SegmentedButtonProps;->getModifiers()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    sget v11, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v11, v11, 0x3

    sget v12, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v12, v11

    move-object/from16 v11, v31

    invoke-virtual/range {v6 .. v12}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    move-object v10, v11

    const v7, -0x1eece8ce

    .line 70
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "*70@3136L96"

    invoke-static {v10, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v1, :cond_f

    move-object/from16 v1, v35

    goto :goto_a

    .line 71
    :cond_f
    new-instance v7, Lexpo/modules/ui/SegmentedButtonViewKt$SegmentedButtonContent$label$1$1;

    invoke-direct {v7, v1}, Lexpo/modules/ui/SegmentedButtonViewKt$SegmentedButtonContent$label$1$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const/16 v1, 0x36

    const v8, 0x12c5e490

    invoke-static {v8, v2, v7, v10, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 70
    :goto_a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    if-nez v1, :cond_10

    sget-object v1, Lexpo/modules/ui/ComposableSingletons$SegmentedButtonViewKt;->INSTANCE:Lexpo/modules/ui/ComposableSingletons$SegmentedButtonViewKt;

    invoke-virtual {v1}, Lexpo/modules/ui/ComposableSingletons$SegmentedButtonViewKt;->getLambda$1431986096$expo_ui_release()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    :cond_10
    move-object v11, v1

    .line 80
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/views/ComposableScope;->getRowScope()Landroidx/compose/foundation/layout/RowScope;

    move-result-object v1

    instance-of v7, v1, Landroidx/compose/material3/SingleChoiceSegmentedButtonRowScope;

    if-eqz v7, :cond_11

    check-cast v1, Landroidx/compose/material3/SingleChoiceSegmentedButtonRowScope;

    goto :goto_b

    :cond_11
    move-object/from16 v1, v35

    .line 81
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v7

    invoke-virtual {v7}, Lexpo/modules/kotlin/views/ComposableScope;->getRowScope()Landroidx/compose/foundation/layout/RowScope;

    move-result-object v7

    instance-of v8, v7, Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;

    if-eqz v8, :cond_12

    move-object/from16 v35, v7

    check-cast v35, Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;

    :cond_12
    if-nez v1, :cond_14

    if-nez v35, :cond_14

    .line 84
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_13
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_1b

    new-instance v0, Lexpo/modules/ui/SegmentedButtonViewKt$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lexpo/modules/ui/SegmentedButtonViewKt$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SegmentedButtonProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_14
    if-eqz v1, :cond_15

    const v2, 0x41589671

    .line 90
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "*91@3733L227"

    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v35, v1

    .line 93
    invoke-virtual/range {p1 .. p1}, Lexpo/modules/ui/SegmentedButtonProps;->getSelected()Z

    move-result v1

    .line 96
    invoke-virtual/range {p1 .. p1}, Lexpo/modules/ui/SegmentedButtonProps;->getEnabled()Z

    move-result v5

    move-object v7, v13

    and-int/lit16 v13, v0, 0x380

    move-object v3, v14

    const/4 v14, 0x0

    const/16 v15, 0x3c0

    move-object v4, v6

    move-object v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v31, v10

    const/4 v10, 0x0

    move-object/from16 v2, p2

    move-object/from16 v12, v31

    move-object/from16 v0, v35

    .line 92
    invoke-static/range {v0 .. v15}, Landroidx/compose/material3/SegmentedButtonKt;->SegmentedButton(Landroidx/compose/material3/SingleChoiceSegmentedButtonRowScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    move-object v10, v12

    .line 90
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_e

    :cond_15
    move-object v4, v6

    move-object v6, v13

    move-object v3, v14

    if-eqz v35, :cond_19

    const v1, 0x415d2246

    .line 102
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "*105@4107L45,103@4031L271"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v32, v2

    .line 105
    invoke-virtual/range {p1 .. p1}, Lexpo/modules/ui/SegmentedButtonProps;->getChecked()Z

    move-result v2

    move-object v7, v6

    .line 108
    invoke-virtual/range {p1 .. p1}, Lexpo/modules/ui/SegmentedButtonProps;->getEnabled()Z

    move-result v6

    const v1, 0x4c5de2

    .line 105
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "CC(remember):SegmentedButtonView.kt#9igjgp"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v0, v0, 0x1c00

    const/16 v1, 0x800

    if-ne v0, v1, :cond_16

    move/from16 v36, v32

    .line 117
    :cond_16
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v36, :cond_18

    .line 118
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_17

    goto :goto_c

    :cond_17
    move-object/from16 v1, p3

    goto :goto_d

    .line 106
    :cond_18
    :goto_c
    new-instance v0, Lexpo/modules/ui/SegmentedButtonViewKt$$ExternalSyntheticLambda1;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lexpo/modules/ui/SegmentedButtonViewKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 120
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 106
    :goto_d
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v15, 0x0

    const/16 v16, 0x3c0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v31, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v5, v4

    move-object/from16 v13, v31

    move-object/from16 v1, v35

    move-object v4, v3

    move-object v3, v0

    .line 104
    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/SegmentedButtonKt;->SegmentedButton(Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    move-object v10, v13

    .line 102
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_e

    :cond_19
    const v0, 0x4161b57e

    .line 114
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1a
    :goto_f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_1b

    new-instance v0, Lexpo/modules/ui/SegmentedButtonViewKt$$ExternalSyntheticLambda2;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lexpo/modules/ui/SegmentedButtonViewKt$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SegmentedButtonProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1b
    return-void
.end method

.method private static final SegmentedButtonContent$lambda$1(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SegmentedButtonProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 6

    or-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lexpo/modules/ui/SegmentedButtonViewKt;->SegmentedButtonContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SegmentedButtonProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final SegmentedButtonContent$lambda$5$lambda$4$lambda$3(Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 1

    .line 106
    new-instance v0, Lexpo/modules/ui/GenericEventPayload1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lexpo/modules/ui/GenericEventPayload1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final SegmentedButtonContent$lambda$6(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SegmentedButtonProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 6

    or-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lexpo/modules/ui/SegmentedButtonViewKt;->SegmentedButtonContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SegmentedButtonProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
