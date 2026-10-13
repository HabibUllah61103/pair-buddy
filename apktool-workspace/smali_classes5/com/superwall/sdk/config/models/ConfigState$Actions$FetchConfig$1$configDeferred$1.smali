.class final Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/superwall/sdk/misc/Either<",
        "+",
        "Lcom/superwall/sdk/models/config/Config;",
        "Lcom/superwall/sdk/network/NetworkError;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/models/config/Config;",
        "Lcom/superwall/sdk/network/NetworkError;",
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
    c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$configDeferred$1"
    f = "ConfigState.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x5f,
        0x76
    }
    m = "invokeSuspend"
    n = {
        "start",
        "start"
    }
    s = {
        "J$0",
        "J$0"
    }
.end annotation


# instance fields
.field final synthetic $$this$exec:Lcom/superwall/sdk/config/ConfigContext;

.field final synthetic $cacheLimit:J

.field final synthetic $configDuration:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $configRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic $isConfigFromCache:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $oldConfig:Lcom/superwall/sdk/models/config/Config;

.field J$0:J

.field label:I


# direct methods
.method constructor <init>(Lcom/superwall/sdk/models/config/Config;JLcom/superwall/sdk/config/ConfigContext;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/config/Config;",
            "J",
            "Lcom/superwall/sdk/config/ConfigContext;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$oldConfig:Lcom/superwall/sdk/models/config/Config;

    iput-wide p2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$cacheLimit:J

    iput-object p4, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$$this$exec:Lcom/superwall/sdk/config/ConfigContext;

    iput-object p5, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$configRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$isConfigFromCache:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p7, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$configDuration:Lkotlin/jvm/internal/Ref$LongRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;

    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$oldConfig:Lcom/superwall/sdk/models/config/Config;

    iget-wide v2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$cacheLimit:J

    iget-object v4, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$$this$exec:Lcom/superwall/sdk/config/ConfigContext;

    iget-object v5, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$configRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$isConfigFromCache:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v7, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$configDuration:Lkotlin/jvm/internal/Ref$LongRef;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;-><init>(Lcom/superwall/sdk/models/config/Config;JLcom/superwall/sdk/config/ConfigContext;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/config/Config;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 90
    iget v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-wide v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->J$0:J

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 93
    iget-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$oldConfig:Lcom/superwall/sdk/models/config/Config;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/Config;->getFeatureFlags()Lcom/superwall/sdk/models/config/FeatureFlags;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/FeatureFlags;->getEnableConfigRefresh()Z

    move-result p1

    if-ne p1, v3, :cond_4

    .line 95
    :try_start_1
    iget-wide v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$cacheLimit:J

    new-instance v6, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1$1;

    iget-object v7, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$$this$exec:Lcom/superwall/sdk/config/ConfigContext;

    iget-object v8, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$configRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v9, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$isConfigFromCache:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v10, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$oldConfig:Lcom/superwall/sdk/models/config/Config;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1$1;-><init>(Lcom/superwall/sdk/config/ConfigContext;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-wide v4, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->J$0:J

    iput v3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->label:I

    invoke-static {v1, v2, v6, p1}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move-wide v1, v4

    :goto_0
    :try_start_2
    check-cast p1, Lcom/superwall/sdk/misc/Either;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-wide v1, v4

    .line 111
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    iget-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$oldConfig:Lcom/superwall/sdk/models/config/Config;

    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$isConfigFromCache:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 113
    iput-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 114
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    .line 112
    move-object p1, v0

    check-cast p1, Lcom/superwall/sdk/misc/Either;

    goto :goto_4

    .line 118
    :cond_4
    iget-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$$this$exec:Lcom/superwall/sdk/config/ConfigContext;

    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getNetwork()Lcom/superwall/sdk/network/SuperwallAPI;

    move-result-object p1

    new-instance v1, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1$3;

    iget-object v3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$$this$exec:Lcom/superwall/sdk/config/ConfigContext;

    iget-object v6, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$configRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    invoke-direct {v1, v3, v6, v7}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1$3;-><init>(Lcom/superwall/sdk/config/ConfigContext;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-wide v4, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->J$0:J

    iput v2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->label:I

    invoke-interface {p1, v1, v3}, Lcom/superwall/sdk/network/SuperwallAPI;->getConfig(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_2
    return-object v0

    :cond_5
    move-wide v0, v4

    .line 90
    :goto_3
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    move-wide v1, v0

    .line 124
    :goto_4
    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;->$configDuration:Lkotlin/jvm/internal/Ref$LongRef;

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iput-wide v3, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    return-object p1
.end method
