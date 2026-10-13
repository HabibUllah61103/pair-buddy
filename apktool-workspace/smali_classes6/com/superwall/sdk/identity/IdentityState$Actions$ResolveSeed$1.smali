.class final Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IdentityManagerActor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/superwall/sdk/identity/IdentityContext;",
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
        "Lcom/superwall/sdk/identity/IdentityContext;"
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
    c = "com.superwall.sdk.identity.IdentityState$Actions$ResolveSeed$1"
    f = "IdentityManagerActor.kt"
    i = {
        0x0
    }
    l = {
        0x14b
    }
    m = "invokeSuspend"
    n = {
        "<this>"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $userId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;->$userId:Ljava/lang/String;

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

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;->$userId:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/superwall/sdk/identity/IdentityContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/identity/IdentityContext;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;->invoke(Lcom/superwall/sdk/identity/IdentityContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 329
    iget v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/identity/IdentityContext;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/identity/IdentityContext;

    .line 331
    :try_start_1
    invoke-interface {p1}, Lcom/superwall/sdk/identity/IdentityContext;->getSdkContext()Lcom/superwall/sdk/SdkContext;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;->label:I

    invoke-interface {v1, v3}, Lcom/superwall/sdk/SdkContext;->awaitConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 329
    :goto_0
    :try_start_2
    check-cast p1, Lcom/superwall/sdk/models/config/Config;

    if-eqz p1, :cond_4

    .line 332
    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/Config;->getFeatureFlags()Lcom/superwall/sdk/models/config/FeatureFlags;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/FeatureFlags;->getEnableUserIdSeed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 333
    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed$1;->$userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/superwall/sdk/misc/String_SHA256Kt;->sha256MappedToRange(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 334
    new-instance v1, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;

    invoke-direct {v1, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;-><init>(I)V

    check-cast v1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/identity/IdentityContext;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    .line 337
    invoke-interface {v0}, Lcom/superwall/sdk/identity/IdentityContext;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState;

    .line 339
    new-instance v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;

    .line 340
    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityState;->getAppInstalledAtString()Ljava/lang/String;

    move-result-object v2

    .line 341
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityState;->getUserAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 339
    invoke-direct {v1, v2, v3}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    check-cast v1, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    .line 338
    invoke-interface {v0, v1}, Lcom/superwall/sdk/identity/IdentityContext;->track(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;)V

    goto :goto_1

    .line 344
    :cond_3
    sget-object p1, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedSkipped;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$SeedSkipped;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-interface {v0, p1}, Lcom/superwall/sdk/identity/IdentityContext;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    goto :goto_1

    .line 346
    :cond_4
    sget-object p1, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedSkipped;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$SeedSkipped;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-interface {v0, p1}, Lcom/superwall/sdk/identity/IdentityContext;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-object v0, p1

    .line 349
    :catch_1
    sget-object p1, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedSkipped;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$SeedSkipped;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-interface {v0, p1}, Lcom/superwall/sdk/identity/IdentityContext;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    .line 351
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
