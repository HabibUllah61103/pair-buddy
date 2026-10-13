.class public final Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Companion;
.super Ljava/lang/Object;
.source "StoreTransactionType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Companion;",
        "",
        "<init>",
        "()V",
        "from",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;",
        "purchaseResult",
        "",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(I)Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 91
    sget-object p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Failed;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Failed;

    check-cast p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    return-object p1

    .line 89
    :cond_0
    sget-object p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Restored;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Restored;

    check-cast p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    return-object p1

    .line 88
    :cond_1
    sget-object p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchasing;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchasing;

    check-cast p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    return-object p1

    .line 87
    :cond_2
    sget-object p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchased;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchased;

    check-cast p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
