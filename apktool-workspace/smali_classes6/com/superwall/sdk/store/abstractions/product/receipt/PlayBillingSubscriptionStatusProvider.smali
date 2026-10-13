.class public final Lcom/superwall/sdk/store/abstractions/product/receipt/PlayBillingSubscriptionStatusProvider;
.super Ljava/lang/Object;
.source "SubscriptionStatusProvider.kt"

# interfaces
.implements Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubscriptionStatusProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionStatusProvider.kt\ncom/superwall/sdk/store/abstractions/product/receipt/PlayBillingSubscriptionStatusProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n756#2,10:164\n*S KotlinDebug\n*F\n+ 1 SubscriptionStatusProvider.kt\ncom/superwall/sdk/store/abstractions/product/receipt/PlayBillingSubscriptionStatusProvider\n*L\n102#1:164,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096@\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J \u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096@\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/receipt/PlayBillingSubscriptionStatusProvider;",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;",
        "billing",
        "Lcom/superwall/sdk/billing/Billing;",
        "<init>",
        "(Lcom/superwall/sdk/billing/Billing;)V",
        "getSubscriptionState",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;",
        "purchase",
        "Lcom/android/billingclient/api/Purchase;",
        "product",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "(Lcom/android/billingclient/api/Purchase;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getWillAutoRenew",
        "",
        "getOfferType",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;",
        "isActive",
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
.field private final billing:Lcom/superwall/sdk/billing/Billing;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/billing/Billing;)V
    .locals 1

    const-string v0, "billing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayBillingSubscriptionStatusProvider;->billing:Lcom/superwall/sdk/billing/Billing;

    return-void
.end method


# virtual methods
.method public getOfferType(Lcom/android/billingclient/api/Purchase;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;
    .locals 9

    const-string v0, "purchase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p2}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getRawStoreProduct()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object v0

    .line 100
    :cond_1
    instance-of v1, v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_5

    .line 101
    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getPricingPhaseList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-eqz v5, :cond_2

    .line 168
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_2
    move-object v7, v6

    check-cast v7, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 102
    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-nez v7, :cond_3

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v2

    goto :goto_0

    .line 173
    :cond_4
    check-cast v1, Ljava/util/List;

    goto :goto_1

    .line 104
    :cond_5
    instance-of v1, v0, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    if-eqz v1, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_6
    if-nez v0, :cond_d

    .line 105
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 110
    :goto_1
    invoke-virtual {p2}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getTrialPeriodEndDate()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto :goto_2

    :cond_7
    move-wide v5, v3

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long p2, v5, v7

    if-lez p2, :cond_8

    .line 111
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;->TRIAL:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    return-object p1

    .line 114
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_b

    .line 115
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v5

    goto :goto_3

    :cond_9
    move-wide v5, v3

    .line 116
    :goto_3
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v3

    :cond_a
    cmp-long p2, v5, v3

    if-gez p2, :cond_b

    .line 117
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;->PROMOTIONAL:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    return-object p1

    .line 120
    :cond_b
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    if-nez p1, :cond_c

    .line 121
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;->REVOKED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    return-object p1

    .line 124
    :cond_c
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;->SUBSCRIPTION:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    return-object p1

    .line 99
    :cond_d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public getSubscriptionState(Lcom/android/billingclient/api/Purchase;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/Purchase;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p2}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getRawStoreProduct()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getToMillis()J

    move-result-wide p2

    goto :goto_0

    :cond_0
    move-wide p2, v2

    .line 62
    :goto_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v4

    if-nez v4, :cond_1

    .line 63
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->REVOKED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object p1

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 67
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->GRACE_PERIOD:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object p1

    .line 71
    :cond_2
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    cmp-long v4, p2, v2

    if-lez v4, :cond_3

    cmp-long v4, v0, p2

    if-lez v4, :cond_3

    .line 74
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->EXPIRED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object p1

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 78
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result v4

    if-eqz v4, :cond_5

    cmp-long v2, p2, v2

    if-eqz v2, :cond_4

    cmp-long p2, v0, p2

    if-gez p2, :cond_5

    .line 80
    :cond_4
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->SUBSCRIBED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object p1

    .line 83
    :cond_5
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    if-ne p1, v5, :cond_6

    .line 84
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->EXPIRED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object p1

    .line 86
    :cond_6
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->UNKNOWN:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object p1
.end method

.method public getWillAutoRenew(Lcom/android/billingclient/api/Purchase;)Z
    .locals 1

    const-string v0, "purchase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result p1

    return p1
.end method

.method public isActive(Lcom/android/billingclient/api/Purchase;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/Purchase;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_8

    const/4 v3, 0x1

    if-eq p3, v3, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    .line 137
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 139
    :cond_1
    invoke-virtual {p2}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getRawStoreProduct()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object p3

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getUnderlyingProductDetails()Lcom/android/billingclient/api/ProductDetails;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v4

    :goto_0
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x360a33

    if-eq v5, v6, :cond_5

    const p1, 0x5fb1edc

    if-eq v5, p1, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "inapp"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_4
    :goto_1
    move v2, v3

    goto :goto_2

    :cond_5
    const-string v5, "subs"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_2

    .line 145
    :cond_6
    invoke-virtual {p2}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getRawStoreProduct()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v4

    :cond_7
    if-eqz v4, :cond_4

    .line 147
    invoke-virtual {v4}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getToMillis()J

    move-result-wide p2

    .line 148
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v4

    add-long/2addr v4, p2

    cmp-long p1, v4, v0

    if-lez p1, :cond_8

    goto :goto_1

    .line 159
    :cond_8
    :goto_2
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
