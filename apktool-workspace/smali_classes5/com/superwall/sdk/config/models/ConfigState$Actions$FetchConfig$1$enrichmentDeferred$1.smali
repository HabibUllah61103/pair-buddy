.class final Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;
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
        "Lcom/superwall/sdk/models/enrichment/Enrichment;",
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
        "Lcom/superwall/sdk/models/enrichment/Enrichment;",
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
    c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1"
    f = "ConfigState.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x87,
        0x88,
        0x93
    }
    m = "invokeSuspend"
    n = {
        "cached",
        "cached"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $$this$exec:Lcom/superwall/sdk/config/ConfigContext;

.field final synthetic $cacheLimit:J

.field final synthetic $isEnrichmentFromCache:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $oldConfig:Lcom/superwall/sdk/models/config/Config;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/superwall/sdk/config/ConfigContext;Lcom/superwall/sdk/models/config/Config;JLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/ConfigContext;",
            "Lcom/superwall/sdk/models/config/Config;",
            "J",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$$this$exec:Lcom/superwall/sdk/config/ConfigContext;

    iput-object p2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$oldConfig:Lcom/superwall/sdk/models/config/Config;

    iput-wide p3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$cacheLimit:J

    iput-object p5, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$isEnrichmentFromCache:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;

    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$$this$exec:Lcom/superwall/sdk/config/ConfigContext;

    iget-object v2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$oldConfig:Lcom/superwall/sdk/models/config/Config;

    iget-wide v3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$cacheLimit:J

    iget-object v5, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$isEnrichmentFromCache:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lcom/superwall/sdk/models/config/Config;JLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/superwall/sdk/models/enrichment/Enrichment;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 130
    iget v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/models/enrichment/Enrichment;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/models/enrichment/Enrichment;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 131
    iget-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$$this$exec:Lcom/superwall/sdk/config/ConfigContext;

    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getStorage()Lcom/superwall/sdk/storage/Storage;

    move-result-object p1

    sget-object v1, Lcom/superwall/sdk/storage/LatestEnrichment;->INSTANCE:Lcom/superwall/sdk/storage/LatestEnrichment;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {p1, v1}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/models/enrichment/Enrichment;

    .line 132
    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$oldConfig:Lcom/superwall/sdk/models/config/Config;

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/Config;->getFeatureFlags()Lcom/superwall/sdk/models/config/FeatureFlags;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/FeatureFlags;->getEnableConfigRefresh()Z

    move-result v1

    if-ne v1, v4, :cond_7

    .line 134
    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$$this$exec:Lcom/superwall/sdk/config/ConfigContext;

    invoke-interface {v1}, Lcom/superwall/sdk/config/ConfigContext;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v1

    .line 135
    iget-wide v6, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$cacheLimit:J

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->label:I

    invoke-virtual {v1, v5, v6, v7, v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getEnrichment-8Mi8wO0(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    .line 130
    :goto_0
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 136
    new-instance v2, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1;

    iget-object v5, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$$this$exec:Lcom/superwall/sdk/config/ConfigContext;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->label:I

    invoke-static {p1, v2, v5}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 130
    :goto_1
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 137
    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either;->getSuccess()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 138
    iget-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$$this$exec:Lcom/superwall/sdk/config/ConfigContext;

    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$isEnrichmentFromCache:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 139
    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->setEnrichment$superwall_release(Lcom/superwall/sdk/models/enrichment/Enrichment;)V

    .line 140
    iput-boolean v4, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 141
    new-instance p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p1, v0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    .line 138
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    :cond_6
    return-object p1

    .line 147
    :cond_7
    iget-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->$$this$exec:Lcom/superwall/sdk/config/ConfigContext;

    invoke-interface {p1}, Lcom/superwall/sdk/config/ConfigContext;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;->label:I

    invoke-virtual {p1, v5, v3, v4, v1}, Lcom/superwall/sdk/network/device/DeviceHelper;->getEnrichment-8Mi8wO0(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    :goto_2
    return-object v0

    .line 130
    :cond_8
    :goto_3
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    return-object p1
.end method
