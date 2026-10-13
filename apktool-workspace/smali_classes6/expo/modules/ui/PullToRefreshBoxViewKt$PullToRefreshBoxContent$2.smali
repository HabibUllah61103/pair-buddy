.class final Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;
.super Ljava/lang/Object;
.source "PullToRefreshBoxView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/PullToRefreshBoxViewKt;->PullToRefreshBoxContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/PullToRefreshBoxProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $isRefreshing:Z

.field final synthetic $props:Lexpo/modules/ui/PullToRefreshBoxProps;

.field final synthetic $pullToRefreshState:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

.field final synthetic $this_PullToRefreshBoxContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;


# direct methods
.method constructor <init>(Lexpo/modules/ui/PullToRefreshBoxProps;Lexpo/modules/kotlin/views/FunctionalComposableScope;Landroidx/compose/material3/pulltorefresh/PullToRefreshState;Z)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;->$props:Lexpo/modules/ui/PullToRefreshBoxProps;

    iput-object p2, p0, Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;->$this_PullToRefreshBoxContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

    iput-object p3, p0, Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;->$pullToRefreshState:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    iput-boolean p4, p0, Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;->$isRefreshing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Landroidx/compose/foundation/layout/BoxScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;->invoke(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move/from16 v1, p3

    const-string v2, "$this$PullToRefreshBox"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C47@1888L93,44@1761L439:PullToRefreshBoxView.kt#v15e7d"

    invoke-static {v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void

    .line 0
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "expo.modules.ui.PullToRefreshBoxContent.<anonymous> (PullToRefreshBoxView.kt:44)"

    const v4, 0x214edbda

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 45
    :cond_2
    sget-object v8, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    .line 48
    sget-object v1, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    iget-object v2, v0, Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;->$props:Lexpo/modules/ui/PullToRefreshBoxProps;

    invoke-virtual {v2}, Lexpo/modules/ui/PullToRefreshBoxProps;->getIndicator()Lexpo/modules/ui/PullToRefreshIndicatorProps;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/ui/PullToRefreshIndicatorProps;->getModifiers()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;->$this_PullToRefreshBoxContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

    invoke-virtual {v3}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v3

    iget-object v4, v0, Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;->$this_PullToRefreshBoxContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

    invoke-virtual {v4}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getComposableScope()Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object v4

    iget-object v5, v0, Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;->$this_PullToRefreshBoxContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

    invoke-virtual {v5}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getGlobalEventDispatcher()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    sget v7, Lexpo/modules/kotlin/AppContext;->$stable:I

    shl-int/lit8 v7, v7, 0x3

    sget v9, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v7, v9

    invoke-virtual/range {v1 .. v7}, Lexpo/modules/ui/ModifierRegistry;->applyModifiers(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 49
    iget-object v1, v0, Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;->$props:Lexpo/modules/ui/PullToRefreshBoxProps;

    invoke-virtual {v1}, Lexpo/modules/ui/PullToRefreshBoxProps;->getIndicator()Lexpo/modules/ui/PullToRefreshIndicatorProps;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/ui/PullToRefreshIndicatorProps;->getColor()Landroid/graphics/Color;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    const v2, 0x9076f22

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "48@2052L11"

    invoke-static {v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v1, :cond_3

    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v6, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v1

    :goto_1
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 50
    iget-object v3, v0, Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;->$props:Lexpo/modules/ui/PullToRefreshBoxProps;

    invoke-virtual {v3}, Lexpo/modules/ui/PullToRefreshBoxProps;->getIndicator()Lexpo/modules/ui/PullToRefreshIndicatorProps;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/ui/PullToRefreshIndicatorProps;->getContainerColor()Landroid/graphics/Color;

    move-result-object v3

    invoke-static {v3}, Lexpo/modules/ui/UtilsKt;->getComposeOrNull(Landroid/graphics/Color;)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    const v5, 0x9077b98

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "49@2160L11"

    invoke-static {v6, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v3, :cond_4

    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v3, v6, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material3/ColorScheme;->getSurfaceContainerHigh-0d7_KjU()J

    move-result-wide v9

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v9

    :goto_2
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-wide v14, v1

    move-object v1, v8

    move-wide v7, v14

    .line 47
    iget-object v2, v0, Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;->$pullToRefreshState:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    .line 46
    iget-boolean v3, v0, Lexpo/modules/ui/PullToRefreshBoxViewKt$PullToRefreshBoxContent$2;->$isRefreshing:Z

    .line 49
    sget v5, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->$stable:I

    shl-int/lit8 v12, v5, 0x15

    const/16 v13, 0x60

    move-wide v5, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p2

    .line 45
    invoke-virtual/range {v1 .. v13}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->LoadingIndicator-4eDdRP8(Landroidx/compose/material3/pulltorefresh/PullToRefreshState;ZLandroidx/compose/ui/Modifier;JJFFLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    return-void
.end method
