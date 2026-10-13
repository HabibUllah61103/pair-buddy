.class final Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1$2;
.super Ljava/lang/Object;
.source "SearchBarView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nSearchBarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchBarView.kt\nexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1$2\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,61:1\n1128#2,6:62\n*S KotlinDebug\n*F\n+ 1 SearchBarView.kt\nexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1$2\n*L\n32#1:62,6\n*E\n"
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
.field final synthetic $this_SearchBarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;


# direct methods
.method public static synthetic $r8$lambda$Au2EU6dJWaiCXc7l8ZeJHUDubMg(Lexpo/modules/kotlin/views/ExpoComposeView;)Z
    .locals 0

    invoke-static {p0}, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1$2;->invoke$lambda$1$lambda$0(Lexpo/modules/kotlin/views/ExpoComposeView;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1$2;->$this_SearchBarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lexpo/modules/kotlin/views/ExpoComposeView;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string v0, "placeholder"

    invoke-static {p0, v0}, Lexpo/modules/ui/SlotViewKt;->isSlotWithName(Lexpo/modules/kotlin/views/ExpoComposeView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const-string v0, "C31@1236L37,31@1199L75:SearchBarView.kt#v15e7d"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
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

    const-string v1, "expo.modules.ui.SearchBarContent.<anonymous>.<anonymous> (SearchBarView.kt:31)"

    const v2, -0x32dc3d9d

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 32
    :cond_2
    iget-object p2, p0, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1$2;->$this_SearchBarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

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

    const-string v1, "CC(remember):SearchBarView.kt#9igjgp"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 62
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 63
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 64
    new-instance v1, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1$2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1$2$$ExternalSyntheticLambda0;-><init>()V

    .line 65
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 32
    :cond_3
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget v2, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    or-int/lit8 v2, v2, 0x30

    sget v3, Lexpo/modules/kotlin/views/FunctionalComposableScope;->$stable:I

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    invoke-virtual {p2, v0, v1, p1, v2}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->Children(Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-void
.end method
