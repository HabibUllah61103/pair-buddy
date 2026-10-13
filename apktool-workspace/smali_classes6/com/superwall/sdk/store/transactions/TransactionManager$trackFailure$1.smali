.class final Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/store/transactions/TransactionManager;->trackFailure(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;)V
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
    c = "com.superwall.sdk.store.transactions.TransactionManager$trackFailure$1"
    f = "TransactionManager.kt"
    i = {}
    l = {
        0x205
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $errorMessage:Ljava/lang/String;

.field final synthetic $product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

.field final synthetic $purchaseSource:Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lcom/superwall/sdk/store/transactions/TransactionManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->$purchaseSource:Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iput-object p2, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->$errorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->$product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iput-object p4, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;

    iget-object v1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->$purchaseSource:Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    iget-object v2, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->$errorMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->$product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v4, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 497
    iget v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 498
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->$purchaseSource:Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;

    invoke-virtual {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$Internal;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v6

    .line 502
    new-instance v2, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;

    .line 503
    new-instance v4, Lcom/superwall/sdk/store/transactions/TransactionError$Failure;

    .line 504
    iget-object v5, v0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->$errorMessage:Ljava/lang/String;

    .line 505
    iget-object v7, v0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->$product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    .line 503
    invoke-direct {v4, v5, v7}, Lcom/superwall/sdk/store/transactions/TransactionError$Failure;-><init>(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    check-cast v4, Lcom/superwall/sdk/store/transactions/TransactionError;

    .line 502
    invoke-direct {v2, v4}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;-><init>(Lcom/superwall/sdk/store/transactions/TransactionError;)V

    .line 511
    iget-object v4, v0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v4}, Lcom/superwall/sdk/store/transactions/TransactionManager;->access$getFactory$p(Lcom/superwall/sdk/store/transactions/TransactionManager;)Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    move-result-object v4

    invoke-interface {v4}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getShouldObservePurchases()Z

    move-result v10

    .line 512
    sget-object v9, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;->INTERNAL:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    .line 513
    iget-object v4, v0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v4}, Lcom/superwall/sdk/store/transactions/TransactionManager;->access$getFactory$p(Lcom/superwall/sdk/store/transactions/TransactionManager;)Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    move-result-object v4

    invoke-interface {v4}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandScore()Ljava/lang/Integer;

    move-result-object v11

    .line 514
    iget-object v4, v0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v4}, Lcom/superwall/sdk/store/transactions/TransactionManager;->access$getFactory$p(Lcom/superwall/sdk/store/transactions/TransactionManager;)Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;

    move-result-object v4

    invoke-interface {v4}, Lcom/superwall/sdk/store/transactions/TransactionManager$Factory;->demandTier()Ljava/lang/String;

    move-result-object v12

    .line 500
    new-instance v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;

    .line 502
    move-object v5, v2

    check-cast v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    .line 509
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->$product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    move-object v7, v2

    check-cast v7, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    const/16 v15, 0x300

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 500
    invoke-direct/range {v4 .. v16}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 516
    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->getState()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent.Transaction.State.Fail"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;

    .line 517
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v2}, Lcom/superwall/sdk/store/transactions/TransactionManager;->access$getTrack$p(Lcom/superwall/sdk/store/transactions/TransactionManager;)Lkotlin/jvm/functions/Function2;

    move-result-object v2

    iput v3, v0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackFailure$1;->label:I

    invoke-interface {v2, v4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 518
    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
