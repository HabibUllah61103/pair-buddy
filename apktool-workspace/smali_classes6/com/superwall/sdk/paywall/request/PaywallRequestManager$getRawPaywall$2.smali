.class final Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallRequestManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getRawPaywall(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "*>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000c\u0012\u0004\u0012\u00020\u0002\u0012\u0002\u0008\u00030\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
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
    c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getRawPaywall$2"
    f = "PaywallRequestManager.kt"
    i = {}
    l = {
        0xd0,
        0xd1,
        0xd2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $isPreloading:Z

.field final synthetic $request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iput-boolean p3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->$isPreloading:Z

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

    new-instance p1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-boolean v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->$isPreloading:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 202
    iget v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 203
    sget-object v5, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 204
    sget-object v6, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 205
    sget-object v7, Lcom/superwall/sdk/logger/LogScope;->all:Lcom/superwall/sdk/logger/LogScope;

    .line 206
    iget-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->getResponseIdentifiers()Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;->getPaywallId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "!!getRawPaywall - "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 203
    invoke-static/range {v5 .. v12}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 208
    iget-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->getEventData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object v1

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->label:I

    invoke-static {p1, v1, v5}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$trackResponseStarted(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 209
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-boolean v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->$isPreloading:Z

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->label:I

    invoke-static {p1, v1, v4, v5}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getPaywallResponse(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_2

    .line 202
    :cond_5
    :goto_1
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 210
    new-instance v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2$1;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2$1;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;->label:I

    invoke-static {p1, v1, v3}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    return-object p1
.end method
