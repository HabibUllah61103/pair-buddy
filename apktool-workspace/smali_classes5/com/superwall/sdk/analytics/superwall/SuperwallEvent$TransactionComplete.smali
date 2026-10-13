.class public final Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;
.super Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
.source "SuperwallEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionComplete"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J)\u0010\u0017\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0011H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;",
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
        "transaction",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;",
        "product",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
        "paywallInfo",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "<init>",
        "(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V",
        "getTransaction",
        "()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;",
        "getProduct",
        "()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
        "getPaywallInfo",
        "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "rawName",
        "",
        "getRawName",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
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
.field private final paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

.field private final product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

.field private final transaction:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 1

    const-string v0, "product"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, v0}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 203
    iput-object p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    .line 204
    iput-object p2, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    .line 205
    iput-object p3, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;ILjava/lang/Object;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->copy(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    return-object v0
.end method

.method public final component3()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;
    .locals 1

    const-string v0, "product"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;

    invoke-direct {v0, p1, p2, p3}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;-><init>(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    iget-object v3, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    iget-object v3, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object p1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    return-object v0
.end method

.method public final getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    return-object v0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    .line 208
    const-string/jumbo v0, "transaction_complete"

    return-object v0
.end method

.method public final getTransaction()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    iget-object v2, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TransactionComplete(transaction="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", product="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paywallInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
