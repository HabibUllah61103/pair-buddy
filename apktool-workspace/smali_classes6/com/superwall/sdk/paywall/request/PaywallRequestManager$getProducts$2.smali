.class final Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallRequestManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getProducts(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallRequestManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallRequestManager.kt\ncom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,433:1\n462#2:434\n412#2:435\n1246#3,4:436\n*S KotlinDebug\n*F\n+ 1 PaywallRequestManager.kt\ncom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2\n*L\n325#1:434\n325#1:435\n325#1:436,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
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
    c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getProducts$2"
    f = "PaywallRequestManager.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x146,
        0x14d
    }
    m = "invokeSuspend"
    n = {
        "paywall",
        "paywall"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $paywall:Lcom/superwall/sdk/models/paywall/Paywall;

.field final synthetic $request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->$paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

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

    new-instance v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->$paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 315
    iget v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 316
    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->$paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    .line 320
    iget-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->getOverrides()Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;->getProducts()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_6

    .line 321
    iget-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    .line 322
    invoke-static {p1}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getGetGlobalOverrides$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lkotlin/jvm/functions/Function0;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 323
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 434
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    .line 435
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 436
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 437
    check-cast v6, Ljava/util/Map$Entry;

    .line 435
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 325
    new-instance v8, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ById;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v8, v6}, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ById;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 326
    :cond_3
    iput-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->label:I

    invoke-static {p1, v5, p0}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$convertProductOverrides(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p1, Ljava/util/Map;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 333
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {v3}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getStoreManager$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/store/StoreManager;

    move-result-object v3

    .line 336
    iget-object v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 333
    iput-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->label:I

    invoke-virtual {v3, p1, v1, v4, v5}, Lcom/superwall/sdk/store/StoreManager;->getProducts(Ljava/util/Map;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_3
    return-object v0

    :cond_7
    move-object v0, v1

    .line 315
    :goto_4
    check-cast p1, Lcom/superwall/sdk/store/GetProductsResponse;

    .line 338
    invoke-virtual {p1}, Lcom/superwall/sdk/store/GetProductsResponse;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 339
    invoke-virtual {p1}, Lcom/superwall/sdk/store/GetProductsResponse;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    .line 341
    :cond_8
    invoke-virtual {p1}, Lcom/superwall/sdk/store/GetProductsResponse;->getProductItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/models/paywall/Paywall;->setProductItems(Ljava/util/List;)V

    .line 344
    sget-object v2, Lcom/superwall/sdk/paywall/request/PaywallLogic;->INSTANCE:Lcom/superwall/sdk/paywall/request/PaywallLogic;

    .line 345
    invoke-virtual {p1}, Lcom/superwall/sdk/store/GetProductsResponse;->getProductItems()Ljava/util/List;

    move-result-object v3

    .line 346
    invoke-virtual {p1}, Lcom/superwall/sdk/store/GetProductsResponse;->getProductsByFullId()Ljava/util/Map;

    move-result-object v4

    .line 347
    iget-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->getOverrides()Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;->isFreeTrial()Ljava/lang/Boolean;

    move-result-object v5

    .line 348
    iget-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getFactory$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;->currentCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v6

    .line 349
    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getIntroOfferEligibility()Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    move-result-object v7

    .line 344
    invoke-virtual/range {v2 .. v7}, Lcom/superwall/sdk/paywall/request/PaywallLogic;->getVariablesAndFreeTrial(Ljava/util/List;Ljava/util/Map;Ljava/lang/Boolean;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Lcom/superwall/sdk/paywall/request/ProductProcessingOutcome;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/request/ProductProcessingOutcome;->getProductVariables()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/models/paywall/Paywall;->setProductVariables(Ljava/util/List;)V

    .line 352
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/request/ProductProcessingOutcome;->isFreeTrialAvailable()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/models/paywall/Paywall;->setFreeTrialAvailable(Z)V

    return-object v0
.end method
