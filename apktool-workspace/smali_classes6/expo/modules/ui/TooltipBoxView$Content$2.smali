.class final Lexpo/modules/ui/TooltipBoxView$Content$2;
.super Ljava/lang/Object;
.source "TooltipView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/TooltipBoxView;->Content(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltipView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TooltipView.kt\nexpo/modules/ui/TooltipBoxView$Content$2\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,178:1\n1128#2,6:179\n*S KotlinDebug\n*F\n+ 1 TooltipView.kt\nexpo/modules/ui/TooltipBoxView$Content$2\n*L\n173#1:179,6\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/ui/TooltipBoxView;


# direct methods
.method public static synthetic $r8$lambda$91N4ktFU2VUc7a8o1a72SbS9sY0(Lexpo/modules/kotlin/views/ExpoComposeView;)Z
    .locals 0

    invoke-static {p0}, Lexpo/modules/ui/TooltipBoxView$Content$2;->invoke$lambda$1$lambda$0(Lexpo/modules/kotlin/views/ExpoComposeView;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lexpo/modules/ui/TooltipBoxView;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/ui/TooltipBoxView$Content$2;->this$0:Lexpo/modules/ui/TooltipBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lexpo/modules/kotlin/views/ExpoComposeView;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-static {p0}, Lexpo/modules/ui/SlotViewKt;->isSlotView(Lexpo/modules/kotlin/views/ExpoComposeView;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/TooltipBoxView$Content$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const-string v0, "C172@7017L19,172@6980L57:TooltipView.kt#v15e7d"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void

    .line 0
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "expo.modules.ui.TooltipBoxView.Content.<anonymous> (TooltipView.kt:172)"

    const v2, 0x21e5e223

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 173
    :cond_2
    iget-object p2, p0, Lexpo/modules/ui/TooltipBoxView$Content$2;->this$0:Lexpo/modules/ui/TooltipBoxView;

    new-instance v0, Lexpo/modules/kotlin/views/ComposableScope;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lexpo/modules/kotlin/views/ComposableScope;-><init>(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v1, 0x6e3c21fe

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "CC(remember):TooltipView.kt#9igjgp"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 179
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 180
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 181
    new-instance v1, Lexpo/modules/ui/TooltipBoxView$Content$2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lexpo/modules/ui/TooltipBoxView$Content$2$$ExternalSyntheticLambda0;-><init>()V

    .line 182
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 173
    :cond_3
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget v2, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {p2, v0, v1, p1, v2}, Lexpo/modules/ui/TooltipBoxView;->Children(Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-void
.end method
