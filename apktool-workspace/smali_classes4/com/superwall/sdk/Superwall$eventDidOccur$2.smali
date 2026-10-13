.class final Lcom/superwall/sdk/Superwall$eventDidOccur$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Superwall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/Superwall;->eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.Superwall$eventDidOccur$2"
    f = "Superwall.kt"
    i = {
        0x3
    }
    l = {
        0x55c,
        0x57d,
        0x592,
        0x5e3
    }
    m = "invokeSuspend"
    n = {
        "$this$launchWithTracking"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

.field final synthetic $paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/Superwall;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lcom/superwall/sdk/Superwall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/Superwall$eventDidOccur$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    iput-object p2, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    iput-object p3, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;

    iget-object v1, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    iget-object v2, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v3, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/superwall/sdk/Superwall$eventDidOccur$2;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/Superwall$eventDidOccur$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1362
    iget v2, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->L$0:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .line 1363
    sget-object v8, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 1364
    sget-object v9, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 1365
    sget-object v10, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 1367
    const-string v2, "event"

    iget-object v11, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    invoke-static {v2, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v12

    const/16 v14, 0x10

    const/4 v15, 0x0

    .line 1363
    const-string v11, "Event Did Occur"

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1370
    iget-object v2, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    .line 1371
    instance-of v8, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Closed;

    if-eqz v8, :cond_6

    .line 1373
    iget-object v9, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 1374
    new-instance v2, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;

    invoke-direct {v2}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;-><init>()V

    move-object v10, v2

    check-cast v10, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    .line 1375
    sget-object v2, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;

    move-object v11, v2

    check-cast v11, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    .line 1372
    move-object v13, v0

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput v6, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->label:I

    const/4 v12, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt;->dismiss$default(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto/16 :goto_3

    :cond_5
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_5

    .line 1379
    :cond_6
    instance-of v8, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiatePurchase;

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    .line 1380
    iget-object v1, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-static {v1}, Lcom/superwall/sdk/Superwall;->access$getPurchaseTask$p(Lcom/superwall/sdk/Superwall;)Lkotlinx/coroutines/Job;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1382
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 1384
    :cond_7
    iget-object v1, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 1385
    new-instance v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;

    sget-object v3, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$LoadingPurchase;->INSTANCE:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$LoadingPurchase;

    check-cast v3, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    invoke-direct {v2, v3}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;-><init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    .line 1384
    invoke-virtual {v1, v2}, Lcom/superwall/sdk/paywall/view/PaywallView;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 1387
    iget-object v1, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    .line 1388
    new-instance v2, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;

    iget-object v3, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    iget-object v4, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    iget-object v5, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-direct {v2, v3, v4, v5, v9}, Lcom/superwall/sdk/Superwall$eventDidOccur$2$1;-><init>(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    .line 1387
    invoke-static {v1, v2}, Lcom/superwall/sdk/Superwall;->access$setPurchaseTask$p(Lcom/superwall/sdk/Superwall;Lkotlinx/coroutines/Job;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_5

    .line 1404
    :cond_8
    instance-of v8, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiateRestore;

    if-eqz v8, :cond_9

    .line 1405
    iget-object v2, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getTransactionManager()Lcom/superwall/sdk/store/transactions/TransactionManager;

    move-result-object v2

    iget-object v3, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v5, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->label:I

    invoke-virtual {v2, v3, v4}, Lcom/superwall/sdk/store/transactions/TransactionManager;->tryToRestorePurchases(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1a

    goto/16 :goto_3

    .line 1408
    :cond_9
    instance-of v5, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedURL;

    if-eqz v5, :cond_a

    .line 1409
    iget-object v1, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDelegateAdapter()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedURL;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedURL;->getUrl()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->paywallWillOpenURL(Ljava/net/URI;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_5

    .line 1412
    :cond_a
    instance-of v5, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedUrlInChrome;

    if-eqz v5, :cond_b

    .line 1413
    iget-object v1, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDelegateAdapter()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedUrlInChrome;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedUrlInChrome;->getUrl()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->paywallWillOpenURL(Ljava/net/URI;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_5

    .line 1416
    :cond_b
    instance-of v5, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedDeepLink;

    if-eqz v5, :cond_c

    .line 1417
    iget-object v1, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDelegateAdapter()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedDeepLink;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedDeepLink;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->paywallWillOpenDeepLink(Landroid/net/Uri;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_5

    .line 1420
    :cond_c
    instance-of v5, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Custom;

    if-eqz v5, :cond_d

    .line 1421
    iget-object v1, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDelegateAdapter()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Custom;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Custom;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->handleCustomPaywallAction(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_5

    .line 1424
    :cond_d
    instance-of v5, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$CustomPlacement;

    if-eqz v5, :cond_11

    .line 1426
    iget-object v3, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    .line 1428
    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$CustomPlacement;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$CustomPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1430
    iget-object v5, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    check-cast v5, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$CustomPlacement;

    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$CustomPlacement;->getParams()Lkotlinx/serialization/json/JsonObject;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v5}, Lcom/superwall/sdk/storage/core_data/ConvertersKt;->convertFromJsonElement(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_e

    move-object v9, v5

    check-cast v9, Ljava/util/Map;

    :cond_e
    if-nez v9, :cond_f

    .line 1431
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v9

    .line 1432
    :cond_f
    iget-object v5, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v5

    .line 1427
    new-instance v6, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$CustomPlacement;

    invoke-direct {v6, v2, v5, v9}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$CustomPlacement;-><init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Ljava/util/Map;)V

    check-cast v6, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 1426
    iput v4, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->label:I

    invoke-static {v3, v6, v2}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_10

    goto/16 :goto_3

    :cond_10
    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    goto/16 :goto_5

    .line 1437
    :cond_11
    instance-of v4, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview;

    if-eqz v4, :cond_12

    .line 1439
    iget-object v1, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;

    iget-object v3, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    iget-object v4, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    iget-object v5, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-direct {v1, v3, v4, v5, v9}, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_5

    .line 1494
    :cond_12
    instance-of v4, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$ScheduleNotification;

    if-eqz v4, :cond_18

    .line 1498
    iget-object v2, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    if-eqz v2, :cond_13

    .line 1499
    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/PaywallView;->getEncapsulatingActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1500
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_13

    goto :goto_2

    .line 1501
    :cond_13
    iget-object v2, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v2

    .line 1502
    invoke-virtual {v2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getActivityProvider()Lcom/superwall/sdk/misc/ActivityProvider;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1503
    invoke-interface {v2}, Lcom/superwall/sdk/misc/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    goto :goto_2

    :cond_14
    move-object v2, v9

    .line 1497
    :goto_2
    instance-of v4, v2, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    if-eqz v4, :cond_15

    move-object v9, v2

    check-cast v9, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    :cond_15
    if-eqz v9, :cond_16

    .line 1508
    iget-object v2, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$ScheduleNotification;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$ScheduleNotification;->getLocalNotification()Lcom/superwall/sdk/models/paywall/LocalNotification;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1509
    iget-object v4, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v4}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v4

    check-cast v4, Lcom/superwall/sdk/dependencies/DeviceHelperFactory;

    .line 1510
    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 1507
    iput-object v7, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->label:I

    invoke-virtual {v9, v2, v4, v6, v5}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->attemptToScheduleNotifications(Ljava/util/List;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_17

    :goto_3
    return-object v1

    .line 1512
    :cond_16
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 1513
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 1514
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v9, 0x18

    const/4 v10, 0x0

    .line 1512
    const-string v6, "No superwall paywall activity alive to schedule notifications"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1511
    :cond_17
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    .line 1520
    :cond_18
    instance-of v1, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestPermission;

    if-eqz v1, :cond_19

    .line 1521
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 1522
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 1523
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 1524
    iget-object v1, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestPermission;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestPermission;->getPermissionType()Lcom/superwall/sdk/permissions/PermissionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/permissions/PermissionType;->getRawValue()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Permission requested: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1521
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    .line 1528
    :cond_19
    instance-of v1, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestCallback;

    if-eqz v1, :cond_1b

    .line 1529
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 1530
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 1531
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 1532
    iget-object v1, v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestCallback;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestCallback;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Custom callback requested: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1529
    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1536
    :cond_1a
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 1370
    :cond_1b
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method
