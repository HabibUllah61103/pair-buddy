.class public final Lcom/superwall/sdk/misc/Task_RetryingKt;
.super Ljava/lang/Object;
.source "Task+Retrying.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u001aa\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032#\u0008\u0002\u0010\u0004\u001a\u001d\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u00052\u001c\u0010\n\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0005H\u0086@\u00a2\u0006\u0002\u0010\r\u001ar\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00100\u000f\"\u0004\u0008\u0000\u0010\u00012\u0006\u0010\u0011\u001a\u00020\u00032\u001e\u0010\u0012\u001a\u001a\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0018\u00010\u00052(\u0010\n\u001a$\u0008\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00100\u000f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0005H\u0086@\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "retryOrNull",
        "T",
        "maxRetries",
        "",
        "delayMs",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "attempt",
        "",
        "operation",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "retrying",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/network/NetworkError;",
        "maxRetryCount",
        "isRetryingCallback",
        "",
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
.method public static synthetic $r8$lambda$D3wSlM5xlWTPD1Bbxru1coQy7GM(I)J
    .locals 2

    invoke-static {p0}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retryOrNull$lambda$0(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final retryOrNull(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;

    iget v1, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;

    invoke-direct {v0, p3}, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 10
    iget v2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->I$1:I

    iget p1, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->I$0:I

    iget-object p2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p0, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->I$2:I

    iget p1, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->I$1:I

    iget p2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->I$0:I

    iget-object v2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v5, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p3

    :catchall_0
    move-object p3, v2

    move-object v2, v5

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p3, 0x0

    move-object v7, p1

    move p1, p0

    move p0, p3

    move-object p3, p2

    move-object p2, v7

    :goto_1
    if-ge p0, p1, :cond_7

    .line 17
    :try_start_1
    iput-object p2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->I$0:I

    iput p0, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->I$1:I

    iput p0, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->I$2:I

    iput v4, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->label:I

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_4

    goto :goto_3

    :cond_4
    return-object p0

    :catchall_1
    move-object v2, p2

    move p2, p1

    move p1, p0

    :goto_2
    add-int/lit8 v5, p2, -0x1

    if-ge p0, v5, :cond_6

    .line 19
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iput-object v2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->I$0:I

    iput p1, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->I$1:I

    iput v3, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retryOrNull$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_3
    return-object v1

    :cond_5
    move p0, p1

    move p1, p2

    move-object p2, p3

    :goto_4
    move-object p3, p2

    move p2, p1

    move p1, p0

    :cond_6
    add-int/lit8 p0, p1, 0x1

    move p1, p2

    move-object p2, v2

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic retryOrNull$default(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 12
    new-instance p1, Lcom/superwall/sdk/misc/Task_RetryingKt$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/superwall/sdk/misc/Task_RetryingKt$$ExternalSyntheticLambda0;-><init>()V

    .line 10
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retryOrNull(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final retryOrNull$lambda$0(I)J
    .locals 4

    add-int/lit8 p0, p0, 0x1

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static final retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+TT;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+TT;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;

    iget v1, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;

    invoke-direct {v0, p3}, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 25
    iget v2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p0, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->I$1:I

    iget p1, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->I$0:I

    iget-object p2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/CompletableJob;

    iget-object v2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, v2

    move-object v2, v0

    move-object v0, p3

    :cond_3
    move-object p3, p2

    move-object p2, v8

    goto/16 :goto_4

    :cond_4
    iget p0, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->I$1:I

    iget p1, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->I$0:I

    iget-object p2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/CompletableJob;

    iget-object v2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    iget p0, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->I$1:I

    iget p1, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->I$0:I

    iget-object p2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/CompletableJob;

    iget-object v2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    :cond_6
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    invoke-static {v7, v6, v7}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p3

    const/4 v2, 0x0

    move-object v11, p1

    move p1, p0

    move p0, v2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v11

    :goto_1
    if-ge p0, p1, :cond_a

    .line 34
    :try_start_1
    move-object v8, p3

    check-cast v8, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$2$1;

    invoke-direct {v9, v0, v7}, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object p2, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$1:Ljava/lang/Object;

    iput-object p3, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$2:Ljava/lang/Object;

    iput p1, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->I$0:I

    iput p0, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->I$1:I

    iput v6, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->label:I

    invoke-static {v8, v9, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v8, v1, :cond_7

    goto/16 :goto_5

    :cond_7
    move-object v11, v8

    move-object v8, p2

    move-object p2, p3

    move-object p3, v11

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    :goto_2
    :try_start_2
    check-cast p3, Lcom/superwall/sdk/misc/Either;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_0
    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    move-object v8, p2

    move-object p2, p3

    :catchall_1
    if-eqz v8, :cond_8

    .line 41
    iput-object v8, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$2:Ljava/lang/Object;

    iput p1, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->I$0:I

    iput p0, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->I$1:I

    iput v5, v0, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->label:I

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    goto :goto_5

    :cond_8
    :goto_3
    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    .line 42
    sget-object p3, Lcom/superwall/sdk/network/session/TaskRetryLogic;->INSTANCE:Lcom/superwall/sdk/network/session/TaskRetryLogic;

    invoke-virtual {p3, p0, p1}, Lcom/superwall/sdk/network/session/TaskRetryLogic;->delay(II)Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 43
    iput-object v8, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$1:Ljava/lang/Object;

    iput-object p2, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$2:Ljava/lang/Object;

    iput p1, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->I$0:I

    iput p0, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->I$1:I

    iput v4, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->label:I

    invoke-static {v9, v10, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    goto :goto_5

    :goto_4
    add-int/2addr p0, v6

    goto :goto_1

    :cond_9
    move-object p3, p2

    .line 46
    :cond_a
    check-cast p3, Lkotlinx/coroutines/Job;

    invoke-static {p3}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlinx/coroutines/Job;)V

    .line 47
    iput-object v7, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->L$2:Ljava/lang/Object;

    iput v3, v2, Lcom/superwall/sdk/misc/Task_RetryingKt$retrying$1;->label:I

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_b

    :goto_5
    return-object v1

    :cond_b
    :goto_6
    check-cast p3, Lcom/superwall/sdk/misc/Either;

    :goto_7
    return-object p3
.end method
