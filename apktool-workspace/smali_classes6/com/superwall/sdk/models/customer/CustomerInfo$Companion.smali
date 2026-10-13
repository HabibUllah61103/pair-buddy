.class public final Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;
.super Ljava/lang/Object;
.source "CustomerInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/customer/CustomerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomerInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomerInfo.kt\ncom/superwall/sdk/models/customer/CustomerInfo$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,168:1\n774#2:169\n865#2,2:170\n774#2:172\n865#2,2:173\n1053#2:175\n*S KotlinDebug\n*F\n+ 1 CustomerInfo.kt\ncom/superwall/sdk/models/customer/CustomerInfo$Companion\n*L\n138#1:169\n138#1:170,2\n145#1:172\n145#1:173,2\n156#1:175\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;",
        "",
        "<init>",
        "()V",
        "empty",
        "Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "forExternalPurchaseController",
        "storage",
        "Lcom/superwall/sdk/storage/Storage;",
        "subscriptionStatus",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final empty()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 6

    .line 93
    new-instance v0, Lcom/superwall/sdk/models/customer/CustomerInfo;

    .line 94
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 95
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 97
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    .line 93
    const-string v3, ""

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/models/customer/CustomerInfo;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    return-object v0
.end method

.method public final forExternalPurchaseController(Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 8

    const-string v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/superwall/sdk/storage/LatestRedemptionResponse;->INSTANCE:Lcom/superwall/sdk/storage/LatestRedemptionResponse;

    check-cast v0, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {p1, v0}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->getCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;->empty()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v0

    .line 130
    :cond_1
    sget-object v1, Lcom/superwall/sdk/storage/LatestDeviceCustomerInfo;->INSTANCE:Lcom/superwall/sdk/storage/LatestDeviceCustomerInfo;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {p1, v1}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/models/customer/CustomerInfo;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;->empty()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object p1

    .line 134
    :cond_2
    invoke-static {p1, v0}, Lcom/superwall/sdk/models/customer/CustomerInfoMergingKt;->merge(Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;)Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v1

    .line 138
    invoke-virtual {p1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getEntitlements()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 170
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 138
    invoke-virtual {v4}, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive()Z

    move-result v4

    if-nez v4, :cond_3

    .line 170
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 144
    instance-of p1, p2, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    if-eqz p1, :cond_7

    .line 145
    check-cast p2, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    invoke-virtual {p2}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;->getEntitlements()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 172
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 173
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 145
    invoke-virtual {v4}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getStore()Lcom/superwall/sdk/models/product/Store;

    move-result-object v4

    sget-object v5, Lcom/superwall/sdk/models/product/Store;->PLAY_STORE:Lcom/superwall/sdk/models/product/Store;

    if-ne v4, v5, :cond_5

    .line 173
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    :cond_6
    check-cast p2, Ljava/util/List;

    goto :goto_3

    .line 147
    :cond_7
    sget-object p1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 148
    sget-object p1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 143
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 149
    :cond_9
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 155
    :goto_3
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getEntitlements()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p2, p1}, Lcom/superwall/sdk/models/customer/CustomerInfoMergingKt;->plus(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    check-cast v2, Ljava/util/Collection;

    invoke-static {p1, v2}, Lcom/superwall/sdk/models/customer/CustomerInfoMergingKt;->plus(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 156
    invoke-static {p1}, Lcom/superwall/sdk/models/customer/CustomerInfoMergingKt;->mergeEntitlementsPrioritized(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 175
    new-instance p2, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion$forExternalPurchaseController$$inlined$sortedBy$1;

    invoke-direct {p2}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion$forExternalPurchaseController$$inlined$sortedBy$1;-><init>()V

    check-cast p2, Ljava/util/Comparator;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v6

    .line 158
    new-instance v2, Lcom/superwall/sdk/models/customer/CustomerInfo;

    .line 159
    invoke-virtual {v1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getSubscriptions()Ljava/util/List;

    move-result-object v3

    .line 160
    invoke-virtual {v1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getNonSubscriptions()Ljava/util/List;

    move-result-object v4

    .line 161
    invoke-virtual {v1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 158
    invoke-direct/range {v2 .. v7}, Lcom/superwall/sdk/models/customer/CustomerInfo;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    return-object v2
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
