.class final Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AudioSimulator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/pulsar/audio/AudioSimulator;->enableSound(Z)V
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
    value = "SMAP\nAudioSimulator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioSimulator.kt\ncom/swmansion/pulsar/audio/AudioSimulator$enableSound$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,570:1\n116#2,10:571\n*S KotlinDebug\n*F\n+ 1 AudioSimulator.kt\ncom/swmansion/pulsar/audio/AudioSimulator$enableSound$1\n*L\n69#1:571,10\n*E\n"
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
    c = "com.swmansion.pulsar.audio.AudioSimulator$enableSound$1"
    f = "AudioSimulator.kt"
    i = {
        0x1
    }
    l = {
        0x43,
        0x23f
    }
    m = "invokeSuspend"
    n = {
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $value:Z

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;


# direct methods
.method constructor <init>(Lcom/swmansion/pulsar/audio/AudioSimulator;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/pulsar/audio/AudioSimulator;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;

    iput-boolean p2, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->$value:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;

    iget-object v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;

    iget-boolean v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->$value:Z

    invoke-direct {p1, v0, v1, p2}, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;-><init>(Lcom/swmansion/pulsar/audio/AudioSimulator;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 66
    iget v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/swmansion/pulsar/audio/AudioSimulator;

    iget-object v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

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

    .line 67
    iget-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;

    invoke-static {p1}, Lcom/swmansion/pulsar/audio/AudioSimulator;->access$getCurrentPlayJob$p(Lcom/swmansion/pulsar/audio/AudioSimulator;)Lkotlinx/coroutines/Job;

    move-result-object p1

    if-eqz p1, :cond_3

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;

    invoke-static {p1, v4}, Lcom/swmansion/pulsar/audio/AudioSimulator;->access$setCurrentPlayJob$p(Lcom/swmansion/pulsar/audio/AudioSimulator;Lkotlinx/coroutines/Job;)V

    .line 69
    iget-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;

    invoke-static {p1}, Lcom/swmansion/pulsar/audio/AudioSimulator;->access$getAudioMutex$p(Lcom/swmansion/pulsar/audio/AudioSimulator;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v1

    iget-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;

    .line 575
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->label:I

    invoke-interface {v1, v4, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object v0, p1

    .line 70
    :goto_2
    :try_start_0
    invoke-static {v0}, Lcom/swmansion/pulsar/audio/AudioSimulator;->access$stopAndReleaseAudioTrack(Lcom/swmansion/pulsar/audio/AudioSimulator;)V

    .line 71
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;

    iget-boolean v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->$value:Z

    invoke-static {p1, v0}, Lcom/swmansion/pulsar/audio/AudioSimulator;->access$setShouldForceAudiblePlayback$p(Lcom/swmansion/pulsar/audio/AudioSimulator;Z)V

    .line 73
    iget-object p1, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->this$0:Lcom/swmansion/pulsar/audio/AudioSimulator;

    iget-boolean v0, p0, Lcom/swmansion/pulsar/audio/AudioSimulator$enableSound$1;->$value:Z

    invoke-static {p1, v0}, Lcom/swmansion/pulsar/audio/AudioSimulator;->access$setPlaySound$p(Lcom/swmansion/pulsar/audio/AudioSimulator;Z)V

    .line 74
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 579
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
