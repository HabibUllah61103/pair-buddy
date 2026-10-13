.class final Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2;
.super Ljava/lang/Object;
.source "DockedSearchBarView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/DockedSearchBarViewKt;->DockedSearchBarContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/DockedSearchBarProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nDockedSearchBarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DockedSearchBarView.kt\nexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,54:1\n1128#2,6:55\n*S KotlinDebug\n*F\n+ 1 DockedSearchBarView.kt\nexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2\n*L\n42#1:55,6\n*E\n"
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
.field final synthetic $searchBarState:Landroidx/compose/material3/SearchBarState;

.field final synthetic $textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

.field final synthetic $this_DockedSearchBarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;


# direct methods
.method public static synthetic $r8$lambda$MUX8Hij_LydsSqpZ7pdkvx9ItPI(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2;->invoke$lambda$1$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lexpo/modules/kotlin/views/FunctionalComposableScope;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2;->$textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    iput-object p2, p0, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2;->$searchBarState:Landroidx/compose/material3/SearchBarState;

    iput-object p3, p0, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2;->$this_DockedSearchBarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "C41@1415L2,42@1441L97,45@1562L97,38@1302L365:DockedSearchBarView.kt#v15e7d"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void

    .line 0
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v4, "expo.modules.ui.DockedSearchBarContent.<anonymous> (DockedSearchBarView.kt:38)"

    const v5, -0x125798b3

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 39
    :cond_2
    sget-object v2, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    move-object v3, v2

    .line 41
    iget-object v2, v0, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2;->$textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    move-object v4, v3

    .line 40
    iget-object v3, v0, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2;->$searchBarState:Landroidx/compose/material3/SearchBarState;

    const v5, 0x6e3c21fe

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "CC(remember):DockedSearchBarView.kt#9igjgp"

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 55
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 56
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 57
    new-instance v5, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2$$ExternalSyntheticLambda0;-><init>()V

    .line 58
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 42
    :cond_3
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 43
    new-instance v6, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2$2;

    iget-object v7, v0, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2;->$this_DockedSearchBarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

    invoke-direct {v6, v7}, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2$2;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;)V

    const v7, 0x621a0031

    const/4 v8, 0x1

    const/16 v9, 0x36

    invoke-static {v7, v8, v6, v1, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 46
    new-instance v7, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2$3;

    iget-object v10, v0, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2;->$this_DockedSearchBarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

    invoke-direct {v7, v10}, Lexpo/modules/ui/DockedSearchBarViewKt$DockedSearchBarContent$2$3;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;)V

    const v10, -0x43e4e50e

    invoke-static {v10, v8, v7, v1, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lkotlin/jvm/functions/Function2;

    sget v25, Landroidx/compose/material3/SearchBarDefaults;->$stable:I

    const v26, 0xffe78

    move-object v1, v4

    move-object v4, v5

    const/4 v5, 0x0

    move-object v9, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v23, 0x6c00180

    const/16 v24, 0x0

    move-object/from16 v22, p1

    .line 39
    invoke-virtual/range {v1 .. v26}, Landroidx/compose/material3/SearchBarDefaults;->InputField(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;IIII)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-void
.end method
