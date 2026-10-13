.class public final Lexpo/modules/superwallexpo/json/StoreTransactionKt;
.super Ljava/lang/Object;
.source "StoreTransaction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "toJson",
        "",
        "",
        "",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
        "expo-superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toJson(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 10
    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    .line 16
    const-string v2, "configRequestId"

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getConfigRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v2, "appSessionId"

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getAppSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getTransactionDate()Ljava/util/Date;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2, v1}, Lexpo/modules/superwallexpo/json/StoreTransactionKt;->toJson$toIsoString(Ljava/util/Date;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "transactionDate"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v2, "originalTransactionIdentifier"

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getOriginalTransactionIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v2, "storeTransactionId"

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getStoreTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getOriginalTransactionDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2, v1}, Lexpo/modules/superwallexpo/json/StoreTransactionKt;->toJson$toIsoString(Ljava/util/Date;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const-string v4, "originalTransactionDate"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v2, "webOrderLineItemID"

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getWebOrderLineItemID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v2, "appBundleId"

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getAppBundleId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v2, "subscriptionGroupId"

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getSubscriptionGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->isUpgraded()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "isUpgraded"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2, v1}, Lexpo/modules/superwallexpo/json/StoreTransactionKt;->toJson$toIsoString(Ljava/util/Date;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    const-string v4, "expirationDate"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v2, "offerId"

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getOfferId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getRevocationDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2, v1}, Lexpo/modules/superwallexpo/json/StoreTransactionKt;->toJson$toIsoString(Ljava/util/Date;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v1, "revocationDate"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "appAccountToken"

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getAppAccountToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "purchaseToken"

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "signature"

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static final toJson$toIsoString(Ljava/util/Date;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1

    .line 12
    invoke-virtual {p0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p0

    .line 13
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
