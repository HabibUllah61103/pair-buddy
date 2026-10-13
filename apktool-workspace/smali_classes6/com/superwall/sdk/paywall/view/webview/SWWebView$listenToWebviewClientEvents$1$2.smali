.class final Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2;
.super Ljava/lang/Object;
.source "SWWebView.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final emit$log(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 346
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 347
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 345
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic emit$log$default(Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 343
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 341
    :cond_0
    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2;->emit$log(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 352
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-static {p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$getMainScope$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Lcom/superwall/sdk/misc/MainScope;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 451
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 340
    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1$2;->emit(Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
