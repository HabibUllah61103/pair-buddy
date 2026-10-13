.class public final Lexpo/modules/ui/ModalBottomSheetView;
.super Lexpo/modules/kotlin/views/ExpoComposeView;
.source "BottomSheetView.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/views/ExpoComposeView<",
        "Lexpo/modules/ui/ModalBottomSheetViewProps;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomSheetView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSheetView.kt\nexpo/modules/ui/ModalBottomSheetView\n+ 2 ViewEventDelegate.kt\nexpo/modules/kotlin/viewevent/ViewEventDelegateKt\n+ 3 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,108:1\n34#2,3:109\n599#3:112\n596#3,6:113\n1128#4,3:119\n1131#4,3:123\n1128#4,6:126\n597#5:122\n*S KotlinDebug\n*F\n+ 1 BottomSheetView.kt\nexpo/modules/ui/ModalBottomSheetView\n*L\n50#1:109,3\n71#1:112\n71#1:113,6\n71#1:119,3\n71#1:123,3\n82#1:126,6\n71#1:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u001b\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u001cJ\u0011\u0010\u001d\u001a\u00020\u000e*\u00020\u001eH\u0017\u00a2\u0006\u0002\u0010\u001fR\u0014\u0010\t\u001a\u00020\u0002X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR!\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lexpo/modules/ui/ModalBottomSheetView;",
        "Lexpo/modules/kotlin/views/ExpoComposeView;",
        "Lexpo/modules/ui/ModalBottomSheetViewProps;",
        "context",
        "Landroid/content/Context;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V",
        "props",
        "getProps",
        "()Lexpo/modules/ui/ModalBottomSheetViewProps;",
        "onDismissRequest",
        "Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "",
        "getOnDismissRequest$expo_ui_release",
        "()Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "onDismissRequest$delegate",
        "Lexpo/modules/kotlin/viewevent/ViewEventDelegate;",
        "sheetState",
        "Landroidx/compose/material3/SheetState;",
        "getSheetState$expo_ui_release",
        "()Landroidx/compose/material3/SheetState;",
        "setSheetState$expo_ui_release",
        "(Landroidx/compose/material3/SheetState;)V",
        "composeScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "hide",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final $stable:I


# instance fields
.field private composeScope:Lkotlinx/coroutines/CoroutineScope;

.field private final onDismissRequest$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final props:Lexpo/modules/ui/ModalBottomSheetViewProps;

.field private sheetState:Landroidx/compose/material3/SheetState;


