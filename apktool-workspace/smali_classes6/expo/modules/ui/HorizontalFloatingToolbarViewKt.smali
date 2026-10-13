.class public final Lexpo/modules/ui/HorizontalFloatingToolbarViewKt;
.super Ljava/lang/Object;
.source "HorizontalFloatingToolbarView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHorizontalFloatingToolbarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HorizontalFloatingToolbarView.kt\nexpo/modules/ui/HorizontalFloatingToolbarViewKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,77:1\n1128#2,6:78\n*S KotlinDebug\n*F\n+ 1 HorizontalFloatingToolbarView.kt\nexpo/modules/ui/HorizontalFloatingToolbarViewKt\n*L\n35#1:78,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "HorizontalFloatingToolbarContent",
        "",
        "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
        "props",
        "Lexpo/modules/ui/HorizontalFloatingToolbarProps;",
        "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/HorizontalFloatingToolbarProps;Landroidx/compose/runtime/Composer;I)V",
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
.method public static synthetic $r8$lambda$852JBGcHsac03-UD7budVnoQ2ow(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/HorizontalFloatingToolbarProps;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt;->HorizontalFloatingToolbarContent$lambda$2(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/HorizontalFloatingToolbarProps;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kJAoeldeAtQX4x1TELc-kdl-PLA(Lexpo/modules/ui/SlotView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt;->HorizontalFloatingToolbarContent$lambda$1$lambda$0(Lexpo/modules/ui/SlotView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final HorizontalFloatingToolbarContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/HorizontalFloatingToolbarProps;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "props"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x50d3b030

    move-object/from16 v4, p2

    .line 27
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    const-string v4, "C(HorizontalFloatingToolbarContent)34@1387L48,38@1478L474,53@2084L83:HorizontalFloatingToolbarView.kt#v15e7d"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v2, 0x6

    if-nez v4, :cond_2

    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_0

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_0
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    .line 66
    :cond_5
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_9

    .line 27
    :cond_6
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_7

    const-string v5, "expo.modules.ui.HorizontalFloatingToolbarContent (HorizontalFloatingToolbarView.kt:26)"

    invoke-static {v3, v4, v6, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 28
    :cond_7
    invoke-virtual {v1}, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->getVariant()Lexpo/modules/ui/HorizontalFloatingToolbarVariant;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    sget-object v4, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lexpo/modules/ui/HorizontalFloatingToolbarVariant;->ordinal()I

    move-result v3

    aget v6, v4, v3

    :goto_5
    const/4 v3, 0x1

    if-ne v6, v3, :cond_9

    const v4, 0x6aa8808e

    .line 29
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "28@1129L30"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/material3/FloatingToolbarDefaults;->INSTANCE:Landroidx/compose/material3/FloatingToolbarDefaults;

    sget v5, Landroidx/compose/material3/FloatingToolbarDefaults;->$stable:I

    invoke-virtual {v4, v15, v5}, Landroidx/compose/material3/FloatingToolbarDefaults;->vibrantFloatingToolbarColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/FloatingToolbarColors;

    move-result-object v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_6

    :cond_9
    const v4, 0x6aa888ef

    .line 30
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "29@1196L31"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/material3/FloatingToolbarDefaults;->INSTANCE:Landroidx/compose/material3/FloatingToolbarDefaults;

    sget v5, Landroidx/compose/material3/FloatingToolbarDefaults;->$stable:I

    invoke-virtual {v4, v15, v5}, Landroidx/compose/material3/FloatingToolbarDefaults;->standardFloatingToolbarColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/FloatingToolbarColors;

    move-result-object v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_6
    move-object v11, v4

    .line 34
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const-string v5, "floatingActionButton"

    invoke-static {v4, v5}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v12

    const v4, 0x4c5de2

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "CC(remember):HorizontalFloatingToolbarView.kt#9igjgp"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    .line 78
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_a

    .line 79
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_b

    .line 35
    :cond_a
    new-instance v5, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$$ExternalSyntheticLambda0;

    invoke-direct {v5, v12}, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/ui/SlotView;)V

    .line 81
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 35
    :cond_b
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 39
    new-instance v4, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1;

    invoke-direct {v4, v1, v5, v0}, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1;-><init>(Lexpo/modules/ui/HorizontalFloatingToolbarProps;Lkotlin/jvm/functions/Function0;Lexpo/modules/kotlin/views/FunctionalComposableScope;)V

    const v5, -0x5d9641f8

    const/16 v13, 0x36

    invoke-static {v5, v3, v4, v15, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 53
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/kotlin/views/ComposableScope;->getNestedScrollConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v4

    instance-of v5, v4, Landroidx/compose/material3/FloatingToolbarScrollBehavior;

    if-eqz v5, :cond_c

    check-cast v4, Landroidx/compose/material3/FloatingToolbarScrollBehavior;

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    move-object/from16 v16, v4

    .line 54
    sget-object v4, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    invoke-virtual {v1}, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->getModifiers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v6

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v7

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    sget v9, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v9, v9, 0x3

    sget v10, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v9

    move-object v9, v15

    invoke-virtual/range {v4 .. v10}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v12, :cond_d

    const v4, -0x15882a43

    .line 56
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "62@2398L71,56@2202L267"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 63
    new-instance v4, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$1;

    invoke-direct {v4, v0}, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$1;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;)V

    const v6, -0x2cf15d41

    invoke-static {v6, v3, v4, v15, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function3;

    const/16 v18, 0x30

    const/16 v19, 0x7d0

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v6, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v6

    move-object v6, v5

    move-object v5, v14

    const/4 v14, 0x0

    const/16 v17, 0x36

    move-object/from16 v9, v16

    move-object/from16 v16, v15

    move-object v15, v3

    .line 57
    invoke-static/range {v4 .. v19}, Landroidx/compose/material3/FloatingToolbarKt;->HorizontalFloatingToolbar-ekznXB8(ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/FloatingToolbarColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/FloatingToolbarScrollBehavior;Landroidx/compose/ui/graphics/Shape;ILandroidx/compose/animation/core/FiniteAnimationSpec;FFLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v16

    .line 56
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_8

    :cond_d
    move-object v6, v11

    move-object/from16 v8, v16

    const v4, -0x1583e7d0

    .line 66
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "71@2630L71,66@2485L216"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 72
    new-instance v4, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$2;

    invoke-direct {v4, v0}, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$2;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;)V

    const v7, -0x3f5db6ab

    invoke-static {v7, v3, v4, v15, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function3;

    const/16 v17, 0x6

    const/16 v18, 0x3e8

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x6

    .line 67
    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/FloatingToolbarKt;->HorizontalFloatingToolbar-LJWHXA8(ZLandroidx/compose/ui/Modifier;Landroidx/compose/material3/FloatingToolbarColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/FloatingToolbarScrollBehavior;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;FFLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    .line 66
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_e
    :goto_9
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_f

    new-instance v4, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v1, v2}, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/HorizontalFloatingToolbarProps;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_f
    return-void
.end method

.method private static final HorizontalFloatingToolbarContent$lambda$1$lambda$0(Lexpo/modules/ui/SlotView;)Lkotlin/Unit;
    .locals 1

    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {p0}, Lexpo/modules/ui/SlotView;->getOnSlotEvent$expo_ui_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    .line 37
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final HorizontalFloatingToolbarContent$lambda$2(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/HorizontalFloatingToolbarProps;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p3, p2}, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt;->HorizontalFloatingToolbarContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/HorizontalFloatingToolbarProps;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
