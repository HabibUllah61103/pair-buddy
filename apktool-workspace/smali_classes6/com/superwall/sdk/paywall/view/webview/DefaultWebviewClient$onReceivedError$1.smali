.class final Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultWebviewClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
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
    c = "com.superwall.sdk.paywall.view.webview.DefaultWebviewClient$onReceivedError$1"
    f = "DefaultWebviewClient.kt"
    i = {}
    l = {
        0x79,
        0x83
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $error:Landroid/webkit/WebResourceError;

.field final synthetic $request:Landroid/webkit/WebResourceRequest;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;


# direct methods
.method constructor <init>(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebResourceRequest;",
            "Landroid/webkit/WebResourceError;",
            "Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->$request:Landroid/webkit/WebResourceRequest;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->$error:Landroid/webkit/WebResourceError;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->$request:Landroid/webkit/WebResourceRequest;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->$error:Landroid/webkit/WebResourceError;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;-><init>(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 104
    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->$request:Landroid/webkit/WebResourceRequest;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/CharSequence;

    const-string v1, "runtime"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v2, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-ne p1, v3, :cond_6

    .line 107
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->$error:Landroid/webkit/WebResourceError;

    if-eqz p1, :cond_3

    .line 109
    invoke-virtual {p1}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    .line 110
    invoke-virtual {p1}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_3
    const/4 p1, -0x1

    .line 115
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Unknown error"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 106
    :cond_4
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 116
    sget-object v6, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 117
    sget-object v7, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 118
    sget-object v8, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 119
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->$request:Landroid/webkit/WebResourceRequest;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Paywall loading failed due to network error. Url: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - Code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x18

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 116
    invoke-static/range {v6 .. v13}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 121
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->getWebviewClientEvents()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v2

    .line 122
    new-instance v4, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnError;

    .line 123
    new-instance v5, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;

    .line 126
    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;

    invoke-static {v6}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->access$getForUrl$p(Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;)Ljava/lang/String;

    move-result-object v6

    .line 123
    invoke-direct {v5, v1, p1, v6}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    check-cast v5, Lcom/superwall/sdk/paywall/view/webview/WebviewError;

    .line 122
    invoke-direct {v4, v5}, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnError;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewError;)V

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 121
    iput v3, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->label:I

    invoke-interface {v2, v4, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_1

    .line 131
    :cond_6
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->getWebviewClientEvents()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    .line 132
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnResourceError;

    .line 134
    new-instance v3, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;

    .line 135
    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->$error:Landroid/webkit/WebResourceError;

    invoke-virtual {v4}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v4

    .line 136
    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->$error:Landroid/webkit/WebResourceError;

    invoke-virtual {v5}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 137
    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;

    invoke-static {v6}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->access$getForUrl$p(Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;)Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-direct {v3, v4, v5, v6}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    check-cast v3, Lcom/superwall/sdk/paywall/view/webview/WebviewError;

    .line 132
    invoke-direct {v1, v3}, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnResourceError;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewError;)V

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 131
    iput v2, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedError$1;->label:I

    invoke-interface {p1, v1, v3}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_1
    return-object v0

    .line 149
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
