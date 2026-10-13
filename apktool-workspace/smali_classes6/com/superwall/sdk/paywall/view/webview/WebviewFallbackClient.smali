.class public final Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;
.super Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;
.source "WebviewFallbackClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$MaxAttemptsReachedException;,
        Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebviewFallbackClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebviewFallbackClient.kt\ncom/superwall/sdk/paywall/view/webview/WebviewFallbackClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,233:1\n1#2:234\n1734#3,3:235\n774#3:238\n865#3,2:239\n230#4,5:241\n230#4,5:246\n*S KotlinDebug\n*F\n+ 1 WebviewFallbackClient.kt\ncom/superwall/sdk/paywall/view/webview/WebviewFallbackClient\n*L\n106#1:235,3\n109#1:238\n109#1:239,2\n160#1:241,5\n228#1:246,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u001e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0002:;Bv\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u0012\'\u0010\r\u001a#\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n0\u000e\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J&\u0010!\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u001c\u0010&\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\r\u0010\'\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008(J\u001c\u0010)\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J)\u0010*\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u00192\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\t0,2\u0008\u0008\u0002\u0010-\u001a\u00020\u0019H\u0082\u0010J\u0016\u0010.\u001a\u00020\t2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\t0,H\u0002J&\u00100\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0008\u00101\u001a\u0004\u0018\u0001022\u0008\u00103\u001a\u0004\u0018\u000104H\u0016J\r\u00105\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u00086J$\u00107\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0008\u00101\u001a\u0004\u0018\u0001022\u0006\u00108\u001a\u000209H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\r\u001a#\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;",
        "Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;",
        "config",
        "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;",
        "ioScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "mainScope",
        "loadUrl",
        "Lkotlin/Function1;",
        "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;",
        "",
        "stopLoading",
        "Lkotlin/Function0;",
        "onCrashed",
        "Lkotlin/Function2;",
        "Landroid/webkit/WebView;",
        "Lkotlin/ParameterName;",
        "name",
        "view",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "localResourceHandler",
        "Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;",
        "<init>",
        "(Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;)V",
        "failureCount",
        "",
        "urls",
        "",
        "untriedUrls",
        "",
        "timeoutFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;",
        "onPageStarted",
        "url",
        "",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onLoadResource",
        "nextUrl",
        "nextUrl$superwall_release",
        "onPageCommitVisible",
        "evaluateNext",
        "chosenNumber",
        "",
        "accumulatedScore",
        "nextWeightedUrl",
        "fromUrls",
        "onReceivedHttpError",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "errorResponse",
        "Landroid/webkit/WebResourceResponse;",
        "loadWithFallback",
        "loadWithFallback$superwall_release",
        "onReceivedError",
        "error",
        "Landroid/webkit/WebResourceError;",
        "MaxAttemptsReachedException",
        "UrlState",
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


# instance fields
.field private final config:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

.field private failureCount:I

.field private final ioScope:Lkotlinx/coroutines/CoroutineScope;

.field private final loadUrl:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final mainScope:Lkotlinx/coroutines/CoroutineScope;

.field private final onCrashed:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/RenderProcessGoneDetail;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final stopLoading:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;",
            ">;"
        }
    .end annotation
.end field

.field private final untriedUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;",
            ">;"
        }
    .end annotation
.end field

.field private final urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/webkit/WebView;",
            "-",
            "Landroid/webkit/RenderProcessGoneDetail;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;",
            ")V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stopLoading"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCrashed"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-string v0, ""

    invoke-direct {p0, v0, p2, p6, p7}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;-><init>(Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;)V

    .line 23
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->config:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    .line 24
    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    .line 25
    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    .line 26
    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->loadUrl:Lkotlin/jvm/functions/Function1;

    .line 27
    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->stopLoading:Lkotlin/jvm/functions/Function0;

    .line 28
    iput-object p6, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->onCrashed:Lkotlin/jvm/functions/Function2;

    .line 35
    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;->getEndpoints()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->urls:Ljava/util/List;

    .line 37
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->untriedUrls:Ljava/util/Set;

    .line 55
    sget-object p1, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$None;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$None;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->timeoutFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 22
    invoke-direct/range {v1 .. v8}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;-><init>(Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;)V

    return-void
