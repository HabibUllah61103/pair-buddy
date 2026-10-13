.class public final Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt;
.super Ljava/lang/Object;
.source "AwaitUntilNetworkExists.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u0080@\u00a2\u0006\u0002\u0010\u0005\u001a\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0002\u001a\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "awaitUntilNetworkExists",
        "",
        "Landroid/content/Context;",
        "checkInterval",
        "",
        "(Landroid/content/Context;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "hasNetworkPermission",
        "",
        "context",
        "isNetworkAvailable",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final awaitUntilNetworkExists(Landroid/content/Context;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;

    iget v1, v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;

    invoke-direct {v0, p3}, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget v2, v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide p0, v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->J$0:J

    iget-object p2, v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v5, p0

    move-object p0, p2

    move-wide p1, v5

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 14
    iput-object p0, v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->J$0:J

    iput v4, v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->label:I

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    .line 16
    iput-object p0, v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->label:I

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_2
    return-object v1

    .line 17
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic awaitUntilNetworkExists$default(Landroid/content/Context;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const-wide/16 p1, 0x3e8

    .line 12
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt;->awaitUntilNetworkExists(Landroid/content/Context;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final hasNetworkPermission(Landroid/content/Context;)Z
    .locals 1

    .line 22
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 20
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3

    .line 26
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    invoke-static {p0}, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt;->hasNetworkPermission(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    return v1

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    return v2

    .line 31
    :cond_1
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_2

    return v2

    .line 34
    :cond_2
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 35
    :cond_3
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2
.end method
