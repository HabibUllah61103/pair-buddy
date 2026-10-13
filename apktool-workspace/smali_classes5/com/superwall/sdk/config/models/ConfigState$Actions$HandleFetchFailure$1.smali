.class final Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure;-><init>(Ljava/lang/Throwable;IZ)V
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
    c = "com.superwall.sdk.config.models.ConfigState$Actions$HandleFetchFailure$1"
    f = "ConfigState.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $error:Ljava/lang/Throwable;

.field final synthetic $isConfigFromCache:Z

.field final synthetic $priorRetries:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/Throwable;IZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "IZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->$error:Ljava/lang/Throwable;

    iput p2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->$priorRetries:I

    iput-boolean p3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->$isConfigFromCache:Z

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

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;

    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->$error:Ljava/lang/Throwable;

    iget v2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->$priorRetries:I

    iget-boolean v3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->$isConfigFromCache:Z

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;-><init>(Ljava/lang/Throwable;IZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/config/ConfigContext;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->invoke(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 223
    iget v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/config/ConfigContext;

    .line 224
    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->$error:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    iget v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->$priorRetries:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 226
    new-instance v2, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetFailed;

    iget-object v3, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->$error:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v0}, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetFailed;-><init>(Ljava/lang/Throwable;I)V

    check-cast v2, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-interface {p1, v2}, Lcom/superwall/sdk/config/ConfigContext;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    .line 227
    iget-boolean v2, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->$isConfigFromCache:Z

    if-nez v2, :cond_0

    if-gt v0, v1, :cond_0

    .line 228
    sget-object v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;

    check-cast v0, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-interface {p1, v0}, Lcom/superwall/sdk/config/ConfigContext;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    .line 230
    :cond_0
    new-instance v0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfigFail;

    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->$error:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Unknown error"

    :cond_1
    invoke-direct {v0, v1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfigFail;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    invoke-interface {p1, v0}, Lcom/superwall/sdk/config/ConfigContext;->track(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;)V

    .line 231
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 232
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 233
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 235
    iget-object v6, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure$1;->$error:Ljava/lang/Throwable;

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 231
    const-string v4, "Failed to Fetch Configuration"

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 237
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 223
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
