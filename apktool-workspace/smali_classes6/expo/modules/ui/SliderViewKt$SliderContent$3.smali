.class final Lexpo/modules/ui/SliderViewKt$SliderContent$3;
.super Ljava/lang/Object;
.source "SliderView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/SliderViewKt;->SliderContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SliderProps;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/material3/SliderState;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSliderView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SliderView.kt\nexpo/modules/ui/SliderViewKt$SliderContent$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1#2:124\n*E\n"
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
.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $props:Lexpo/modules/ui/SliderProps;

.field final synthetic $sliderColors:Landroidx/compose/material3/SliderColors;

.field final synthetic $thumbSlotView:Lexpo/modules/ui/SlotView;


# direct methods
.method constructor <init>(Lexpo/modules/ui/SlotView;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/SliderColors;Lexpo/modules/ui/SliderProps;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/ui/SliderViewKt$SliderContent$3;->$thumbSlotView:Lexpo/modules/ui/SlotView;

    iput-object p2, p0, Lexpo/modules/ui/SliderViewKt$SliderContent$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p3, p0, Lexpo/modules/ui/SliderViewKt$SliderContent$3;->$sliderColors:Landroidx/compose/material3/SliderColors;

    iput-object p4, p0, Lexpo/modules/ui/SliderViewKt$SliderContent$3;->$props:Lexpo/modules/ui/SliderProps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Landroidx/compose/material3/SliderState;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/ui/SliderViewKt$SliderContent$3;->invoke(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const-string v0, "sliderState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "C:SliderView.kt#v15e7d"

    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void

    .line 0
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string v0, "expo.modules.ui.SliderContent.<anonymous> (SliderView.kt:98)"

    const v1, -0x3bd31e02

    invoke-static {v1, p3, p1, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 99
    :cond_2
    iget-object p1, p0, Lexpo/modules/ui/SliderViewKt$SliderContent$3;->$thumbSlotView:Lexpo/modules/ui/SlotView;

    if-eqz p1, :cond_3

    const p1, 0x230fc095

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string p1, ""

    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lexpo/modules/kotlin/views/ComposableScope;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lexpo/modules/kotlin/views/ComposableScope;-><init>(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Lexpo/modules/ui/SliderViewKt$SliderContent$3;->$thumbSlotView:Lexpo/modules/ui/SlotView;

    const p3, 0x6c7c655f

    .line 124
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string p3, "*99@3249L9"

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 100
    sget p3, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    sget v1, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->$stable:I

    sget v2, Lexpo/modules/kotlin/views/ExpoComposeView;->$stable:I

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr p3, v1

    invoke-virtual {p1, v0, p2, p3}, Lexpo/modules/ui/SlotView;->Content(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 99
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1

    :cond_3
    const p1, 0x2311145f

    .line 101
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string p1, "101@3301L132"

    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 102
    sget-object v0, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    .line 103
    iget-object v1, p0, Lexpo/modules/ui/SliderViewKt$SliderContent$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 104
    iget-object v3, p0, Lexpo/modules/ui/SliderViewKt$SliderContent$3;->$sliderColors:Landroidx/compose/material3/SliderColors;

    .line 105
    iget-object p1, p0, Lexpo/modules/ui/SliderViewKt$SliderContent$3;->$props:Lexpo/modules/ui/SliderProps;

    invoke-virtual {p1}, Lexpo/modules/ui/SliderProps;->getEnabled()Z

    move-result v4

    const v8, 0x30006

    const/16 v9, 0x12

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v7, p2

    .line 102
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/material3/SliderDefaults;->Thumb-9LiSoMs(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJLandroidx/compose/runtime/Composer;II)V

    .line 101
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-void
.end method
