.class public final Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;
.super Ljava/lang/Object;
.source "SuperwallPaywallActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperwallPaywallActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperwallPaywallActivity.kt\ncom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,956:1\n2163#2,2:957\n*S KotlinDebug\n*F\n+ 1 SuperwallPaywallActivity.kt\ncom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion\n*L\n120#1:957,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00072\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0014\u0010\u0019\u001a\u00020\u0011*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;",
        "",
        "<init>",
        "()V",
        "REQUEST_CODE_NOTIFICATION_PERMISSION",
        "",
        "NOTIFICATION_CHANNEL_ID",
        "",
        "NOTIFICATION_CHANNEL_NAME",
        "NOTIFICATION_CHANNEL_DESCRIPTION",
        "VIEW_KEY",
        "PRESENTATION_STYLE_KEY",
        "IS_LIGHT_BACKGROUND_KEY",
        "ACTIVE_PAYWALL_TAG",
        "DEFAULT_DELAY",
        "",
        "startWithView",
        "",
        "context",
        "Landroid/content/Context;",
        "view",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "key",
        "presentationStyleOverride",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
        "prepareViewForDisplay",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$prepareViewForDisplay(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;->prepareViewForDisplay(Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;)V

    return-void
.end method

.method private final prepareViewForDisplay(Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;)V
    .locals 6

    .line 115
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getWebView$superwall_release()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->enableBackgroundRendering()V

    .line 116
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getWebView$superwall_release()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->attach(Landroid/view/ViewGroup;)V

    .line 117
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeViewStore()Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;

    move-result-object v0

    .line 120
    invoke-static {v1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 957
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 120
    instance-of v3, v2, Lcom/superwall/sdk/paywall/view/LoadingView;

    if-nez v3, :cond_3

    instance-of v2, v2, Lcom/superwall/sdk/paywall/view/ShimmerView;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 122
    :cond_1
    const-string v1, "LoadingView"

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;->retrieveView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.superwall.sdk.paywall.view.LoadingView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/LoadingView;

    .line 123
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/Paywall;->getPresentation()Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->getStyle()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    move-result-object v2

    .line 125
    instance-of v2, v2, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;

    if-eqz v2, :cond_2

    .line 126
    new-instance v2, Lcom/superwall/sdk/paywall/view/ShimmerView;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/superwall/sdk/paywall/view/ShimmerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 127
    invoke-virtual {v2, v3}, Lcom/superwall/sdk/paywall/view/ShimmerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 134
    :cond_2
    const-string v2, "ShimmerView"

    invoke-virtual {v0, v2}, Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;->retrieveView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.superwall.sdk.paywall.view.ShimmerView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/superwall/sdk/paywall/view/ShimmerView;

    .line 137
    :goto_0
    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallShimmerView;

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;

    invoke-virtual {p1, v2, v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->setupWith(Lcom/superwall/sdk/paywall/view/PaywallShimmerView;Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;)V

    .line 139
    :cond_3
    :goto_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p2, p1}, Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;->storeView(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic startWithView$default(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;Landroid/content/Context;Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 88
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 85
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;->startWithView(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;)V

    return-void
.end method


# virtual methods
.method public final startWithView(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;

    const/4 v7, 0x0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;Landroid/content/Context;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
