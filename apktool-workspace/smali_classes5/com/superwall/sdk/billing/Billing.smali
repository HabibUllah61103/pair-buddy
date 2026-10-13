.class public interface abstract Lcom/superwall/sdk/billing/Billing;
.super Ljava/lang/Object;
.source "Billing.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008H\u00a6@\u00a2\u0006\u0002\u0010\u000cJ\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u00a6@\u00a2\u0006\u0002\u0010\u0011J\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u00a6@\u00a2\u0006\u0002\u0010\u0015J\u001e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00172\u0006\u0010\u0018\u001a\u00020\u000bH\u00a6@\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/superwall/sdk/billing/Billing;",
        "",
        "purchaseResults",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/superwall/sdk/delegate/InternalPurchaseResult;",
        "getPurchaseResults",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "awaitGetProducts",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "identifiers",
        "",
        "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getLatestTransaction",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
        "factory",
        "Lcom/superwall/sdk/dependencies/StoreTransactionFactory;",
        "(Lcom/superwall/sdk/dependencies/StoreTransactionFactory;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "queryAllPurchases",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "consume",
        "Lkotlin/Result;",
        "purchaseToken",
        "consume-gIAlu-s",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract awaitGetProducts(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract consume-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getLatestTransaction(Lcom/superwall/sdk/dependencies/StoreTransactionFactory;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/dependencies/StoreTransactionFactory;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getPurchaseResults()Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/superwall/sdk/delegate/InternalPurchaseResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllPurchases(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