# direct methods
.method public static synthetic $r8$lambda$MY6wL9Yp82fvdx8BblhzfuEknHQ(Lexpo/modules/ui/ModalBottomSheetView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/ui/ModalBottomSheetView;->Content$lambda$2(Lexpo/modules/ui/ModalBottomSheetView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xJOwqYFBgOpYRZciE0oTD0EDlsE(Lexpo/modules/ui/ModalBottomSheetView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ui/ModalBottomSheetView;->Content$lambda$1$lambda$0(Lexpo/modules/ui/ModalBottomSheetView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 50
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onDismissRequest"

    const-string v3, "getOnDismissRequest$expo_ui_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    const-class v4, Lexpo/modules/ui/ModalBottomSheetView;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lexpo/modules/ui/ModalBottomSheetView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v0, 0x8

    sput v0, Lexpo/modules/ui/ModalBottomSheetView;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V
    .locals 13

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

    .line 48
    invoke-direct/range {v1 .. v6}, Lexpo/modules/kotlin/views/ExpoComposeView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    new-instance v2, Lexpo/modules/ui/ModalBottomSheetViewProps;

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v12}, Lexpo/modules/ui/ModalBottomSheetViewProps;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v1, Lexpo/modules/ui/ModalBottomSheetView;->props:Lexpo/modules/ui/ModalBottomSheetViewProps;

    .line 50
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    .line 111
    new-instance p2, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 50
    iput-object p2, v1, Lexpo/modules/ui/ModalBottomSheetView;->onDismissRequest$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    return-void
.end method

.method private static final Content$lambda$1$lambda$0(Lexpo/modules/ui/ModalBottomSheetView;)Lkotlin/Unit;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lexpo/modules/ui/ModalBottomSheetView;->getOnDismissRequest$expo_ui_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    .line 84
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Content$lambda$2(Lexpo/modules/ui/ModalBottomSheetView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Lexpo/modules/ui/ModalBottomSheetView;->Content(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public Content(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v8, p3

    const-string v1, "<this>"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, -0x18e73a72

    move-object/from16 v2, p2

    .line 69
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    const-string v2, "C(Content)69@2896L64,70@2977L24,101@4381L86,81@3600L40,102@4474L71,79@3526L1019:BottomSheetView.kt#v15e7d"

    invoke-static {v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v8, 0x6

    const/4 v3, 0x2

    if-nez v2, :cond_2

    and-int/lit8 v2, v8, 0x8

    if-nez v2, :cond_0

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_0
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    or-int/2addr v2, v8

    goto :goto_2

    :cond_2
    move v2, v8

    :goto_2
    and-int/lit8 v5, v8, 0x30

    if-nez v5, :cond_4

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_3

    :cond_3
    const/16 v5, 0x10

    :goto_3
    or-int/2addr v2, v5

    :cond_4
    and-int/lit8 v5, v2, 0x13

    const/16 v7, 0x12

    if-ne v5, v7, :cond_6

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    .line 80
    :cond_5
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_a

    .line 69
    :cond_6
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, -0x1

    const-string v7, "expo.modules.ui.ModalBottomSheetView.Content (BottomSheetView.kt:68)"

    invoke-static {v1, v2, v5, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 70
    :cond_7
    invoke-virtual {v0}, Lexpo/modules/ui/ModalBottomSheetView;->getProps()Lexpo/modules/ui/ModalBottomSheetViewProps;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/ui/ModalBottomSheetViewProps;->getSkipPartiallyExpanded()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v5, v6, v7, v3}, Landroidx/compose/material3/ModalBottomSheetKt;->rememberModalBottomSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object v11

    const v1, 0x2e20b340

    .line 71
    const-string v3, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp"

    .line 112
    invoke-static {v6, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v1, 0x28c0fdc4

    .line 117
    const-string v3, "CC(remember):Effects.kt#9igjgp"

    .line 118
    invoke-static {v6, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 119
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 120
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_8

    .line 122
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 118
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1, v6}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 123
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 118
    :cond_8
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 112
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 72
    iput-object v11, v0, Lexpo/modules/ui/ModalBottomSheetView;->sheetState:Landroidx/compose/material3/SheetState;

    .line 73
    iput-object v1, v0, Lexpo/modules/ui/ModalBottomSheetView;->composeScope:Lkotlinx/coroutines/CoroutineScope;

    .line 75
    invoke-virtual {v0}, Lexpo/modules/ui/ModalBottomSheetView;->getProps()Lexpo/modules/ui/ModalBottomSheetViewProps;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/ui/ModalBottomSheetViewProps;->getContainerColor()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Color;

    invoke-static {v1}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    const v3, -0x7c023d84

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "74@3205L14"

    invoke-static {v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v3, 0x6

    if-nez v1, :cond_9

    sget-object v1, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v1, v6, v3}, Landroidx/compose/material3/BottomSheetDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v9

    :goto_5
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 76
    invoke-virtual {v0}, Lexpo/modules/ui/ModalBottomSheetView;->getProps()Lexpo/modules/ui/ModalBottomSheetViewProps;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/ui/ModalBottomSheetViewProps;->getContentColor()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Color;

    invoke-static {v1}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    const v12, -0x7c022fc1

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v12, "75@3293L39"

    invoke-static {v6, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v1, :cond_a

    invoke-static {v9, v10, v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v12

    :goto_6
    move-wide/from16 v17, v12

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 77
    invoke-virtual {v0}, Lexpo/modules/ui/ModalBottomSheetView;->getProps()Lexpo/modules/ui/ModalBottomSheetViewProps;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/ui/ModalBottomSheetViewProps;->getScrimColor()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Color;

    invoke-static {v1}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    const v7, -0x7c0221ec

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "76@3422L10"

    invoke-static {v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v1, :cond_b

    sget-object v1, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v1, v6, v3}, Landroidx/compose/material3/BottomSheetDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    goto :goto_7

    :cond_b
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v12

    :goto_7
    move-wide/from16 v20, v12

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const-string v7, "dragHandle"

    invoke-static {v1, v7}, Lexpo/modules/ui/SlotViewKt;->findChildSlotView(Landroid/view/ViewGroup;Ljava/lang/String;)Lexpo/modules/ui/SlotView;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Lexpo/modules/ui/ModalBottomSheetView;->getProps()Lexpo/modules/ui/ModalBottomSheetViewProps;

    move-result-object v7

    invoke-virtual {v7}, Lexpo/modules/ui/ModalBottomSheetViewProps;->getSheetGesturesEnabled()Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const v7, -0x7c01e3cb

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "90@3910L70"

    invoke-static {v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/16 v12, 0x36

    const/4 v14, 0x1

    if-eqz v1, :cond_d

    .line 91
    new-instance v5, Lexpo/modules/ui/ModalBottomSheetView$Content$1;

    invoke-direct {v5, v1}, Lexpo/modules/ui/ModalBottomSheetView$Content$1;-><init>(Lexpo/modules/ui/SlotView;)V

    const v1, 0x66a86310

    invoke-static {v1, v14, v5, v6, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    :cond_c
    :goto_8
    move-object/from16 v22, v5

    goto :goto_9

    .line 93
    :cond_d
    invoke-virtual {v0}, Lexpo/modules/ui/ModalBottomSheetView;->getProps()Lexpo/modules/ui/ModalBottomSheetViewProps;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/ui/ModalBottomSheetViewProps;->getShowDragHandle()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lexpo/modules/ui/ComposableSingletons$BottomSheetViewKt;->INSTANCE:Lexpo/modules/ui/ComposableSingletons$BottomSheetViewKt;

    invoke-virtual {v1}, Lexpo/modules/ui/ComposableSingletons$BottomSheetViewKt;->getLambda$-865286969$expo_ui_release()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    goto :goto_8

    .line 89
    :goto_9
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 98
    new-instance v15, Landroidx/compose/material3/ModalBottomSheetProperties;

    .line 99
    invoke-virtual {v0}, Lexpo/modules/ui/ModalBottomSheetView;->getProps()Lexpo/modules/ui/ModalBottomSheetViewProps;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/ui/ModalBottomSheetViewProps;->getProperties()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/ui/ModalBottomSheetPropertiesRecord;

    invoke-virtual {v1}, Lexpo/modules/ui/ModalBottomSheetPropertiesRecord;->getShouldDismissOnBackPress()Z

    move-result v1

    .line 100
    invoke-virtual {v0}, Lexpo/modules/ui/ModalBottomSheetView;->getProps()Lexpo/modules/ui/ModalBottomSheetViewProps;

    move-result-object v5

    invoke-virtual {v5}, Lexpo/modules/ui/ModalBottomSheetViewProps;->getProperties()Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/ui/ModalBottomSheetPropertiesRecord;

    invoke-virtual {v5}, Lexpo/modules/ui/ModalBottomSheetPropertiesRecord;->getShouldDismissOnClickOutside()Z

    move-result v5

    .line 98
    invoke-direct {v15, v1, v5}, Landroidx/compose/material3/ModalBottomSheetProperties;-><init>(ZZ)V

    .line 102
    sget-object v1, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    invoke-virtual {v0}, Lexpo/modules/ui/ModalBottomSheetView;->getProps()Lexpo/modules/ui/ModalBottomSheetViewProps;

    move-result-object v5

    invoke-virtual {v5}, Lexpo/modules/ui/ModalBottomSheetViewProps;->getModifiers()Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move v7, v3

    invoke-virtual {v0}, Lexpo/modules/ui/ModalBottomSheetView;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v3

    move/from16 v16, v2

    move-object v2, v5

    invoke-virtual {v0}, Lexpo/modules/ui/ModalBottomSheetView;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    sget v19, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v19, v19, 0x3

    sget v23, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v23, v23, 0x6

    or-int v19, v19, v23

    shl-int/lit8 v7, v16, 0x6

    and-int/lit16 v7, v7, 0x380

    or-int v7, v19, v7

    invoke-virtual/range {v1 .. v7}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, 0x4c5de2

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "CC(remember):BottomSheetView.kt#9igjgp"

    invoke-static {v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .line 126
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_e

    .line 127
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_f

    .line 82
    :cond_e
    new-instance v3, Lexpo/modules/ui/ModalBottomSheetView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lexpo/modules/ui/ModalBottomSheetView$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/ui/ModalBottomSheetView;)V

    .line 129
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 82
    :cond_f
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 103
    new-instance v2, Lexpo/modules/ui/ModalBottomSheetView$Content$3;

    invoke-direct {v2, v0}, Lexpo/modules/ui/ModalBottomSheetView$Content$3;-><init>(Lexpo/modules/ui/ModalBottomSheetView;)V

    const v5, -0x71861c90

    invoke-static {v5, v14, v2, v6, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lkotlin/jvm/functions/Function3;

    const/16 v28, 0xc00

    const/16 v29, 0x928

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    move-object/from16 v26, v6

    move-object/from16 v24, v15

    move-wide v15, v9

    move-object v10, v1

    move-object v9, v3

    .line 80
    invoke-static/range {v9 .. v29}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet-YbuCTN8(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_10
    :goto_a
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v2, Lexpo/modules/ui/ModalBottomSheetView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v4, v8}, Lexpo/modules/ui/ModalBottomSheetView$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/ui/ModalBottomSheetView;Lexpo/modules/kotlin/views/ComposableScope;I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_11
    return-void
.end method

.method public final getOnDismissRequest$expo_ui_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lexpo/modules/ui/ModalBottomSheetView;->onDismissRequest$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/ui/ModalBottomSheetView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProps()Lexpo/modules/kotlin/views/ComposeProps;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lexpo/modules/ui/ModalBottomSheetView;->getProps()Lexpo/modules/ui/ModalBottomSheetViewProps;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/views/ComposeProps;

    return-object v0
.end method

.method public getProps()Lexpo/modules/ui/ModalBottomSheetViewProps;
    .locals 1

    .line 49
    iget-object v0, p0, Lexpo/modules/ui/ModalBottomSheetView;->props:Lexpo/modules/ui/ModalBottomSheetViewProps;

    return-object v0
.end method

.method public final getSheetState$expo_ui_release()Landroidx/compose/material3/SheetState;
    .locals 1

    .line 52
    iget-object v0, p0, Lexpo/modules/ui/ModalBottomSheetView;->sheetState:Landroidx/compose/material3/SheetState;

    return-object v0
.end method

.method public final hide(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v0, p1, Lexpo/modules/ui/ModalBottomSheetView$hide$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lexpo/modules/ui/ModalBottomSheetView$hide$1;

    iget v1, v0, Lexpo/modules/ui/ModalBottomSheetView$hide$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lexpo/modules/ui/ModalBottomSheetView$hide$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lexpo/modules/ui/ModalBottomSheetView$hide$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/ui/ModalBottomSheetView$hide$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/ui/ModalBottomSheetView$hide$1;-><init>(Lexpo/modules/ui/ModalBottomSheetView;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lexpo/modules/ui/ModalBottomSheetView$hide$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget v2, v0, Lexpo/modules/ui/ModalBottomSheetView$hide$1;->label:I

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

    .line 56
    iget-object p1, p0, Lexpo/modules/ui/ModalBottomSheetView;->composeScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez p1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 57
    :cond_3
    iget-object v2, p0, Lexpo/modules/ui/ModalBottomSheetView;->sheetState:Landroidx/compose/material3/SheetState;

    if-nez v2, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 59
    :cond_4
    :try_start_1
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v4, Lexpo/modules/ui/ModalBottomSheetView$hide$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lexpo/modules/ui/ModalBottomSheetView$hide$2;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lexpo/modules/ui/ModalBottomSheetView$hide$1;->label:I

    invoke-static {p1, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_5

    return-object v1

    .line 66
    :catch_0
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setSheetState$expo_ui_release(Landroidx/compose/material3/SheetState;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lexpo/modules/ui/ModalBottomSheetView;->sheetState:Landroidx/compose/material3/SheetState;

    return-void
.end method
