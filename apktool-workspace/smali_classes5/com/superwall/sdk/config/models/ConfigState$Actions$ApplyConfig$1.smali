.class final Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig;-><init>(Lcom/superwall/sdk/models/config/Config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/superwall/sdk/config/ConfigContext;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/superwall/sdk/config/ConfigContext;"
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
    c = "com.superwall.sdk.config.models.ConfigState$Actions$ApplyConfig$1"
    f = "ConfigState.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $config:Lcom/superwall/sdk/models/config/Config;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/config/Config;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->$config:Lcom/superwall/sdk/models/config/Config;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;

    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-direct {v0, v1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;-><init>(Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/ConfigContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/config/ConfigContext;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->invoke(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 287
    iget v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->label:I

    if-nez v0, :cond_b

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/config/ConfigContext;

    .line 288
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getStorage()Lcom/superwall/sdk/storage/Storage;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/storage/DisableVerboseEvents;->INSTANCE:Lcom/superwall/sdk/storage/DisableVerboseEvents;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    iget-object v2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/config/Config;->getFeatureFlags()Lcom/superwall/sdk/models/config/FeatureFlags;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/config/FeatureFlags;->getDisableVerboseEvents()Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/Config;->getFeatureFlags()Lcom/superwall/sdk/models/config/FeatureFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/FeatureFlags;->getEnableConfigRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getStorage()Lcom/superwall/sdk/storage/Storage;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/storage/LatestConfig;->INSTANCE:Lcom/superwall/sdk/storage/LatestConfig;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    iget-object v2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-interface {v0, v1, v2}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 292
    :cond_0
    sget-object v0, Lcom/superwall/sdk/config/ConfigLogic;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic;

    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/Config;->getTriggers()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/ConfigLogic;->getTriggersByEventName(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/superwall/sdk/config/ConfigContext;->setTriggers(Ljava/util/Map;)V

    .line 293
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getAssignments()Lcom/superwall/sdk/config/Assignments;

    move-result-object v0

    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/Config;->getTriggers()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/Assignments;->choosePaywallVariants(Ljava/util/Set;)V

    .line 295
    sget-object v0, Lcom/superwall/sdk/config/ConfigLogic;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic;

    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/Config;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/ConfigLogic;->extractEntitlementsByProductId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 296
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/superwall/sdk/store/Entitlements;->addEntitlementsByProductId$superwall_release(Ljava/util/Map;)V

    .line 298
    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/Config;->getProductsV3()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    sget-object v1, Lcom/superwall/sdk/config/ConfigLogic;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic;

    invoke-virtual {v1, v0}, Lcom/superwall/sdk/config/ConfigLogic;->extractEntitlementsByProductIdFromCrossplatform(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 300
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/superwall/sdk/store/Entitlements;->addEntitlementsByProductId$superwall_release(Ljava/util/Map;)V

    .line 304
    :cond_1
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getTestMode()Lcom/superwall/sdk/store/testmode/TestMode;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v2, :cond_2

    .line 305
    invoke-virtual {v2}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v3

    if-ne v3, v1, :cond_2

    move v8, v1

    goto :goto_0

    :cond_2
    move v8, v0

    :goto_0
    const/4 v9, 0x0

    if-eqz v2, :cond_5

    .line 307
    iget-object v3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->$config:Lcom/superwall/sdk/models/config/Config;

    .line 308
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getBundleId()Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getIdentityManager()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/superwall/sdk/identity/IdentityManager;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/superwall/sdk/identity/IdentityManager;->getAppUserId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v9

    .line 310
    :goto_1
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getIdentityManager()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/superwall/sdk/identity/IdentityManager;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/superwall/sdk/identity/IdentityManager;->getAliasId()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v9

    .line 311
    :goto_2
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getTestModeBehavior()Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    move-result-object v7

    .line 306
    invoke-virtual/range {v2 .. v7}, Lcom/superwall/sdk/store/testmode/TestMode;->evaluateTestMode(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/testmode/TestModeBehavior;)V

    :cond_5
    if-nez v8, :cond_6

    if-eqz v2, :cond_6

    .line 313
    invoke-virtual {v2}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v3

    if-ne v3, v1, :cond_6

    move v0, v1

    :cond_6
    if-eqz v2, :cond_8

    .line 315
    invoke-virtual {v2}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v3

    if-ne v3, v1, :cond_8

    if-eqz v0, :cond_7

    .line 317
    invoke-virtual {v2}, Lcom/superwall/sdk/store/testmode/TestMode;->buildSubscriptionStatus()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    move-result-object v1

    .line 318
    invoke-virtual {v2, v1}, Lcom/superwall/sdk/store/testmode/TestMode;->setOverriddenSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 319
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/superwall/sdk/store/Entitlements;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 321
    :cond_7
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v1, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1$3;

    iget-object v2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-direct {v1, p1, v2, v0, v9}, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1$3;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lcom/superwall/sdk/models/config/Config;ZLkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_3

    :cond_8
    if-eqz v8, :cond_a

    if-eqz v2, :cond_9

    .line 324
    invoke-virtual {v2}, Lcom/superwall/sdk/store/testmode/TestMode;->clearTestModeState()V

    .line 325
    :cond_9
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getSetSubscriptionStatus()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_a
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1$4;

    invoke-direct {v0, p1, v9}, Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig$1$4;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 331
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 287
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
