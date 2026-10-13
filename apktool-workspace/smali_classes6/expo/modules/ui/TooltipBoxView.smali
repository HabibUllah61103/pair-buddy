.class public final Lexpo/modules/ui/TooltipBoxView;
.super Lexpo/modules/kotlin/views/ExpoComposeView;
.source "TooltipView.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/views/ExpoComposeView<",
        "Lexpo/modules/ui/TooltipBoxViewProps;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltipView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TooltipView.kt\nexpo/modules/ui/TooltipBoxView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SlotView.kt\nexpo/modules/ui/SlotViewKt\n+ 4 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 7 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,178:1\n1#2:179\n64#3:180\n65#3,4:182\n64#3:186\n65#3,4:188\n45#4:181\n45#4:187\n599#5:192\n596#5,6:193\n1128#6,3:199\n1131#6,3:203\n597#7:202\n*S KotlinDebug\n*F\n+ 1 TooltipView.kt\nexpo/modules/ui/TooltipBoxView\n*L\n113#1:180\n113#1:182,4\n114#1:186\n114#1:188,4\n113#1:181\n114#1:187\n117#1:192\n117#1:193,6\n117#1:199,3\n117#1:203,3\n117#1:202\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u0014\u001a\u00020\u0015H\u0086@\u00a2\u0006\u0002\u0010\u0016J\u000e\u0010\u0017\u001a\u00020\u0015H\u0086@\u00a2\u0006\u0002\u0010\u0016J\u0011\u0010\u0018\u001a\u00020\u0015*\u00020\u0019H\u0017\u00a2\u0006\u0002\u0010\u001aR\u0014\u0010\t\u001a\u00020\u0002X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/ui/TooltipBoxView;",
        "Lexpo/modules/kotlin/views/ExpoComposeView;",
        "Lexpo/modules/ui/TooltipBoxViewProps;",
        "context",
        "Landroid/content/Context;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V",
        "props",
        "getProps",
        "()Lexpo/modules/ui/TooltipBoxViewProps;",
        "tooltipState",
        "Landroidx/compose/material3/TooltipState;",
        "getTooltipState$expo_ui_release",
        "()Landroidx/compose/material3/TooltipState;",
        "setTooltipState$expo_ui_release",
        "(Landroidx/compose/material3/TooltipState;)V",
        "composeScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "show",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dismiss",
        "Content",
        "Lexpo/modules/kotlin/views/ComposableScope;",
        "(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V",
        "expo-ui_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private composeScope:Lkotlinx/coroutines/CoroutineScope;

.field private final props:Lexpo/modules/ui/TooltipBoxViewProps;

.field private tooltipState:Landroidx/compose/material3/TooltipState;


