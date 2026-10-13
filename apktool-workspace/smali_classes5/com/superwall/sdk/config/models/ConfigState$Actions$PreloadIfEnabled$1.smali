.class final Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled;-><init>()V
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
    c = "com.superwall.sdk.config.models.ConfigState$Actions$PreloadIfEnabled$1"
    f = "ConfigState.kt"
    i = {}
    l = {
        0x16a,
        0x167
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;

    invoke-direct {v0, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/config/ConfigContext;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->invoke(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 356
    iget v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/models/config/Config;

    iget-object v4, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/config/PaywallPreload;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/config/ConfigContext;

    .line 357
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v1

    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/network/device/DeviceHelper;->getDeviceTier()Lcom/superwall/sdk/analytics/Tier;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/superwall/sdk/config/options/PaywallOptionsKt;->computedShouldPreload(Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/analytics/Tier;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 358
    :cond_3
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/config/models/ConfigState;

    invoke-static {v1}, Lcom/superwall/sdk/config/models/ConfigStateKt;->getConfig(Lcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/models/config/Config;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 359
    :cond_4
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getPaywallPreload()Lcom/superwall/sdk/config/PaywallPreload;

    move-result-object v4

    .line 361
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 362
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->label:I

    invoke-virtual {p1, v6}, Lcom/superwall/sdk/network/device/DeviceHelper;->preloadFingerprint(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v3, v1

    move-object v1, v5

    .line 356
    :goto_0
    check-cast p1, Ljava/lang/String;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x0

    .line 359
    iput-object v6, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled$1;->label:I

    invoke-virtual {v4, v3, v1, p1, v5}, Lcom/superwall/sdk/config/PaywallPreload;->preloadAllPaywalls(Lcom/superwall/sdk/models/config/Config;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_1
    return-object v0

    .line 364
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
