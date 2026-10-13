.class public final Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;
.super Ljava/lang/Object;
.source "TestModeTransactionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestModeTransactionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestModeTransactionHandler.kt\ncom/superwall/sdk/store/testmode/TestModeTransactionHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,120:1\n1#2:121\n1557#3:122\n1628#3,3:123\n1557#3:126\n1628#3,3:127\n*S KotlinDebug\n*F\n+ 1 TestModeTransactionHandler.kt\ncom/superwall/sdk/store/testmode/TestModeTransactionHandler\n*L\n59#1:122\n59#1:123,3\n116#1:126\n116#1:127,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u001e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;",
        "",
        "testMode",
        "Lcom/superwall/sdk/store/testmode/TestMode;",
        "activityProvider",
        "Lcom/superwall/sdk/misc/ActivityProvider;",
        "activityTracker",
        "Lcom/superwall/sdk/misc/CurrentActivityTracker;",
        "<init>",
        "(Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/misc/CurrentActivityTracker;)V",
        "getForegroundActivity",
        "Landroid/app/Activity;",
        "handlePurchase",
        "Lcom/superwall/sdk/delegate/PurchaseResult;",
        "product",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
        "purchaseSource",
        "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;",
        "(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleRestore",
        "Lcom/superwall/sdk/delegate/RestorationResult;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "findSuperwallProductForId",
        "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;",
        "productId",
        "",
        "entitlementsForProduct",
        "",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
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
.field private final activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

.field private final activityTracker:Lcom/superwall/sdk/misc/CurrentActivityTracker;

.field private final testMode:Lcom/superwall/sdk/store/testmode/TestMode;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/misc/CurrentActivityTracker;)V
    .locals 1

    const-string v0, "testMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    .line 21
    iput-object p2, p0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    .line 22
    iput-object p3, p0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->activityTracker:Lcom/superwall/sdk/misc/CurrentActivityTracker;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/misc/CurrentActivityTracker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;-><init>(Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/misc/CurrentActivityTracker;)V

    return-void
.end method

.method private final getForegroundActivity()Landroid/app/Activity;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->activityTracker:Lcom/superwall/sdk/misc/CurrentActivityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/CurrentActivityTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    invoke-interface {v0}, Lcom/superwall/sdk/misc/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final entitlementsForProduct(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;"
        }
    .end annotation

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->findSuperwallProductForId(Ljava/lang/String;)Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getEntitlements()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 127
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 128
    check-cast v1, Lcom/superwall/sdk/store/testmode/models/SuperwallEntitlementRef;

    .line 116
    new-instance v2, Lcom/superwall/sdk/models/entitlements/Entitlement;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/models/SuperwallEntitlementRef;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/superwall/sdk/models/entitlements/Entitlement;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 126
    check-cast v0, Ljava/lang/Iterable;

    .line 117
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final findSuperwallProductForId(Ljava/lang/String;)Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;
    .locals 3

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestMode;->getProducts()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    invoke-virtual {v2}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    return-object v1
.end method

