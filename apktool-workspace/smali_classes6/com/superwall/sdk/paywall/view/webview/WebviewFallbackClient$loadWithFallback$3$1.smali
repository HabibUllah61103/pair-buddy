.class final Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebviewFallbackClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nWebviewFallbackClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebviewFallbackClient.kt\ncom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,233:1\n230#2,5:234\n*S KotlinDebug\n*F\n+ 1 WebviewFallbackClient.kt\ncom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1\n*L\n217#1:234,5\n*E\n"
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
    c = "com.superwall.sdk.paywall.view.webview.WebviewFallbackClient$loadWithFallback$3$1"
    f = "WebviewFallbackClient.kt"
    i = {}
    l = {
        0xd5
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;

    invoke-direct {p1, v0, p2}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 211
    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 213
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->access$getTimeoutFlow$p(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1$nextEvent$1;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1$nextEvent$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 211
    :cond_2
    :goto_0
    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;

    .line 214
    instance-of p1, p1, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$Timeout;

    if-eqz p1, :cond_3

    .line 215
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->loadWithFallback$superwall_release()V

    goto :goto_1

    .line 217
    :cond_3
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$loadWithFallback$3$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->access$getTimeoutFlow$p(Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    .line 235
    :cond_4
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 236
    move-object v1, v0

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;

    .line 217
    sget-object v1, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$None;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState$None;

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient$UrlState;

    .line 237
    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
