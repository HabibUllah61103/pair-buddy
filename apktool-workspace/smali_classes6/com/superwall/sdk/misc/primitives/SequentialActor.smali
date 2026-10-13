.class public final Lcom/superwall/sdk/misc/primitives/SequentialActor;
.super Lcom/superwall/sdk/misc/primitives/StateActor;
.source "ActorTypes.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Context:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/superwall/sdk/misc/primitives/StateActor<",
        "TContext;TS;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003:\u0001\u0018B\u0019\u0012\u0006\u0010\u0004\u001a\u00028\u0001\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J*\u0010\u000f\u001a\u00020\r\"\u0004\u0008\u0002\u0010\u00102\u0006\u0010\u0011\u001a\u0002H\u00102\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u0013H\u0094@\u00a2\u0006\u0002\u0010\u0014J)\u0010\u0015\u001a\u00020\r\"\u0004\u0008\u0002\u0010\u00102\u0006\u0010\u0011\u001a\u0002H\u00102\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u0013H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\rR*\u0010\t\u001a\u001e\u0012\u001a\u0012\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/superwall/sdk/misc/primitives/SequentialActor;",
        "Context",
        "S",
        "Lcom/superwall/sdk/misc/primitives/StateActor;",
        "initial",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;)V",
        "queue",
        "Lkotlinx/coroutines/channels/Channel;",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "executeAction",
        "Ctx",
        "ctx",
        "action",
        "Lcom/superwall/sdk/misc/primitives/TypedAction;",
        "(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "effect",
        "(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)V",
        "close",
        "OwnerElement",
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
.field private final queue:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9gHWpji-g2bDV-4LnbRdgk1su7k(Lcom/superwall/sdk/misc/primitives/SequentialActor;Lcom/superwall/sdk/misc/primitives/TypedAction;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/misc/primitives/SequentialActor;->effect$lambda$0(Lcom/superwall/sdk/misc/primitives/SequentialActor;Lcom/superwall/sdk/misc/primitives/TypedAction;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/misc/primitives/StateActor;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;)V

    const/4 p1, 0x6

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1, v1, p1, v1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor;->queue:Lkotlinx/coroutines/channels/Channel;

    .line 35
    new-instance p1, Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;-><init>(Ljava/lang/Object;)V

    move-object v3, p1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/superwall/sdk/misc/primitives/SequentialActor$1;

    invoke-direct {p1, p0, v1}, Lcom/superwall/sdk/misc/primitives/SequentialActor$1;-><init>(Lcom/superwall/sdk/misc/primitives/SequentialActor;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 24
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/misc/primitives/SequentialActor;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic access$executeAction$s1737688068(Lcom/superwall/sdk/misc/primitives/SequentialActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/superwall/sdk/misc/primitives/StateActor;->executeAction(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getQueue$p(Lcom/superwall/sdk/misc/primitives/SequentialActor;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor;->queue:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method private static final effect$lambda$0(Lcom/superwall/sdk/misc/primitives/SequentialActor;Lcom/superwall/sdk/misc/primitives/TypedAction;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor;->queue:Lkotlinx/coroutines/channels/Channel;

    new-instance v1, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/superwall/sdk/misc/primitives/SequentialActor$effect$1$1;-><init>(Lcom/superwall/sdk/misc/primitives/SequentialActor;Lcom/superwall/sdk/misc/primitives/TypedAction;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor;->queue:Lkotlinx/coroutines/channels/Channel;

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public effect(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Ctx:",
            "Ljava/lang/Object;",
            ">(TCtx;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TCtx;>;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/superwall/sdk/misc/primitives/SequentialActor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/superwall/sdk/misc/primitives/SequentialActor$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/misc/primitives/SequentialActor;Lcom/superwall/sdk/misc/primitives/TypedAction;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v0}, Lcom/superwall/sdk/misc/primitives/SequentialActor;->runInterceptorChain(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method protected executeAction(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Ctx:",
            "Ljava/lang/Object;",
            ">(TCtx;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TCtx;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    invoke-interface {p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;->Key:Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;->getActor()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-ne v0, p0, :cond_2

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/superwall/sdk/misc/primitives/StateActor;->executeAction(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    const/4 v0, 0x1

    .line 51
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v6

    .line 52
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor;->queue:Lkotlinx/coroutines/channels/Channel;

    new-instance v2, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/superwall/sdk/misc/primitives/SequentialActor$executeAction$2;-><init>(Lcom/superwall/sdk/misc/primitives/SequentialActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-interface {v6, p3}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_3

    return-object p1

    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
