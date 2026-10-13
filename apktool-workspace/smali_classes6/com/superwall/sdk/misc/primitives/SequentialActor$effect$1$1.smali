.class final Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActorTypes.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/misc/primitives/SequentialActor;->effect(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)V
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
    c = "com.superwall.sdk.misc.primitives.SequentialActor$effect$1$1"
    f = "ActorTypes.kt"
    i = {}
    l = {
        0x47
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
.method constructor <init>(Lcom/superwall/sdk/misc/primitives/SequentialActor;Lcom/superwall/sdk/misc/primitives/TypedAction;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/SequentialActor<",
            "TContext;TS;>;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TCtx;>;TCtx;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->this$0:Lcom/superwall/sdk/misc/primitives/SequentialActor;

    iput-object p2, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->$action:Lcom/superwall/sdk/misc/primitives/TypedAction;

    iput-object p3, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->$ctx:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;

    iget-object v1, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->this$0:Lcom/superwall/sdk/misc/primitives/SequentialActor;

    iget-object v2, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->$action:Lcom/superwall/sdk/misc/primitives/TypedAction;

    iget-object v3, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->$ctx:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;-><init>(Lcom/superwall/sdk/misc/primitives/SequentialActor;Lcom/superwall/sdk/misc/primitives/TypedAction;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget v1, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->this$0:Lcom/superwall/sdk/misc/primitives/SequentialActor;

    iget-object v1, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->$action:Lcom/superwall/sdk/misc/primitives/TypedAction;

    new-instance v3, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1$1;

    iget-object v4, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->$action:Lcom/superwall/sdk/misc/primitives/TypedAction;

    iget-object v5, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->$ctx:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1$1;-><init>(Lcom/superwall/sdk/misc/primitives/TypedAction;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;->label:I

    invoke-virtual {p1, v1, v3, v4}, Lcom/superwall/sdk/misc/primitives/SequentialActor;->runAsyncInterceptorChain(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 74
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
