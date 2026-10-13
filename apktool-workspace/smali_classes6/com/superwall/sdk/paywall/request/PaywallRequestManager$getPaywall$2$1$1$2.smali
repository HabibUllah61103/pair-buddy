.class final Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallRequestManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywall$2$1$1$2"
    f = "PaywallRequestManager.kt"
    i = {}
    l = {
        0x8e,
        0x90
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $deferredTask:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isPreloading:Z

.field final synthetic $request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

.field final synthetic $requestHash:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLjava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iput-boolean p3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$isPreloading:Z

    iput-object p4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$requestHash:Ljava/lang/String;

    iput-object p5, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$deferredTask:Lkotlinx/coroutines/CompletableDeferred;

    iput-object p6, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-boolean v3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$isPreloading:Z

    iget-object v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$requestHash:Ljava/lang/String;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$deferredTask:Lkotlinx/coroutines/CompletableDeferred;

    iget-object v6, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLjava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 140
    iget v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 142
    :try_start_2
    iget-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-boolean v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$isPreloading:Z

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->label:I

    invoke-virtual {p1, v1, v4, v5}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getRawPaywall(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 140
    :cond_3
    :goto_0
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 144
    new-instance v3, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2$1;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-object v6, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$requestHash:Ljava/lang/String;

    iget-object v7, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$deferredTask:Lkotlinx/coroutines/CompletableDeferred;

    iget-object v8, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2$1;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->label:I

    invoke-static {p1, v3, v1}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    .line 140
    :cond_4
    :goto_2
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 151
    new-instance v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2$2;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$requestHash:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$deferredTask:Lkotlinx/coroutines/CompletableDeferred;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2$2;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/superwall/sdk/misc/EitherKt;->onError(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 157
    :goto_3
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {v0}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getActiveTasks$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$requestHash:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$deferredTask:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 159
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 161
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
