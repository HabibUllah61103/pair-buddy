.class final Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallPreload.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.superwall.sdk.config.PaywallPreload$preloadPaywalls$2$task$1"
    f = "PaywallPreload.kt"
    i = {}
    l = {
        0xa4
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $identifier:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/config/PaywallPreload;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/config/PaywallPreload;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/PaywallPreload;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    iput-object p2, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;->$identifier:Ljava/lang/String;

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

    new-instance p1, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;

    iget-object v0, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;->$identifier:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;-><init>(Lcom/superwall/sdk/config/PaywallPreload;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 149
    iget v2, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    iget-object v2, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    invoke-virtual {v2}, Lcom/superwall/sdk/config/PaywallPreload;->getFactory()Lcom/superwall/sdk/config/PaywallPreload$Factory;

    move-result-object v4

    .line 155
    new-instance v6, Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;

    .line 156
    iget-object v2, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;->$identifier:Ljava/lang/String;

    const/4 v5, 0x0

    .line 155
    invoke-direct {v6, v2, v5}, Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 152
    invoke-interface/range {v4 .. v9}, Lcom/superwall/sdk/config/PaywallPreload$Factory;->makePaywallRequest(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;ZLjava/lang/String;)Lcom/superwall/sdk/paywall/request/PaywallRequest;

    move-result-object v11

    .line 164
    :try_start_1
    iget-object v2, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    invoke-virtual {v2}, Lcom/superwall/sdk/config/PaywallPreload;->getPaywallManager()Lcom/superwall/sdk/paywall/manager/PaywallManager;

    move-result-object v10

    .line 168
    move-object v15, v0

    check-cast v15, Lkotlin/coroutines/Continuation;

    .line 164
    iput v3, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;->label:I

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->getPaywallView(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZZLcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    return-object v2

    .line 170
    :catch_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
