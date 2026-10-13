.class final Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultWebviewClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
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
    value = "SMAP\nDefaultWebviewClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultWebviewClient.kt\ncom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"
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
    c = "com.superwall.sdk.paywall.view.webview.DefaultWebviewClient$onReceivedHttpError$1"
    f = "DefaultWebviewClient.kt"
    i = {}
    l = {
        0x4c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $errorResponse:Landroid/webkit/WebResourceResponse;

.field final synthetic $requestUrl:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/webkit/WebResourceResponse;Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/WebResourceResponse;",
            "Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->$requestUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->$errorResponse:Landroid/webkit/WebResourceResponse;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;

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

    new-instance p1, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->$requestUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->$errorResponse:Landroid/webkit/WebResourceResponse;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;-><init>(Ljava/lang/String;Landroid/webkit/WebResourceResponse;Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 69
    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 71
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 72
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 73
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->$requestUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->$errorResponse:Landroid/webkit/WebResourceResponse;

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v11

    :goto_0
    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->$errorResponse:Landroid/webkit/WebResourceResponse;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v11

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Paywall loading failed due to network error. Url: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v7, " - Code: "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 70
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->getWebviewClientEvents()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    .line 79
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->$errorResponse:Landroid/webkit/WebResourceResponse;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    .line 80
    :goto_2
    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->$errorResponse:Landroid/webkit/WebResourceResponse;

    if-eqz v3, :cond_8

    .line 81
    invoke-virtual {v3}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v6, Ljava/io/Reader;

    instance-of v4, v6, Ljava/io/BufferedReader;

    if-eqz v4, :cond_5

    check-cast v6, Ljava/io/BufferedReader;

    goto :goto_3

    :cond_5
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v4, v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v6, v4

    :goto_3
    check-cast v6, Ljava/io/Closeable;

    :try_start_0
    move-object v4, v6

    check-cast v4, Ljava/io/BufferedReader;

    check-cast v4, Ljava/io/Reader;

    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-nez v4, :cond_7

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v6, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    :goto_4
    const-string v4, "Unknown"

    .line 82
    :cond_7
    invoke-virtual {v3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -\n "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    .line 83
    :cond_8
    const-string v3, "Unknown error"

    .line 84
    :cond_9
    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;

    invoke-static {v4}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->access$getForUrl$p(Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;)Ljava/lang/String;

    move-result-object v4

    .line 78
    new-instance v5, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;

    invoke-direct {v5, v1, v3, v4}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$NetworkError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    check-cast v5, Lcom/superwall/sdk/paywall/view/webview/WebviewError;

    .line 77
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnError;

    invoke-direct {v1, v5}, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent$OnError;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewError;)V

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 76
    iput v2, p0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$onReceivedHttpError$1;->label:I

    invoke-interface {p1, v1, v3}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 88
    :cond_a
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
