.class public final Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;
.super Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;
.source "TrackableSuperwallEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Complete"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;",
        "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;",
        "product",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
        "transaction",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;",
        "<init>",
        "(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;)V",
        "getProduct",
        "()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
        "getTransaction",
        "()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;",
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
.field private final product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

.field private final transaction:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "product"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 555
    invoke-direct {v0, v3}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 553
    iput-object v1, v0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    .line 558
    instance-of v4, v2, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    if-eqz v4, :cond_7

    .line 559
    instance-of v4, v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_1

    .line 561
    move-object v1, v2

    check-cast v1, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    goto/16 :goto_2

    .line 563
    :cond_1
    check-cast v2, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    .line 565
    invoke-virtual {v2}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getTransactionDate()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 566
    check-cast v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 568
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 570
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 571
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object v5

    sget-object v6, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_4

    if-eq v5, v7, :cond_3

    const/4 v7, 0x4

    if-ne v5, v7, :cond_2

    .line 593
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v1

    .line 591
    invoke-virtual {v3, v6, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 571
    :cond_2
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 587
    :cond_3
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v1

    .line 585
    invoke-virtual {v3, v8, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 581
    :cond_4
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v1

    .line 579
    invoke-virtual {v3, v7, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    :cond_5
    const/4 v5, 0x6

    .line 575
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getValue()I

    move-result v1

    .line 573
    invoke-virtual {v3, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 596
    :goto_1
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    move-object v3, v1

    :cond_6
    move-object v13, v3

    .line 599
    invoke-virtual {v4}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getBasePlanId()Ljava/lang/String;

    move-result-object v11

    .line 600
    invoke-virtual {v4}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getOfferId$superwall_release()Ljava/lang/String;

    move-result-object v14

    const v20, 0x1f2ff

    const/16 v21, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 563
    invoke-static/range {v2 .. v21}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->copy$default(Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;Lcom/android/billingclient/api/Purchase;Ljava/util/Date;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    move-result-object v1

    :goto_2
    check-cast v1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    goto :goto_3

    :cond_7
    move-object v1, v2

    .line 557
    :goto_3
    iput-object v1, v0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    return-void
.end method


# virtual methods
.method public final getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    return-object v0
.end method

.method public final getTransaction()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    return-object v0
.end method
