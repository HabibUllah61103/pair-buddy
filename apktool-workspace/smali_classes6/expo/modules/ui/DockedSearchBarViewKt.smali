.class public final Lexpo/modules/ui/DockedSearchBarViewKt;
.super Ljava/lang/Object;
.source "DockedSearchBarView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDockedSearchBarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DockedSearchBarView.kt\nexpo/modules/ui/DockedSearchBarViewKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,54:1\n1128#2,6:55\n1128#2,6:61\n*S KotlinDebug\n*F\n+ 1 DockedSearchBarView.kt\nexpo/modules/ui/DockedSearchBarViewKt\n*L\n30#1:55,6\n37#1:61,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0018\u0010\u0005\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "DockedSearchBarContent",
        "",
        "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
        "props",
        "Lexpo/modules/ui/DockedSearchBarProps;",
        "onQueryChange",
        "Lkotlin/Function1;",
        "Lexpo/modules/ui/GenericEventPayload1;",
        "",
        "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/DockedSearchBarProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
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
.method public static synthetic $r8$lambda$KChSIMmSvJS5ct1I1XguMspBl8w(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/DockedSearchBarProps;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lexpo/modules/ui/DockedSearchBarViewKt;->DockedSearchBarContent$lambda$3(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/DockedSearchBarProps;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sIU0qsQyxgeqqPfoeNGEuOrf9Xk(Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ui/DockedSearchBarViewKt;->DockedSearchBarContent$lambda$2$lambda$1(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final DockedSearchBarContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/DockedSearchBarProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
            "Lexpo/modules/ui/DockedSearchBarProps;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/ui/GenericEventPayload1<",
            "Ljava/lang/String;",
            ">;",
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

    const-string v4, "onQueryChange"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x2b512fbb

    move-object/from16 v5, p3

    .line 26
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    const-string v5, "C(DockedSearchBarContent)P(1)26@964L24,27@1012L24,29@1061L116,29@1040L137,50@1707L83,37@1276L397,36@1243L2,34@1181L616:DockedSearchBarView.kt#v15e7d"

    invoke-static {v8, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_2

    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_0

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    :cond_0
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    const/16 v11, 0x100

    if-nez v6, :cond_6

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v11

    goto :goto_4

    :cond_5
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v5, v6

    :cond_6
    move v12, v5

    and-int/lit16 v5, v12, 0x93

    const/16 v6, 0x92

    if-ne v5, v6, :cond_8

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    .line 35
    :cond_7
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_7

    .line 26
    :cond_8
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, -0x1

    const-string v6, "expo.modules.ui.DockedSearchBarContent (DockedSearchBarView.kt:25)"

    invoke-static {v4, v12, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_9
    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 27
    invoke-static/range {v5 .. v10}, Landroidx/compose/material3/SearchBarKt;->rememberSearchBarState(Landroidx/compose/material3/SearchBarValue;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarState;

    move-result-object v4

    const/4 v10, 0x3

    const-wide/16 v6, 0x0

    .line 28
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/text/input/TextFieldStateKt;->rememberTextFieldState-Le-punE(Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/text/input/TextFieldState;

    move-result-object v13

    .line 30
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const v6, -0x615d173a

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v14, "CC(remember):DockedSearchBarView.kt#9igjgp"

    invoke-static {v8, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    and-int/lit16 v7, v12, 0x380

    const/4 v12, 0x1

    if-ne v7, v11, :cond_a

    move v7, v12

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    or-int/2addr v6, v7

    .line 55
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_b

    .line 56
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v7, v6, :cond_c

    .line 30
    :cond_b
    new-instance v6, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$1$1;

    const/4 v7, 0x0

    invoke-direct {v6, v13, v2, v7}, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$1$1;-><init>(Landroidx/compose/foundation/text/input/TextFieldState;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 58
    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 30
    :cond_c
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v6, 0x6

    invoke-static {v5, v7, v8, v6}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 51
    sget-object v5, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    move v7, v6

    invoke-virtual {v1}, Lexpo/modules/ui/DockedSearchBarProps;->getModifiers()Ljava/util/List;

    move-result-object v6

    move v9, v7

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v7

    move-object v10, v8

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v8

    move v11, v9

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    sget v15, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v15, v15, 0x3

    sget v16, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v11, v16, 0x6

    or-int/2addr v11, v15

    invoke-virtual/range {v5 .. v11}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 38
    new-instance v5, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2;

    invoke-direct {v5, v13, v4, v0}, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2;-><init>(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lexpo/modules/kotlin/views/FunctionalComposableScope;)V

    const/16 v4, 0x36

    const v6, -0x125798b3

    invoke-static {v6, v12, v5, v10, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const v4, 0x6e3c21fe

    .line 36
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v10, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 61
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 62
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_d

    .line 63
    new-instance v4, Lexpo/modules/ui/DockedSearchBarViewKt$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lexpo/modules/ui/DockedSearchBarViewKt$$ExternalSyntheticLambda0;-><init>()V

    .line 64
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 37
    :cond_d
    move-object v7, v4

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 51
    sget-object v4, Lexpo/modules/ui/ComposableSingletons$DockedSearchBarViewKt;->INSTANCE:Lexpo/modules/ui/ComposableSingletons$DockedSearchBarViewKt;

    invoke-virtual {v4}, Lexpo/modules/ui/ComposableSingletons$DockedSearchBarViewKt;->getLambda$304213221$expo_ui_release()Lkotlin/jvm/functions/Function3;

    move-result-object v13

    const v15, 0x60001b6

    const/16 v16, 0xf0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v14, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 35
    invoke-static/range {v5 .. v16}, Landroidx/compose/material3/SearchBarKt;->DockedSearchBar-EQC0FA8(Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v14

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_e
    :goto_7
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_f

    new-instance v5, Lexpo/modules/ui/DockedSearchBarViewKt$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v1, v2, v3}, Lexpo/modules/ui/DockedSearchBarViewKt$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/DockedSearchBarProps;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_f
    return-void
.end method

.method private static final DockedSearchBarContent$lambda$2$lambda$1(Z)Lkotlin/Unit;
    .locals 0

    .line 37
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final DockedSearchBarContent$lambda$3(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/DockedSearchBarProps;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p3

    invoke-static {p0, p1, p2, p4, p3}, Lexpo/modules/ui/DockedSearchBarViewKt;->DockedSearchBarContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/DockedSearchBarProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
