.class final Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/store/transactions/TransactionManager;->presentAlert(Ljava/lang/Error;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/paywall/view/PaywallViewState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.store.transactions.TransactionManager$presentAlert$2"
    f = "TransactionManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $error:Ljava/lang/Error;

.field final synthetic $product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

.field final synthetic $state:Lcom/superwall/sdk/paywall/view/PaywallViewState;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/paywall/view/PaywallViewState;Ljava/lang/Error;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/transactions/TransactionManager;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lcom/superwall/sdk/paywall/view/PaywallViewState;",
            "Ljava/lang/Error;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    iput-object p2, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->$product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iput-object p3, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->$state:Lcom/superwall/sdk/paywall/view/PaywallViewState;

    iput-object p4, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->$error:Ljava/lang/Error;

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

    new-instance v0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;

    iget-object v1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    iget-object v2, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->$product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v3, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->$state:Lcom/superwall/sdk/paywall/view/PaywallViewState;

    iget-object v4, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->$error:Ljava/lang/Error;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;-><init>(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/paywall/view/PaywallViewState;Ljava/lang/Error;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 967
    iget v0, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 968
    iget-object v1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    const/4 p1, 0x2

    .line 972
    new-array p1, p1, [Lkotlin/Pair;

    iget-object v0, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->$product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v2, "product_id"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    .line 973
    const-string v0, "paywall_state"

    iget-object v2, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->$state:Lcom/superwall/sdk/paywall/view/PaywallViewState;

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    .line 971
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 975
    iget-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$presentAlert$2;->$error:Ljava/lang/Error;

    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 968
    const-string v3, "Transaction Error"

    invoke-static/range {v1 .. v7}, Lcom/superwall/sdk/store/transactions/TransactionManager;->log$default(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/logger/LogLevel;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 977
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 967
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
