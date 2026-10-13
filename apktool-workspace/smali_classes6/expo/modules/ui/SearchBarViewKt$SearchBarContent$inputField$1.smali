.class final Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1;
.super Ljava/lang/Object;
.source "SearchBarView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/SearchBarViewKt;->SearchBarContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SearchBarProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nSearchBarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchBarView.kt\nexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,61:1\n1128#2,6:62\n*S KotlinDebug\n*F\n+ 1 SearchBarView.kt\nexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1\n*L\n30#1:62,6\n*E\n"
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
.field final synthetic $onSearch:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lexpo/modules/ui/GenericEventPayload1<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $searchBarState:Landroidx/compose/material3/SearchBarState;

.field final synthetic $textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

.field final synthetic $this_SearchBarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;


# direct methods
.method public static synthetic $r8$lambda$hC6xyW2Wy53Q_YOxcsSArjy-wug(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1;->invoke$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lkotlin/jvm/functions/Function1;Lexpo/modules/kotlin/views/FunctionalComposableScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/input/TextFieldState;",
            "Landroidx/compose/material3/SearchBarState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/ui/GenericEventPayload1<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1;->$textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    iput-object p2, p0, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1;->$searchBarState:Landroidx/compose/material3/SearchBarState;

    iput-object p3, p0, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1;->$onSearch:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1;->$this_SearchBarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lexpo/modules/ui/GenericEventPayload1;

    invoke-direct {v0, p1}, Lexpo/modules/ui/GenericEventPayload1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "C29@1106L57,30@1187L97,26@993L299:SearchBarView.kt#v15e7d"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 27
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

    const-string v4, "expo.modules.ui.SearchBarContent.<anonymous> (SearchBarView.kt:26)"

    const v5, -0x12e3bd81

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 27
    :cond_2
    sget-object v2, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    move-object v3, v2

    .line 29
    iget-object v2, v0, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1;->$textFieldState:Landroidx/compose/foundation/text/input/TextFieldState;

    move-object v4, v3

    .line 28
    iget-object v3, v0, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1;->$searchBarState:Landroidx/compose/material3/SearchBarState;

    const v5, 0x4c5de2

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "CC(remember):SearchBarView.kt#9igjgp"

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object v5, v0, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1;->$onSearch:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 30
    iget-object v6, v0, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1;->$onSearch:Lkotlin/jvm/functions/Function1;

    .line 62
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_3

    .line 63
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v7, v5, :cond_4

    .line 30
    :cond_3
    new-instance v7, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 65
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 30
    :cond_4
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 31
    new-instance v5, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1$2;

    iget-object v6, v0, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1;->$this_SearchBarContent:Lexpo/modules/kotlin/views/FunctionalComposableScope;

    invoke-direct {v5, v6}, Lexpo/modules/ui/SearchBarViewKt$SearchBarContent$inputField$1$2;-><init>(Lexpo/modules/kotlin/views/FunctionalComposableScope;)V

    const/16 v6, 0x36

    const v8, -0x32dc3d9d

    const/4 v9, 0x1

    invoke-static {v8, v9, v5, v1, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function2;

    sget v25, Landroidx/compose/material3/SearchBarDefaults;->$stable:I

    const v26, 0xfff78

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v4

    move-object v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

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

    const/high16 v23, 0xc00000

    const/16 v24, 0x0

    move-object/from16 v22, p1

    .line 27
    invoke-virtual/range {v1 .. v26}, Landroidx/compose/material3/SearchBarDefaults;->InputField(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;IIII)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    return-void
.end method
