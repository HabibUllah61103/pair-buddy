.class public final Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CustomURLSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;->request(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/superwall/sdk/misc/Either<",
        "+TResponse;",
        "Lcom/superwall/sdk/network/NetworkError;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u000f\u0008\u0000\u0010\u0002\u0018\u0001*\u00070\u0004\u00a2\u0006\u0002\u0008\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/misc/Either;",
        "Response",
        "Lcom/superwall/sdk/network/NetworkError;",
        "",
        "Lkotlinx/serialization/Serializable;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.network.session.CustomHttpUrlConnection$request$2"
    f = "CustomURLSession.kt"
    i = {
        0x1
    }
    l = {
        0x21,
        0x23
    }
    m = "invokeSuspend"
    n = {
        "requestData"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $buildRequestData:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/network/NetworkRequestData<",
            "TResponse;>;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/network/NetworkRequestData<",
            "TResponse;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->$buildRequestData:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->this$0:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;

    iget-object v1, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->$buildRequestData:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->this$0:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-direct {v0, v1, v2, p1}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+TResponse;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 32
    iget v1, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/network/NetworkRequestData;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->$buildRequestData:Lkotlin/jvm/functions/Function1;

    iput v3, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->label:I

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 32
    :cond_3
    :goto_0
    check-cast p1, Lcom/superwall/sdk/network/NetworkRequestData;

    .line 34
    iget-object v1, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->this$0:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-virtual {v1}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;->getRequestExecutor()Lcom/superwall/sdk/network/RequestExecutor;

    move-result-object v1

    .line 35
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->label:I

    invoke-virtual {v1, p1, v3}, Lcom/superwall/sdk/network/RequestExecutor;->execute(Lcom/superwall/sdk/network/NetworkRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    .line 32
    :goto_2
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 36
    new-instance v1, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2$1;

    iget-object v2, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->this$0:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-direct {v1, v2}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lcom/superwall/sdk/misc/EitherKt;->map(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object p1

    .line 42
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2$2;

    iget-object v2, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->this$0:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-direct {v1, v2, v0}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2$2;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lcom/superwall/sdk/network/NetworkRequestData;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lcom/superwall/sdk/misc/EitherKt;->flatMap(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 33
    iget-object p1, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->$buildRequestData:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/network/NetworkRequestData;

    .line 34
    iget-object v0, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->this$0:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-virtual {v0}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;->getRequestExecutor()Lcom/superwall/sdk/network/RequestExecutor;

    move-result-object v0

    .line 35
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, p1, v1}, Lcom/superwall/sdk/network/RequestExecutor;->execute(Lcom/superwall/sdk/network/NetworkRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 36
    new-instance v1, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2$1;

    iget-object v2, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->this$0:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-direct {v1, v2}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/superwall/sdk/misc/EitherKt;->map(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object v0

    .line 42
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2$2;

    iget-object v2, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;->this$0:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-direct {v1, v2, p1}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2$2;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lcom/superwall/sdk/network/NetworkRequestData;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/superwall/sdk/misc/EitherKt;->flatMap(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object p1

    return-object p1
.end method
