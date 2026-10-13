.class final Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/PaywallView;->loadWebView()V
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
    c = "com.superwall.sdk.paywall.view.PaywallView$loadWebView$1"
    f = "PaywallView.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/PaywallView;


# direct methods
.method public static synthetic $r8$lambda$AXKfYwhp7gZZztETTuC2VyE0KWM(Lcom/superwall/sdk/paywall/view/PaywallView;ZI)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->invokeSuspend$lambda$0(Lcom/superwall/sdk/paywall/view/PaywallView;ZI)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/superwall/sdk/paywall/view/PaywallView;ZI)Lkotlin/Unit;
    .locals 10

    .line 857
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getController()Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CrashRetry;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CrashRetry;

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 858
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 859
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 860
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 862
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 864
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 866
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Webview Process has crashed for paywall with identifier: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".\nCrashed by the system: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " - priority "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 858
    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 869
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getCrashRetries()I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    .line 870
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 871
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 872
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 873
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "Webview crash - recreating "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 870
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 876
    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->access$recreateWebview(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    goto/16 :goto_0

    .line 878
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getController()Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    move-result-object p1

    sget-object p2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$WebLoadingFailed;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$WebLoadingFailed;

    check-cast p2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 879
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 880
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 881
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 882
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "Webview keeps crashing - paywall "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not recreated"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 879
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 884
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isPresented()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 885
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 886
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 887
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x18

    const/4 v7, 0x0

    .line 885
    const-string v3, "Dismissing active paywall due to webview process crash, cannot recreate"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 891
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;

    invoke-direct {p1}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;-><init>()V

    move-object v1, p1

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    .line 892
    sget-object p1, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$WebViewFailedToLoad;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$WebViewFailedToLoad;

    move-object v2, p1

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    const/4 v4, 0x4

    const/4 v3, 0x0

    move-object v0, p0

    .line 890
    invoke-static/range {v0 .. v5}, Lcom/superwall/sdk/paywall/view/PaywallView;->dismiss$superwall_release$default(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 895
    invoke-static {}, Lcom/superwall/sdk/paywall/view/PaywallView;->access$getMainScope$cp()Lcom/superwall/sdk/misc/MainScope;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1$2$1;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1$2$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 910
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-direct {v0, v1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 840
    iget v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->L$0:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 841
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/Paywall;->getUrl-24UBhI0()Ljava/lang/String;

    move-result-object p1

    .line 842
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getController()Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$WebLoadingStarted;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$WebLoadingStarted;

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 844
    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1$1;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 853
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getWebView$superwall_release()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    move-result-object v0

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    new-instance v2, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    invoke-interface {v0, p1, v2}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->setup-MkQ7Bds(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 913
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getController()Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    move-result-object p1

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;

    sget-object v1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$LoadingURL;->INSTANCE:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$LoadingURL;

    check-cast v1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;-><init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 914
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 840
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
