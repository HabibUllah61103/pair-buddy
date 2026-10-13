.class final Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode;-><init>(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.superwall.sdk.config.models.ConfigState$Actions$ReevaluateTestMode$1"
    f = "ConfigState.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $aliasId:Ljava/lang/String;

.field final synthetic $appUserId:Ljava/lang/String;

.field final synthetic $config:Lcom/superwall/sdk/models/config/Config;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/config/Config;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->$config:Lcom/superwall/sdk/models/config/Config;

    iput-object p2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->$appUserId:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->$aliasId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;

    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->$config:Lcom/superwall/sdk/models/config/Config;

    iget-object v2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->$appUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->$aliasId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;-><init>(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/config/ConfigContext;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->invoke(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 337
    iget v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/config/ConfigContext;

    .line 338
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getTestMode()Lcom/superwall/sdk/store/testmode/TestMode;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 339
    :cond_0
    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v6

    .line 341
    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->$config:Lcom/superwall/sdk/models/config/Config;

    .line 342
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getBundleId()Ljava/lang/String;

    move-result-object v2

    .line 343
    iget-object v3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->$appUserId:Ljava/lang/String;

    const/4 v7, 0x0

    if-nez v3, :cond_2

    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getIdentityManager()Lkotlin/jvm/functions/Function0;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/identity/IdentityManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/superwall/sdk/identity/IdentityManager;->getAppUserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v7

    .line 344
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->$aliasId:Ljava/lang/String;

    if-nez v4, :cond_4

    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getIdentityManager()Lkotlin/jvm/functions/Function0;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/superwall/sdk/identity/IdentityManager;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/superwall/sdk/identity/IdentityManager;->getAliasId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v7

    .line 345
    :cond_4
    :goto_1
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getTestModeBehavior()Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    move-result-object v5

    .line 340
    invoke-virtual/range {v0 .. v5}, Lcom/superwall/sdk/store/testmode/TestMode;->evaluateTestMode(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/testmode/TestModeBehavior;)V

    .line 347
    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v1

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    .line 349
    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestMode;->clearTestModeState()V

    .line 350
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getSetSubscriptionStatus()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    if-nez v6, :cond_6

    if-eqz v1, :cond_6

    .line 352
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1$1;

    iget-object v2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-direct {v0, p1, v2, v7}, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode$1$1;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 354
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 337
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
