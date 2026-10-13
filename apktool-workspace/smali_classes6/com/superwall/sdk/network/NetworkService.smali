.class public abstract Lcom/superwall/sdk/network/NetworkService;
.super Ljava/lang/Object;
.source "NetworkService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkService.kt\ncom/superwall/sdk/network/NetworkService\n+ 2 CustomURLSession.kt\ncom/superwall/sdk/network/session/CustomHttpUrlConnection\n*L\n1#1,77:1\n30#2,2:78\n29#2:80\n67#2:81\n29#2:82\n67#2:83\n23#2,9:84\n67#2:93\n23#2,9:94\n67#2:103\n*S KotlinDebug\n*F\n+ 1 NetworkService.kt\ncom/superwall/sdk/network/NetworkService\n*L\n30#1:78,2\n30#1:80\n30#1:81\n30#1:82\n30#1:83\n58#1:84,9\n58#1:93\n58#1:94,9\n58#1:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\nH\u00a6@\u00a2\u0006\u0002\u0010\u000eJ\u0093\u0001\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00170\u0015\"\u000f\u0008\u0000\u0010\u0016\u0018\u0001*\u00070\u0001\u00a2\u0006\u0002\u0008\u00182\u0006\u0010\u0019\u001a\u00020\n2\u0010\u0008\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2 \u0008\n\u0010\u001f\u001a\u001a\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0!\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010 2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$H\u0086H\u00a2\u0006\u0004\u0008%\u0010&Jk\u0010\'\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00170\u0015\"\u000f\u0008\u0000\u0010\u0016\u0018\u0001*\u00070\u0001\u00a2\u0006\u0002\u0008\u00182\u0006\u0010\u0019\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0008\u0002\u0010\r\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$H\u0086H\u00a2\u0006\u0004\u0008*\u0010+R\u0012\u0010\u0004\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u000f\u001a\u00020\nX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\nX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011\u00a8\u0006,"
    }
    d2 = {
        "Lcom/superwall/sdk/network/NetworkService;",
        "",
        "<init>",
        "()V",
        "customHttpUrlConnection",
        "Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;",
        "getCustomHttpUrlConnection",
        "()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;",
        "makeHeaders",
        "",
        "",
        "isForDebugging",
        "",
        "requestId",
        "(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "host",
        "getHost",
        "()Ljava/lang/String;",
        "version",
        "getVersion",
        "get",
        "Lcom/superwall/sdk/misc/Either;",
        "T",
        "Lcom/superwall/sdk/network/NetworkError;",
        "Lkotlinx/serialization/Serializable;",
        "path",
        "queryItems",
        "",
        "Lcom/superwall/sdk/network/URLQueryItem;",
        "retryCount",
        "",
        "isRetryingCallback",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "timeout",
        "Lkotlin/time/Duration;",
        "get-rl3MWlM",
        "(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "post",
        "body",
        "",
        "post-7Yrd8eY",
        "(Ljava/lang/String;Z[BLjava/lang/String;ILkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic get-rl3MWlM$default(Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11

    if-nez p10, :cond_6

    and-int/lit8 v0, p9, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p2

    :goto_0
    and-int/lit8 p2, p9, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    :cond_1
    move v9, p3

    and-int/lit8 p2, p9, 0x8

    if-eqz p2, :cond_2

    .line 25
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v8, p2

    goto :goto_1

    :cond_2
    move-object v8, p4

    :goto_1
    and-int/lit8 p2, p9, 0x10

    if-eqz p2, :cond_3

    .line 26
    sget-object p2, Lcom/superwall/sdk/network/NetworkConsts;->INSTANCE:Lcom/superwall/sdk/network/NetworkConsts;

    invoke-virtual {p2}, Lcom/superwall/sdk/network/NetworkConsts;->retryCount()I

    move-result p2

    goto :goto_2

    :cond_3
    move/from16 p2, p5

    :goto_2
    and-int/lit8 p3, p9, 0x20

    if-eqz p3, :cond_4

    move-object p3, v1

    goto :goto_3

    :cond_4
    move-object/from16 p3, p6

    :goto_3
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_5

    move-object v10, v1

    goto :goto_4

    :cond_5
    move-object/from16 v10, p7

    .line 30
    :goto_4
    invoke-virtual {p0}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v3

    .line 82
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v2, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 p0, p8

    invoke-static {p2, p3, v2, p0}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 21
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: get-rl3MWlM"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic post-7Yrd8eY$default(Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;Z[BLjava/lang/String;ILkotlin/time/Duration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    if-nez p9, :cond_5

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v7, p2

    and-int/lit8 p2, p8, 0x4

    const/4 v9, 0x0

    if-eqz p2, :cond_1

    move-object v5, v9

    goto :goto_0

    :cond_1
    move-object v5, p3

    :goto_0
    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_2

    .line 54
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_2
    move-object v6, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_3

    const/4 p2, 0x6

    goto :goto_1

    :cond_3
    move p2, p5

    :goto_1
    and-int/lit8 p3, p8, 0x20

    if-eqz p3, :cond_4

    move-object v8, v9

    goto :goto_2

    :cond_4
    move-object/from16 v8, p6

    .line 58
    :goto_2
    invoke-virtual {p0}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v1

    .line 100
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/superwall/sdk/network/NetworkService$post-7Yrd8eY$$inlined$request$default$1;

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/network/NetworkService$post-7Yrd8eY$$inlined$request$default$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;[BLjava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 p0, p7

    invoke-static {p2, v9, v0, p0}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 50
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: post-7Yrd8eY"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic get-rl3MWlM(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/network/URLQueryItem;",
            ">;Z",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/time/Duration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+TT;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v1

    .line 80
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    move-object v6, p4

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/network/NetworkService$get-rl3MWlM$$inlined$request$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p8

    invoke-static {p5, p6, v0, p1}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract makeHeaders(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final synthetic post-7Yrd8eY(Ljava/lang/String;Z[BLjava/lang/String;ILkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z[B",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/time/Duration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+TT;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v1

    .line 90
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/superwall/sdk/network/NetworkService$post-7Yrd8eY$$inlined$request$default$1;

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/network/NetworkService$post-7Yrd8eY$$inlined$request$default$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;[BLjava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    move-object/from16 p2, p7

    invoke-static {p5, p1, v0, p2}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
