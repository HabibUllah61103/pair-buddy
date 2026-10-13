.class final Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/store/transactions/TransactionManager$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/superwall/sdk/delegate/InternalPurchaseResult;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionManager.kt\ncom/superwall/sdk/store/transactions/TransactionManager$4$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1090:1\n1863#2,2:1091\n*S KotlinDebug\n*F\n+ 1 TransactionManager.kt\ncom/superwall/sdk/store/transactions/TransactionManager$4$2\n*L\n137#1:1091,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/superwall/sdk/delegate/InternalPurchaseResult;"
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
    c = "com.superwall.sdk.store.transactions.TransactionManager$4$2"
    f = "TransactionManager.kt"
    i = {}
    l = {
        0xac
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/transactions/TransactionManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;

    iget-object v1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-direct {v0, v1, p2}, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/superwall/sdk/delegate/InternalPurchaseResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/delegate/InternalPurchaseResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/delegate/InternalPurchaseResult;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->invoke(Lcom/superwall/sdk/delegate/InternalPurchaseResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 133
    iget v1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/delegate/InternalPurchaseResult;

    .line 136
    instance-of v1, p1, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Purchased;

    const-string v3, "build(...)"

    if-eqz v1, :cond_3

    .line 137
    move-object v1, p1

    check-cast v1, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Purchased;

    invoke-virtual {v1}, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Purchased;->getPurchase()Lcom/android/billingclient/api/Purchase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v4

    const-string v5, "getProducts(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    iget-object v5, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    .line 1091
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 138
    invoke-static {v5}, Lcom/superwall/sdk/store/transactions/TransactionManager;->access$getTransactionsInProgress$p(Lcom/superwall/sdk/store/transactions/TransactionManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    :cond_2
    new-instance v4, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;

    .line 142
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v5

    const/4 v6, 0x0

    .line 143
    invoke-virtual {v5, v6}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v5

    .line 144
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Purchased;->getPurchase()Lcom/android/billingclient/api/Purchase;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-direct {v4, v5, v1}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    check-cast v4, Lcom/superwall/sdk/store/PurchasingObserverState;

    goto/16 :goto_2

    .line 149
    :cond_3
    instance-of v1, p1, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Cancelled;

    const-string v4, "last(...)"

    const-string v5, "<get-entries>(...)"

    if-eqz v1, :cond_4

    .line 150
    iget-object v1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager;->access$getTransactionsInProgress$p(Lcom/superwall/sdk/store/transactions/TransactionManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map$Entry;

    .line 151
    iget-object v4, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v4}, Lcom/superwall/sdk/store/transactions/TransactionManager;->access$getTransactionsInProgress$p(Lcom/superwall/sdk/store/transactions/TransactionManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v1, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;

    .line 154
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v4

    .line 155
    invoke-virtual {v4, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v4

    .line 156
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 152
    invoke-direct {v1, v4, v3}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    move-object v4, v1

    check-cast v4, Lcom/superwall/sdk/store/PurchasingObserverState;

    goto :goto_2

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v1}, Lcom/superwall/sdk/store/transactions/TransactionManager;->access$getTransactionsInProgress$p(Lcom/superwall/sdk/store/transactions/TransactionManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map$Entry;

    .line 163
    iget-object v3, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-static {v3}, Lcom/superwall/sdk/store/transactions/TransactionManager;->access$getTransactionsInProgress$p(Lcom/superwall/sdk/store/transactions/TransactionManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    instance-of v3, p1, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Failed;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Failed;

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Failed;->getError()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_7

    .line 167
    :cond_6
    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "Unknown error"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 168
    :cond_7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "<get-value>(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    .line 164
    new-instance v4, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseError;

    invoke-direct {v4, v1, v3}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseError;-><init>(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/Throwable;)V

    check-cast v4, Lcom/superwall/sdk/store/PurchasingObserverState;

    .line 172
    :goto_2
    iget-object v1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$4$2;->label:I

    invoke-virtual {v1, p1, v4, v3}, Lcom/superwall/sdk/store/transactions/TransactionManager;->handle$superwall_release(Lcom/superwall/sdk/delegate/InternalPurchaseResult;Lcom/superwall/sdk/store/PurchasingObserverState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 173
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
