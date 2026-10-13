.class final Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IdentityManagerActor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;-><init>(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;)V
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
    c = "com.superwall.sdk.identity.IdentityState$Actions$Identify$1"
    f = "IdentityManagerActor.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x119,
        0x120
    }
    m = "invokeSuspend"
    n = {
        "<this>",
        "sanitized"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $options:Lcom/superwall/sdk/identity/IdentityOptions;

.field final synthetic $userId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/identity/IdentityOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->$userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->$options:Lcom/superwall/sdk/identity/IdentityOptions;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->$userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->$options:Lcom/superwall/sdk/identity/IdentityOptions;

    invoke-direct {v0, v1, v2, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;-><init>(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/identity/IdentityContext;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->invoke(Lcom/superwall/sdk/identity/IdentityContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 267
    iget v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/identity/IdentityContext;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->L$0:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lcom/superwall/sdk/identity/IdentityContext;

    .line 268
    sget-object p1, Lcom/superwall/sdk/identity/IdentityLogic;->INSTANCE:Lcom/superwall/sdk/identity/IdentityLogic;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->$userId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/superwall/sdk/identity/IdentityLogic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    move-object p1, v1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_4

    .line 275
    :cond_3
    invoke-interface {v4}, Lcom/superwall/sdk/identity/IdentityContext;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState;

    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityState;->getAppUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 276
    invoke-interface {v4}, Lcom/superwall/sdk/identity/IdentityContext;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState;

    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityState;->getAppUserId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 280
    invoke-interface {v4}, Lcom/superwall/sdk/identity/IdentityContext;->getCompleteReset()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 281
    sget-object p1, Lcom/superwall/sdk/identity/IdentityState$Actions$Reset;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Actions$Reset;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/TypedAction;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->label:I

    invoke-interface {v4, p1, v5}, Lcom/superwall/sdk/identity/IdentityContext;->immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_3

    .line 285
    :cond_4
    :goto_0
    new-instance p1, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;

    iget-object v5, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->$options:Lcom/superwall/sdk/identity/IdentityOptions;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/superwall/sdk/identity/IdentityOptions;->getRestorePaywallAssignments()Z

    move-result v5

    if-ne v5, v3, :cond_5

    goto :goto_1

    :cond_5
    move v3, v6

    :goto_1
    invoke-direct {p1, v1, v3}, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;-><init>(Ljava/lang/String;Z)V

    check-cast p1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-interface {v4, p1}, Lcom/superwall/sdk/identity/IdentityContext;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    .line 287
    invoke-interface {v4}, Lcom/superwall/sdk/identity/IdentityContext;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState;

    .line 289
    new-instance v3, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged;

    .line 291
    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityState;->getAliasId()Ljava/lang/String;

    move-result-object p1

    .line 292
    iget-object v5, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->$options:Lcom/superwall/sdk/identity/IdentityOptions;

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/superwall/sdk/identity/IdentityOptions;->getRestorePaywallAssignments()Z

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    :cond_6
    move-object v5, v6

    .line 289
    :goto_2
    invoke-direct {v3, v1, p1, v5}, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    check-cast v3, Lcom/superwall/sdk/misc/primitives/TypedAction;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 288
    iput-object v6, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;->label:I

    invoke-interface {v4, v3, p1}, Lcom/superwall/sdk/identity/IdentityContext;->immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    :goto_3
    return-object v0

    .line 270
    :cond_7
    :goto_4
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 271
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 272
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->identityManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v7, 0x18

    const/4 v8, 0x0

    .line 270
    const-string v4, "The provided userId was null or empty."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 296
    :cond_8
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
