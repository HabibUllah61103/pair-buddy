.class public final Lexpo/modules/ui/AlertDialogViewKt;
.super Ljava/lang/Object;
.source "AlertDialogView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAlertDialogView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlertDialogView.kt\nexpo/modules/ui/AlertDialogViewKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,81:1\n127#2:82\n1128#3,6:83\n*S KotlinDebug\n*F\n+ 1 AlertDialogView.kt\nexpo/modules/ui/AlertDialogViewKt\n*L\n72#1:82\n47#1:83,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "AlertDialogContent",
        "",
        "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
        "props",
        "Lexpo/modules/ui/AlertDialogProps;",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/AlertDialogProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
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
.method public static synthetic $r8$lambda$AuXfrH8bK8MYckl3zIgXtUd-MUg(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ui/AlertDialogViewKt;->AlertDialogContent$lambda$5$lambda$4(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AvaQOHpn-dGjl8Knoqjpsw5BuXU(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/AlertDialogProps;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lexpo/modules/ui/AlertDialogViewKt;->AlertDialogContent$lambda$6(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/AlertDialogProps;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final AlertDialogContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/AlertDialogProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
            "Lexpo/modules/ui/AlertDialogProps;",
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

    const-string v4, "onDismissRequest"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x2f253ff1

    move-object/from16 v5, p3

    .line 39
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v5, "C(AlertDialogContent)P(1)50@1791L83,46@1664L22,47@1708L49,45@1628L1385:AlertDialogView.kt#v15e7d"

    invoke-static {v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_2

    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_0

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    :cond_0
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    if-nez v6, :cond_6

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

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

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    .line 46
    :cond_7
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_10

    .line 39
    :cond_8
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, -0x1

    const-string v6, "expo.modules.ui.AlertDialogContent (AlertDialogView.kt:38)"

    invoke-static {v4, v13, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 40
    :cond_9
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const-string v5, "title"

    invoke-static {v4, v5}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v4

    .line 41
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const-string v6, "text"

    invoke-static {v5, v6}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v14

    .line 42
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const-string v6, "confirmButton"

    invoke-static {v5, v6}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v15

    .line 43
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const-string v6, "dismissButton"

    invoke-static {v5, v6}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v5

    .line 44
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const-string v7, "icon"

    invoke-static {v6, v7}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v6

    move-object v7, v5

    .line 51
    sget-object v5, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    move-object v8, v6

    invoke-virtual {v1}, Lexpo/modules/ui/AlertDialogProps;->getModifiers()Ljava/util/List;

    move-result-object v6

    move-object v9, v7

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v7

    move-object v11, v8

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v8

    move-object/from16 v16, v9

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    sget v17, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v17, v17, 0x3

    sget v18, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v18, v18, 0x6

    or-int v17, v17, v18

    move-object v0, v11

    move-object/from16 v12, v16

    move/from16 v11, v17

    invoke-virtual/range {v5 .. v11}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const v5, -0x52a9e0a

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "*52@1931L19"

    invoke-static {v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x36

    const/4 v8, 0x1

    if-nez v12, :cond_a

    move-object v9, v5

    goto :goto_6

    .line 53
    :cond_a
    new-instance v9, Lexpo/modules/ui/AlertDialogViewKt$AlertDialogContent$1$1;

    invoke-direct {v9, v12}, Lexpo/modules/ui/AlertDialogViewKt$AlertDialogContent$1$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v11, -0x157ca60e

    invoke-static {v11, v8, v9, v10, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 52
    :goto_6
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v11, -0x52a95ca

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v11, "*55@1997L19"

    invoke-static {v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v4, :cond_b

    move-object v4, v5

    goto :goto_7

    .line 56
    :cond_b
    new-instance v11, Lexpo/modules/ui/AlertDialogViewKt$AlertDialogContent$2$1;

    invoke-direct {v11, v4}, Lexpo/modules/ui/AlertDialogViewKt$AlertDialogContent$2$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v4, -0x3a575e2b

    invoke-static {v4, v8, v11, v10, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 55
    :goto_7
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v11, -0x52a8dca

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v11, "*58@2061L19"

    invoke-static {v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v14, :cond_c

    move-object v11, v5

    goto :goto_8

    .line 59
    :cond_c
    new-instance v11, Lexpo/modules/ui/AlertDialogViewKt$AlertDialogContent$3$1;

    invoke-direct {v11, v14}, Lexpo/modules/ui/AlertDialogViewKt$AlertDialogContent$3$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v12, 0x1570a27

    invoke-static {v12, v8, v11, v10, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 58
    :goto_8
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v12, -0x52a85ca

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v12, "*61@2125L19"

    invoke-static {v10, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v0, :cond_d

    goto :goto_9

    .line 62
    :cond_d
    new-instance v5, Lexpo/modules/ui/AlertDialogViewKt$AlertDialogContent$4$1;

    invoke-direct {v5, v0}, Lexpo/modules/ui/AlertDialogViewKt$AlertDialogContent$4$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v0, -0x73e015e4

    invoke-static {v0, v8, v5, v10, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 61
    :goto_9
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 64
    invoke-virtual {v1}, Lexpo/modules/ui/AlertDialogProps;->getColors()Lexpo/modules/ui/AlertDialogColors;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/ui/AlertDialogColors;->getContainerColor()Landroid/graphics/Color;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    const v12, -0x52a7e1a

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v12, "64@2244L14"

    invoke-static {v10, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v0, :cond_e

    .line 65
    sget-object v0, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    sget v12, Landroidx/compose/material3/AlertDialogDefaults;->$stable:I

    invoke-virtual {v0, v10, v12}, Landroidx/compose/material3/AlertDialogDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    goto :goto_a

    .line 64
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v16

    :goto_a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 66
    invoke-virtual {v1}, Lexpo/modules/ui/AlertDialogProps;->getColors()Lexpo/modules/ui/AlertDialogColors;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/ui/AlertDialogColors;->getIconContentColor()Landroid/graphics/Color;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    const v12, -0x52a7056

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v12, "66@2356L16"

    invoke-static {v10, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v0, :cond_f

    .line 67
    sget-object v0, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    sget v12, Landroidx/compose/material3/AlertDialogDefaults;->$stable:I

    invoke-virtual {v0, v10, v12}, Landroidx/compose/material3/AlertDialogDefaults;->getIconContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    goto :goto_b

    .line 66
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v18

    :goto_b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 68
    invoke-virtual {v1}, Lexpo/modules/ui/AlertDialogProps;->getColors()Lexpo/modules/ui/AlertDialogColors;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/ui/AlertDialogColors;->getTitleContentColor()Landroid/graphics/Color;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    const v12, -0x52a61f4

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v12, "68@2472L17"

    invoke-static {v10, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v0, :cond_10

    .line 69
    sget-object v0, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    sget v12, Landroidx/compose/material3/AlertDialogDefaults;->$stable:I

    invoke-virtual {v0, v10, v12}, Landroidx/compose/material3/AlertDialogDefaults;->getTitleContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    goto :goto_c

    .line 68
    :cond_10
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v20

    :goto_c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 70
    invoke-virtual {v1}, Lexpo/modules/ui/AlertDialogProps;->getColors()Lexpo/modules/ui/AlertDialogColors;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/ui/AlertDialogColors;->getTextContentColor()Landroid/graphics/Color;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    const v12, -0x52a5376

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v12, "70@2587L16"

    invoke-static {v10, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v0, :cond_11

    .line 71
    sget-object v0, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    sget v12, Landroidx/compose/material3/AlertDialogDefaults;->$stable:I

    invoke-virtual {v0, v10, v12}, Landroidx/compose/material3/AlertDialogDefaults;->getTextContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v22

    goto :goto_d

    .line 70
    :cond_11
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v22

    :goto_d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 72
    invoke-virtual {v1}, Lexpo/modules/ui/AlertDialogProps;->getTonalElevation()Ljava/lang/Double;

    move-result-object v0

    move-object v12, v7

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float v0, v6

    .line 82
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    goto :goto_e

    .line 72
    :cond_12
    sget-object v0, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/AlertDialogDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v0

    .line 73
    :goto_e
    new-instance v24, Landroidx/compose/ui/window/DialogProperties;

    .line 74
    invoke-virtual {v1}, Lexpo/modules/ui/AlertDialogProps;->getProperties()Lexpo/modules/ui/ExpoDialogProperties;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/ui/ExpoDialogProperties;->getDismissOnBackPress()Z

    move-result v25

    .line 75
    invoke-virtual {v1}, Lexpo/modules/ui/AlertDialogProps;->getProperties()Lexpo/modules/ui/ExpoDialogProperties;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/ui/ExpoDialogProperties;->getDismissOnClickOutside()Z

    move-result v26

    .line 76
    invoke-virtual {v1}, Lexpo/modules/ui/AlertDialogProps;->getProperties()Lexpo/modules/ui/ExpoDialogProperties;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/ui/ExpoDialogProperties;->getUsePlatformDefaultWidth()Z

    move-result v28

    .line 77
    invoke-virtual {v1}, Lexpo/modules/ui/AlertDialogProps;->getProperties()Lexpo/modules/ui/ExpoDialogProperties;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/ui/ExpoDialogProperties;->getDecorFitsSystemWindows()Z

    move-result v29

    const/16 v31, 0x24

    const/16 v32, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    .line 73
    invoke-direct/range {v24 .. v32}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v6, 0x4c5de2

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v6, "CC(remember):AlertDialogView.kt#9igjgp"

    invoke-static {v10, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v6, v13, 0x380

    const/16 v7, 0x100

    if-ne v6, v7, :cond_13

    move v6, v8

    goto :goto_f

    :cond_13
    const/4 v6, 0x0

    .line 83
    :goto_f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_14

    .line 84
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v7, v6, :cond_15

    .line 47
    :cond_14
    new-instance v7, Lexpo/modules/ui/AlertDialogViewKt$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2}, Lexpo/modules/ui/AlertDialogViewKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 86
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 47
    :cond_15
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 48
    new-instance v6, Lexpo/modules/ui/AlertDialogViewKt$AlertDialogContent$6;

    invoke-direct {v6, v15}, Lexpo/modules/ui/AlertDialogViewKt$AlertDialogContent$6;-><init>(Lexpo/modules/ui/SlotView;)V

    const v13, 0x25f35039

    const/16 v14, 0x36

    invoke-static {v13, v8, v6, v10, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/16 v25, 0x0

    const/16 v26, 0x80

    move-object v8, v9

    move-object v9, v5

    move-object v5, v7

    move-object v7, v12

    const/4 v12, 0x0

    move-wide/from16 v13, v16

    move-wide/from16 v15, v18

    move-wide/from16 v17, v20

    move-wide/from16 v19, v22

    move-object/from16 v22, v24

    const/16 v24, 0x30

    move/from16 v21, v0

    move-object/from16 v23, v10

    move-object v10, v4

    .line 46
    invoke-static/range {v5 .. v26}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v23

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_16
    :goto_10
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v4, Lexpo/modules/ui/AlertDialogViewKt$$ExternalSyntheticLambda1;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v1, v2, v3}, Lexpo/modules/ui/AlertDialogViewKt$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/AlertDialogProps;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_17
    return-void
.end method

.method private static final AlertDialogContent$lambda$5$lambda$4(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 47
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final AlertDialogContent$lambda$6(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/AlertDialogProps;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p3

    invoke-static {p0, p1, p2, p4, p3}, Lexpo/modules/ui/AlertDialogViewKt;->AlertDialogContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/AlertDialogProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
