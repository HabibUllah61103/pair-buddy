.class final Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AudioSimulator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/pulsar/audio/AudioSimulator;->play([B)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioSimulator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioSimulator.kt\ncom/swmansion/pulsar/audio/AudioSimulator$play$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,570:1\n116#2,10:571\n*S KotlinDebug\n*F\n+ 1 AudioSimulator.kt\ncom/swmansion/pulsar/audio/AudioSimulator$play$1\n*L\n87#1:571,10\n*E\n"
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
    c = "com.swmansion.pulsar.audio.AudioSimulator$play$1"
    f = "AudioSimulator.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x23f,
        0x74
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "$this$withLock_u24default$iv",
        "$this$launch",
        "$this$withLock_u24default$iv",
        "$this$invokeSuspend_u24lambda_u242_u24lambda_u240",
        "totalBytesWritten",
        "lastWriteTime"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$5",
        "I$0",
        "J$0"
    }
.end annotation


# instance fields
.field final synthetic $buffer:[B

.field I$0:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;


# direct methods
.method constructor <init>(Lcom/swmansion/pulsar/audio/AudioSimulator;[BLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/pulsar/audio/AudioSimulator;",
            "[B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;

    iput-object p2, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->$buffer:[B

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

    new-instance v0, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;

    iget-object v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;

    iget-object v2, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->$buffer:[B

    invoke-direct {v0, v1, v2, p2}, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;-><init>(Lcom/swmansion/pulsar/audio/AudioSimulator;[BLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 86
    iget v2, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v7, :cond_0

    iget-wide v8, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->J$0:J

    iget v2, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->I$0:I

    iget-object v5, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$5:Ljava/lang/Object;

    check-cast v5, Landroid/media/AudioTrack;

    iget-object v10, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$4:Ljava/lang/Object;

    check-cast v10, Landroid/media/AudioTrack;

    iget-object v11, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$3:Ljava/lang/Object;

    check-cast v11, [B

    iget-object v12, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/swmansion/pulsar/audio/AudioSimulator;

    iget-object v13, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/sync/Mutex;

    iget-object v14, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v7

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$3:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v5, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/swmansion/pulsar/audio/AudioSimulator;

    iget-object v8, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    iget-object v9, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v5

    move-object v13, v8

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$0:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .line 87
    iget-object v2, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;

    invoke-static {v2}, Lcom/swmansion/pulsar/audio/AudioSimulator;->access$getAudioMutex$p(Lcom/swmansion/pulsar/audio/AudioSimulator;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    iget-object v8, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;

    iget-object v10, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->$buffer:[B

    .line 575
    move-object v11, v1

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v9, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$3:Ljava/lang/Object;

    iput v5, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->label:I

    invoke-interface {v2, v6, v11}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_3

    goto/16 :goto_2

    :cond_3
    move-object v13, v2

    move-object v12, v8

    move-object v2, v10

    .line 89
    :goto_0
    :try_start_1
    invoke-static {v12}, Lcom/swmansion/pulsar/audio/AudioSimulator;->access$getAudioTrack$p(Lcom/swmansion/pulsar/audio/AudioSimulator;)Landroid/media/AudioTrack;

    move-result-object v5

    if-nez v5, :cond_4

    .line 90
    invoke-static {v12}, Lcom/swmansion/pulsar/audio/AudioSimulator;->access$configureAudioContext(Lcom/swmansion/pulsar/audio/AudioSimulator;)V

    .line 93
    :cond_4
    invoke-static {v12}, Lcom/swmansion/pulsar/audio/AudioSimulator;->access$getAudioTrack$p(Lcom/swmansion/pulsar/audio/AudioSimulator;)Landroid/media/AudioTrack;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 94
    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v8

    if-ne v8, v4, :cond_5

    .line 95
    invoke-virtual {v5}, Landroid/media/AudioTrack;->stop()V

    .line 96
    invoke-virtual {v5}, Landroid/media/AudioTrack;->flush()V

    .line 99
    :cond_5
    invoke-virtual {v5}, Landroid/media/AudioTrack;->play()V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v14, v9

    move-wide v8, v10

    move-object v11, v2

    move v2, v3

    move-object v10, v5

    .line 104
    :goto_1
    array-length v15, v11

    if-ge v2, v15, :cond_a

    .line 105
    invoke-static {v14}, Lkotlinx/coroutines/CoroutineScopeKt;->ensureActive(Lkotlinx/coroutines/CoroutineScope;)V

    .line 106
    array-length v15, v11

    sub-int/2addr v15, v2

    .line 107
    invoke-virtual {v5, v11, v2, v15}, Landroid/media/AudioTrack;->write([BII)I

    move-result v15

    if-gez v15, :cond_6

    goto :goto_4

    :cond_6
    if-nez v15, :cond_9

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v8

    const-wide/16 v17, 0x1388

    cmp-long v15, v15, v17

    if-lez v15, :cond_7

    goto :goto_4

    .line 116
    :cond_7
    iput-object v14, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$3:Ljava/lang/Object;

    iput-object v10, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->L$5:Ljava/lang/Object;

    iput v2, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->I$0:I

    iput-wide v8, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->J$0:J

    iput v7, v1, Lcom/swmansion/pulsar/audio/AudioSimulator$play$1;->label:I

    move/from16 v16, v7

    move-wide/from16 v17, v8

    const-wide/16 v7, 0xa

    invoke-static {v7, v8, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_8

    :goto_2
    return-object v0

    :cond_8
    move-wide/from16 v8, v17

    :goto_3
    move/from16 v7, v16

    goto :goto_1

    :cond_9
    move/from16 v16, v7

    add-int/2addr v2, v15

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    goto :goto_3

    :cond_a
    :goto_4
    move/from16 v16, v7

    .line 129
    invoke-virtual {v5}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    :goto_5
    if-ge v3, v0, :cond_b

    .line 132
    invoke-static {v14}, Lkotlinx/coroutines/CoroutineScopeKt;->ensureActive(Lkotlinx/coroutines/CoroutineScope;)V

    sub-int v7, v0, v3

    .line 133
    invoke-virtual {v5, v2, v3, v7}, Landroid/media/AudioTrack;->write([BII)I

    move-result v7
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v7, :cond_b

    add-int/2addr v3, v7

    goto :goto_5

    .line 150
    :goto_6
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    :cond_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 579
    invoke-interface {v13, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 153
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 141
    :goto_7
    :try_start_3
    invoke-static {v12}, Lcom/swmansion/pulsar/audio/AudioSimulator;->access$getAudioTrack$p(Lcom/swmansion/pulsar/audio/AudioSimulator;)Landroid/media/AudioTrack;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 142
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    if-ne v3, v4, :cond_c

    .line 143
    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 144
    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :catch_2
    :cond_c
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 579
    :goto_8
    invoke-interface {v13, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
