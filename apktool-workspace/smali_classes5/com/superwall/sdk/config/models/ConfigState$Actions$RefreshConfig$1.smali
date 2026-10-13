.class final Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;-><init>(Z)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigState.kt\ncom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1\n+ 2 Either.kt\ncom/superwall/sdk/misc/EitherKt\n*L\n1#1,412:1\n129#2,5:413\n*S KotlinDebug\n*F\n+ 1 ConfigState.kt\ncom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1\n*L\n273#1:413,5\n*E\n"
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
    c = "com.superwall.sdk.config.models.ConfigState$Actions$RefreshConfig$1"
    f = "ConfigState.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2
    }
    l = {
        0xf8,
        0xfe,
        0x105
    }
    m = "invokeSuspend"
    n = {
        "$this$exec",
        "retryCount",
        "startTime",
        "$this$exec",
        "retryCount",
        "startTime",
        "$this$exec"
    }
    s = {
        "L$0",
        "L$1",
        "J$0",
        "L$0",
        "L$1",
        "J$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $force:Z

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->$force:Z

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

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;

    iget-boolean v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->$force:Z

    invoke-direct {v0, v1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/config/ConfigContext;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->invoke(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 239
    iget v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/config/ConfigContext;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-wide v3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->J$0:J

    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/config/ConfigContext;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v8, v3

    move-object v7, v6

    :goto_0
    move-object v10, v1

    goto/16 :goto_2

    :cond_2
    iget-wide v6, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->J$0:J

    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/config/ConfigContext;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/config/ConfigContext;

    .line 240
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

    .line 241
    :cond_4
    iget-boolean v6, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->$force:Z

    if-nez v6, :cond_5

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/Config;->getFeatureFlags()Lcom/superwall/sdk/models/config/FeatureFlags;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/FeatureFlags;->getEnableConfigRefresh()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 243
    :cond_5
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    new-instance v1, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1$1;

    invoke-direct {v1, p1, v5}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1$1;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)V

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 245
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 248
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getNetwork()Lcom/superwall/sdk/network/SuperwallAPI;

    move-result-object v8

    new-instance v9, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1$result$1;

    invoke-direct {v9, v1, p1, v5}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1$result$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->L$1:Ljava/lang/Object;

    iput-wide v6, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->J$0:J

    iput v4, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->label:I

    invoke-interface {v8, v9, v10}, Lcom/superwall/sdk/network/SuperwallAPI;->getConfig(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_6

    goto :goto_3

    :cond_6
    move-object v12, v4

    move-object v4, p1

    move-object p1, v12

    .line 239
    :goto_1
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 254
    new-instance v8, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1$2;

    invoke-direct {v8, v4, v5}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1$2;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->L$1:Ljava/lang/Object;

    iput-wide v6, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->J$0:J

    iput v3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->label:I

    invoke-static {p1, v8, v9}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_3

    :cond_7
    move-wide v8, v6

    move-object v7, v4

    goto/16 :goto_0

    .line 239
    :goto_2
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 261
    new-instance v6, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1$3;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1$3;-><init>(Lcom/superwall/sdk/config/ConfigContext;JLjava/util/concurrent/atomic/AtomicInteger;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object v7, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;->label:I

    invoke-static {p1, v6, v1}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    :goto_3
    return-object v0

    :cond_8
    move-object v0, v7

    .line 239
    :goto_4
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 414
    instance-of v1, p1, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v1, :cond_9

    check-cast p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    check-cast p1, Lcom/superwall/sdk/models/config/Config;

    .line 274
    sget-object p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-interface {v0, p1}, Lcom/superwall/sdk/config/ConfigContext;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    goto :goto_5

    .line 415
    :cond_9
    instance-of v0, p1, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    check-cast p1, Lcom/superwall/sdk/network/NetworkError;

    .line 276
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 277
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 278
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    const/4 v4, 0x0

    .line 281
    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    .line 276
    const-string v3, "Failed to refresh configuration."

    invoke-virtual/range {v0 .. v5}, Lcom/superwall/sdk/logger/Logger;->debug(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 285
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 413
    :cond_a
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
