.class public final Lexpo/modules/ui/button/FloatingActionButtonKt;
.super Ljava/lang/Object;
.source "FloatingActionButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/button/FloatingActionButtonKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "FloatingActionButtonContent",
        "",
        "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
        "props",
        "Lexpo/modules/ui/button/FloatingActionButtonProps;",
        "onClick",
        "Lkotlin/Function0;",
        "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/button/FloatingActionButtonProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
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
.method public static synthetic $r8$lambda$373L_Mqyp8NPvlrlPj3LXPqIick(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/button/FloatingActionButtonProps;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lexpo/modules/ui/button/FloatingActionButtonKt;->FloatingActionButtonContent$lambda$2(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/button/FloatingActionButtonProps;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final FloatingActionButtonContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/button/FloatingActionButtonProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
            "Lexpo/modules/ui/button/FloatingActionButtonProps;",
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

    move/from16 v15, p4

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "props"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "onClick"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, -0x6d12761e

    move-object/from16 v4, p3

    .line 37
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    const-string v4, "C(FloatingActionButtonContent)P(1)38@1425L83:FloatingActionButton.kt#kazlex"

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v15, 0x6

    const/4 v11, 0x4

    const/4 v13, 0x2

    if-nez v4, :cond_2

    and-int/lit8 v4, v15, 0x8

    if-nez v4, :cond_0

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_0
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_1

    move v4, v11

    goto :goto_1

    :cond_1
    move v4, v13

    :goto_1
    or-int/2addr v4, v15

    goto :goto_2

    :cond_2
    move v4, v15

    :goto_2
    and-int/lit8 v5, v15, 0x30

    if-nez v5, :cond_4

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_3

    :cond_3
    const/16 v5, 0x10

    :goto_3
    or-int/2addr v4, v5

    :cond_4
    and-int/lit16 v5, v15, 0x180

    if-nez v5, :cond_6

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_4

    :cond_5
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v4, v5

    :cond_6
    move v14, v4

    and-int/lit16 v4, v14, 0x93

    const/16 v5, 0x92

    if-ne v4, v5, :cond_8

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_5

    .line 52
    :cond_7
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_c

    .line 37
    :cond_8
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, -0x1

    const-string v5, "expo.modules.ui.button.FloatingActionButtonContent (FloatingActionButton.kt:36)"

    invoke-static {v3, v14, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 38
    :cond_9
    invoke-virtual {v1}, Lexpo/modules/ui/button/FloatingActionButtonProps;->getContainerColor()Landroid/graphics/Color;

    move-result-object v3

    const/16 v16, 0x0

    if-eqz v3, :cond_a

    invoke-static {v3}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    goto :goto_6

    :cond_a
    move-object/from16 v3, v16

    :goto_6
    const v4, -0x724d52d2

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "37@1376L14"

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v3, :cond_b

    sget-object v3, Landroidx/compose/material3/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material3/FloatingActionButtonDefaults;

    sget v4, Landroidx/compose/material3/FloatingActionButtonDefaults;->$stable:I

    invoke-virtual {v3, v12, v4}, Landroidx/compose/material3/FloatingActionButtonDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    goto :goto_7

    :cond_b
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v3

    :goto_7
    move-wide/from16 v17, v3

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 39
    sget-object v4, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    invoke-virtual {v1}, Lexpo/modules/ui/button/FloatingActionButtonProps;->getModifiers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v6

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v7

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    sget v3, Lexpo/modules/kotlin/AppContext;->$stable:I

    const/4 v9, 0x3

    shl-int/2addr v3, v9

    sget v10, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v3

    move v3, v9

    move-object v9, v12

    invoke-virtual/range {v4 .. v10}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 41
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const-string v6, "icon"

    invoke-static {v4, v6}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v4

    const v6, -0x724d2c10

    .line 42
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v6, "*42@1633L96"

    invoke-static {v12, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/16 v6, 0x36

    const/4 v7, 0x1

    if-nez v4, :cond_c

    move-object/from16 v4, v16

    goto :goto_8

    .line 43
    :cond_c
    new-instance v8, Lexpo/modules/ui/button/FloatingActionButtonKt$FloatingActionButtonContent$iconContent$1$1;

    invoke-direct {v8, v4}, Lexpo/modules/ui/button/FloatingActionButtonKt$FloatingActionButtonContent$iconContent$1$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v4, -0x688fa908

    invoke-static {v4, v7, v8, v12, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 42
    :goto_8
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    if-nez v4, :cond_d

    sget-object v4, Lexpo/modules/ui/button/ComposableSingletons$FloatingActionButtonKt;->INSTANCE:Lexpo/modules/ui/button/ComposableSingletons$FloatingActionButtonKt;

    invoke-virtual {v4}, Lexpo/modules/ui/button/ComposableSingletons$FloatingActionButtonKt;->getLambda$2023503970$expo_ui_release()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .line 52
    :cond_d
    invoke-virtual {v1}, Lexpo/modules/ui/button/FloatingActionButtonProps;->getVariant()Lexpo/modules/ui/button/FloatingActionButtonVariant;

    move-result-object v8

    sget-object v9, Lexpo/modules/ui/button/FloatingActionButtonKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Lexpo/modules/ui/button/FloatingActionButtonVariant;->ordinal()I

    move-result v8

    aget v8, v9, v8

    if-eq v8, v7, :cond_13

    if-eq v8, v13, :cond_12

    if-eq v8, v3, :cond_f

    if-ne v8, v11, :cond_e

    const v3, -0x724c9f6c

    .line 85
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "84@2747L146"

    invoke-static {v12, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    shr-int/lit8 v3, v14, 0x6

    and-int/lit8 v13, v3, 0xe

    const/16 v14, 0x74

    move-object v11, v4

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v5

    move-wide/from16 v5, v17

    invoke-static/range {v2 .. v14}, Landroidx/compose/material3/FloatingActionButtonKt;->FloatingActionButton-X-z6DiA(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_9
    move-object/from16 v2, p2

    goto/16 :goto_b

    :cond_e
    const v0, -0x724d18fc

    .line 52
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_f
    move-object v11, v4

    move-object v3, v5

    move-wide/from16 v8, v17

    const v2, 0x28b086a4

    .line 65
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "75@2474L224"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const-string v4, "text"

    invoke-static {v2, v4}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v2

    const v4, -0x724cd4f0

    .line 67
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "*67@2333L120"

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v2, :cond_10

    goto :goto_a

    .line 68
    :cond_10
    new-instance v4, Lexpo/modules/ui/button/FloatingActionButtonKt$FloatingActionButtonContent$textContent$1$1;

    invoke-direct {v4, v2}, Lexpo/modules/ui/button/FloatingActionButtonKt$FloatingActionButtonContent$textContent$1$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v2, -0x347ebf77    # -1.694133E7f

    invoke-static {v2, v7, v4, v12, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lkotlin/jvm/functions/Function2;

    .line 67
    :goto_a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    if-nez v16, :cond_11

    sget-object v2, Lexpo/modules/ui/button/ComposableSingletons$FloatingActionButtonKt;->INSTANCE:Lexpo/modules/ui/button/ComposableSingletons$FloatingActionButtonKt;

    invoke-virtual {v2}, Lexpo/modules/ui/button/ComposableSingletons$FloatingActionButtonKt;->getLambda$84818774$expo_ui_release()Lkotlin/jvm/functions/Function2;

    move-result-object v16

    :cond_11
    move-object/from16 v2, v16

    .line 78
    invoke-virtual {v1}, Lexpo/modules/ui/button/FloatingActionButtonProps;->getExpanded()Z

    move-result v6

    and-int/lit16 v15, v14, 0x380

    const/16 v16, 0x3a0

    const/4 v7, 0x0

    move-object v5, v3

    move-object v3, v11

    const-wide/16 v10, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p2

    .line 76
    invoke-static/range {v2 .. v16}, Landroidx/compose/material3/FloatingActionButtonKt;->ExtendedFloatingActionButton-ElI5-7k(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    move-object v12, v14

    .line 65
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_9

    :cond_12
    move-object v11, v4

    move-object v3, v5

    move-wide/from16 v5, v17

    const v2, -0x724cfcc7

    .line 59
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "58@2000L151"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    shr-int/lit8 v2, v14, 0x6

    and-int/lit8 v13, v2, 0xe

    const/16 v14, 0x74

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v14}, Landroidx/compose/material3/FloatingActionButtonKt;->LargeFloatingActionButton-X-z6DiA(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_b

    :cond_13
    move-object v11, v4

    move-object v3, v5

    move-wide/from16 v5, v17

    const v2, -0x724d14e7

    .line 53
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "52@1807L151"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    shr-int/lit8 v2, v14, 0x6

    and-int/lit8 v13, v2, 0xe

    const/16 v14, 0x74

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v14}, Landroidx/compose/material3/FloatingActionButtonKt;->SmallFloatingActionButton-X-z6DiA(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 52
    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_14
    :goto_c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_15

    new-instance v4, Lexpo/modules/ui/button/FloatingActionButtonKt$$ExternalSyntheticLambda0;

    move/from16 v15, p4

    invoke-direct {v4, v0, v1, v2, v15}, Lexpo/modules/ui/button/FloatingActionButtonKt$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/button/FloatingActionButtonProps;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_15
    return-void
.end method

.method private static final FloatingActionButtonContent$lambda$2(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/button/FloatingActionButtonProps;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p3

    invoke-static {p0, p1, p2, p4, p3}, Lexpo/modules/ui/button/FloatingActionButtonKt;->FloatingActionButtonContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/button/FloatingActionButtonProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
