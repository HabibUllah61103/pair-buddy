.class public final Lexpo/modules/ui/CheckboxViewKt;
.super Ljava/lang/Object;
.source "CheckboxView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/CheckboxViewKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\u0008\u001a\'\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000cH\u0007\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "CheckboxContent",
        "",
        "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
        "props",
        "Lexpo/modules/ui/CheckboxProps;",
        "onCheckedChange",
        "Lkotlin/Function1;",
        "",
        "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/CheckboxProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
        "TriStateCheckboxContent",
        "Lexpo/modules/ui/TriStateCheckboxProps;",
        "onClick",
        "Lkotlin/Function0;",
        "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TriStateCheckboxProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
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
.method public static synthetic $r8$lambda$1TbgsPzo9p-ZaKH_VGPMo6EcmsI(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/CheckboxProps;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lexpo/modules/ui/CheckboxViewKt;->CheckboxContent$lambda$0(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/CheckboxProps;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rYG0ePusT52lTdZlB2MxrCQldpY(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TriStateCheckboxProps;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lexpo/modules/ui/CheckboxViewKt;->TriStateCheckboxContent$lambda$1(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TriStateCheckboxProps;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final CheckboxContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/CheckboxProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
            "Lexpo/modules/ui/CheckboxProps;",
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

    move-object/from16 v2, p2

    move/from16 v3, p4

    const-string v4, "<this>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "props"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onCheckedChange"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x18af9e29

    move-object/from16 v5, p3

    .line 36
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const-string v5, "C(CheckboxContent)P(1)43@1387L83,45@1531L420,36@1214L741:CheckboxView.kt#v15e7d"

    invoke-static {v11, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_2

    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_0

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    :cond_0
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_4

    :cond_5
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v5, v6

    :cond_6
    and-int/lit16 v6, v5, 0x93

    const/16 v7, 0x92

    if-ne v6, v7, :cond_8

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_5

    .line 37
    :cond_7
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_7

    .line 36
    :cond_8
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, -0x1

    const-string v7, "expo.modules.ui.CheckboxContent (CheckboxView.kt:35)"

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 38
    :cond_9
    invoke-virtual {v1}, Lexpo/modules/ui/CheckboxProps;->getValue()Z

    move-result v4

    .line 39
    invoke-virtual {v1}, Lexpo/modules/ui/CheckboxProps;->getNativeClickable()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v21, v2

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    move-object/from16 v21, v5

    .line 44
    :goto_6
    sget-object v5, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    invoke-virtual {v1}, Lexpo/modules/ui/CheckboxProps;->getModifiers()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v7

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v8

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    sget v10, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v10, v10, 0x3

    sget v12, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v10, v12

    move-object/from16 v24, v11

    move v11, v10

    move-object/from16 v10, v24

    invoke-virtual/range {v5 .. v11}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v22

    move-object v11, v10

    .line 45
    invoke-virtual {v1}, Lexpo/modules/ui/CheckboxProps;->getEnabled()Z

    move-result v23

    .line 46
    sget-object v5, Landroidx/compose/material3/CheckboxDefaults;->INSTANCE:Landroidx/compose/material3/CheckboxDefaults;

    .line 47
    invoke-virtual {v1}, Lexpo/modules/ui/CheckboxProps;->getColors()Lexpo/modules/ui/CheckboxColors;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/ui/CheckboxColors;->getCheckedColor()Landroid/graphics/Color;

    move-result-object v6

    invoke-static {v6}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v6

    .line 48
    invoke-virtual {v1}, Lexpo/modules/ui/CheckboxProps;->getColors()Lexpo/modules/ui/CheckboxColors;

    move-result-object v8

    invoke-virtual {v8}, Lexpo/modules/ui/CheckboxColors;->getDisabledCheckedColor()Landroid/graphics/Color;

    move-result-object v8

    invoke-static {v8}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v12

    .line 49
    invoke-virtual {v1}, Lexpo/modules/ui/CheckboxProps;->getColors()Lexpo/modules/ui/CheckboxColors;

    move-result-object v8

    invoke-virtual {v8}, Lexpo/modules/ui/CheckboxColors;->getUncheckedColor()Landroid/graphics/Color;

    move-result-object v8

    invoke-static {v8}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v8

    .line 50
    invoke-virtual {v1}, Lexpo/modules/ui/CheckboxProps;->getColors()Lexpo/modules/ui/CheckboxColors;

    move-result-object v10

    invoke-virtual {v10}, Lexpo/modules/ui/CheckboxColors;->getDisabledUncheckedColor()Landroid/graphics/Color;

    move-result-object v10

    invoke-static {v10}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v14

    .line 51
    invoke-virtual {v1}, Lexpo/modules/ui/CheckboxProps;->getColors()Lexpo/modules/ui/CheckboxColors;

    move-result-object v10

    invoke-virtual {v10}, Lexpo/modules/ui/CheckboxColors;->getCheckmarkColor()Landroid/graphics/Color;

    move-result-object v10

    invoke-static {v10}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v16

    .line 52
    invoke-virtual {v1}, Lexpo/modules/ui/CheckboxProps;->getColors()Lexpo/modules/ui/CheckboxColors;

    move-result-object v10

    invoke-virtual {v10}, Lexpo/modules/ui/CheckboxColors;->getDisabledIndeterminateColor()Landroid/graphics/Color;

    move-result-object v10

    invoke-static {v10}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v18

    sget v10, Landroidx/compose/material3/CheckboxDefaults;->$stable:I

    shl-int/lit8 v10, v10, 0x12

    const/16 v20, 0x0

    move-wide/from16 v24, v18

    move/from16 v19, v10

    move-object/from16 v18, v11

    move-wide/from16 v10, v16

    move-wide/from16 v16, v24

    .line 46
    invoke-virtual/range {v5 .. v20}, Landroidx/compose/material3/CheckboxDefaults;->colors-5tl4gsc(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CheckboxColors;

    move-result-object v9

    move-object/from16 v11, v18

    const/4 v12, 0x0

    const/16 v13, 0x20

    const/4 v10, 0x0

    move v5, v4

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    .line 37
    invoke-static/range {v5 .. v13}, Landroidx/compose/material3/CheckboxKt;->Checkbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    :goto_7
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_c

    new-instance v5, Lexpo/modules/ui/CheckboxViewKt$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v1, v2, v3}, Lexpo/modules/ui/CheckboxViewKt$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/CheckboxProps;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_c
    return-void
.end method

.method private static final CheckboxContent$lambda$0(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/CheckboxProps;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p3

    invoke-static {p0, p1, p2, p4, p3}, Lexpo/modules/ui/CheckboxViewKt;->CheckboxContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/CheckboxProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final TriStateCheckboxContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TriStateCheckboxProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
            "Lexpo/modules/ui/TriStateCheckboxProps;",
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

    const-string v4, "onClick"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x872afdc

    move-object/from16 v5, p3

    .line 75
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const-string v5, "C(TriStateCheckboxContent)P(1)86@2849L83,88@2993L420,75@2491L926:CheckboxView.kt#v15e7d"

    invoke-static {v11, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v5, v3, 0x6

    const/4 v6, 0x2

    if-nez v5, :cond_2

    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_0

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    :cond_0
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    :goto_0
    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    or-int/2addr v5, v3

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    and-int/lit8 v7, v3, 0x30

    if-nez v7, :cond_4

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x20

    goto :goto_3

    :cond_3
    const/16 v7, 0x10

    :goto_3
    or-int/2addr v5, v7

    :cond_4
    and-int/lit16 v7, v3, 0x180

    if-nez v7, :cond_6

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x100

    goto :goto_4

    :cond_5
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v5, v7

    :cond_6
    and-int/lit16 v7, v5, 0x93

    const/16 v8, 0x92

    if-ne v7, v8, :cond_8

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_5

    .line 76
    :cond_7
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_8

    .line 75
    :cond_8
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, -0x1

    const-string v8, "expo.modules.ui.TriStateCheckboxContent (CheckboxView.kt:74)"

    invoke-static {v4, v5, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 77
    :cond_9
    invoke-virtual {v1}, Lexpo/modules/ui/TriStateCheckboxProps;->getState()Lexpo/modules/ui/ToggleableStateValue;

    move-result-object v4

    sget-object v5, Lexpo/modules/ui/CheckboxViewKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lexpo/modules/ui/ToggleableStateValue;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    const/4 v7, 0x3

    if-eq v4, v5, :cond_c

    if-eq v4, v6, :cond_b

    if-ne v4, v7, :cond_a

    .line 80
    sget-object v4, Landroidx/compose/ui/state/ToggleableState;->Indeterminate:Landroidx/compose/ui/state/ToggleableState;

    goto :goto_6

    .line 77
    :cond_a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 79
    :cond_b
    sget-object v4, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    goto :goto_6

    .line 78
    :cond_c
    sget-object v4, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    .line 82
    :goto_6
    invoke-virtual {v1}, Lexpo/modules/ui/TriStateCheckboxProps;->getNativeClickable()Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v21, v2

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    move-object/from16 v21, v5

    .line 87
    :goto_7
    sget-object v5, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    invoke-virtual {v1}, Lexpo/modules/ui/TriStateCheckboxProps;->getModifiers()Ljava/util/List;

    move-result-object v6

    move v8, v7

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v7

    move v9, v8

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v8

    move v10, v9

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    sget v12, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v10, v12, 0x3

    sget v12, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v10, v12

    move-object/from16 v24, v11

    move v11, v10

    move-object/from16 v10, v24

    invoke-virtual/range {v5 .. v11}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v22

    move-object v11, v10

    .line 88
    invoke-virtual {v1}, Lexpo/modules/ui/TriStateCheckboxProps;->getEnabled()Z

    move-result v23

    .line 89
    sget-object v5, Landroidx/compose/material3/CheckboxDefaults;->INSTANCE:Landroidx/compose/material3/CheckboxDefaults;

    .line 90
    invoke-virtual {v1}, Lexpo/modules/ui/TriStateCheckboxProps;->getColors()Lexpo/modules/ui/CheckboxColors;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/ui/CheckboxColors;->getCheckedColor()Landroid/graphics/Color;

    move-result-object v6

    invoke-static {v6}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v6

    .line 91
    invoke-virtual {v1}, Lexpo/modules/ui/TriStateCheckboxProps;->getColors()Lexpo/modules/ui/CheckboxColors;

    move-result-object v8

    invoke-virtual {v8}, Lexpo/modules/ui/CheckboxColors;->getDisabledCheckedColor()Landroid/graphics/Color;

    move-result-object v8

    invoke-static {v8}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v12

    .line 92
    invoke-virtual {v1}, Lexpo/modules/ui/TriStateCheckboxProps;->getColors()Lexpo/modules/ui/CheckboxColors;

    move-result-object v8

    invoke-virtual {v8}, Lexpo/modules/ui/CheckboxColors;->getUncheckedColor()Landroid/graphics/Color;

    move-result-object v8

    invoke-static {v8}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v8

    .line 93
    invoke-virtual {v1}, Lexpo/modules/ui/TriStateCheckboxProps;->getColors()Lexpo/modules/ui/CheckboxColors;

    move-result-object v10

    invoke-virtual {v10}, Lexpo/modules/ui/CheckboxColors;->getDisabledUncheckedColor()Landroid/graphics/Color;

    move-result-object v10

    invoke-static {v10}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v14

    .line 94
    invoke-virtual {v1}, Lexpo/modules/ui/TriStateCheckboxProps;->getColors()Lexpo/modules/ui/CheckboxColors;

    move-result-object v10

    invoke-virtual {v10}, Lexpo/modules/ui/CheckboxColors;->getCheckmarkColor()Landroid/graphics/Color;

    move-result-object v10

    invoke-static {v10}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v16

    .line 95
    invoke-virtual {v1}, Lexpo/modules/ui/TriStateCheckboxProps;->getColors()Lexpo/modules/ui/CheckboxColors;

    move-result-object v10

    invoke-virtual {v10}, Lexpo/modules/ui/CheckboxColors;->getDisabledIndeterminateColor()Landroid/graphics/Color;

    move-result-object v10

    invoke-static {v10}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide v18

    sget v10, Landroidx/compose/material3/CheckboxDefaults;->$stable:I

    shl-int/lit8 v10, v10, 0x12

    const/16 v20, 0x0

    move-wide/from16 v24, v18

    move/from16 v19, v10

    move-object/from16 v18, v11

    move-wide/from16 v10, v16

    move-wide/from16 v16, v24

    .line 89
    invoke-virtual/range {v5 .. v20}, Landroidx/compose/material3/CheckboxDefaults;->colors-5tl4gsc(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CheckboxColors;

    move-result-object v9

    move-object/from16 v11, v18

    const/4 v12, 0x0

    const/16 v13, 0x20

    const/4 v10, 0x0

    move-object v5, v4

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    .line 76
    invoke-static/range {v5 .. v13}, Landroidx/compose/material3/CheckboxKt;->TriStateCheckbox(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_e
    :goto_8
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_f

    new-instance v5, Lexpo/modules/ui/CheckboxViewKt$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v1, v2, v3}, Lexpo/modules/ui/CheckboxViewKt$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TriStateCheckboxProps;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_f
    return-void
.end method

.method private static final TriStateCheckboxContent$lambda$1(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TriStateCheckboxProps;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p3

    invoke-static {p0, p1, p2, p4, p3}, Lexpo/modules/ui/CheckboxViewKt;->TriStateCheckboxContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/TriStateCheckboxProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
