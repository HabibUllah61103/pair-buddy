.class public final Lexpo/modules/superwallexpo/json/SuperwallEvent$Companion;
.super Ljava/lang/Object;
.source "SuperwallEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/superwallexpo/json/SuperwallEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/superwallexpo/json/SuperwallEvent$Companion;",
        "",
        "<init>",
        "()V",
        "toJson",
        "",
        "",
        "superwallPlacement",
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
        "expo-superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/superwallexpo/json/SuperwallEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toJson(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "superwallPlacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 12
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$FirstSeen;

    const-string v2, "event"

    if-eqz v1, :cond_0

    const-string p1, "firstSeen"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Reset;

    if-eqz v1, :cond_1

    const-string p1, "reset"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 14
    :cond_1
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore$Start;

    if-eqz v1, :cond_2

    const-string p1, "restoreStart"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 15
    :cond_2
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore$Complete;

    if-eqz v1, :cond_3

    const-string p1, "restoreComplete"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 16
    :cond_3
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ConfigRefresh;

    if-eqz v1, :cond_4

    const-string p1, "configRefresh"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 17
    :cond_4
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore$Fail;

    if-eqz v1, :cond_5

    .line 18
    const-string v1, "restoreFail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore$Fail;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore$Fail;->getReason()Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 21
    :cond_5
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$AppOpen;

    if-eqz v1, :cond_6

    const-string p1, "appOpen"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 22
    :cond_6
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$AppLaunch;

    if-eqz v1, :cond_7

    const-string p1, "appLaunch"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 23
    :cond_7
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$IdentityAlias;

    if-eqz v1, :cond_8

    const-string p1, "identityAlias"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 24
    :cond_8
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$AppInstall;

    if-eqz v1, :cond_9

    const-string p1, "appInstall"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 25
    :cond_9
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SessionStart;

    if-eqz v1, :cond_a

    const-string p1, "sessionStart"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 26
    :cond_a
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$DeviceAttributes;

    const-string v3, "attributes"

    if-eqz v1, :cond_b

    .line 27
    const-string v1, "deviceAttributes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$DeviceAttributes;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$DeviceAttributes;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 30
    :cond_b
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SubscriptionStatusDidChange;

    if-eqz v1, :cond_c

    const-string p1, "subscriptionStatusDidChange"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 31
    :cond_c
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$AppClose;

    if-eqz v1, :cond_d

    const-string p1, "appClose"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 32
    :cond_d
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$DeepLink;

    const-string v4, "url"

    if-eqz v1, :cond_e

    .line 33
    const-string v1, "deepLink"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$DeepLink;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$DeepLink;->getUri()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 36
    :cond_e
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TriggerFire;

    if-eqz v1, :cond_f

    .line 37
    const-string v1, "triggerFire"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TriggerFire;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TriggerFire;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "placementName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lexpo/modules/superwallexpo/json/TriggerResult;->Companion:Lexpo/modules/superwallexpo/json/TriggerResult$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TriggerFire;->getResult()Lcom/superwall/sdk/models/triggers/TriggerResult;

    move-result-object p1

    invoke-virtual {v1, p1}, Lexpo/modules/superwallexpo/json/TriggerResult$Companion;->toJson(Lcom/superwall/sdk/models/triggers/TriggerResult;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "result"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 41
    :cond_f
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallOpen;

    const-string v5, "paywallInfo"

    if-eqz v1, :cond_10

    .line 42
    const-string v1, "paywallOpen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallOpen;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallOpen;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 45
    :cond_10
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallClose;

    if-eqz v1, :cond_11

    .line 46
    const-string v1, "paywallClose"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallClose;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallClose;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 49
    :cond_11
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPageView;

    if-eqz v1, :cond_12

    .line 50
    const-string v1, "paywallPageView"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPageView;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPageView;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPageView;->getData()Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PageViewDataKt;->toJson(Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 54
    :cond_12
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallDecline;

    if-eqz v1, :cond_13

    .line 55
    const-string v1, "paywallDecline"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallDecline;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallDecline;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 58
    :cond_13
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionStart;

    const-string v6, "product"

    if-eqz v1, :cond_14

    .line 59
    const-string v1, "transactionStart"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionStart;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionStart;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/StoreProductKt;->toJson(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionStart;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 63
    :cond_14
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionFail;

    const-string v7, "error"

    if-eqz v1, :cond_16

    .line 64
    const-string v1, "transactionFail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionFail;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionFail;->getError()Lcom/superwall/sdk/store/transactions/TransactionError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/store/transactions/TransactionError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    const-string v1, "Error message unavailable"

    :cond_15
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionFail;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 68
    :cond_16
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionAbandon;

    if-eqz v1, :cond_17

    .line 69
    const-string v1, "transactionAbandon"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionAbandon;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionAbandon;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/StoreProductKt;->toJson(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionAbandon;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 73
    :cond_17
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;

    if-eqz v1, :cond_19

    .line 74
    const-string v1, "transactionComplete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/StoreProductKt;->toJson(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;->getTransaction()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    move-result-object p1

    instance-of v1, p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    if-eqz v1, :cond_18

    check-cast p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    goto :goto_0

    :cond_18
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4e

    .line 79
    invoke-static {p1}, Lexpo/modules/superwallexpo/json/StoreTransactionKt;->toJson(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 80
    const-string v1, "transaction"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 83
    :cond_19
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SubscriptionStart;

    if-eqz v1, :cond_1a

    .line 84
    const-string v1, "subscriptionStart"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SubscriptionStart;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SubscriptionStart;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/StoreProductKt;->toJson(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SubscriptionStart;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 88
    :cond_1a
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$FreeTrialStart;

    if-eqz v1, :cond_1b

    .line 89
    const-string v1, "freeTrialStart"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$FreeTrialStart;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$FreeTrialStart;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/StoreProductKt;->toJson(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$FreeTrialStart;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 93
    :cond_1b
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionRestore;

    if-eqz v1, :cond_1c

    .line 94
    const-string v1, "transactionRestore"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionRestore;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionRestore;->getRestoreType()Lcom/superwall/sdk/store/transactions/RestoreType;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/RestoreTypeKt;->toJson(Lcom/superwall/sdk/store/transactions/RestoreType;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "restoreType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionRestore;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 98
    :cond_1c
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionTimeout;

    if-eqz v1, :cond_1d

    .line 99
    const-string v1, "transactionTimeout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionTimeout;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionTimeout;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 102
    :cond_1d
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$UserAttributes;

    if-eqz v1, :cond_1e

    .line 103
    const-string v1, "userAttributes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$UserAttributes;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$UserAttributes;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 106
    :cond_1e
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$IntegrationProps;

    const-string v8, "integrationAttributes"

    if-eqz v1, :cond_1f

    .line 107
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$IntegrationProps;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$IntegrationProps;->getAudienceFilterParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 110
    :cond_1f
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$IntegrationAttributes;

    if-eqz v1, :cond_20

    .line 111
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$IntegrationAttributes;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$IntegrationAttributes;->getAudienceFilterParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 114
    :cond_20
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$NonRecurringProductPurchase;

    if-eqz v1, :cond_21

    .line 115
    const-string v1, "nonRecurringProductPurchase"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$NonRecurringProductPurchase;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$NonRecurringProductPurchase;->getProduct()Lcom/superwall/sdk/analytics/superwall/TransactionProduct;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/TransactionProductKt;->toJson(Lcom/superwall/sdk/analytics/superwall/TransactionProduct;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$NonRecurringProductPurchase;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 119
    :cond_21
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadStart;

    const-string v3, "triggeredPlacementName"

    const-string v6, ""

    if-eqz v1, :cond_23

    .line 120
    const-string v1, "paywallResponseLoadStart"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadStart;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadStart;->getTriggeredPlacementName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_22

    goto :goto_1

    :cond_22
    move-object v6, p1

    :goto_1
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 123
    :cond_23
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadNotFound;

    if-eqz v1, :cond_25

    .line 124
    const-string v1, "paywallResponseLoadNotFound"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadNotFound;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadNotFound;->getTriggeredPlacementName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_24

    goto :goto_2

    :cond_24
    move-object v6, p1

    :goto_2
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 127
    :cond_25
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadFail;

    if-eqz v1, :cond_27

    .line 128
    const-string v1, "paywallResponseLoadFail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadFail;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadFail;->getTriggeredPlacementName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_3

    :cond_26
    move-object v6, p1

    :goto_3
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 131
    :cond_27
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadComplete;

    if-eqz v1, :cond_29

    .line 132
    const-string v1, "paywallResponseLoadComplete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadComplete;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadComplete;->getTriggeredPlacementName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    goto :goto_4

    :cond_28
    move-object v6, v1

    :goto_4
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadComplete;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 136
    :cond_29
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadStart;

    if-eqz v1, :cond_2a

    .line 137
    const-string v1, "paywallWebviewLoadStart"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadStart;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadStart;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 140
    :cond_2a
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadFail;

    const-string v8, "errorMessage"

    if-eqz v1, :cond_2b

    .line 141
    const-string v1, "paywallWebviewLoadFail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadFail;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadFail;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadFail;->getErrorMessage()Lcom/superwall/sdk/paywall/view/webview/WebviewError;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 144
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/webview/WebviewError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 147
    :cond_2b
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadComplete;

    if-eqz v1, :cond_2c

    .line 148
    const-string v1, "paywallWebviewLoadComplete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadComplete;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadComplete;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 151
    :cond_2c
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadTimeout;

    if-eqz v1, :cond_2d

    .line 152
    const-string v1, "paywallWebviewLoadTimeout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadTimeout;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadTimeout;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 155
    :cond_2d
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;

    if-eqz v1, :cond_2f

    .line 156
    const-string v1, "paywallProductsLoadStart"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->getTriggeredPlacementName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2e

    goto :goto_5

    :cond_2e
    move-object v6, v1

    :goto_5
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 160
    :cond_2f
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadFail;

    if-eqz v1, :cond_31

    .line 161
    const-string v1, "paywallProductsLoadFail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadFail;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadFail;->getTriggeredPlacementName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    goto :goto_6

    :cond_30
    move-object v6, v1

    :goto_6
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadFail;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadFail;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 165
    invoke-interface {v0, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 168
    :cond_31
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadComplete;

    if-eqz v1, :cond_33

    .line 169
    const-string v1, "paywallProductsLoadComplete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadComplete;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadComplete;->getTriggeredPlacementName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_32

    goto :goto_7

    :cond_32
    move-object v6, p1

    :goto_7
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 172
    :cond_33
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;

    if-eqz v1, :cond_35

    .line 173
    const-string v1, "surveyResponse"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->getSurvey()Lcom/superwall/sdk/config/models/Survey;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/SurveyKt;->toJson(Lcom/superwall/sdk/config/models/Survey;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "survey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->getSelectedOption()Lcom/superwall/sdk/config/models/SurveyOption;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/SurveyKt;->toJson(Lcom/superwall/sdk/config/models/SurveyOption;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "selectedOption"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->getCustomResponse()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_34

    goto :goto_8

    :cond_34
    move-object v6, v1

    :goto_8
    const-string v1, "customResponse"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 179
    :cond_35
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPresentationRequest;

    if-eqz v1, :cond_36

    .line 180
    const-string v1, "paywallPresentationRequest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPresentationRequest;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPresentationRequest;->getStatus()Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatus;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/PaywallPresentationRequestStatusKt;->toJson(Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatus;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPresentationRequest;->getReason()Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;

    move-result-object p1

    if-eqz p1, :cond_4e

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallPresentationRequestStatusKt;->toJson(Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 183
    const-string v1, "reason"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 186
    :cond_36
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyClose;

    if-eqz v1, :cond_37

    .line 187
    const-string p1, "surveyClose"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 189
    :cond_37
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ConfigAttributes;

    if-eqz v1, :cond_38

    .line 190
    const-string p1, "configAttributes"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 192
    :cond_38
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomPlacement;

    if-eqz v1, :cond_39

    .line 193
    const-string v1, "customPlacement"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomPlacement;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "params"

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomPlacement;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomPlacement;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 198
    :cond_39
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadFallback;

    if-eqz v1, :cond_3a

    .line 199
    const-string v1, "paywallWebviewLoadFallback"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadFallback;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadFallback;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 202
    :cond_3a
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ConfigFail;

    if-eqz v1, :cond_3b

    .line 203
    const-string p1, "configFail"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 205
    :cond_3b
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ConfirmAllAssignments;

    if-eqz v1, :cond_3c

    .line 206
    const-string p1, "confirmAllAssignments"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 208
    :cond_3c
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResourceLoadFail;

    if-eqz v1, :cond_3d

    .line 209
    const-string v1, "paywallResourceLoadFail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResourceLoadFail;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResourceLoadFail;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResourceLoadFail;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 213
    :cond_3d
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;

    if-eqz v1, :cond_3e

    .line 214
    const-string v1, "shimmerViewComplete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;->getDuration()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "duration"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 217
    :cond_3e
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewStart;

    if-eqz v1, :cond_3f

    .line 218
    const-string p1, "shimmerViewStart"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 220
    :cond_3f
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$RedemptionComplete;

    if-eqz v1, :cond_40

    .line 221
    const-string p1, "redemptionComplete"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 223
    :cond_40
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$RedemptionFail;

    if-eqz v1, :cond_41

    .line 224
    const-string p1, "redemptionFail"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 226
    :cond_41
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$RedemptionStart;

    if-eqz v1, :cond_42

    .line 227
    const-string p1, "redemptionStart"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 229
    :cond_42
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$EnrichmentStart;

    if-eqz v1, :cond_43

    .line 230
    const-string p1, "enrichmentStart"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 232
    :cond_43
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$EnrichmentFail;

    if-eqz v1, :cond_44

    .line 233
    const-string p1, "enrichmentFail"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 235
    :cond_44
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$EnrichmentComplete;

    if-eqz v1, :cond_45

    .line 236
    const-string v1, "enrichmentComplete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$EnrichmentComplete;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$EnrichmentComplete;->getUserEnrichment()Ljava/util/Map;

    move-result-object v1

    const-string v2, "userEnrichment"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "deviceEnrichment"

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$EnrichmentComplete;->getDeviceEnrichment()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 240
    :cond_45
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;

    if-eqz v1, :cond_46

    .line 241
    const-string v1, "reviewRequested"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;->getCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "count"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 244
    :cond_46
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;

    if-eqz v1, :cond_47

    .line 245
    const-string p1, "customerInfoDidChange"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 247
    :cond_47
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionRequested;

    const-string v3, "paywallIdentifier"

    const-string v4, "permissionName"

    if-eqz v1, :cond_48

    .line 248
    const-string v1, "permissionRequested"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionRequested;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionRequested;->getPermissionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionRequested;->getPaywallIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 252
    :cond_48
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionGranted;

    if-eqz v1, :cond_49

    .line 253
    const-string v1, "permissionGranted"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionGranted;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionGranted;->getPermissionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionGranted;->getPaywallIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 257
    :cond_49
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionDenied;

    if-eqz v1, :cond_4a

    .line 258
    const-string v1, "permissionDenied"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionDenied;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionDenied;->getPermissionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionDenied;->getPaywallIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 262
    :cond_4a
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPreloadStart;

    const-string v3, "paywallCount"

    if-eqz v1, :cond_4b

    .line 263
    const-string v1, "paywallPreloadStart"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPreloadStart;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPreloadStart;->getPaywallCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 266
    :cond_4b
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPreloadComplete;

    if-eqz v1, :cond_4c

    .line 267
    const-string v1, "paywallPreloadComplete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPreloadComplete;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPreloadComplete;->getPaywallCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 270
    :cond_4c
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TestModeModalOpen;

    if-eqz v1, :cond_4d

    .line 271
    const-string p1, "testModeModalOpen"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 273
    :cond_4d
    instance-of p1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TestModeModalClose;

    if-eqz p1, :cond_4e

    .line 274
    const-string p1, "testModeModalClose"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    return-object v0
.end method
