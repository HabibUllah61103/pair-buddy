.class public final Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;
.super Ljava/lang/Object;
.source "ReceiptManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseSnapshot"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BK\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0006\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u001b\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0006H\u00c6\u0003J\u000f\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008H\u00c6\u0003J\u000f\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0008H\u00c6\u0003JU\u0010\u001b\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u001a\u0008\u0002\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00062\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00082\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0008H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\u0007H\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R#\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015\u00a8\u0006\""
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;",
        "",
        "purchases",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;",
        "entitlementsByProductId",
        "",
        "",
        "",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "nonSubscriptions",
        "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;",
        "subscriptions",
        "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;",
        "<init>",
        "(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V",
        "getPurchases",
        "()Ljava/util/Set;",
        "getEntitlementsByProductId",
        "()Ljava/util/Map;",
        "getNonSubscriptions",
        "()Ljava/util/List;",
        "getSubscriptions",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final entitlementsByProductId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nonSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private final purchases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "purchases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entitlementsByProductId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonSubscriptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->purchases:Ljava/util/Set;

    .line 55
    iput-object p2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->entitlementsByProductId:Ljava/util/Map;

    .line 56
    iput-object p3, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->nonSubscriptions:Ljava/util/List;

    .line 57
    iput-object p4, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->subscriptions:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;Ljava/util/Set;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->purchases:Ljava/util/Set;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->entitlementsByProductId:Ljava/util/Map;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->nonSubscriptions:Ljava/util/List;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->subscriptions:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->copy(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->purchases:Ljava/util/Set;

    return-object v0
.end method

.method public final component2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->entitlementsByProductId:Ljava/util/Map;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->nonSubscriptions:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->subscriptions:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;",
            ">;)",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;"
        }
    .end annotation

    const-string v0, "purchases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entitlementsByProductId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonSubscriptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->purchases:Ljava/util/Set;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->purchases:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->entitlementsByProductId:Ljava/util/Map;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->entitlementsByProductId:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->nonSubscriptions:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->nonSubscriptions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->subscriptions:Ljava/util/List;

    iget-object p1, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->subscriptions:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEntitlementsByProductId()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->entitlementsByProductId:Ljava/util/Map;

    return-object v0
.end method

.method public final getNonSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->nonSubscriptions:Ljava/util/List;

    return-object v0
.end method

.method public final getPurchases()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->purchases:Ljava/util/Set;

    return-object v0
.end method

.method public final getSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->subscriptions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->purchases:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->entitlementsByProductId:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->nonSubscriptions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->subscriptions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->purchases:Ljava/util/Set;

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->entitlementsByProductId:Ljava/util/Map;

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->nonSubscriptions:Ljava/util/List;

    iget-object v3, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;->subscriptions:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PurchaseSnapshot(purchases="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", entitlementsByProductId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonSubscriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
