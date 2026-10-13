.class final Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SWWebView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/webview/SWWebView;->trackLoadFallback()V
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
    c = "com.superwall.sdk.paywall.view.webview.SWWebView$trackLoadFallback$1"
    f = "SWWebView.kt"
    i = {}
    l = {
        0x1d3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/webview/SWWebView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

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

    new-instance p1, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-direct {p1, v0, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 456
    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;->label:I

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

    .line 457
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getDelegate()Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$WebLoadingFailed;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$WebLoadingFailed;

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-interface {p1, v1}, Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 459
    :cond_2
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getDelegate()Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 462
    :cond_3
    new-instance v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad;

    .line 464
    sget-object v3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Fallback;->INSTANCE:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Fallback;

    check-cast v3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State;

    .line 462
    invoke-direct {v1, v3, p1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    .line 467
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;->this$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$getTrack$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iput v2, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 468
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 459
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
