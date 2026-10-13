.class final Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Superwall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/Superwall$eventDidOccur$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.Superwall$eventDidOccur$2$1"
    f = "Superwall.kt"
    i = {}
    l = {
        0x56e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

.field final synthetic $paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/Superwall;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->this$0:Lcom/superwall/sdk/Superwall;

    iput-object p2, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    iput-object p3, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

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

    new-instance p1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;

    iget-object v0, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->this$0:Lcom/superwall/sdk/Superwall;

    iget-object v1, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    iget-object v2, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;-><init>(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1388
    iget v1, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1390
    :try_start_1
    iget-object p1, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getTransactionManager()Lcom/superwall/sdk/store/transactions/TransactionManager;

    move-result-object p1

    .line 1391
    new-instance v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    .line 1392
    iget-object v4, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    check-cast v4, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiatePurchase;

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiatePurchase;->getProductId()Ljava/lang/String;

    move-result-object v4

    .line 1393
    iget-object v5, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/view/PaywallView;->getController()Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v5

    .line 1391
    invoke-direct {v1, v4, v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;-><init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/view/PaywallViewState;)V

    check-cast v1, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    .line 1395
    iget-object v4, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    check-cast v4, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiatePurchase;

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiatePurchase;->getShouldDismiss()Z

    move-result v4

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 1390
    iput v3, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->label:I

    invoke-virtual {p1, v1, v4, v5}, Lcom/superwall/sdk/store/transactions/TransactionManager;->purchase(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 1388
    :cond_2
    :goto_0
    check-cast p1, Lcom/superwall/sdk/delegate/PurchaseResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1399
    iget-object p1, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-static {p1, v2}, Lcom/superwall/sdk/Superwall;->access$setPurchaseTask$p(Lcom/superwall/sdk/Superwall;Lkotlinx/coroutines/Job;)V

    .line 1401
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1399
    :goto_1
    iget-object v0, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-static {v0, v2}, Lcom/superwall/sdk/Superwall;->access$setPurchaseTask$p(Lcom/superwall/sdk/Superwall;Lkotlinx/coroutines/Job;)V

    throw p1
.end method
