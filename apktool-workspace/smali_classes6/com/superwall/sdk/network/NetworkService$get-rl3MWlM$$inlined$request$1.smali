.class public final Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CustomURLSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/network/NetworkService;->get-rl3MWlM(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "+TT;",
        "Lcom/superwall/sdk/network/NetworkError;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomURLSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomURLSession.kt\ncom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2\n+ 2 NetworkService.kt\ncom/superwall/sdk/network/NetworkService\n*L\n1#1,66:1\n36#2,7:67\n32#2,13:74\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u000f\u0008\u0000\u0010\u0002\u0018\u0001*\u00070\u0004\u00a2\u0006\u0002\u0008\u0005H\n\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/misc/Either;",
        "Response",
        "Lcom/superwall/sdk/network/NetworkError;",
        "",
        "Lkotlinx/serialization/Serializable;",
        "com/superwall/sdk/network/session/CustomHttpUrlConnection$request$2"
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
    c = "com.superwall.sdk.network.NetworkService$get-rl3MWlM$$inlined$request$1"
    f = "NetworkService.kt"
    i = {
        0x0
    }
    l = {
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
.field final synthetic $isForDebugging$inlined:Z

.field final synthetic $path$inlined:Ljava/lang/String;

.field final synthetic $queryItems$inlined:Ljava/util/List;

.field final synthetic $requestId$inlined:Ljava/lang/String;

.field final synthetic $timeout$inlined:Lkotlin/time/Duration;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/network/NetworkService;

.field final synthetic this$0$inline_fun:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/time/Duration;)V
    .locals 0

    iput-object p1, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0$inline_fun:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    iput-object p3, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0:Lcom/superwall/sdk/network/NetworkService;

    iput-object p4, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$path$inlined:Ljava/lang/String;

    iput-object p5, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$queryItems$inlined:Ljava/util/List;

    iput-object p6, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$requestId$inlined:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$isForDebugging$inlined:Z

    iput-object p8, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$timeout$inlined:Lkotlin/time/Duration;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;

    iget-object v1, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0$inline_fun:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    iget-object v3, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0:Lcom/superwall/sdk/network/NetworkService;

    iget-object v4, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$path$inlined:Ljava/lang/String;

    iget-object v5, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$queryItems$inlined:Ljava/util/List;

    iget-object v6, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$requestId$inlined:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$isForDebugging$inlined:Z

    iget-object v8, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$timeout$inlined:Lkotlin/time/Duration;

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "+TT;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    iget v1, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/network/NetworkRequestData;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 67
    new-instance v3, Lcom/superwall/sdk/network/NetworkRequestData$Components;

    .line 68
    iget-object v1, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0:Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v1}, Lcom/superwall/sdk/network/NetworkService;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 69
    iget-object v1, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0:Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v1}, Lcom/superwall/sdk/network/NetworkService;->getVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$path$inlined:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 70
    iget-object v7, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$queryItems$inlined:Ljava/util/List;

    const/16 v9, 0x11

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 67
    invoke-direct/range {v3 .. v10}, Lcom/superwall/sdk/network/NetworkRequestData$Components;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    sget-object v6, Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;->GET:Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;

    .line 73
    new-instance v1, Lcom/superwall/sdk/network/NetworkService$get$2$1;

    iget-object v4, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0:Lcom/superwall/sdk/network/NetworkService;

    invoke-direct {v1, v4}, Lcom/superwall/sdk/network/NetworkService$get$2$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KFunction;

    move-object v4, v3

    .line 74
    new-instance v3, Lcom/superwall/sdk/network/NetworkRequestData;

    .line 76
    iget-object v7, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$requestId$inlined:Ljava/lang/String;

    .line 75
    iget-boolean v8, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$isForDebugging$inlined:Z

    .line 73
    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function3;

    .line 85
    iget-object v10, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$timeout$inlined:Lkotlin/time/Duration;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 74
    invoke-direct/range {v3 .. v12}, Lcom/superwall/sdk/network/NetworkRequestData;-><init>(Lcom/superwall/sdk/network/NetworkRequestData$Components;Ljava/net/URI;Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/time/Duration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    iget-object v1, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0$inline_fun:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-virtual {v1}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;->getRequestExecutor()Lcom/superwall/sdk/network/RequestExecutor;

    move-result-object v1

    .line 35
    iput-object v3, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->label:I

    invoke-virtual {v1, v3, p1}, Lcom/superwall/sdk/network/RequestExecutor;->execute(Lcom/superwall/sdk/network/NetworkRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v3

    .line 0
    :goto_0
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 36
    new-instance v1, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1$1;

    iget-object v2, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0$inline_fun:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-direct {v1, v2}, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lcom/superwall/sdk/misc/EitherKt;->map(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object p1

    .line 42
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1$2;

    iget-object v2, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0$inline_fun:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-direct {v1, v2, v0}, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1$2;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lcom/superwall/sdk/network/NetworkRequestData;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lcom/superwall/sdk/misc/EitherKt;->flatMap(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 33
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 67
    new-instance v0, Lcom/superwall/sdk/network/NetworkRequestData$Components;

    .line 68
    iget-object v1, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0:Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v1}, Lcom/superwall/sdk/network/NetworkService;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v1, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0:Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v1}, Lcom/superwall/sdk/network/NetworkService;->getVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$path$inlined:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    iget-object v4, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$queryItems$inlined:Ljava/util/List;

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 67
    invoke-direct/range {v0 .. v7}, Lcom/superwall/sdk/network/NetworkRequestData$Components;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    sget-object v3, Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;->GET:Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;

    .line 73
    new-instance v1, Lcom/superwall/sdk/network/NetworkService$get$2$1;

    iget-object v2, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0:Lcom/superwall/sdk/network/NetworkService;

    invoke-direct {v1, v2}, Lcom/superwall/sdk/network/NetworkService$get$2$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KFunction;

    move-object v2, v1

    move-object v1, v0

    .line 74
    new-instance v0, Lcom/superwall/sdk/network/NetworkRequestData;

    .line 76
    iget-object v4, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$requestId$inlined:Ljava/lang/String;

    .line 75
    iget-boolean v5, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$isForDebugging$inlined:Z

    .line 73
    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function3;

    .line 85
    iget-object v7, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->$timeout$inlined:Lkotlin/time/Duration;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct/range {v0 .. v9}, Lcom/superwall/sdk/network/NetworkRequestData;-><init>(Lcom/superwall/sdk/network/NetworkRequestData$Components;Ljava/net/URI;Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/time/Duration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    iget-object v1, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0$inline_fun:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-virtual {v1}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;->getRequestExecutor()Lcom/superwall/sdk/network/RequestExecutor;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v0, p1}, Lcom/superwall/sdk/network/RequestExecutor;->execute(Lcom/superwall/sdk/network/NetworkRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 36
    new-instance v1, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1$1;

    iget-object v2, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0$inline_fun:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-direct {v1, v2}, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lcom/superwall/sdk/misc/EitherKt;->map(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object p1

    .line 42
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1$2;

    iget-object v2, p0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;->this$0$inline_fun:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-direct {v1, v2, v0}, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1$2;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lcom/superwall/sdk/network/NetworkRequestData;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lcom/superwall/sdk/misc/EitherKt;->flatMap(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object p1

    return-object p1
.end method
