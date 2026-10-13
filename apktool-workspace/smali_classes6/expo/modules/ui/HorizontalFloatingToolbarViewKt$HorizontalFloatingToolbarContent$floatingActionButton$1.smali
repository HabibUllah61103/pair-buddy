.class final Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1;
.super Ljava/lang/Object;
.source "HorizontalFloatingToolbarView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/HorizontalFloatingToolbarViewKt;->HorizontalFloatingToolbarContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/HorizontalFloatingToolbarProps;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
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
.field final synthetic $fabOnClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $props:Lexpo/modules/ui/HorizontalFloatingToolbarProps;

.field final synthetic $this_HorizontalFloatingToolbarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;


# direct methods
.method constructor <init>(Lexpo/modules/ui/HorizontalFloatingToolbarProps;Lkotlin/jvm/functions/Function0;Lexpo/modules/kotlin/views/FunctionalComposableScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/ui/HorizontalFloatingToolbarProps;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1;->$props:Lexpo/modules/ui/HorizontalFloatingToolbarProps;

    iput-object p2, p0, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1;->$fabOnClick:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1;->$this_HorizontalFloatingToolbarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13

    move v0, p2

    const-string v1, "C:HorizontalFloatingToolbarView.kt#v15e7d"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void

    .line 0
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    const v1, -0x5d9641f8

    const-string v3, "expo.modules.ui.HorizontalFloatingToolbarContent.<anonymous> (HorizontalFloatingToolbarView.kt:39)"

    invoke-static {v1, p2, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 40
    :cond_2
    iget-object v0, p0, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1;->$props:Lexpo/modules/ui/HorizontalFloatingToolbarProps;

    invoke-virtual {v0}, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->getVariant()Lexpo/modules/ui/HorizontalFloatingToolbarVariant;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lexpo/modules/ui/HorizontalFloatingToolbarVariant;->ordinal()I

    move-result v0

    aget v2, v1, v0

    :goto_1
    const/high16 v0, 0x180000

    const/16 v1, 0x36

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const v2, -0x510d9670

    .line 41
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "42@1647L102,40@1581L168"

    invoke-static {p1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v2, v0

    sget-object v0, Landroidx/compose/material3/FloatingToolbarDefaults;->INSTANCE:Landroidx/compose/material3/FloatingToolbarDefaults;

    .line 42
    iget-object v4, p0, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1;->$fabOnClick:Lkotlin/jvm/functions/Function0;

    .line 43
    new-instance v5, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1$1;

    iget-object v6, p0, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1;->$this_HorizontalFloatingToolbarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

    invoke-direct {v5, v6}, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1$1;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;)V

    const v6, 0x1a73f721

    invoke-static {v6, v3, v5, p1, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    sget v1, Landroidx/compose/material3/FloatingToolbarDefaults;->$stable:I

    shl-int/lit8 v1, v1, 0x15

    or-int v11, v1, v2

    const/16 v12, 0x3e

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v10, p1

    .line 41
    invoke-virtual/range {v0 .. v12}, Landroidx/compose/material3/FloatingToolbarDefaults;->VibrantFloatingActionButton-vRFhKjU(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_2

    :cond_4
    move v2, v0

    const v0, -0x510d7c7f

    .line 47
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "46@1840L102,46@1789L153"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material3/FloatingToolbarDefaults;->INSTANCE:Landroidx/compose/material3/FloatingToolbarDefaults;

    iget-object v4, p0, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1;->$fabOnClick:Lkotlin/jvm/functions/Function0;

    new-instance v5, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1$2;

    iget-object v6, p0, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1;->$this_HorizontalFloatingToolbarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

    invoke-direct {v5, v6}, Lexpo/modules/ui/HorizontalFloatingToolbarViewKt$HorizontalFloatingToolbarContent$floatingActionButton$1$2;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;)V

    const v6, 0x6a60d4e7

    invoke-static {v6, v3, v5, p1, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    sget v1, Landroidx/compose/material3/FloatingToolbarDefaults;->$stable:I

    shl-int/lit8 v1, v1, 0x15

    or-int v11, v1, v2

    const/16 v12, 0x3e

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v10, p1

    invoke-virtual/range {v0 .. v12}, Landroidx/compose/material3/FloatingToolbarDefaults;->StandardFloatingActionButton-vRFhKjU(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    return-void
.end method
