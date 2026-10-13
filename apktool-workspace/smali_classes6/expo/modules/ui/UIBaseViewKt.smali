.class public final Lexpo/modules/ui/UIBaseViewKt;
.super Ljava/lang/Object;
.source "UIBaseView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUIBaseView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIBaseView.kt\nexpo/modules/ui/UIBaseViewKt\n+ 2 ModuleDefinitionBuilderComposeExtension.kt\nexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose\n*L\n1#1,16:1\n50#2,4:17\n*S KotlinDebug\n*F\n+ 1 UIBaseView.kt\nexpo/modules/ui/UIBaseViewKt\n*L\n14#1:17,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u007f\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u001f\u0008\u0002\u0010\u0007\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\u00010\u0008\u00a2\u0006\u0002\u0008\n23\u0008\u0008\u0010\u000b\u001a-\u0012\u0004\u0012\u00020\r\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\nH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "ExpoUIView",
        "",
        "Props",
        "Lexpo/modules/kotlin/views/ComposeProps;",
        "Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose;",
        "name",
        "",
        "events",
        "Lkotlin/Function1;",
        "Lexpo/modules/kotlin/views/ComposeViewFunctionDefinitionBuilder;",
        "Lkotlin/ExtensionFunctionType;",
        "viewFunction",
        "Lkotlin/Function2;",
        "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
        "Lkotlin/ParameterName;",
        "props",
        "Landroidx/compose/runtime/Composable;",
        "(Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "expo-ui_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic ExpoUIView(Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Props::",
            "Lexpo/modules/kotlin/views/ComposeProps;",
            ">(",
            "Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/kotlin/views/ComposeViewFunctionDefinitionBuilder<",
            "TProps;>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
            "-TProps;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewFunction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lexpo/modules/kotlin/views/ComposeViewFunctionDefinitionBuilder;

    const/4 v1, 0x4

    const-string v2, "Props"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Lexpo/modules/kotlin/views/ComposeProps;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3}, Lexpo/modules/kotlin/views/ComposeViewFunctionDefinitionBuilder;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function4;)V

    .line 18
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ComposeViewFunctionDefinitionBuilder;->build()Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose;->registerViewDefinition(Lexpo/modules/kotlin/views/ViewManagerDefinition;)V

    return-void
.end method

.method public static synthetic ExpoUIView$default(Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 11
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object p2, Lexpo/modules/ui/UIBaseViewKt$ExpoUIView$1;->INSTANCE:Lexpo/modules/ui/UIBaseViewKt$ExpoUIView$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 9
    :cond_0
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "name"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "events"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "viewFunction"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance p4, Lexpo/modules/kotlin/views/ComposeViewFunctionDefinitionBuilder;

    const/4 p5, 0x4

    const-string v0, "Props"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p5, Lexpo/modules/kotlin/views/ComposeProps;

    invoke-static {p5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p5

    invoke-direct {p4, p1, p5, p3}, Lexpo/modules/kotlin/views/ComposeViewFunctionDefinitionBuilder;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function4;)V

    .line 18
    invoke-interface {p2, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p4}, Lexpo/modules/kotlin/views/ComposeViewFunctionDefinitionBuilder;->build()Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose;->registerViewDefinition(Lexpo/modules/kotlin/views/ViewManagerDefinition;)V

    return-void
.end method
