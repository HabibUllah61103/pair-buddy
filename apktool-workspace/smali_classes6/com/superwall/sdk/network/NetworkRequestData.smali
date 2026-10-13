.class public final Lcom/superwall/sdk/network/NetworkRequestData;
.super Ljava/lang/Object;
.source "NetworkRequestData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/network/NetworkRequestData$Components;,
        Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0018\u0000*\r\u0008\u0000\u0010\u0001*\u00070\u0002\u00a2\u0006\u0002\u0008\u00032\u00020\u0002:\u0002./B\u009b\u0001\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012R\u0010\u000e\u001aN\u0008\u0001\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\n\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00130\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000f\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0014\u0010,\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010-\u001a\u00020\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010$\"\u0004\u0008%\u0010&R_\u0010\u000e\u001aN\u0008\u0001\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\n\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00130\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000f\u00a2\u0006\n\n\u0002\u0010)\u001a\u0004\u0008\'\u0010(R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+\u00a8\u00060"
    }
    d2 = {
        "Lcom/superwall/sdk/network/NetworkRequestData;",
        "Response",
        "",
        "Lkotlinx/serialization/Serializable;",
        "components",
        "Lcom/superwall/sdk/network/NetworkRequestData$Components;",
        "url",
        "Ljava/net/URI;",
        "method",
        "Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;",
        "requestId",
        "",
        "isForDebugging",
        "",
        "factory",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlin/coroutines/Continuation;",
        "",
        "timeout",
        "Lkotlin/time/Duration;",
        "<init>",
        "(Lcom/superwall/sdk/network/NetworkRequestData$Components;Ljava/net/URI;Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/time/Duration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getComponents",
        "()Lcom/superwall/sdk/network/NetworkRequestData$Components;",
        "getUrl",
        "()Ljava/net/URI;",
        "getMethod",
        "()Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;",
        "setMethod",
        "(Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;)V",
        "getRequestId",
        "()Ljava/lang/String;",
        "setRequestId",
        "(Ljava/lang/String;)V",
        "()Z",
        "setForDebugging",
        "(Z)V",
        "getFactory",
        "()Lkotlin/jvm/functions/Function3;",
        "Lkotlin/jvm/functions/Function3;",
        "getTimeout-FghU774",
        "()Lkotlin/time/Duration;",
        "copyWithUrl",
        "newUrl",
        "HttpMethod",
        "Components",
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
.field private final components:Lcom/superwall/sdk/network/NetworkRequestData$Components;

.field private final factory:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isForDebugging:Z

.field private method:Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;

.field private requestId:Ljava/lang/String;

.field private final timeout:Lkotlin/time/Duration;

.field private final url:Ljava/net/URI;


# direct methods
.method private constructor <init>(Lcom/superwall/sdk/network/NetworkRequestData$Components;Ljava/net/URI;Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/time/Duration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/NetworkRequestData$Components;",
            "Ljava/net/URI;",
            "Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/time/Duration;",
            ")V"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/superwall/sdk/network/NetworkRequestData;->components:Lcom/superwall/sdk/network/NetworkRequestData$Components;

    .line 15
    iput-object p2, p0, Lcom/superwall/sdk/network/NetworkRequestData;->url:Ljava/net/URI;

    .line 16
    iput-object p3, p0, Lcom/superwall/sdk/network/NetworkRequestData;->method:Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;

    .line 17
    iput-object p4, p0, Lcom/superwall/sdk/network/NetworkRequestData;->requestId:Ljava/lang/String;

    .line 18
    iput-boolean p5, p0, Lcom/superwall/sdk/network/NetworkRequestData;->isForDebugging:Z

    .line 19
    iput-object p6, p0, Lcom/superwall/sdk/network/NetworkRequestData;->factory:Lkotlin/jvm/functions/Function3;

    .line 20
    iput-object p7, p0, Lcom/superwall/sdk/network/NetworkRequestData;->timeout:Lkotlin/time/Duration;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/network/NetworkRequestData$Components;Ljava/net/URI;Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/time/Duration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p8, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    .line 16
    sget-object p3, Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;->GET:Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;

    :cond_2
    move-object v5, p3

    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_3
    move-object v6, p4

    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    move v7, p1

    goto :goto_2

    :cond_4
    move/from16 v7, p5

    :goto_2
    const/4 v10, 0x0

    move-object v2, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 13
    invoke-direct/range {v2 .. v10}, Lcom/superwall/sdk/network/NetworkRequestData;-><init>(Lcom/superwall/sdk/network/NetworkRequestData$Components;Ljava/net/URI;Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/time/Duration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/network/NetworkRequestData$Components;Ljava/net/URI;Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/time/Duration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/superwall/sdk/network/NetworkRequestData;-><init>(Lcom/superwall/sdk/network/NetworkRequestData$Components;Ljava/net/URI;Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/time/Duration;)V

    return-void
.end method


# virtual methods
.method public final copyWithUrl(Ljava/net/URI;)Lcom/superwall/sdk/network/NetworkRequestData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Lcom/superwall/sdk/network/NetworkRequestData<",
            "TResponse;>;"
        }
    .end annotation

    const-string v0, "newUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v1, Lcom/superwall/sdk/network/NetworkRequestData;

    .line 40
    iget-object v2, p0, Lcom/superwall/sdk/network/NetworkRequestData;->components:Lcom/superwall/sdk/network/NetworkRequestData$Components;

    const/4 v0, 0x0

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getPath(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v6, p0, Lcom/superwall/sdk/network/NetworkRequestData;->components:Lcom/superwall/sdk/network/NetworkRequestData$Components;

    invoke-virtual {v6}, Lcom/superwall/sdk/network/NetworkRequestData$Components;->getQueryItems()Ljava/util/List;

    move-result-object v6

    .line 48
    iget-object v7, p0, Lcom/superwall/sdk/network/NetworkRequestData;->components:Lcom/superwall/sdk/network/NetworkRequestData$Components;

    invoke-virtual {v7}, Lcom/superwall/sdk/network/NetworkRequestData$Components;->getBodyData()[B

    move-result-object v7

    .line 43
    invoke-virtual/range {v2 .. v7}, Lcom/superwall/sdk/network/NetworkRequestData$Components;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[B)Lcom/superwall/sdk/network/NetworkRequestData$Components;

    move-result-object v2

    .line 51
    :goto_0
    iget-object v3, p0, Lcom/superwall/sdk/network/NetworkRequestData;->url:Ljava/net/URI;

    if-nez v3, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p1

    .line 52
    :goto_1
    iget-object v4, p0, Lcom/superwall/sdk/network/NetworkRequestData;->method:Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;

    .line 53
    iget-object v5, p0, Lcom/superwall/sdk/network/NetworkRequestData;->requestId:Ljava/lang/String;

    .line 54
    iget-boolean v6, p0, Lcom/superwall/sdk/network/NetworkRequestData;->isForDebugging:Z

    .line 55
    iget-object v7, p0, Lcom/superwall/sdk/network/NetworkRequestData;->factory:Lkotlin/jvm/functions/Function3;

    .line 56
    iget-object v8, p0, Lcom/superwall/sdk/network/NetworkRequestData;->timeout:Lkotlin/time/Duration;

    const/4 v9, 0x0

    .line 38
    invoke-direct/range {v1 .. v9}, Lcom/superwall/sdk/network/NetworkRequestData;-><init>(Lcom/superwall/sdk/network/NetworkRequestData$Components;Ljava/net/URI;Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/time/Duration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final getComponents()Lcom/superwall/sdk/network/NetworkRequestData$Components;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/superwall/sdk/network/NetworkRequestData;->components:Lcom/superwall/sdk/network/NetworkRequestData$Components;

    return-object v0
.end method

.method public final getFactory()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/network/NetworkRequestData;->factory:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getMethod()Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/superwall/sdk/network/NetworkRequestData;->method:Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/superwall/sdk/network/NetworkRequestData;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeout-FghU774()Lkotlin/time/Duration;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/network/NetworkRequestData;->timeout:Lkotlin/time/Duration;

    return-object v0
.end method

.method public final getUrl()Ljava/net/URI;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/network/NetworkRequestData;->url:Ljava/net/URI;

    return-object v0
.end method

.method public final isForDebugging()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/superwall/sdk/network/NetworkRequestData;->isForDebugging:Z

    return v0
.end method

.method public final setForDebugging(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/superwall/sdk/network/NetworkRequestData;->isForDebugging:Z

    return-void
.end method

.method public final setMethod(Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/superwall/sdk/network/NetworkRequestData;->method:Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;

    return-void
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/superwall/sdk/network/NetworkRequestData;->requestId:Ljava/lang/String;

    return-void
.end method
