.class final Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TransactionManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/store/transactions/TransactionManager;->purchase(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x6,
        0x7,
        0x8,
        0x8,
        0x8,
        0x8,
        0x8,
        0x8,
        0x8,
        0x9,
        0x9,
        0x9,
        0x9,
        0x9,
        0xa,
        0xb,
        0xb,
        0xb,
        0xb,
        0xb,
        0xc,
        0xd,
        0xe
    }
    l = {
        0x130,
        0x131,
        0x137,
        0x13a,
        0x145,
        0x149,
        0x157,
        0x15a,
        0x16c,
        0x16e,
        0x180,
        0x187,
        0x191,
        0x1a7,
        0x1ab
    }
    m = "purchase"
    n = {
        "this",
        "purchaseSource",
        "product",
        "shouldDismiss",
        "this",
        "purchaseSource",
        "product",
        "shouldDismiss",
        "this",
        "purchaseSource",
        "product",
        "result",
        "shouldDismiss",
        "result",
        "this",
        "purchaseSource",
        "product",
        "result",
        "superwallOptions",
        "result",
        "result",
        "result",
        "this",
        "purchaseSource",
        "product",
        "rawStoreProduct",
        "productDetails",
        "activity",
        "shouldDismiss",
        "this",
        "purchaseSource",
        "product",
        "rawStoreProduct",
        "shouldDismiss",
        "result",
        "this",
        "purchaseSource",
        "product",
        "result",
        "shouldShowPurchaseFailureAlert",
        "result",
        "result",
        "result"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0",
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0",
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0",
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

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
            "Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->label:I

    iget-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$purchase$1;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/superwall/sdk/store/transactions/TransactionManager;->purchase(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