.end method

.method public static final synthetic access$getIoScope$p(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getLoadUrl$p(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->loadUrl:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getMainScope$p(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getStopLoading$p(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->stopLoading:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getTimeoutFlow$p(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->timeoutFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$getUntriedUrls$p(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;)Ljava/util/Set;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->untriedUrls:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getUrls$p(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->urls:Ljava/util/List;

    return-object p0
.end method

.method private final evaluateNext(ILjava/util/Collection;I)Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;",
            ">;I)",
            "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;"
        }
    .end annotation

    .line 131
    :goto_0
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;->getScore()I

    move-result v1

    add-int/2addr p3, v1

    if-ge p1, p3, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 136
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    goto :goto_0

    .line 131
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "No more URLs to evaluate"

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic evaluateNext$default(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;ILjava/util/Collection;IILjava/lang/Object;)Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 125
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->evaluateNext(ILjava/util/Collection;I)Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;

    move-result-object p0

    return-object p0
.end method

.method private final nextWeightedUrl(Ljava/util/Collection;)Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;",
            ">;)",
            "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;"
        }
    .end annotation

    .line 141
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;->getScore()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->untriedUrls:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v0, Lkotlin/random/Random;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->random(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;

    .line 145
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->untriedUrls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p1

    .line 149
    :cond_1
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v1, Lkotlin/random/Random;

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result p1

    .line 150
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->untriedUrls:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, p1, v1, v0}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->evaluateNext(ILjava/util/Collection;I)Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->untriedUrls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method public final loadWithFallback$superwall_release()V
    .locals 15

    .line 166
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 167
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$1;

    invoke-direct {v0, p0, v1}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 176
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->nextUrl$superwall_release()Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$MaxAttemptsReachedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    iget v2, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->failureCount:I

    if-lez v2, :cond_1

    .line 204
    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$2;

    invoke-direct {v2, p0, v1}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$2;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 209
    :cond_1
    iget-object v9, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;Lkotlin/coroutines/Continuation;)V

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 191
    :catch_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$url$2;

    invoke-direct {v2, p0, v1}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$url$2;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 179
    :catch_1
    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$url$1;

    invoke-direct {v0, p0, v1}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$url$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;Lkotlin/coroutines/Continuation;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final nextUrl$superwall_release()Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;
    .locals 4

    .line 104
    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->failureCount:I

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->config:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;->getMaxAttempts()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 105
    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->failureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->failureCount:I

    .line 106
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->untriedUrls:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 235
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 236
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;

    .line 106
    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;->getScore()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->untriedUrls:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 239
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;

    .line 109
    invoke-virtual {v3}, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;->getScore()I

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 238
    check-cast v1, Ljava/util/Collection;

    .line 109
    invoke-direct {p0, v1}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->nextWeightedUrl(Ljava/util/Collection;)Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;

    move-result-object v0

    return-object v0

    .line 107
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->untriedUrls:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v0}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->nextWeightedUrl(Ljava/util/Collection;)Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;

    move-result-object v0

    return-object v0

    .line 112
    :cond_5
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$MaxAttemptsReachedException;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$MaxAttemptsReachedException;-><init>()V

    throw v0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$onLoadResource$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$onLoadResource$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 100
    invoke-super {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-super {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 122
    iput p1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->failureCount:I

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 69
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->urls:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;->getUrl()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    invoke-static {v3, v1, v2, v4, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_2
    move-object p3, v0

    :goto_0
    check-cast p3, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;->getTimeout()J

    move-result-wide p1

    .line 71
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p3, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$onPageStarted$1;

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$onPageStarted$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;JLkotlin/coroutines/Continuation;)V

    move-object v4, p3

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 69
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 70
    iget-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->urls:Ljava/util/List;

    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No such URL("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " in list of - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->timeoutFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 247
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 248
    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;

    .line 228
    sget-object v2, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$PageError;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$PageError;

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;

    .line 249
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-super {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 230
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->loadWithFallback$superwall_release()V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->timeoutFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 242
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 243
    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;

    .line 160
    sget-object v2, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$PageError;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$PageError;

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;

    .line 244
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method
