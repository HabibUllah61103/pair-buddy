.class final Lcom/superwall/sdk/Superwall$observe$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Superwall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/Superwall;->observe(Lcom/superwall/sdk/store/PurchasingObserverState;)V
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
    c = "com.superwall.sdk.Superwall$observe$1"
    f = "Superwall.kt"
    i = {}
    l = {
        0x4f4,
        0x4fd,
        0x505
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $state:Lcom/superwall/sdk/store/PurchasingObserverState;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/Superwall;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/store/PurchasingObserverState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/store/PurchasingObserverState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/Superwall$observe$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/Superwall$observe$1;->this$0:Lcom/superwall/sdk/Superwall;

    iput-object p2, p0, Lcom/superwall/sdk/Superwall$observe$1;->$state:Lcom/superwall/sdk/store/PurchasingObserverState;

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

    new-instance p1, Lcom/superwall/sdk/Superwall$observe$1;

    iget-object v0, p0, Lcom/superwall/sdk/Superwall$observe$1;->this$0:Lcom/superwall/sdk/Superwall;

    iget-object v1, p0, Lcom/superwall/sdk/Superwall$observe$1;->$state:Lcom/superwall/sdk/store/PurchasingObserverState;

    invoke-direct {p1, v0, v1, p2}, Lcom/superwall/sdk/Superwall$observe$1;-><init>(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/store/PurchasingObserverState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/Superwall$observe$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/Superwall$observe$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/Superwall$observe$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/Superwall$observe$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1254
    iget v1, p0, Lcom/superwall/sdk/Superwall$observe$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/Superwall$observe$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1255
    iget-object p1, p0, Lcom/superwall/sdk/Superwall$observe$1;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getShouldObservePurchases()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1256
    sget-object v5, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 1257
    sget-object v6, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 1258
    sget-object v7, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    const/16 v11, 0x18

    const/4 v12, 0x0

    .line 1256
    const-string v8, "You are trying to observe purchases but the SuperwallOption shouldObservePurchases is false. Please set it to true to be able to observe purchases."

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1263
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1265
    :cond_4
    iget-object p1, p0, Lcom/superwall/sdk/Superwall$observe$1;->$state:Lcom/superwall/sdk/store/PurchasingObserverState;

    .line 1266
    instance-of v1, p1, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseWillBegin;

    if-eqz v1, :cond_5

    .line 1267
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->Companion:Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;

    iget-object v2, p0, Lcom/superwall/sdk/Superwall$observe$1;->$state:Lcom/superwall/sdk/store/PurchasingObserverState;

    check-cast v2, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseWillBegin;

    invoke-virtual {v2}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseWillBegin;->getProduct()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;->from(Lcom/android/billingclient/api/ProductDetails;)Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    .line 1268
    iget-object v1, p0, Lcom/superwall/sdk/Superwall$observe$1;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getTransactionManager()Lcom/superwall/sdk/store/transactions/TransactionManager;

    move-result-object v1

    .line 1270
    new-instance v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;

    invoke-direct {v2, p1}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ObserverMode;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 1268
    iput v4, p0, Lcom/superwall/sdk/Superwall$observe$1;->label:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/superwall/sdk/store/transactions/TransactionManager;->prepareToPurchase$superwall_release(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    goto :goto_2

    .line 1274
    :cond_5
    instance-of v1, p1, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;

    if-eqz v1, :cond_7

    .line 1275
    check-cast p1, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;

    invoke-virtual {p1}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;->getResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    iget-object v1, p0, Lcom/superwall/sdk/Superwall$observe$1;->$state:Lcom/superwall/sdk/store/PurchasingObserverState;

    check-cast v1, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;->getPurchases()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapperKt;->toInternalResult(Lkotlin/Pair;)Ljava/util/List;

    move-result-object p1

    .line 1276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, p1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/delegate/InternalPurchaseResult;

    .line 1277
    iget-object v2, p0, Lcom/superwall/sdk/Superwall$observe$1;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getTransactionManager()Lcom/superwall/sdk/store/transactions/TransactionManager;

    move-result-object v2

    .line 1279
    iget-object v4, p0, Lcom/superwall/sdk/Superwall$observe$1;->$state:Lcom/superwall/sdk/store/PurchasingObserverState;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 1277
    iput-object v1, p0, Lcom/superwall/sdk/Superwall$observe$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/superwall/sdk/Superwall$observe$1;->label:I

    invoke-virtual {v2, p1, v4, v5}, Lcom/superwall/sdk/store/transactions/TransactionManager;->handle$superwall_release(Lcom/superwall/sdk/delegate/InternalPurchaseResult;Lcom/superwall/sdk/store/PurchasingObserverState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_2

    .line 1284
    :cond_7
    instance-of p1, p1, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseError;

    if-eqz p1, :cond_9

    .line 1285
    iget-object p1, p0, Lcom/superwall/sdk/Superwall$observe$1;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getTransactionManager()Lcom/superwall/sdk/store/transactions/TransactionManager;

    move-result-object p1

    .line 1286
    new-instance v1, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Failed;

    iget-object v3, p0, Lcom/superwall/sdk/Superwall$observe$1;->$state:Lcom/superwall/sdk/store/PurchasingObserverState;

    check-cast v3, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseError;

    invoke-virtual {v3}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseError;->getError()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Failed;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lcom/superwall/sdk/delegate/InternalPurchaseResult;

    .line 1287
    iget-object v3, p0, Lcom/superwall/sdk/Superwall$observe$1;->$state:Lcom/superwall/sdk/store/PurchasingObserverState;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 1285
    iput v2, p0, Lcom/superwall/sdk/Superwall$observe$1;->label:I

    invoke-virtual {p1, v1, v3, v4}, Lcom/superwall/sdk/store/transactions/TransactionManager;->handle$superwall_release(Lcom/superwall/sdk/delegate/InternalPurchaseResult;Lcom/superwall/sdk/store/PurchasingObserverState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    :goto_2
    return-object v0

    .line 1291
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1265
    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
