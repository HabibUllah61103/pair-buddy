.class public final Lexpo/modules/ui/LazyColumnView;
.super Lexpo/modules/kotlin/views/ExpoComposeView;
.source "LazyColumnView.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/views/ExpoComposeView<",
        "Lexpo/modules/ui/LazyColumnProps;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyColumnView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyColumnView.kt\nexpo/modules/ui/LazyColumnView\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,96:1\n122#2:97\n122#2:98\n122#2:99\n122#2:100\n1128#3,6:101\n*S KotlinDebug\n*F\n+ 1 LazyColumnView.kt\nexpo/modules/ui/LazyColumnView\n*L\n76#1:97\n77#1:98\n78#1:99\n79#1:100\n81#1:101,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0011\u0010\u0013\u001a\u00020\u000f*\u00020\u0014H\u0017\u00a2\u0006\u0002\u0010\u0015R\u0014\u0010\t\u001a\u00020\u0002X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/ui/LazyColumnView;",
        "Lexpo/modules/kotlin/views/ExpoComposeView;",
        "Lexpo/modules/ui/LazyColumnProps;",
        "context",
        "Landroid/content/Context;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V",
        "props",
        "getProps",
        "()Lexpo/modules/ui/LazyColumnProps;",
        "composableChildCount",
        "Landroidx/compose/runtime/MutableIntState;",
        "onViewAdded",
        "",
        "child",
        "Landroid/view/View;",
        "onViewRemoved",
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
.field public static final $stable:I


# instance fields
.field private final composableChildCount:Landroidx/compose/runtime/MutableIntState;

.field private final props:Lexpo/modules/ui/LazyColumnProps;


