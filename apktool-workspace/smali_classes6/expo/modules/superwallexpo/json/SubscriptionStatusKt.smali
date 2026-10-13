.class public final Lexpo/modules/superwallexpo/json/SubscriptionStatusKt;
.super Ljava/lang/Object;
.source "SubscriptionStatus.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubscriptionStatus.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionStatus.kt\nexpo/modules/superwallexpo/json/SubscriptionStatusKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,28:1\n1563#2:29\n1634#2,3:30\n*S KotlinDebug\n*F\n+ 1 SubscriptionStatus.kt\nexpo/modules/superwallexpo/json/SubscriptionStatusKt\n*L\n16#1:29\n16#1:30,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "toJson",
        "",
        "",
        "",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
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
.method public static final toJson(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 10
    instance-of v1, p0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    if-eqz v1, :cond_0

    const-string v2, "ACTIVE"

    goto :goto_0

    .line 11
    :cond_0
    instance-of v2, p0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    if-eqz v2, :cond_1

    const-string v2, "INACTIVE"

    goto :goto_0

    .line 12
    :cond_1
    instance-of v2, p0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;

    if-eqz v2, :cond_6

    const-string v2, "UNKNOWN"

    .line 9
    :goto_0
    const-string v3, "status"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 16
    check-cast p0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    invoke-virtual {p0}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;->getEntitlements()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 30
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 31
    check-cast v2, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 17
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 18
    const-string v4, "id"

    invoke-virtual {v2}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 16
    const-string p0, "entitlements"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 22
    :cond_3
    instance-of v1, p0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    if-nez v1, :cond_5

    .line 24
    instance-of p0, p0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;

    if-eqz p0, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    :goto_2
    return-object v0

    .line 9
    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
