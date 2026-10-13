.class final Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActorTypes.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/misc/primitives/SequentialActor;->executeAction(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
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
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "com.superwall.sdk.misc.primitives.SequentialActor$executeAction$2"
    f = "ActorTypes.kt"
    i = {}
    l = {
        0x36
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $action:Lcom/superwall/sdk/misc/primitives/TypedAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TCtx;>;"
        }
    .end annotation
.end field

.field final synthetic $ctx:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCtx;"
        }
    .end annotation
.end field

.field final synthetic $done:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/misc/primitives/SequentialActor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/superwall/sdk/misc/primitives/SequentialActor<",
            "TContext;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/superwall/sdk/misc/primitives/SequentialActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/SequentialActor<",
            "TContext;TS;>;TCtx;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TCtx;>;",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->this$0:Lcom/superwall/sdk/misc/primitives/SequentialActor;

    iput-object p2, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->$ctx:Ljava/lang/Object;

    iput-object p3, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->$action:Lcom/superwall/sdk/misc/primitives/TypedAction;

    iput-object p4, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->$done:Lkotlinx/coroutines/CompletableDeferred;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;

    iget-object v1, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->this$0:Lcom/superwall/sdk/misc/primitives/SequentialActor;

    iget-object v2, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->$ctx:Ljava/lang/Object;

    iget-object v3, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->$action:Lcom/superwall/sdk/misc/primitives/TypedAction;

    iget-object v4, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->$done:Lkotlinx/coroutines/CompletableDeferred;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;-><init>(Lcom/superwall/sdk/misc/primitives/SequentialActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 52
    iget v1, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    :try_start_1
    iget-object p1, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->this$0:Lcom/superwall/sdk/misc/primitives/SequentialActor;

    .line 54
    iget-object v1, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->$ctx:Ljava/lang/Object;

    iget-object v3, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->$action:Lcom/superwall/sdk/misc/primitives/TypedAction;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->label:I

    invoke-static {p1, v1, v3, v4}, Lcom/superwall/sdk/misc/primitives/SequentialActor;->access$executeAction$s1737688068(Lcom/superwall/sdk/misc/primitives/SequentialActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 55
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->$done:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 57
    :goto_1
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;->$done:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 59
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
