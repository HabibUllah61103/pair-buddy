.class public final Lexpo/modules/superwallexpo/json/RedemptionResultKt;
.super Ljava/lang/Object;
.source "RedemptionResult.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRedemptionResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RedemptionResult.kt\nexpo/modules/superwallexpo/json/RedemptionResultKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,138:1\n1#2:139\n1869#3,2:140\n1869#3,2:142\n1869#3,2:144\n216#4,2:146\n*S KotlinDebug\n*F\n+ 1 RedemptionResult.kt\nexpo/modules/superwallexpo/json/RedemptionResultKt\n*L\n48#1:140,2\n73#1:142,2\n82#1:144,2\n128#1:146,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0005H\u0002\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0006H\u0002\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0007H\u0002\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0008H\u0002\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\tH\u0002\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\nH\u0002\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u000bH\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "toJson",
        "",
        "",
        "",
        "Lcom/superwall/sdk/models/internal/RedemptionResult;",
        "Lcom/superwall/sdk/models/internal/RedemptionInfo;",
        "Lcom/superwall/sdk/models/internal/PurchaserInfo;",
        "Lcom/superwall/sdk/models/internal/StoreIdentifiers;",
        "Lcom/superwall/sdk/models/internal/ErrorInfo;",
        "Lcom/superwall/sdk/models/internal/ExpiredInfo;",
        "Lcom/superwall/sdk/models/internal/RedemptionOwnership;",
        "Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;",
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
.method private static final toJson(Lcom/superwall/sdk/models/internal/ErrorInfo;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/internal/ErrorInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 96
    const-string v1, "message"

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/ErrorInfo;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static final toJson(Lcom/superwall/sdk/models/internal/ExpiredInfo;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/internal/ExpiredInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 102
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/ExpiredInfo;->getResent()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "resent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/ExpiredInfo;->getObfuscatedEmail()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "obfuscatedEmail"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static final toJson(Lcom/superwall/sdk/models/internal/PurchaserInfo;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/internal/PurchaserInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 60
    const-string v1, "appUserId"

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/PurchaserInfo;->getAppUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/PurchaserInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "email"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/PurchaserInfo;->getStoreIdentifiers()Lcom/superwall/sdk/models/internal/StoreIdentifiers;

    move-result-object p0

    invoke-static {p0}, Lexpo/modules/superwallexpo/json/RedemptionResultKt;->toJson(Lcom/superwall/sdk/models/internal/StoreIdentifiers;)Ljava/util/Map;

    move-result-object p0

    const-string v1, "storeIdentifiers"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static final toJson(Lcom/superwall/sdk/models/internal/RedemptionInfo;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/internal/RedemptionInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 43
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionInfo;->getOwnership()Lcom/superwall/sdk/models/internal/RedemptionOwnership;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/RedemptionResultKt;->toJson(Lcom/superwall/sdk/models/internal/RedemptionOwnership;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "ownership"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionInfo;->getPurchaserInfo()Lcom/superwall/sdk/models/internal/PurchaserInfo;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/RedemptionResultKt;->toJson(Lcom/superwall/sdk/models/internal/PurchaserInfo;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "purchaserInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionInfo;->getPaywallInfo()Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "paywallInfo"

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/RedemptionResultKt;->toJson(Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 48
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionInfo;->getEntitlements()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 140
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 49
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 50
    const-string v4, "id"

    invoke-virtual {v2}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_1
    const-string p0, "entitlements"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static final toJson(Lcom/superwall/sdk/models/internal/RedemptionOwnership;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/internal/RedemptionOwnership;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 110
    instance-of v1, p0, Lcom/superwall/sdk/models/internal/RedemptionOwnership$Device;

    const-string v2, "type"

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "DEVICE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    check-cast p0, Lcom/superwall/sdk/models/internal/RedemptionOwnership$Device;

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionOwnership$Device;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "deviceId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 114
    :cond_0
    instance-of v1, p0, Lcom/superwall/sdk/models/internal/RedemptionOwnership$AppUser;

    if-eqz v1, :cond_1

    .line 115
    const-string v1, "APP_USER"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    check-cast p0, Lcom/superwall/sdk/models/internal/RedemptionOwnership$AppUser;

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionOwnership$AppUser;->getAppUserId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "appUserId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 109
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final toJson(Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 124
    const-string v1, "identifier"

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "placementName"

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 128
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;->getPlacementParams()Ljava/util/Map;

    move-result-object v2

    .line 146
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    .line 129
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_0
    const-string v2, "placementParams"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;->getVariantId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "variantId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;->getExperimentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "experimentId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;->getProductIdentifier()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v1, "productIdentifier"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public static final toJson(Lcom/superwall/sdk/models/internal/RedemptionResult;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/internal/RedemptionResult;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 14
    const-string v1, "code"

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    instance-of v1, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;

    const-string v2, "redemptionInfo"

    const-string v3, "status"

    if-eqz v1, :cond_0

    .line 18
    const-string v1, "SUCCESS"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    check-cast p0, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;->getRedemptionInfo()Lcom/superwall/sdk/models/internal/RedemptionInfo;

    move-result-object p0

    invoke-static {p0}, Lexpo/modules/superwallexpo/json/RedemptionResultKt;->toJson(Lcom/superwall/sdk/models/internal/RedemptionInfo;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 21
    :cond_0
    instance-of v1, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$Error;

    if-eqz v1, :cond_1

    .line 22
    const-string v1, "ERROR"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    check-cast p0, Lcom/superwall/sdk/models/internal/RedemptionResult$Error;

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult$Error;->getError()Lcom/superwall/sdk/models/internal/ErrorInfo;

    move-result-object p0

    invoke-static {p0}, Lexpo/modules/superwallexpo/json/RedemptionResultKt;->toJson(Lcom/superwall/sdk/models/internal/ErrorInfo;)Ljava/util/Map;

    move-result-object p0

    const-string v1, "error"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 25
    :cond_1
    instance-of v1, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$Expired;

    if-eqz v1, :cond_2

    .line 26
    const-string v1, "CODE_EXPIRED"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    check-cast p0, Lcom/superwall/sdk/models/internal/RedemptionResult$Expired;

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult$Expired;->getExpired()Lcom/superwall/sdk/models/internal/ExpiredInfo;

    move-result-object p0

    invoke-static {p0}, Lexpo/modules/superwallexpo/json/RedemptionResultKt;->toJson(Lcom/superwall/sdk/models/internal/ExpiredInfo;)Ljava/util/Map;

    move-result-object p0

    const-string v1, "expired"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 29
    :cond_2
    instance-of v1, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;

    if-eqz v1, :cond_3

    .line 30
    const-string p0, "INVALID_CODE"

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 32
    :cond_3
    instance-of v1, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$ExpiredSubscription;

    if-eqz v1, :cond_4

    .line 33
    const-string v1, "EXPIRED_SUBSCRIPTION"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    check-cast p0, Lcom/superwall/sdk/models/internal/RedemptionResult$ExpiredSubscription;

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult$ExpiredSubscription;->getRedemptionInfo()Lcom/superwall/sdk/models/internal/RedemptionInfo;

    move-result-object p0

    invoke-static {p0}, Lexpo/modules/superwallexpo/json/RedemptionResultKt;->toJson(Lcom/superwall/sdk/models/internal/RedemptionInfo;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 16
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final toJson(Lcom/superwall/sdk/models/internal/StoreIdentifiers;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/internal/StoreIdentifiers;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 69
    instance-of v1, p0, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Stripe;

    const-string v2, "store"

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "STRIPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    check-cast p0, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Stripe;

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Stripe;->getStripeCustomerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stripeCustomerId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 73
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Stripe;->getSubscriptionIds()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 142
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_0
    const-string p0, "stripeSubscriptionIds"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 78
    :cond_1
    instance-of v1, p0, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Paddle;

    if-eqz v1, :cond_3

    .line 79
    const-string v1, "PADDLE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    check-cast p0, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Paddle;

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Paddle;->getPaddleCustomerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "paddleCustomerId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 82
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Paddle;->getPaddleSubscriptionIds()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 144
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_2
    const-string p0, "paddleSubscriptionIds"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 87
    :cond_3
    instance-of p0, p0, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Unknown;

    if-eqz p0, :cond_4

    .line 88
    const-string p0, "UNKNOWN"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 68
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