.method public final handlePurchase(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
            "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;

    iget v3, v2, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;

    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;-><init>(Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v11, v2

    iget-object v1, v11, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 31
    iget v3, v11, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v11, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v11, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    invoke-direct {v0}, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3

    .line 37
    new-instance v1, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    const-string v2, "Activity not found - required for test mode purchase drawer"

    invoke-direct {v1, v2}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 40
    :cond_3
    iget-object v3, v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-virtual {v3}, Lcom/superwall/sdk/store/testmode/TestMode;->getProducts()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    invoke-virtual {v6}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;->getFullIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    check-cast v5, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;

    if-eqz v5, :cond_6

    .line 42
    invoke-virtual {v5}, Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;->getEntitlements()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_7
    move-object v12, v3

    .line 43
    iget-object v3, v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-interface/range {p1 .. p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;->getHasFreeTrial()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/superwall/sdk/store/testmode/TestMode;->shouldShowFreeTrial(Z)Z

    move-result v8

    .line 45
    sget-object v13, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 46
    sget-object v14, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 47
    sget-object v15, Lcom/superwall/sdk/logger/LogScope;->paywallTransactions:Lcom/superwall/sdk/logger/LogScope;

    .line 48
    invoke-interface/range {p1 .. p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;->getFullIdentifier()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Test mode: showing purchase drawer for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x18

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 45
    invoke-static/range {v13 .. v20}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 52
    sget-object v3, Lcom/superwall/sdk/store/testmode/ui/TestModePurchaseDrawer;->INSTANCE:Lcom/superwall/sdk/store/testmode/ui/TestModePurchaseDrawer;

    .line 54
    invoke-interface/range {p1 .. p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;->getFullIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-interface/range {p1 .. p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;->getLocalizedPrice()Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-interface/range {p1 .. p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;->getPeriod()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-interface/range {p1 .. p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;->getTrialPeriodText()Ljava/lang/String;

    move-result-object v9

    .line 59
    move-object v10, v12

    check-cast v10, Ljava/lang/Iterable;

    .line 122
    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v10, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v13, Ljava/util/Collection;

    .line 123
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 124
    check-cast v14, Lcom/superwall/sdk/store/testmode/models/SuperwallEntitlementRef;

    .line 59
    invoke-virtual {v14}, Lcom/superwall/sdk/store/testmode/models/SuperwallEntitlementRef;->getIdentifier()Ljava/lang/String;

    move-result-object v14

    .line 124
    invoke-interface {v13, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 125
    :cond_8
    move-object v10, v13

    check-cast v10, Ljava/util/List;

    .line 52
    iput-object v0, v11, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;->L$0:Ljava/lang/Object;

    iput-object v12, v11, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;->L$1:Ljava/lang/Object;

    iput v4, v11, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handlePurchase$1;->label:I

    move-object v4, v1

    invoke-virtual/range {v3 .. v11}, Lcom/superwall/sdk/store/testmode/ui/TestModePurchaseDrawer;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_9

    return-object v2

    :cond_9
    move-object v3, v0

    move-object v2, v12

    .line 31
    :goto_3
    check-cast v1, Lcom/superwall/sdk/store/testmode/ui/PurchaseSimulationResult;

    .line 63
    instance-of v4, v1, Lcom/superwall/sdk/store/testmode/ui/PurchaseSimulationResult$Purchased;

    if-eqz v4, :cond_a

    .line 64
    iget-object v1, v3, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/store/testmode/TestMode;->fakePurchase(Ljava/util/List;)V

    .line 65
    iget-object v1, v3, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/TestMode;->buildSubscriptionStatus()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    move-result-object v1

    .line 66
    iget-object v2, v3, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-virtual {v2, v1}, Lcom/superwall/sdk/store/testmode/TestMode;->setOverriddenSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 67
    new-instance v1, Lcom/superwall/sdk/delegate/PurchaseResult$Purchased;

    invoke-direct {v1}, Lcom/superwall/sdk/delegate/PurchaseResult$Purchased;-><init>()V

    check-cast v1, Lcom/superwall/sdk/delegate/PurchaseResult;

    return-object v1

    .line 69
    :cond_a
    instance-of v2, v1, Lcom/superwall/sdk/store/testmode/ui/PurchaseSimulationResult$Abandoned;

    if-eqz v2, :cond_b

    .line 70
    new-instance v1, Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;

    invoke-direct {v1}, Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;-><init>()V

    check-cast v1, Lcom/superwall/sdk/delegate/PurchaseResult;

    return-object v1

    .line 72
    :cond_b
    instance-of v1, v1, Lcom/superwall/sdk/store/testmode/ui/PurchaseSimulationResult$Failed;

    if-eqz v1, :cond_c

    .line 73
    new-instance v1, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    const-string v2, "Simulated purchase failure (test mode)"

    invoke-direct {v1, v2}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/superwall/sdk/delegate/PurchaseResult;

    return-object v1

    .line 62
    :cond_c
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method

.method public final handleRestore(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/delegate/RestorationResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handleRestore$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handleRestore$1;

    iget v1, v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handleRestore$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handleRestore$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handleRestore$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handleRestore$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handleRestore$1;-><init>(Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handleRestore$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 78
    iget v2, v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handleRestore$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handleRestore$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->getForegroundActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_3

    .line 81
    new-instance p1, Lcom/superwall/sdk/delegate/RestorationResult$Failed;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Activity not found"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/superwall/sdk/delegate/RestorationResult$Failed;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-virtual {v2}, Lcom/superwall/sdk/store/testmode/TestMode;->allEntitlements()Ljava/util/Set;

    move-result-object v2

    .line 85
    sget-object v4, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 86
    sget-object v5, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 87
    sget-object v6, Lcom/superwall/sdk/logger/LogScope;->paywallTransactions:Lcom/superwall/sdk/logger/LogScope;

    .line 88
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Test mode: showing restore drawer with "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " entitlements"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 85
    invoke-static/range {v4 .. v11}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 92
    sget-object v4, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer;->INSTANCE:Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer;

    .line 94
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 95
    iget-object v5, p0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-virtual {v5}, Lcom/superwall/sdk/store/testmode/TestMode;->getTestEntitlementSelections()Ljava/util/List;

    move-result-object v5

    .line 92
    iput-object p0, v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handleRestore$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler$handleRestore$1;->label:I

    invoke-virtual {v4, p1, v2, v5, v0}, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer;->show(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    .line 78
    :goto_1
    check-cast p1, Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult;

    .line 99
    instance-of v1, p1, Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult$Restored;

    if-eqz v1, :cond_5

    .line 100
    iget-object v1, v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    check-cast p1, Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult$Restored;

    invoke-virtual {p1}, Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult$Restored;->getSelectedEntitlements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/superwall/sdk/store/testmode/TestMode;->setEntitlements(Ljava/util/List;)V

    .line 101
    iget-object p1, v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-virtual {p1}, Lcom/superwall/sdk/store/testmode/TestMode;->buildSubscriptionStatus()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    move-result-object p1

    .line 102
    iget-object v0, v0, Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/store/testmode/TestMode;->setOverriddenSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 103
    new-instance p1, Lcom/superwall/sdk/delegate/RestorationResult$Restored;

    invoke-direct {p1}, Lcom/superwall/sdk/delegate/RestorationResult$Restored;-><init>()V

    check-cast p1, Lcom/superwall/sdk/delegate/RestorationResult;

    return-object p1

    .line 105
    :cond_5
    instance-of p1, p1, Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult$Cancelled;

    if-eqz p1, :cond_6

    .line 106
    new-instance p1, Lcom/superwall/sdk/delegate/RestorationResult$Failed;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/superwall/sdk/delegate/RestorationResult$Failed;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/superwall/sdk/delegate/RestorationResult;

    return-object p1

    .line 98
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
