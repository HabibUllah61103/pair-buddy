.class final Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EventsQueue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/storage/EventsQueue;->flushInternal(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.storage.EventsQueue$flushInternal$2"
    f = "EventsQueue.kt"
    i = {}
    l = {
        0x6a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $depth:I

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/storage/EventsQueue;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/storage/EventsQueue;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/EventsQueue;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->this$0:Lcom/superwall/sdk/storage/EventsQueue;

    iput p2, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->$depth:I

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

    new-instance p1, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;

    iget-object v0, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->this$0:Lcom/superwall/sdk/storage/EventsQueue;

    iget v1, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->$depth:I

    invoke-direct {p1, v0, v1, p2}, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;-><init>(Lcom/superwall/sdk/storage/EventsQueue;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 91
    iget v1, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    move v3, v1

    .line 94
    :goto_0
    iget-object v4, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->this$0:Lcom/superwall/sdk/storage/EventsQueue;

    invoke-static {v4}, Lcom/superwall/sdk/storage/EventsQueue;->access$getMaxEventCount$p(Lcom/superwall/sdk/storage/EventsQueue;)I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->this$0:Lcom/superwall/sdk/storage/EventsQueue;

    invoke-static {v4}, Lcom/superwall/sdk/storage/EventsQueue;->access$getElements$p(Lcom/superwall/sdk/storage/EventsQueue;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 95
    iget-object v4, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->this$0:Lcom/superwall/sdk/storage/EventsQueue;

    invoke-static {v4}, Lcom/superwall/sdk/storage/EventsQueue;->access$getElements$p(Lcom/superwall/sdk/storage/EventsQueue;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 100
    new-instance v1, Lcom/superwall/sdk/models/events/EventsRequest;

    invoke-direct {v1, p1}, Lcom/superwall/sdk/models/events/EventsRequest;-><init>(Ljava/util/List;)V

    .line 101
    iget-object p1, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->this$0:Lcom/superwall/sdk/storage/EventsQueue;

    invoke-static {p1}, Lcom/superwall/sdk/storage/EventsQueue;->access$getIoScope$p(Lcom/superwall/sdk/storage/EventsQueue;)Lcom/superwall/sdk/misc/IOScope;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2$1;

    iget-object v4, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->this$0:Lcom/superwall/sdk/storage/EventsQueue;

    const/4 v5, 0x0

    invoke-direct {p1, v4, v1, v5}, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2$1;-><init>(Lcom/superwall/sdk/storage/EventsQueue;Lcom/superwall/sdk/models/events/EventsRequest;Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 105
    :cond_3
    iget-object p1, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->this$0:Lcom/superwall/sdk/storage/EventsQueue;

    invoke-static {p1}, Lcom/superwall/sdk/storage/EventsQueue;->access$getElements$p(Lcom/superwall/sdk/storage/EventsQueue;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->$depth:I

    if-lez p1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->this$0:Lcom/superwall/sdk/storage/EventsQueue;

    sub-int/2addr p1, v2

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;->label:I

    invoke-virtual {v1, p1, v3}, Lcom/superwall/sdk/storage/EventsQueue;->flushInternal(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 108
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
