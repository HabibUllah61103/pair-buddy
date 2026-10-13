.class public final Lcom/superwall/sdk/misc/primitives/StoreContext$DefaultImpls;
.super Ljava/lang/Object;
.source "StoreContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/misc/primitives/StoreContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static effect(Lcom/superwall/sdk/misc/primitives/StoreContext;Lcom/superwall/sdk/misc/primitives/TypedAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/StoreContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/StoreContext<",
            "TS;TSelf;>;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TSelf;>;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p0}, Lcom/superwall/sdk/misc/primitives/StoreContext;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type Self of com.superwall.sdk.misc.primitives.StoreContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/superwall/sdk/misc/primitives/StateActor;->effect(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    return-void
.end method

.method public static getState(Lcom/superwall/sdk/misc/primitives/StoreContext;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/StoreContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/StoreContext<",
            "TS;TSelf;>;)",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "TS;>;"
        }
    .end annotation

    .line 20
    invoke-interface {p0}, Lcom/superwall/sdk/misc/primitives/StoreContext;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public static immediate(Lcom/superwall/sdk/misc/primitives/StoreContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/StoreContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/StoreContext<",
            "TS;TSelf;>;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TSelf;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 40
    invoke-interface {p0}, Lcom/superwall/sdk/misc/primitives/StoreContext;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type Self of com.superwall.sdk.misc.primitives.StoreContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/superwall/sdk/misc/primitives/StateActor;->immediate(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static immediateUntil(Lcom/superwall/sdk/misc/primitives/StoreContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/StoreContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/StoreContext<",
            "TS;TSelf;>;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TSelf;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 48
    invoke-interface {p0}, Lcom/superwall/sdk/misc/primitives/StoreContext;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type Self of com.superwall.sdk.misc.primitives.StoreContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/superwall/sdk/misc/primitives/StateActor;->immediateUntil(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static sideEffect(Lcom/superwall/sdk/misc/primitives/StoreContext;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/StoreContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/StoreContext<",
            "TS;TSelf;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "what"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p0}, Lcom/superwall/sdk/misc/primitives/StoreContext;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance p0, Lcom/superwall/sdk/misc/primitives/StoreContext$sideEffect$1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/superwall/sdk/misc/primitives/StoreContext$sideEffect$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static update(Lcom/superwall/sdk/misc/primitives/StoreContext;Lcom/superwall/sdk/misc/primitives/Reducer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/StoreContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/StoreContext<",
            "TS;TSelf;>;",
            "Lcom/superwall/sdk/misc/primitives/Reducer<",
            "TS;>;)V"
        }
    .end annotation

    const-string v0, "reducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p0}, Lcom/superwall/sdk/misc/primitives/StoreContext;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/misc/primitives/StateActor;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    return-void
.end method
