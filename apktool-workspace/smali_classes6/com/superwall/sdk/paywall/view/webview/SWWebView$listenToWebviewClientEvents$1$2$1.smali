.class final Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SWWebView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2;->emit(Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSWWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SWWebView.kt\ncom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1\n+ 2 Either.kt\ncom/superwall/sdk/misc/EitherKt\n*L\n1#1,588:1\n136#2,5:589\n*S KotlinDebug\n*F\n+ 1 SWWebView.kt\ncom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1\n*L\n431#1:589,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.paywall.view.webview.SWWebView$listenToWebviewClientEvents$1$2$1"
    f = "SWWebView.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $it:Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;",
            "Lcom/superwall/sdk/paywall/view/webview/SWWebView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->$it:Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->$it:Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-direct {p1, v0, v1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 352
    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->label:I

    if-nez v0, :cond_11

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 353
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->$it:Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;

    .line 354
    instance-of v0, p1, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnError;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 355
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    .line 356
    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnError;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnError;->getWebviewError()Lcom/superwall/sdk/paywall/view/webview/WebviewError;

    move-result-object p1

    .line 357
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->$it:Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnError;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnError;->getWebviewError()Lcom/superwall/sdk/paywall/view/webview/WebviewError;

    move-result-object v2

    .line 358
    instance-of v3, v2, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 360
    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;->getCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;->getDescription()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Paywall loading failed due to network error - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    invoke-static {v3, v1, v4, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2;->emit$log$default(Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 362
    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 365
    :cond_0
    instance-of v3, v2, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NoUrls;

    if-eqz v3, :cond_1

    .line 367
    const-string v2, "Paywall loading failed - no URL\'s to load"

    .line 366
    invoke-static {v2, v1, v4, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2;->emit$log$default(Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 369
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 372
    :cond_1
    instance-of v3, v2, Lcom/superwall/sdk/paywall/view/webview/WebviewError$MaxAttemptsReached;

    if-eqz v3, :cond_2

    .line 374
    const-string v3, "Paywall loading failed - maximum attempts reached."

    .line 373
    invoke-static {v3, v1, v4, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2;->emit$log$default(Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 376
    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/WebviewError$MaxAttemptsReached;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$MaxAttemptsReached;->getUrls()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 379
    :cond_2
    instance-of v3, v2, Lcom/superwall/sdk/paywall/view/webview/WebviewError$AllUrlsFailed;

    if-eqz v3, :cond_3

    .line 381
    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/WebviewError$AllUrlsFailed;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$AllUrlsFailed;->getUrls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$AllUrlsFailed;->getUrls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Paywall loading failed - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " tried"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-static {v3, v1, v4, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2;->emit$log$default(Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 383
    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$AllUrlsFailed;->getUrls()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 386
    :cond_3
    instance-of v2, v2, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;

    if-eqz v2, :cond_4

    .line 388
    const-string v2, "Paywall loading reached user defined timeout - the paywall might still display"

    .line 387
    invoke-static {v2, v1, v4, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2;->emit$log$default(Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 390
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-static {v2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$getLastLoadedUrl$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 355
    :goto_0
    invoke-static {v0, p1, v2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$trackPaywallError(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lcom/superwall/sdk/paywall/view/webview/WebviewError;Ljava/util/List;)V

    .line 394
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$getLastLoadedUrl$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 395
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$getLastWebViewClient$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Landroid/webkit/WebViewClient;

    move-result-object p1

    .line 396
    instance-of v0, p1, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;

    if-nez v0, :cond_f

    .line 397
    instance-of p1, p1, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;

    if-eqz p1, :cond_f

    .line 399
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$getLastLoadedUrl$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Paywall loading failed - retrying "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-static {p1, v1, v4, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2;->emit$log$default(Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 401
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$getLastLoadedUrl$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 357
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 411
    :cond_5
    instance-of v0, p1, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnResourceError;

    if-eqz v0, :cond_c

    .line 412
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    .line 413
    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnResourceError;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnResourceError;->getWebviewError()Lcom/superwall/sdk/paywall/view/webview/WebviewError;

    move-result-object p1

    .line 414
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->$it:Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnResourceError;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnResourceError;->getWebviewError()Lcom/superwall/sdk/paywall/view/webview/WebviewError;

    move-result-object v1

    .line 415
    instance-of v2, v1, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;

    if-eqz v2, :cond_6

    .line 416
    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 418
    :cond_6
    instance-of v2, v1, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NoUrls;

    const-string v3, ""

    if-eqz v2, :cond_7

    :goto_1
    move-object v1, v3

    goto :goto_2

    .line 421
    :cond_7
    instance-of v2, v1, Lcom/superwall/sdk/paywall/view/webview/WebviewError$MaxAttemptsReached;

    if-eqz v2, :cond_8

    .line 422
    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/WebviewError$MaxAttemptsReached;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$MaxAttemptsReached;->getUrls()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    .line 424
    :cond_8
    instance-of v2, v1, Lcom/superwall/sdk/paywall/view/webview/WebviewError$AllUrlsFailed;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/WebviewError$AllUrlsFailed;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$AllUrlsFailed;->getUrls()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    .line 425
    :cond_9
    instance-of v1, v1, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-static {v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$getLastLoadedUrl$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_1

    .line 412
    :cond_a
    :goto_2
    invoke-static {v0, p1, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$trackPaywallResourceError(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lcom/superwall/sdk/paywall/view/webview/WebviewError;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 414
    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 430
    :cond_c
    instance-of v0, p1, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnPageFinished;

    if-eqz v0, :cond_e

    .line 431
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    .line 590
    :try_start_0
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    .line 432
    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$getMainScope$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Lcom/superwall/sdk/misc/MainScope;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1$1$1;

    invoke-direct {v0, p1, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1$1$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 590
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 592
    new-instance v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 436
    :goto_3
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$getOptions$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/options/PaywallOptions;

    invoke-virtual {p1}, Lcom/superwall/sdk/config/options/PaywallOptions;->getOptimisticLoading()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 437
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getDelegate()Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 438
    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;

    .line 439
    sget-object v1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;->INSTANCE:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;

    check-cast v1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    .line 438
    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;-><init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    .line 437
    invoke-interface {p1, v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 443
    :cond_d
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$getOnFinishedLoading$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->$it:Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;

    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnPageFinished;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnPageFinished;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 446
    :cond_e
    instance-of p1, p1, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$LoadingFallback;

    if-eqz p1, :cond_10

    .line 447
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$trackLoadFallback(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)V

    .line 450
    :cond_f
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 353
    :cond_10
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 352
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
