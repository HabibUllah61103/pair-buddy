.class public final Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;
.super Ljava/lang/Object;
.source "EntitlementProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$ProcessedTransactions;,
        Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEntitlementProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntitlementProcessor.kt\ncom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,300:1\n774#2:301\n865#2,2:302\n1557#2:304\n1628#2,3:305\n774#2:308\n865#2,2:309\n1557#2:311\n1628#2,3:312\n1557#2:323\n1628#2,3:324\n1557#2:328\n1628#2,3:329\n2341#2,14:332\n126#3:315\n153#3,2:316\n155#3:319\n126#3:320\n153#3,2:321\n155#3:327\n1#4:318\n*S KotlinDebug\n*F\n+ 1 EntitlementProcessor.kt\ncom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor\n*L\n34#1:301\n34#1:302,2\n37#1:304\n37#1:305,3\n48#1:308\n48#1:309,2\n51#1:311\n51#1:312,3\n119#1:323\n119#1:324,3\n156#1:328\n156#1:329,3\n159#1:332,14\n92#1:315\n92#1:316,2\n92#1:319\n117#1:320\n117#1:321,2\n117#1:327\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007Jf\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00070\n2\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\n2\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000f0\n2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u000f0\nJ4\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u000b2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0013\u001a\u00020\u000c2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000fH\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;",
        "",
        "<init>",
        "()V",
        "processTransactions",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$ProcessedTransactions;",
        "transactions",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;",
        "buildEntitlementsFromTransactions",
        "",
        "",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "transactionsByEntitlement",
        "rawEntitlementsByProductId",
        "",
        "productIdsByEntitlementId",
        "enrichEntitlement",
        "entitlementId",
        "rawEntitlement",
        "allProductIds",
        "ProcessedTransactions",
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
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final enrichEntitlement(Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/models/entitlements/Entitlement;Ljava/util/Set;)Lcom/superwall/sdk/models/entitlements/Entitlement;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;",
            ">;",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;"
        }
    .end annotation

    .line 156
    move-object/from16 v0, p4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 329
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 330
    check-cast v2, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    .line 156
    invoke-interface {v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductId()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 328
    check-cast v1, Ljava/lang/Iterable;

    .line 156
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    :cond_1
    move-object v5, v0

    check-cast v5, Ljava/util/Set;

    .line 159
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .line 332
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_1

    .line 334
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 335
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 336
    :cond_3
    move-object v4, v2

    check-cast v4, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    .line 159
    invoke-interface {v4}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getOriginalPurchaseDate()Ljava/util/Date;

    move-result-object v4

    .line 336
    check-cast v4, Ljava/lang/Comparable;

    .line 338
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 339
    move-object v7, v6

    check-cast v7, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    .line 159
    invoke-interface {v7}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getOriginalPurchaseDate()Ljava/util/Date;

    move-result-object v7

    .line 339
    check-cast v7, Ljava/lang/Comparable;

    .line 340
    invoke-interface {v4, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_5

    move-object v2, v6

    move-object v4, v7

    .line 344
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 159
    :goto_1
    check-cast v2, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getOriginalPurchaseDate()Ljava/util/Date;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_6
    move-object v7, v3

    .line 163
    :goto_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    .line 164
    invoke-interface {v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v4

    sget-object v6, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->NON_CONSUMABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    if-ne v4, v6, :cond_7

    .line 165
    invoke-interface {v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isRevoked()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_8
    move-object v1, v3

    .line 163
    :goto_3
    check-cast v1, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 170
    invoke-interface {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductId()Ljava/lang/String;

    move-result-object v1

    move v4, v0

    goto :goto_4

    :cond_9
    move v4, v2

    move-object v1, v3

    :goto_4
    move v6, v4

    .line 175
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v3

    move-object v11, v9

    move-object v10, v8

    move-object v8, v11

    :cond_a
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    .line 177
    invoke-interface {v12}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isRevoked()Z

    move-result v13

    if-nez v13, :cond_a

    .line 180
    invoke-interface {v12}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v13

    sget-object v14, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v13}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->ordinal()I

    move-result v13

    aget v13, v14, v13

    const/4 v14, 0x2

    if-eq v13, v0, :cond_d

    if-eq v13, v14, :cond_c

    const/4 v15, 0x3

    if-eq v13, v15, :cond_c

    const/4 v15, 0x4

    if-ne v13, v15, :cond_b

    goto :goto_6

    :cond_b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 190
    :cond_c
    invoke-interface {v12}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isActive()Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_d
    move v4, v0

    :cond_e
    :goto_6
    if-nez v6, :cond_10

    .line 204
    new-array v13, v14, [Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    sget-object v15, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->AUTO_RENEWABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    aput-object v15, v13, v2

    .line 205
    sget-object v15, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->NON_RENEWABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    aput-object v15, v13, v0

    .line 203
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 202
    invoke-interface {v12}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    if-eqz v9, :cond_f

    .line 209
    invoke-interface {v9}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getPurchaseDate()Ljava/util/Date;

    move-result-object v13

    invoke-interface {v12}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getPurchaseDate()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_10

    :cond_f
    move-object v9, v12

    .line 217
    :cond_10
    invoke-interface {v12}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isRevoked()Z

    move-result v13

    if-nez v13, :cond_14

    .line 220
    new-array v13, v14, [Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    sget-object v15, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->AUTO_RENEWABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    aput-object v15, v13, v2

    .line 221
    sget-object v15, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->NON_RENEWABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    aput-object v15, v13, v0

    .line 219
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 218
    invoke-interface {v12}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 225
    invoke-interface {v12}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getRenewedAt()Ljava/util/Date;

    move-result-object v13

    if-nez v13, :cond_12

    move-object/from16 v13, p0

    check-cast v13, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;

    .line 227
    invoke-interface {v12}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getPurchaseDate()Ljava/util/Date;

    move-result-object v13

    invoke-interface {v12}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getOriginalPurchaseDate()Ljava/util/Date;

    move-result-object v15

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 228
    invoke-interface {v12}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getPurchaseDate()Ljava/util/Date;

    move-result-object v13

    goto :goto_7

    :cond_11
    move-object v13, v3

    :cond_12
    :goto_7
    if-eqz v13, :cond_14

    if-eqz v8, :cond_13

    .line 234
    invoke-virtual {v8, v13}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v15

    if-eqz v15, :cond_14

    :cond_13
    move-object v8, v13

    :cond_14
    if-nez v6, :cond_a

    .line 244
    new-array v13, v14, [Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    sget-object v14, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->AUTO_RENEWABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    aput-object v14, v13, v2

    .line 245
    sget-object v14, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->NON_RENEWABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    aput-object v14, v13, v0

    .line 243
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 242
    invoke-interface {v12}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 248
    invoke-interface {v12}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getExpirationDate()Ljava/util/Date;

    move-result-object v12

    if-eqz v12, :cond_a

    if-eqz v11, :cond_15

    .line 250
    invoke-virtual {v12, v11}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_15
    move-object v11, v12

    goto/16 :goto_5

    :cond_16
    if-nez v1, :cond_18

    if-eqz v9, :cond_17

    .line 259
    invoke-interface {v9}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_8

    :cond_17
    move-object v1, v3

    :cond_18
    :goto_8
    if-nez v6, :cond_19

    if-eqz v9, :cond_19

    .line 265
    invoke-interface {v9}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getWillRenew()Z

    move-result v2

    :cond_19
    if-nez v6, :cond_1e

    if-eqz v9, :cond_1e

    .line 273
    invoke-interface {v9}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isRevoked()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->REVOKED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    :goto_9
    move-object v12, v0

    goto :goto_a

    .line 274
    :cond_1a
    invoke-interface {v9}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isInGracePeriod()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->GRACE_PERIOD:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    goto :goto_9

    .line 275
    :cond_1b
    invoke-interface {v9}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isInBillingRetryPeriod()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->BILLING_RETRY:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    goto :goto_9

    :cond_1c
    if-nez v4, :cond_1d

    .line 276
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->EXPIRED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    goto :goto_9

    .line 277
    :cond_1d
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->SUBSCRIBED:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    goto :goto_9

    :cond_1e
    move-object v12, v3

    :goto_a
    move v0, v6

    move-object v6, v1

    .line 283
    new-instance v1, Lcom/superwall/sdk/models/entitlements/Entitlement;

    move-object v9, v3

    .line 285
    invoke-virtual/range {p3 .. p3}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getType()Lcom/superwall/sdk/models/entitlements/Entitlement$Type;

    move-result-object v3

    if-eqz v0, :cond_1f

    goto :goto_b

    :cond_1f
    move-object v9, v11

    .line 292
    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 293
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 296
    invoke-virtual/range {p3 .. p3}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getStore()Lcom/superwall/sdk/models/product/Store;

    move-result-object v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/superwall/sdk/models/product/Store;->PLAY_STORE:Lcom/superwall/sdk/models/product/Store;

    :cond_20
    move-object v14, v0

    const/4 v13, 0x0

    move-object/from16 v2, p1

    .line 283
    invoke-direct/range {v1 .. v14}, Lcom/superwall/sdk/models/entitlements/Entitlement;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;)V

    return-object v1
.end method


# virtual methods
.method public final buildEntitlementsFromTransactions(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "transactionsByEntitlement"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "rawEntitlementsByProductId"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "productIdsByEntitlementId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 315
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 316
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 95
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 96
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 97
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/superwall/sdk/models/entitlements/Entitlement;

    invoke-virtual {v9}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_2
    move-object v7, v8

    :goto_1
    check-cast v7, Lcom/superwall/sdk/models/entitlements/Entitlement;

    if-nez v7, :cond_3

    move-object v4, v8

    move-object/from16 v8, p0

    goto :goto_2

    .line 100
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-nez v6, :cond_4

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v6

    :cond_4
    move-object/from16 v8, p0

    .line 102
    invoke-direct {v8, v5, v4, v7, v6}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;->enrichEntitlement(Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/models/entitlements/Entitlement;Ljava/util/Set;)Lcom/superwall/sdk/models/entitlements/Entitlement;

    move-result-object v4

    .line 108
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 317
    :goto_2
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object/from16 v8, p0

    .line 319
    check-cast v1, Ljava/util/List;

    .line 315
    check-cast v1, Ljava/lang/Iterable;

    .line 109
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 110
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 320
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 321
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 119
    check-cast v4, Ljava/lang/Iterable;

    .line 323
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 324
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 325
    move-object v9, v7

    check-cast v9, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 120
    invoke-virtual {v9}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/superwall/sdk/models/entitlements/Entitlement;

    if-nez v7, :cond_7

    .line 122
    invoke-virtual {v9}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    if-nez v7, :cond_6

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v7

    :cond_6
    move-object v13, v7

    const/16 v23, 0x1ff3

    const/16 v24, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 121
    invoke-static/range {v9 .. v24}, Lcom/superwall/sdk/models/entitlements/Entitlement;->copy$default(Lcom/superwall/sdk/models/entitlements/Entitlement;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;ILjava/lang/Object;)Lcom/superwall/sdk/models/entitlements/Entitlement;

    move-result-object v7

    .line 325
    :cond_7
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 326
    :cond_8
    check-cast v6, Ljava/util/List;

    .line 118
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 322
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 327
    :cond_9
    check-cast v2, Ljava/util/List;

    .line 320
    check-cast v2, Ljava/lang/Iterable;

    .line 128
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final processTransactions(Ljava/util/List;)Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$ProcessedTransactions;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;",
            ">;)",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$ProcessedTransactions;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "transactions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    check-cast v0, Ljava/lang/Iterable;

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 302
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    .line 35
    invoke-interface {v4}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v5

    sget-object v6, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->CONSUMABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    if-eq v5, v6, :cond_1

    .line 36
    invoke-interface {v4}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v4

    sget-object v5, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->NON_CONSUMABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    if-ne v4, v5, :cond_0

    .line 302
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 301
    check-cast v1, Ljava/lang/Iterable;

    .line 304
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 305
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 306
    check-cast v4, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    .line 38
    new-instance v5, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;

    .line 39
    invoke-interface {v4}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v6

    .line 40
    invoke-interface {v4}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductId()Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-interface {v4}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getPurchaseDate()Ljava/util/Date;

    move-result-object v8

    .line 42
    invoke-interface {v4}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v9

    sget-object v10, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->CONSUMABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 43
    :goto_2
    invoke-interface {v4}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isRevoked()Z

    move-result v10

    const/16 v12, 0x20

    const/4 v13, 0x0

    const/4 v11, 0x0

    .line 38
    invoke-direct/range {v5 .. v13}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 306
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 307
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 309
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    .line 49
    invoke-interface {v5}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v6

    sget-object v7, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->AUTO_RENEWABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    if-eq v6, v7, :cond_6

    .line 50
    invoke-interface {v5}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v5

    sget-object v6, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->NON_RENEWABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    if-ne v5, v6, :cond_5

    .line 309
    :cond_6
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 310
    :cond_7
    check-cast v1, Ljava/util/List;

    .line 308
    check-cast v1, Ljava/lang/Iterable;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 312
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 313
    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    .line 52
    new-instance v4, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;

    .line 53
    invoke-interface {v3}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-interface {v3}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductId()Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-interface {v3}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getPurchaseDate()Ljava/util/Date;

    move-result-object v7

    .line 56
    invoke-interface {v3}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getWillRenew()Z

    move-result v8

    .line 57
    invoke-interface {v3}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isRevoked()Z

    move-result v9

    .line 58
    invoke-interface {v3}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isInGracePeriod()Z

    move-result v10

    .line 59
    invoke-interface {v3}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isInBillingRetryPeriod()Z

    move-result v11

    .line 60
    invoke-interface {v3}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->isActive()Z

    move-result v12

    .line 61
    invoke-interface {v3}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getExpirationDate()Ljava/util/Date;

    move-result-object v13

    const/16 v17, 0xe00

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 52
    invoke-direct/range {v4 .. v18}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZZZZLjava/util/Date;Lcom/superwall/sdk/models/product/Store;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 313
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 314
    :cond_8
    check-cast v0, Ljava/util/List;

    .line 64
    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$ProcessedTransactions;

    invoke-direct {v1, v2, v0}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$ProcessedTransactions;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method
