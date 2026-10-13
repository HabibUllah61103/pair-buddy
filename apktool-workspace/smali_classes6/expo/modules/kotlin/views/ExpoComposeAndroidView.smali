.class public final Lexpo/modules/kotlin/views/ExpoComposeAndroidView;
.super Lexpo/modules/kotlin/views/ExpoComposeView;
.source "ExpoComposeAndroidView.kt"

# interfaces
.implements Lexpo/modules/kotlin/views/RNHostViewInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/views/ExpoComposeView<",
        "Lexpo/modules/kotlin/views/ComposeProps;",
        ">;",
        "Lexpo/modules/kotlin/views/RNHostViewInterface;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoComposeAndroidView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoComposeAndroidView.kt\nexpo/modules/kotlin/views/ExpoComposeAndroidView\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,41:1\n1225#2,6:42\n169#3:48\n169#3:49\n*S KotlinDebug\n*F\n+ 1 ExpoComposeAndroidView.kt\nexpo/modules/kotlin/views/ExpoComposeAndroidView\n*L\n33#1:42,6\n35#1:48\n36#1:49\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0011\u0010\u0010\u001a\u00020\u0011*\u00020\u0012H\u0017\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/kotlin/views/ExpoComposeAndroidView;",
        "Lexpo/modules/kotlin/views/ExpoComposeView;",
        "Lexpo/modules/kotlin/views/ComposeProps;",
        "Lexpo/modules/kotlin/views/RNHostViewInterface;",
        "view",
        "Landroid/view/View;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "<init>",
        "(Landroid/view/View;Lexpo/modules/kotlin/AppContext;)V",
        "matchContents",
        "",
        "getMatchContents",
        "()Z",
        "setMatchContents",
        "(Z)V",
        "Content",
        "",
        "Lexpo/modules/kotlin/views/ComposableScope;",
        "(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V",
        "expo-modules-core_release"
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
.field public static final $stable:I = 0x8


# instance fields
.field private matchContents:Z

.field private final view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$9j6VfZzkbxj4QDneZmYMAsaQEAc(Lexpo/modules/kotlin/views/ExpoComposeAndroidView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/kotlin/views/ExpoComposeAndroidView;->Content$lambda$2(Lexpo/modules/kotlin/views/ExpoComposeAndroidView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SpKoQggYwiSlKffb8p7kIYOtcLc(Lexpo/modules/kotlin/views/ExpoComposeAndroidView;Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/views/ExpoComposeAndroidView;->Content$lambda$1$lambda$0(Lexpo/modules/kotlin/views/ExpoComposeAndroidView;Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lexpo/modules/kotlin/AppContext;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "getContext(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lexpo/modules/kotlin/views/ExpoComposeView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    iput-object p1, v1, Lexpo/modules/kotlin/views/ExpoComposeAndroidView;->view:Landroid/view/View;

    return-void
.end method

.method private static final Content$lambda$1$lambda$0(Lexpo/modules/kotlin/views/ExpoComposeAndroidView;Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object p0, p0, Lexpo/modules/kotlin/views/ExpoComposeAndroidView;->view:Landroid/view/View;

    return-object p0
.end method

.method private static final Content$lambda$2(Lexpo/modules/kotlin/views/ExpoComposeAndroidView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Lexpo/modules/kotlin/views/ExpoComposeAndroidView;->Content(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public Content(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x8045c5e

    .line 31
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    const-string p2, "C(Content)32@970L8,31@941L168:ExpoComposeAndroidView.kt#sri11g"

    invoke-static {v4, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p2, p3, 0x30

    const/16 v1, 0x10

    if-nez p2, :cond_1

    invoke-interface {v4, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x20

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    or-int/2addr p2, p3

    goto :goto_1

    :cond_1
    move p2, p3

    :goto_1
    and-int/lit8 v2, p2, 0x11

    if-ne v2, v1, :cond_3

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 32
    :cond_2
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    .line 31
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v2, "expo.modules.kotlin.views.ExpoComposeAndroidView.Content (ExpoComposeAndroidView.kt:30)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    const p2, 0x4c5de2

    invoke-interface {v4, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string p2, "CC(remember):ExpoComposeAndroidView.kt#9igjgp"

    invoke-static {v4, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v4, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    .line 42
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_5

    .line 43
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne v0, p2, :cond_6

    .line 33
    :cond_5
    new-instance v0, Lexpo/modules/kotlin/views/ExpoComposeAndroidView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/views/ExpoComposeAndroidView$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/views/ExpoComposeAndroidView;)V

    .line 45
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 33
    :cond_6
    move-object v1, v0

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 34
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p2, Landroidx/compose/ui/Modifier;

    .line 35
    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    iget-object v2, p0, Lexpo/modules/kotlin/views/ExpoComposeAndroidView;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/facebook/react/uimanager/PixelUtil;->pxToDp(F)F

    move-result v0

    .line 48
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 36
    sget-object v2, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    iget-object v3, p0, Lexpo/modules/kotlin/views/ExpoComposeAndroidView;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/facebook/react/uimanager/PixelUtil;->pxToDp(F)F

    move-result v2

    .line 49
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 34
    invoke-static {p2, v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v3, 0x0

    .line 32
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    :goto_3
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance v0, Lexpo/modules/kotlin/views/ExpoComposeAndroidView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3}, Lexpo/modules/kotlin/views/ExpoComposeAndroidView$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/views/ExpoComposeAndroidView;Lexpo/modules/kotlin/views/ComposableScope;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_8
    return-void
.end method

.method public getMatchContents()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lexpo/modules/kotlin/views/ExpoComposeAndroidView;->matchContents:Z

    return v0
.end method

.method public setMatchContents(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lexpo/modules/kotlin/views/ExpoComposeAndroidView;->matchContents:Z

    return-void
.end method
