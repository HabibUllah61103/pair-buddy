.class final Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TransactionManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/store/transactions/TransactionManager;->trackTransactionDidSucceed(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.store.transactions.TransactionManager"
    f = "TransactionManager.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x3,
        0x3,
        0x3,
        0x3,
        0x6,
        0x6,
        0x6,
        0x7,
        0x7,
        0x7
    }
    l = {
        0x3f5,
        0x3f6,
        0x3fd,
        0x3ff,
        0x403,
        0x407,
        0x419,
        0x41a,
        0x422,
        0x427,
        0x42e
    }
    m = "trackTransactionDidSucceed"
    n = {
        "this",
        "product",
        "purchaseSource",
        "trialEnd",
        "paywallInfo",
        "didStartFreeTrial",
        "this",
        "product",
        "purchaseSource",
        "trialEnd",
        "paywallInfo",
        "didStartFreeTrial",
        "this",
        "product",
        "paywallInfo",
        "didStartFreeTrial",
        "this",
        "product",
        "didStartFreeTrial",
        "this",
        "product",
        "didStartFreeTrial"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "Z$0",
        "L$0",
        "L$1",
        "Z$0",
        "L$0",
        "L$1",
        "Z$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

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
            "Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->label:I

    iget-object v0, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$trackTransactionDidSucceed$1;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    const/4 v4, 0x0

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/superwall/sdk/store/transactions/TransactionManager;->access$trackTransactionDidSucceed(Lcom/superwall/sdk/store/transactions/TransactionManager;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