# direct methods
.method public static synthetic $r8$lambda$1MobIvq6FIsfsenmnlIL9ZdcOEw(Lexpo/modules/ui/LazyColumnView;Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/ui/LazyColumnView;->Content$lambda$1$lambda$0(Lexpo/modules/ui/LazyColumnView;Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$48gwdWp9WPm-ymvi-m_8CONmAEQ(Lexpo/modules/ui/LazyColumnView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/ui/LazyColumnView;->Content$lambda$2(Lexpo/modules/ui/LazyColumnView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget v0, Lexpo/modules/kotlin/views/ExpoComposeView;->$stable:I

    sput v0, Lexpo/modules/ui/LazyColumnView;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V
    .locals 9

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

    .line 42
    invoke-direct/range {v1 .. v6}, Lexpo/modules/kotlin/views/ExpoComposeView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    new-instance v2, Lexpo/modules/ui/LazyColumnProps;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lexpo/modules/ui/LazyColumnProps;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v1, Lexpo/modules/ui/LazyColumnView;->props:Lexpo/modules/ui/LazyColumnProps;

    const/4 p1, 0x0

    .line 45
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p1

    iput-object p1, v1, Lexpo/modules/ui/LazyColumnView;->composableChildCount:Landroidx/compose/runtime/MutableIntState;

    return-void
.end method

.method private static final Content$lambda$1$lambda$0(Lexpo/modules/ui/LazyColumnView;Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;
    .locals 9

    const-string v0, "$this$LazyColumn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lexpo/modules/ui/LazyColumnView;->composableChildCount:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableIntState;->getIntValue()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 84
    invoke-virtual {p0, v1}, Lexpo/modules/ui/LazyColumnView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lexpo/modules/kotlin/views/ExpoComposeView;

    if-eqz v3, :cond_0

    check-cast v2, Lexpo/modules/kotlin/views/ExpoComposeView;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    move-object v3, p2

    goto :goto_2

    .line 85
    :cond_1
    new-instance v3, Lexpo/modules/ui/LazyColumnView$Content$1$1$1;

    invoke-direct {v3, p1, v2}, Lexpo/modules/ui/LazyColumnView$Content$1$1$1;-><init>(Lexpo/modules/kotlin/views/ComposableScope;Lexpo/modules/kotlin/views/ExpoComposeView;)V

    const v2, -0x18fc5354

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function3;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/lazy/LazyListScope;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object p2, v3

    goto :goto_0

    .line 93
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Content$lambda$2(Lexpo/modules/ui/LazyColumnView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Lexpo/modules/ui/LazyColumnView;->Content(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public Content(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v8, p3

    const-string v1, "<this>"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x157d2db5    # 5.1129E-26f

    move-object/from16 v2, p2

    .line 58
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    const-string v2, "C(Content)58@2129L21,71@2570L86,80@2969L301,70@2524L746:LazyColumnView.kt#v15e7d"

    invoke-static {v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v8, 0x6

    const/4 v9, 0x4

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

    move v2, v9

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    or-int/2addr v2, v8

    goto :goto_2

    :cond_2
    move v2, v8

    :goto_2
    and-int/lit8 v3, v8, 0x30

    const/16 v10, 0x20

    if-nez v3, :cond_5

    and-int/lit8 v3, v8, 0x40

    if-nez v3, :cond_3

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_3

    :cond_3
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_4

    move v3, v10

    goto :goto_4

    :cond_4
    const/16 v3, 0x10

    :goto_4
    or-int/2addr v2, v3

    :cond_5
    move v11, v2

    and-int/lit8 v2, v11, 0x13

    const/16 v3, 0x12

    if-ne v2, v3, :cond_7

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    .line 71
    :cond_6
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_10

    .line 58
    :cond_7
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    const-string v3, "expo.modules.ui.LazyColumnView.Content (LazyColumnView.kt:57)"

    invoke-static {v1, v11, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_8
    const/4 v12, 0x0

    .line 59
    invoke-static {v6, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentRecomposeScope(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/RecomposeScope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/ui/LazyColumnView;->setRecomposeScope(Landroidx/compose/runtime/RecomposeScope;)V

    .line 60
    invoke-virtual {v0}, Lexpo/modules/ui/LazyColumnView;->getProps()Lexpo/modules/ui/LazyColumnProps;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/ui/LazyColumnProps;->getVerticalArrangement()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/types/Either;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lexpo/modules/ui/convertibles/ArrangementKt;->toComposeArrangement(Lexpo/modules/kotlin/types/Either;)Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v1

    :cond_a
    move-object v13, v1

    .line 62
    invoke-virtual {v0}, Lexpo/modules/ui/LazyColumnView;->getProps()Lexpo/modules/ui/LazyColumnProps;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/ui/LazyColumnProps;->getHorizontalAlignment()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x514d33ab

    if-eq v2, v3, :cond_f

    const v3, 0x188db

    if-eq v2, v3, :cond_d

    const v3, 0x68ac462

    if-eq v2, v3, :cond_b

    goto :goto_6

    :cond_b
    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6

    .line 63
    :cond_c
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    goto :goto_7

    .line 62
    :cond_d
    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_6

    .line 64
    :cond_e
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    goto :goto_7

    .line 62
    :cond_f
    const-string v2, "center"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_6

    .line 65
    :cond_10
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    goto :goto_7

    .line 66
    :cond_11
    :goto_6
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    :goto_7
    move-object v14, v1

    .line 69
    invoke-virtual {v0}, Lexpo/modules/ui/LazyColumnView;->getProps()Lexpo/modules/ui/LazyColumnProps;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/ui/LazyColumnProps;->getContentPadding()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lexpo/modules/ui/ContentPadding;

    .line 72
    sget-object v1, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    invoke-virtual {v0}, Lexpo/modules/ui/LazyColumnView;->getProps()Lexpo/modules/ui/LazyColumnProps;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/LazyColumnProps;->getModifiers()Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lexpo/modules/ui/LazyColumnView;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v3

    invoke-virtual {v0}, Lexpo/modules/ui/LazyColumnView;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    sget v7, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v7, v7, 0x3

    sget v16, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v16, v16, 0x6

    or-int v7, v7, v16

    shl-int/lit8 v12, v11, 0x6

    and-int/lit16 v12, v12, 0x380

    or-int/2addr v7, v12

    invoke-virtual/range {v1 .. v7}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v15, :cond_12

    .line 76
    invoke-virtual {v15}, Lexpo/modules/ui/ContentPadding;->getStart()I

    move-result v2

    goto :goto_8

    :cond_12
    const/4 v2, 0x0

    :goto_8
    int-to-float v2, v2

    .line 97
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    if-eqz v15, :cond_13

    .line 77
    invoke-virtual {v15}, Lexpo/modules/ui/ContentPadding;->getTop()I

    move-result v3

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    :goto_9
    int-to-float v3, v3

    .line 98
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    if-eqz v15, :cond_14

    .line 78
    invoke-virtual {v15}, Lexpo/modules/ui/ContentPadding;->getEnd()I

    move-result v5

    goto :goto_a

    :cond_14
    const/4 v5, 0x0

    :goto_a
    int-to-float v5, v5

    .line 99
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    if-eqz v15, :cond_15

    .line 79
    invoke-virtual {v15}, Lexpo/modules/ui/ContentPadding;->getBottom()I

    move-result v7

    goto :goto_b

    :cond_15
    const/4 v7, 0x0

    :goto_b
    int-to-float v7, v7

    .line 100
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 75
    invoke-static {v2, v3, v5, v7}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v2

    const v3, -0x615d173a

    .line 74
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "CC(remember):LazyColumnView.kt#9igjgp"

    invoke-static {v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v11, 0x70

    const/4 v5, 0x1

    if-eq v3, v10, :cond_17

    and-int/lit8 v3, v11, 0x40

    if-eqz v3, :cond_16

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_c

    :cond_16
    const/4 v3, 0x0

    goto :goto_d

    :cond_17
    :goto_c
    move v3, v5

    :goto_d
    and-int/lit8 v7, v11, 0xe

    if-eq v7, v9, :cond_19

    and-int/lit8 v7, v11, 0x8

    if-eqz v7, :cond_18

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_e

    :cond_18
    const/4 v12, 0x0

    goto :goto_f

    :cond_19
    :goto_e
    move v12, v5

    :goto_f
    or-int/2addr v3, v12

    .line 101
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_1a

    .line 102
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_1b

    .line 81
    :cond_1a
    new-instance v5, Lexpo/modules/ui/LazyColumnView$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v4}, Lexpo/modules/ui/LazyColumnView$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/ui/LazyColumnView;Lexpo/modules/kotlin/views/ComposableScope;)V

    .line 104
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 81
    :cond_1b
    move-object/from16 v18, v5

    check-cast v18, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v20, 0x0

    const/16 v21, 0x1ca

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v1

    move-object v11, v2

    move-object/from16 v19, v6

    .line 71
    invoke-static/range {v9 .. v21}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1c
    :goto_10
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_1d

    new-instance v2, Lexpo/modules/ui/LazyColumnView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v4, v8}, Lexpo/modules/ui/LazyColumnView$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/ui/LazyColumnView;Lexpo/modules/kotlin/views/ComposableScope;I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1d
    return-void
.end method

.method public bridge synthetic getProps()Lexpo/modules/kotlin/views/ComposeProps;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lexpo/modules/ui/LazyColumnView;->getProps()Lexpo/modules/ui/LazyColumnProps;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/views/ComposeProps;

    return-object v0
.end method

.method public getProps()Lexpo/modules/ui/LazyColumnProps;
    .locals 1

    .line 43
    iget-object v0, p0, Lexpo/modules/ui/LazyColumnView;->props:Lexpo/modules/ui/LazyColumnProps;

    return-object v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lexpo/modules/kotlin/views/ExpoComposeView;->onViewAdded(Landroid/view/View;)V

    .line 49
    iget-object p1, p0, Lexpo/modules/ui/LazyColumnView;->composableChildCount:Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {p0}, Lexpo/modules/ui/LazyColumnView;->getChildCount()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lexpo/modules/kotlin/views/ExpoComposeView;->onViewRemoved(Landroid/view/View;)V

    .line 54
    iget-object p1, p0, Lexpo/modules/ui/LazyColumnView;->composableChildCount:Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {p0}, Lexpo/modules/ui/LazyColumnView;->getChildCount()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method
