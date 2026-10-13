.class final Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TransactionManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/store/transactions/TransactionManager;->tryToRestorePurchases(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x1,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x5,
        0x6,
        0x6,
        0x6,
        0x6
    }
    l = {
        0x346,
        0x351,
        0x357,
        0x35d,
        0x36d,
        0x374,
        0x38e
    }
    m = "tryToRestorePurchases"
    n = {
        "this",
        "this",
        "paywallView",
        "this",
        "paywallView",
        "this",
        "paywallView",
        "restorationResult",
        "status",
        "hasRestored",
        "hasEntitlements",
        "this",
        "paywallView",
        "restorationResult",
        "restorationResult",
        "this",
        "paywallView",
        "restorationResult",
        "webToAppEnabled"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "Z$0"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

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
            "Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->label:I

    iget-object p1, p0, Lcom/superwall/sdk/store/transactions/TransactionManager$tryToRestorePurchases$1;->this$0:Lcom/superwall/sdk/store/transactions/TransactionManager;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v1}, Lcom/superwall/sdk/store/transactions/TransactionManager;->tryToRestorePurchases(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
