.class final Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebPaywallRedeemer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/web/WebPaywallRedeemer;->startPolling(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebPaywallRedeemer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebPaywallRedeemer.kt\ncom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1\n+ 2 Either.kt\ncom/superwall/sdk/misc/EitherKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,480:1\n129#2,2:481\n133#2:496\n131#2:497\n1557#3:483\n1628#3,3:484\n774#3:487\n865#3,2:488\n774#3:490\n865#3,2:491\n774#3:493\n865#3,2:494\n*S KotlinDebug\n*F\n+ 1 WebPaywallRedeemer.kt\ncom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1\n*L\n423#1:481,2\n423#1:496\n423#1:497\n433#1:483\n433#1:484,3\n466#1:487\n466#1:488,2\n466#1:490\n466#1:491,2\n469#1:493\n469#1:494,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.web.WebPaywallRedeemer$startPolling$1"
    f = "WebPaywallRedeemer.kt"
    i = {}
    l = {
        0x1a6,
        0x1db
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $maxAge:J

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/web/WebPaywallRedeemer;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/web/WebPaywallRedeemer;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->this$0:Lcom/superwall/sdk/web/WebPaywallRedeemer;

    iput-wide p2, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->$maxAge:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;

    iget-object v0, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->this$0:Lcom/superwall/sdk/web/WebPaywallRedeemer;

    iget-wide v1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->$maxAge:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;-><init>(Lcom/superwall/sdk/web/WebPaywallRedeemer;JLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 420
    iget v2, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 422
    :cond_3
    iget-object v2, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->this$0:Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-static {v2}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v5

    invoke-interface {v5}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->getUserId-P5Wmf0A()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->this$0:Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-static {v6}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v6

    invoke-interface {v6}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->getDeviceId()Lcom/superwall/sdk/models/internal/DeviceVendorId;

    move-result-object v6

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v4, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->label:I

    invoke-virtual {v2, v5, v6, v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->checkForWebEntitlements-AKGx8qU(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto/16 :goto_9

    .line 420
    :cond_4
    :goto_1
    check-cast v2, Lcom/superwall/sdk/misc/Either;

    .line 423
    iget-object v5, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->this$0:Lcom/superwall/sdk/web/WebPaywallRedeemer;

    .line 482
    instance-of v6, v2, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v6, :cond_11

    check-cast v2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v2}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    check-cast v2, Ljava/util/Set;

    .line 428
    sget-object v6, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 429
    sget-object v7, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 430
    sget-object v8, Lcom/superwall/sdk/logger/LogScope;->webEntitlements:Lcom/superwall/sdk/logger/LogScope;

    .line 433
    check-cast v2, Ljava/lang/Iterable;

    .line 483
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 484
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 485
    check-cast v11, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 433
    invoke-virtual {v11}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v11

    .line 485
    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 486
    :cond_5
    check-cast v9, Ljava/util/List;

    .line 483
    move-object v10, v9

    check-cast v10, Ljava/lang/Iterable;

    .line 433
    const-string v9, ","

    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    const/16 v17, 0x3e

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "entitlements"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v10

    const/16 v12, 0x10

    .line 428
    const-string v9, "Discovered web entitlements"

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 437
    invoke-static {v5}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getStorage$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/storage/Storage;

    move-result-object v6

    sget-object v7, Lcom/superwall/sdk/storage/LatestRedemptionResponse;->INSTANCE:Lcom/superwall/sdk/storage/LatestRedemptionResponse;

    check-cast v7, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v6, v7}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    if-eqz v7, :cond_6

    .line 439
    invoke-virtual {v7}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->getCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getEntitlements()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    if-nez v6, :cond_7

    :cond_6
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v6

    :cond_7
    if-eqz v7, :cond_a

    .line 444
    invoke-virtual {v7}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->getCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 445
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v12

    const/16 v14, 0x17

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 444
    invoke-static/range {v8 .. v15}, Lcom/superwall/sdk/models/customer/CustomerInfo;->copy$default(Lcom/superwall/sdk/models/customer/CustomerInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v8

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    move-object v9, v8

    goto :goto_4

    .line 446
    :cond_9
    :goto_3
    new-instance v9, Lcom/superwall/sdk/models/customer/CustomerInfo;

    .line 447
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 448
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 450
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    .line 446
    const-string v12, ""

    invoke-direct/range {v9 .. v14}, Lcom/superwall/sdk/models/customer/CustomerInfo;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    :goto_4
    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 454
    invoke-static/range {v7 .. v12}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->copy$default(Lcom/superwall/sdk/models/internal/WebRedemptionResponse;Ljava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Ljava/util/List;ILjava/lang/Object;)Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    move-result-object v7

    .line 457
    invoke-static {v5}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getStorage$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/storage/Storage;

    move-result-object v8

    .line 458
    sget-object v9, Lcom/superwall/sdk/storage/LatestRedemptionResponse;->INSTANCE:Lcom/superwall/sdk/storage/LatestRedemptionResponse;

    check-cast v9, Lcom/superwall/sdk/storage/Storable;

    .line 457
    invoke-interface {v8, v9, v7}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 464
    :cond_a
    invoke-virtual {v5}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->getCustomerInfoManager$superwall_release()Lcom/superwall/sdk/customer/CustomerInfoManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/superwall/sdk/customer/CustomerInfoManager;->updateMergedCustomerInfo()V

    .line 466
    check-cast v6, Ljava/lang/Iterable;

    .line 487
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 488
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 466
    invoke-virtual {v9}, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 488
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 489
    :cond_c
    check-cast v7, Ljava/util/List;

    .line 490
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 491
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 466
    invoke-virtual {v10}, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 491
    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 492
    :cond_e
    check-cast v6, Ljava/util/List;

    .line 466
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 467
    invoke-static {v5}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v6

    .line 493
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 494
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 469
    invoke-virtual {v9}, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 494
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 495
    :cond_10
    check-cast v7, Ljava/util/List;

    .line 493
    check-cast v7, Ljava/lang/Iterable;

    .line 469
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v5}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v5

    invoke-interface {v5}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->getActiveDeviceEntitlements()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v2, v5}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 468
    new-instance v5, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    invoke-direct {v5, v2}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;-><init>(Ljava/util/Set;)V

    check-cast v5, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    .line 467
    invoke-interface {v6, v5}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->internallySetSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    goto :goto_8

    .line 497
    :cond_11
    instance-of v5, v2, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v5, :cond_13

    check-cast v2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v2}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object v2

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 425
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 475
    :cond_12
    :goto_8
    iget-wide v5, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->$maxAge:J

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput v3, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;->label:I

    invoke-static {v5, v6, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    :goto_9
    return-object v1

    .line 481
    :cond_13
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method