# direct methods
.method public static synthetic $r8$lambda$gB1V7TMf4Js-lVooM_lFtPR3nV8(Lexpo/modules/ui/TooltipBoxView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/ui/TooltipBoxView;->Content$lambda$3(Lexpo/modules/ui/TooltipBoxView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 79
    invoke-direct/range {v1 .. v6}, Lexpo/modules/kotlin/views/ExpoComposeView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    new-instance v2, Lexpo/modules/ui/TooltipBoxViewProps;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lexpo/modules/ui/TooltipBoxViewProps;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v1, Lexpo/modules/ui/TooltipBoxView;->props:Lexpo/modules/ui/TooltipBoxViewProps;

    return-void
.end method

.method private static final Content$lambda$3(Lexpo/modules/ui/TooltipBoxView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Lexpo/modules/ui/TooltipBoxView;->Content(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public Content(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v10, p3

    const-string v0, "<this>"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x4d8a52e0

    move-object/from16 v1, p2

    .line 111
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    const-string v1, "C(Content)115@4191L61,116@4269L24,170@6879L86,134@4942L1873,171@6972L71,129@4748L2295:TooltipView.kt#v15e7d"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v10, 0x6

    if-nez v1, :cond_2

    and-int/lit8 v1, v10, 0x8

    if-nez v1, :cond_0

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    or-int/2addr v1, v10

    goto :goto_2

    :cond_2
    move v1, v10

    :goto_2
    and-int/lit8 v4, v10, 0x30

    if-nez v4, :cond_4

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_3

    :cond_3
    const/16 v4, 0x10

    :goto_3
    or-int/2addr v1, v4

    :cond_4
    and-int/lit8 v4, v1, 0x13

    const/16 v5, 0x12

    if-ne v4, v5, :cond_6

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    .line 130
    :cond_5
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v20, v7

    goto/16 :goto_d

    .line 111
    :cond_6
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, -0x1

    const-string v5, "expo.modules.ui.TooltipBoxView.Content (TooltipView.kt:110)"

    invoke-static {v0, v1, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 112
    :cond_7
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    const-string v4, "tooltip"

    invoke-static {v0, v4}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v0, :cond_a

    .line 180
    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    .line 181
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v6, v11

    :goto_5
    if-ge v6, v5, :cond_9

    .line 182
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 183
    instance-of v9, v8, Lexpo/modules/ui/PlainTooltipView;

    if-eqz v9, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    move-object v8, v12

    .line 113
    :goto_6
    check-cast v8, Lexpo/modules/ui/PlainTooltipView;

    move v13, v1

    move-object v1, v8

    goto :goto_7

    :cond_a
    move v13, v1

    move-object v1, v12

    :goto_7
    if-eqz v0, :cond_d

    .line 186
    check-cast v0, Landroid/view/ViewGroup;

    .line 187
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v11

    :goto_8
    if-ge v5, v4, :cond_c

    .line 188
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 189
    instance-of v8, v6, Lexpo/modules/ui/RichTooltipView;

    if-eqz v8, :cond_b

    goto :goto_9

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_c
    move-object v6, v12

    .line 114
    :goto_9
    check-cast v6, Lexpo/modules/ui/RichTooltipView;

    move-object v0, v6

    goto :goto_a

    :cond_d
    move-object v0, v12

    .line 116
    :goto_a
    invoke-virtual {v2}, Lexpo/modules/ui/TooltipBoxView;->getProps()Lexpo/modules/ui/TooltipBoxViewProps;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/ui/TooltipBoxViewProps;->isPersistent()Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/material3/TooltipKt;->rememberTooltipState(ZZLandroidx/compose/foundation/MutatorMutex;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TooltipState;

    move-result-object v14

    const v4, 0x2e20b340

    .line 117
    const-string v5, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp"

    .line 192
    invoke-static {v7, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v4, 0x28c0fdc4

    .line 197
    const-string v5, "CC(remember):Effects.kt#9igjgp"

    .line 198
    invoke-static {v7, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 199
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 200
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_e

    .line 202
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 198
    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v4, v7}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 203
    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 198
    :cond_e
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 192
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 118
    iput-object v14, v2, Lexpo/modules/ui/TooltipBoxView;->tooltipState:Landroidx/compose/material3/TooltipState;

    .line 119
    iput-object v4, v2, Lexpo/modules/ui/TooltipBoxView;->composeScope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_f

    .line 121
    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    const-string v5, "action"

    invoke-static {v4, v5}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v12

    .line 122
    :cond_f
    invoke-virtual {v2}, Lexpo/modules/ui/TooltipBoxView;->getProps()Lexpo/modules/ui/TooltipBoxViewProps;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/ui/TooltipBoxViewProps;->getHasAction()Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    const/4 v15, 0x1

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    :cond_10
    move/from16 v18, v11

    goto :goto_b

    :cond_11
    if-eqz v12, :cond_10

    move/from16 v18, v15

    :goto_b
    const/4 v4, 0x0

    if-eqz v0, :cond_12

    const v5, -0x73d6f9e1

    .line 124
    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "124@4625L37"

    invoke-static {v7, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 125
    sget-object v5, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    sget v6, Landroidx/compose/material3/TooltipDefaults;->$stable:I

    shl-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v4, v7, v6, v15}, Landroidx/compose/material3/TooltipDefaults;->rememberRichTooltipPositionProvider-kHDZbjc(FLandroidx/compose/runtime/Composer;II)Landroidx/compose/ui/window/PopupPositionProvider;

    move-result-object v4

    .line 124
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_c

    :cond_12
    const v5, -0x73d5dee2

    .line 126
    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "126@4698L38"

    invoke-static {v7, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 127
    sget-object v5, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    sget v6, Landroidx/compose/material3/TooltipDefaults;->$stable:I

    shl-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v4, v7, v6, v15}, Landroidx/compose/material3/TooltipDefaults;->rememberPlainTooltipPositionProvider-kHDZbjc(FLandroidx/compose/runtime/Composer;II)Landroidx/compose/ui/window/PopupPositionProvider;

    move-result-object v4

    .line 126
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_c
    move-object v11, v4

    .line 132
    invoke-virtual {v2}, Lexpo/modules/ui/TooltipBoxView;->getProps()Lexpo/modules/ui/TooltipBoxViewProps;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/ui/TooltipBoxViewProps;->getEnableUserInput()Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 133
    invoke-virtual {v2}, Lexpo/modules/ui/TooltipBoxView;->getProps()Lexpo/modules/ui/TooltipBoxViewProps;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/ui/TooltipBoxViewProps;->getFocusable()Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 171
    sget-object v3, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    invoke-virtual {v2}, Lexpo/modules/ui/TooltipBoxView;->getProps()Lexpo/modules/ui/TooltipBoxViewProps;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/ui/TooltipBoxViewProps;->getModifiers()Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2}, Lexpo/modules/ui/TooltipBoxView;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v5

    move-object/from16 v20, v7

    invoke-virtual {v2}, Lexpo/modules/ui/TooltipBoxView;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    sget v6, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v6, v6, 0x3

    sget v8, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v6, v8

    shl-int/lit8 v8, v13, 0x6

    and-int/lit16 v8, v8, 0x380

    or-int v9, v6, v8

    move-object/from16 v6, p1

    move-object/from16 v8, v20

    invoke-virtual/range {v3 .. v9}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    move-object v4, v0

    .line 135
    new-instance v0, Lexpo/modules/ui/TooltipBoxView$Content$1;

    move-object/from16 v3, p1

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lexpo/modules/ui/TooltipBoxView$Content$1;-><init>(Lexpo/modules/ui/PlainTooltipView;Lexpo/modules/ui/TooltipBoxView;Lexpo/modules/kotlin/views/ComposableScope;Lexpo/modules/ui/RichTooltipView;Lexpo/modules/ui/SlotView;)V

    const v1, 0x6342140b

    const/16 v4, 0x36

    invoke-static {v1, v15, v0, v8, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function3;

    .line 172
    new-instance v0, Lexpo/modules/ui/TooltipBoxView$Content$2;

    invoke-direct {v0, v2}, Lexpo/modules/ui/TooltipBoxView$Content$2;-><init>(Lexpo/modules/ui/TooltipBoxView;)V

    const v1, 0x21e5e223

    invoke-static {v1, v15, v0, v8, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lkotlin/jvm/functions/Function2;

    const v21, 0x6000030

    const/16 v22, 0x10

    const/4 v15, 0x0

    move-object v13, v14

    move-object v14, v7

    .line 130
    invoke-static/range {v11 .. v22}, Landroidx/compose/material3/TooltipKt;->TooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_13
    :goto_d
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v1, Lexpo/modules/ui/TooltipBoxView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2, v3, v10}, Lexpo/modules/ui/TooltipBoxView$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/ui/TooltipBoxView;Lexpo/modules/kotlin/views/ComposableScope;I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_14
    return-void
.end method

.method public final dismiss(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lexpo/modules/ui/TooltipBoxView$dismiss$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lexpo/modules/ui/TooltipBoxView$dismiss$1;

    iget v1, v0, Lexpo/modules/ui/TooltipBoxView$dismiss$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lexpo/modules/ui/TooltipBoxView$dismiss$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lexpo/modules/ui/TooltipBoxView$dismiss$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/ui/TooltipBoxView$dismiss$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/ui/TooltipBoxView$dismiss$1;-><init>(Lexpo/modules/ui/TooltipBoxView;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lexpo/modules/ui/TooltipBoxView$dismiss$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 97
    iget v2, v0, Lexpo/modules/ui/TooltipBoxView$dismiss$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 98
    iget-object p1, p0, Lexpo/modules/ui/TooltipBoxView;->composeScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez p1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 99
    :cond_3
    iget-object v2, p0, Lexpo/modules/ui/TooltipBoxView;->tooltipState:Landroidx/compose/material3/TooltipState;

    if-nez v2, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 101
    :cond_4
    :try_start_1
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v4, Lexpo/modules/ui/TooltipBoxView$dismiss$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lexpo/modules/ui/TooltipBoxView$dismiss$2;-><init>(Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lexpo/modules/ui/TooltipBoxView$dismiss$1;->label:I

    invoke-static {p1, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_5

    return-object v1

    .line 108
    :catch_0
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic getProps()Lexpo/modules/kotlin/views/ComposeProps;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lexpo/modules/ui/TooltipBoxView;->getProps()Lexpo/modules/ui/TooltipBoxViewProps;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/views/ComposeProps;

    return-object v0
.end method

.method public getProps()Lexpo/modules/ui/TooltipBoxViewProps;
    .locals 1

    .line 80
    iget-object v0, p0, Lexpo/modules/ui/TooltipBoxView;->props:Lexpo/modules/ui/TooltipBoxViewProps;

    return-object v0
.end method

.method public final getTooltipState$expo_ui_release()Landroidx/compose/material3/TooltipState;
    .locals 1

    .line 81
    iget-object v0, p0, Lexpo/modules/ui/TooltipBoxView;->tooltipState:Landroidx/compose/material3/TooltipState;

    return-object v0
.end method

.method public final setTooltipState$expo_ui_release(Landroidx/compose/material3/TooltipState;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lexpo/modules/ui/TooltipBoxView;->tooltipState:Landroidx/compose/material3/TooltipState;

    return-void
.end method

.method public final show(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lexpo/modules/ui/TooltipBoxView$show$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lexpo/modules/ui/TooltipBoxView$show$1;

    iget v1, v0, Lexpo/modules/ui/TooltipBoxView$show$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lexpo/modules/ui/TooltipBoxView$show$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lexpo/modules/ui/TooltipBoxView$show$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/ui/TooltipBoxView$show$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/ui/TooltipBoxView$show$1;-><init>(Lexpo/modules/ui/TooltipBoxView;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lexpo/modules/ui/TooltipBoxView$show$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 84
    iget v2, v0, Lexpo/modules/ui/TooltipBoxView$show$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lexpo/modules/ui/TooltipBoxView;->composeScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez p1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 86
    :cond_3
    iget-object v2, p0, Lexpo/modules/ui/TooltipBoxView;->tooltipState:Landroidx/compose/material3/TooltipState;

    if-nez v2, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 88
    :cond_4
    :try_start_1
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v4, Lexpo/modules/ui/TooltipBoxView$show$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lexpo/modules/ui/TooltipBoxView$show$2;-><init>(Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lexpo/modules/ui/TooltipBoxView$show$1;->label:I

    invoke-static {p1, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_5

    return-object v1

    .line 95
    :catch_0
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
