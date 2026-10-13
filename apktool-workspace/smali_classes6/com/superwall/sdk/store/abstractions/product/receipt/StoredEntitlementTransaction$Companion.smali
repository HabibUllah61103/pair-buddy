.class public final Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;
.super Ljava/lang/Object;
.source "StoredEntitlementTransaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bJ\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;",
        "",
        "<init>",
        "()V",
        "from",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;",
        "transaction",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;",
        "withUpdatedActiveStatus",
        "stored",
        "isCurrentlyActive",
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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;)Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;
    .locals 14

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;

    .line 50
    invoke-interface {p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductId()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-interface {p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-interface {p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getPurchaseDate()Ljava/util/Date;

    move-result-object v4

    .line 53
    invoke-interface {p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getOriginalPurchaseDate()Ljava/util/Date;

    move-result-object v5

    .line 54
    invoke-interface {p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getExpirationDate()Ljava/util/Date;

    move-result-object v6

    .line 55
    invoke-interface {p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isRevoked()Z

    move-result v7

    .line 56
    invoke-interface {p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v8

    .line 57
    invoke-interface {p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getWillRenew()Z

    move-result v9

    .line 58
    invoke-interface {p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getRenewedAt()Ljava/util/Date;

    move-result-object v10

    .line 59
    invoke-interface {p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isInGracePeriod()Z

    move-result v11

    .line 60
    invoke-interface {p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isInBillingRetryPeriod()Z

    move-result v12

    .line 61
    invoke-interface {p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isActive()Z

    move-result v13

    .line 49
    invoke-direct/range {v1 .. v13}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;ZLjava/util/Date;ZZZ)V

    return-object v1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$$serializer;->INSTANCE:Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public final withUpdatedActiveStatus(Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;Z)Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;
    .locals 16

    const-string v0, "stored"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->getWillRenew()Z

    move-result v0

    :goto_0
    move v9, v0

    const/16 v14, 0x77f

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v13, p2

    .line 73
    invoke-static/range {v1 .. v15}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->copy$default(Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;ZLjava/util/Date;ZZZILjava/lang/Object;)Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;

    move-result-object v0

    return-object v0
.end method
