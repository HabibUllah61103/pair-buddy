.class public final Lexpo/modules/superwallexpo/json/CustomerInfoKt;
.super Ljava/lang/Object;
.source "CustomerInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/superwallexpo/json/CustomerInfoKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomerInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomerInfo.kt\nexpo/modules/superwallexpo/json/CustomerInfoKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,64:1\n1563#2:65\n1634#2,3:66\n1563#2:69\n1634#2,3:70\n1563#2:73\n1634#2,3:74\n1#3:77\n*S KotlinDebug\n*F\n+ 1 CustomerInfo.kt\nexpo/modules/superwallexpo/json/CustomerInfoKt\n*L\n31#1:65\n31#1:66,3\n32#1:69\n32#1:70,3\n33#1:73\n33#1:74,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u001a\u000c\u0010\u0005\u001a\u00020\u0001*\u00020\u0006H\u0002\u001a\u0018\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008*\u00020\n\u001a\u0018\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008*\u00020\u000b\u001a\u0018\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008*\u00020\u000c\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "toJsonString",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;",
        "dateFormatter",
        "Ljava/time/format/DateTimeFormatter;",
        "toIsoString",
        "Ljava/util/Date;",
        "toJson",
        "",
        "",
        "Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;",
        "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;",
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


# static fields
.field private static final dateFormatter:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    const-string v1, "ISO_INSTANT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lexpo/modules/superwallexpo/json/CustomerInfoKt;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method private static final toIsoString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 26
    invoke-virtual {p0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    sget-object v0, Lexpo/modules/superwallexpo/json/CustomerInfoKt;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p0, v0}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toJson(Lcom/superwall/sdk/models/customer/CustomerInfo;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 30
    const-string v1, "userId"

    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getSubscriptions()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 66
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 67
    check-cast v4, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;

    .line 31
    invoke-static {v4}, Lexpo/modules/superwallexpo/json/CustomerInfoKt;->toJson(Lcom/superwall/sdk/models/customer/SubscriptionTransaction;)Ljava/util/Map;

    move-result-object v4

    .line 67
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 31
    const-string v1, "subscriptions"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getNonSubscriptions()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 70
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 71
    check-cast v4, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;

    .line 32
    invoke-static {v4}, Lexpo/modules/superwallexpo/json/CustomerInfoKt;->toJson(Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;)Ljava/util/Map;

    move-result-object v4

    .line 71
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 32
    const-string v1, "nonSubscriptions"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getEntitlements()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 74
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 75
    check-cast v2, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 33
    invoke-static {v2}, Lexpo/modules/superwallexpo/json/EntitlementsKt;->toJson(Lcom/superwall/sdk/models/entitlements/Entitlement;)Ljava/util/Map;

    move-result-object v2

    .line 75
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 76
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 33
    const-string p0, "entitlements"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final toJson(Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 56
    const-string v1, "transactionId"

    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "productId"

    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->getPurchaseDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/CustomerInfoKt;->toIsoString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "purchaseDate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isConsumable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isConsumable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isRevoked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isRevoked"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->getStore()Lcom/superwall/sdk/models/product/Store;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/models/product/Store;->name()Ljava/lang/String;

    move-result-object p0

    const-string v1, "store"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final toJson(Lcom/superwall/sdk/models/customer/SubscriptionTransaction;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 39
    const-string v1, "transactionId"

    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "productId"

    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->getPurchaseDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/CustomerInfoKt;->toIsoString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "purchaseDate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->getWillRenew()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "willRenew"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isRevoked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isRevoked"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInGracePeriod()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isInGracePeriod"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInBillingRetryPeriod()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isInBillingRetryPeriod"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isActive()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isActive"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/CustomerInfoKt;->toIsoString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "expirationDate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->getStore()Lcom/superwall/sdk/models/product/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/Store;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "store"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->getOfferType()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "offerType"

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/CustomerInfoKt;->toJsonString(Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->getSubscriptionGroupId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "subscriptionGroupId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private static final toJsonString(Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;)Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lexpo/modules/superwallexpo/json/CustomerInfoKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 20
    :pswitch_0
    const-string p0, "revoked"

    return-object p0

    .line 19
    :pswitch_1
    const-string p0, "winback"

    return-object p0

    .line 18
    :pswitch_2
    const-string p0, "promotional"

    return-object p0

    .line 17
    :pswitch_3
    const-string p0, "subscription"

    return-object p0

    .line 16
    :pswitch_4
    const-string p0, "code"

    return-object p0

    .line 15
    :pswitch_5
    const-string p0, "trial"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
