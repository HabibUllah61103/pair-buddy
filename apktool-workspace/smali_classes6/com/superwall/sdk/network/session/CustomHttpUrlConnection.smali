.class public final Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;
.super Ljava/lang/Object;
.source "CustomURLSession.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u001a\u0008\u0002\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ{\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u00020\u00150\u0013\"\u000f\u0008\u0000\u0010\u0014\u0018\u0001*\u00070\u0001\u00a2\u0006\u0002\u0008\u00162$\u0008\u0004\u0010\u0017\u001a\u001e\u0008\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00140\u00190\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00082\u0006\u0010\u001a\u001a\u00020\u001b2 \u0008\n\u0010\u001c\u001a\u001a\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0008H\u0086H\u00a2\u0006\u0002\u0010\u001eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR#\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;",
        "",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "requestExecutor",
        "Lcom/superwall/sdk/network/RequestExecutor;",
        "interceptors",
        "",
        "Lkotlin/Function1;",
        "Lcom/superwall/sdk/network/RequestResult;",
        "<init>",
        "(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/RequestExecutor;Ljava/util/List;)V",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "getRequestExecutor",
        "()Lcom/superwall/sdk/network/RequestExecutor;",
        "getInterceptors",
        "()Ljava/util/List;",
        "request",
        "Lcom/superwall/sdk/misc/Either;",
        "Response",
        "Lcom/superwall/sdk/network/NetworkError;",
        "Lkotlinx/serialization/Serializable;",
        "buildRequestData",
        "Lkotlin/coroutines/Continuation;",
        "Lcom/superwall/sdk/network/NetworkRequestData;",
        "retryCount",
        "",
        "isRetryingCallback",
        "",
        "(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/network/RequestResult;",
            "Lcom/superwall/sdk/network/RequestResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final json:Lkotlinx/serialization/json/Json;

.field private final requestExecutor:Lcom/superwall/sdk/network/RequestExecutor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/RequestExecutor;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/Json;",
            "Lcom/superwall/sdk/network/RequestExecutor;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/network/RequestResult;",
            "Lcom/superwall/sdk/network/RequestResult;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;->json:Lkotlinx/serialization/json/Json;

    .line 20
    iput-object p2, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;->requestExecutor:Lcom/superwall/sdk/network/RequestExecutor;

    .line 21
    iput-object p3, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;->interceptors:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/RequestExecutor;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 21
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;-><init>(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/RequestExecutor;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic request$default(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superwall/sdk/network/NetworkError;
        }
    .end annotation

    and-int/lit8 p5, p5, 0x4

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    move-object p3, p6

    .line 29
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p5, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;

    invoke-direct {p5, p1, p0, p6}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;)V

    check-cast p5, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, p3, p5, p4}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/network/RequestResult;",
            "Lcom/superwall/sdk/network/RequestResult;",
            ">;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public final getJson()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;->json:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public final getRequestExecutor()Lcom/superwall/sdk/network/RequestExecutor;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;->requestExecutor:Lcom/superwall/sdk/network/RequestExecutor;

    return-object v0
.end method

.method public final synthetic request(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Response:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/network/NetworkRequestData<",
            "TResponse;>;>;+",
            "Ljava/lang/Object;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+TResponse;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superwall/sdk/network/NetworkError;
        }
    .end annotation

    .line 29
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, p3, v0, p4}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
