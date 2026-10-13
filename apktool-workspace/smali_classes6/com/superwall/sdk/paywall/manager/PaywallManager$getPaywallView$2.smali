.class final Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/manager/PaywallManager;->getPaywallView(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZZLcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "it",
        "Lcom/superwall/sdk/models/paywall/Paywall;"
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
    c = "com.superwall.sdk.paywall.manager.PaywallManager$getPaywallView$2"
    f = "PaywallManager.kt"
    i = {
        0x0
    }
    l = {
        0x59
    }
    m = "invokeSuspend"
    n = {
        "it"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

.field final synthetic $isForPresentation:Z

.field final synthetic $isPreloading:Z

.field final synthetic $request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/manager/PaywallManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;ZZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/manager/PaywallManager;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;",
            "ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->$delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    iput-boolean p4, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->$isForPresentation:Z

    iput-boolean p5, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->$isPreloading:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->$delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    iget-boolean v4, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->$isForPresentation:Z

    iget-boolean v5, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->$isPreloading:Z

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;ZZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/models/paywall/Paywall;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->invoke(Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget v1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/models/paywall/Paywall;

    .line 71
    iget-object v1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-static {v1}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->access$getFactory$p(Lcom/superwall/sdk/paywall/manager/PaywallManager;)Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;->makeDeviceInfo()Lcom/superwall/sdk/network/device/DeviceInfo;

    move-result-object v1

    .line 73
    sget-object v3, Lcom/superwall/sdk/paywall/manager/PaywallCacheLogic;->INSTANCE:Lcom/superwall/sdk/paywall/manager/PaywallCacheLogic;

    .line 74
    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-virtual {v1}, Lcom/superwall/sdk/network/device/DeviceInfo;->getLocale()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v3, v4, v1}, Lcom/superwall/sdk/paywall/manager/PaywallCacheLogic;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v3, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->isDebuggerLaunched()Z

    move-result v3

    if-nez v3, :cond_3

    .line 79
    iget-object v3, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-static {v3}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->access$getCache(Lcom/superwall/sdk/paywall/manager/PaywallManager;)Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->getPaywallView(Ljava/lang/String;)Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->$isPreloading:Z

    iget-object v2, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->$delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    if-nez v0, :cond_2

    .line 81
    invoke-virtual {v1, v2}, Lcom/superwall/sdk/paywall/view/PaywallView;->setCallback(Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;)V

    .line 82
    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$MergePaywall;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$MergePaywall;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;)V

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v1, v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    :cond_2
    return-object v1

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-static {v1}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->access$getFactory$p(Lcom/superwall/sdk/paywall/manager/PaywallManager;)Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;

    move-result-object v1

    .line 91
    iget-object v3, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-static {v3}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->access$getCache(Lcom/superwall/sdk/paywall/manager/PaywallManager;)Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    move-result-object v3

    .line 92
    iget-object v4, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->$delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 89
    iput-object p1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->label:I

    invoke-interface {v1, p1, v3, v4, v5}, Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;->makePaywallView(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    .line 70
    :goto_0
    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 94
    iget-object v1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-static {v1}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->access$getCache(Lcom/superwall/sdk/paywall/manager/PaywallManager;)Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->save(Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;)V

    .line 95
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;->$isForPresentation:Z

    if-eqz v0, :cond_5

    .line 99
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object v0

    instance-of v0, v0, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Unknown;

    if-eqz v0, :cond_5

    .line 100
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->loadWebView()V

    :cond_5
    return-object p1
.end method
