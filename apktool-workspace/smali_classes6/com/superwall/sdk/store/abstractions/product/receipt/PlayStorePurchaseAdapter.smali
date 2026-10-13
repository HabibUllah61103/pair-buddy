.class public final Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;
.super Ljava/lang/Object;
.source "PlayStorePurchaseAdapter.kt"

# interfaces
.implements Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 &2\u00020\u0001:\u0001&B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\n\u0010$\u001a\u0004\u0018\u00010\u000fH\u0002J\u0008\u0010%\u001a\u00020\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0018R\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0011R\u0014\u0010!\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0018R\u0014\u0010\"\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0018R\u0014\u0010#\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u0018\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;",
        "purchase",
        "Lcom/android/billingclient/api/Purchase;",
        "product",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "productId",
        "",
        "<init>",
        "(Lcom/android/billingclient/api/Purchase;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Ljava/lang/String;)V",
        "getProductId",
        "()Ljava/lang/String;",
        "transactionId",
        "getTransactionId",
        "purchaseDate",
        "Ljava/util/Date;",
        "getPurchaseDate",
        "()Ljava/util/Date;",
        "originalPurchaseDate",
        "getOriginalPurchaseDate",
        "expirationDate",
        "getExpirationDate",
        "isRevoked",
        "",
        "()Z",
        "productType",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;",
        "getProductType",
        "()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;",
        "willRenew",
        "getWillRenew",
        "renewedAt",
        "getRenewedAt",
        "isInGracePeriod",
        "isInBillingRetryPeriod",
        "isActive",
        "calculateExpirationDate",
        "calculateIsActive",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter$Companion;


# instance fields
.field private final product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

.field private final productId:Ljava/lang/String;

.field private final purchase:Lcom/android/billingclient/api/Purchase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/billingclient/api/Purchase;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Ljava/lang/String;)V
    .locals 1

    const-string v0, "purchase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->purchase:Lcom/android/billingclient/api/Purchase;

    .line 15
    iput-object p2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    .line 16
    iput-object p3, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->productId:Ljava/lang/String;

    return-void
.end method

.method private final calculateExpirationDate()Ljava/util/Date;
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getRawStoreProduct()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getUnderlyingProductDetails()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x360a33

    if-eq v2, v3, :cond_3

    const v3, 0x5fb1edc

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v2, "subs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getRawStoreProduct()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_6

    .line 70
    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getToMillis()J

    move-result-wide v0

    .line 71
    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v2

    :cond_6
    :goto_2
    return-object v1
.end method

.method private final calculateIsActive()Z
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->calculateExpirationDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalPurchaseDate()Ljava/util/Date;
    .locals 3

    .line 25
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getRawStoreProduct()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getUnderlyingProductDetails()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x360a33

    if-eq v1, v2, :cond_2

    const v2, 0x5fb1edc

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->NON_CONSUMABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    return-object v0

    .line 37
    :cond_2
    const-string v1, "subs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->AUTO_RENEWABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    return-object v0

    .line 43
    :cond_4
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->NON_RENEWABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    return-object v0

    .line 45
    :cond_5
    :goto_1
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->CONSUMABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    return-object v0
.end method

.method public getPurchaseDate()Ljava/util/Date;
    .locals 3

    .line 22
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getRenewedAt()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPurchaseToken(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getWillRenew()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->calculateIsActive()Z

    move-result v0

    return v0
.end method

.method public isInBillingRetryPeriod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInGracePeriod()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRevoked()Z
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 33
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
