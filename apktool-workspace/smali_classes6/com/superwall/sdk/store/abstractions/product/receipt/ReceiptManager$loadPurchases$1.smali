.class final Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ReceiptManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->loadPurchases(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.store.abstractions.product.receipt.ReceiptManager"
    f = "ReceiptManager.kt"
    i = {
        0x0,
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
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x67,
        0x7a,
        0xc8
    }
    m = "loadPurchases"
    n = {
        "this",
        "serverEntitlementsByProductId",
        "purchases",
        "originalTransactionIds",
        "productIdsByEntitlementId",
        "existingHistory",
        "enableExperimentalDeviceVariables",
        "this",
        "serverEntitlementsByProductId",
        "purchases",
        "originalTransactionIds",
        "productIdsByEntitlementId",
        "existingHistory",
        "allPurchases",
        "transactionsByEntitlement",
        "currentTransactions",
        "enableExperimentalDeviceVariables",
        "this",
        "purchases",
        "nonSubscriptions",
        "subscriptions",
        "entitlementsByProductId"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->this$0:Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->label:I

    iget-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->this$0:Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->loadPurchases(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
