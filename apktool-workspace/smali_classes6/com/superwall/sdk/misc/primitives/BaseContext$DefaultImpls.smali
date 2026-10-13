.class public final Lcom/superwall/sdk/misc/primitives/BaseContext$DefaultImpls;
.super Ljava/lang/Object;
.source "BaseContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/misc/primitives/BaseContext;
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
.method public static delete(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/storage/Storable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;",
            "Lcom/superwall/sdk/storage/Storable<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "storable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {p0}, Lcom/superwall/sdk/misc/primitives/BaseContext;->getStorage()Lcom/superwall/sdk/storage/Storage;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/superwall/sdk/storage/Storage;->delete(Lcom/superwall/sdk/storage/Storable;)V

    return-void
.end method

.method public static effect(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/misc/primitives/TypedAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TSelf;>;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    check-cast p0, Lcom/superwall/sdk/misc/primitives/StoreContext;

    invoke-static {p0, p1}, Lcom/superwall/sdk/misc/primitives/StoreContext$DefaultImpls;->effect(Lcom/superwall/sdk/misc/primitives/StoreContext;Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    return-void
.end method

.method public static getState(Lcom/superwall/sdk/misc/primitives/BaseContext;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;)",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "TS;>;"
        }
    .end annotation

    .line 13
    check-cast p0, Lcom/superwall/sdk/misc/primitives/StoreContext;

    invoke-static {p0}, Lcom/superwall/sdk/misc/primitives/StoreContext$DefaultImpls;->getState(Lcom/superwall/sdk/misc/primitives/StoreContext;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public static immediate(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
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

    .line 13
    check-cast p0, Lcom/superwall/sdk/misc/primitives/StoreContext;

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/misc/primitives/StoreContext$DefaultImpls;->immediate(Lcom/superwall/sdk/misc/primitives/StoreContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static immediateUntil(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
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

    .line 13
    check-cast p0, Lcom/superwall/sdk/misc/primitives/StoreContext;

    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/misc/primitives/StoreContext$DefaultImpls;->immediateUntil(Lcom/superwall/sdk/misc/primitives/StoreContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static persist(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "storable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Lcom/superwall/sdk/misc/primitives/BaseContext;->getStorage()Lcom/superwall/sdk/storage/Storage;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    return-void
.end method

.method public static read-IoAF18A(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "storable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {p0}, Lcom/superwall/sdk/misc/primitives/BaseContext;->getStorage()Lcom/superwall/sdk/storage/Storage;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 28
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sideEffect(Lcom/superwall/sdk/misc/primitives/BaseContext;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
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

    .line 13
    check-cast p0, Lcom/superwall/sdk/misc/primitives/StoreContext;

    invoke-static {p0, p1}, Lcom/superwall/sdk/misc/primitives/StoreContext$DefaultImpls;->sideEffect(Lcom/superwall/sdk/misc/primitives/StoreContext;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static track(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p0}, Lcom/superwall/sdk/misc/primitives/BaseContext;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/superwall/sdk/misc/primitives/BaseContext$track$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/superwall/sdk/misc/primitives/BaseContext$track$1;-><init>(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static update(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/misc/primitives/Reducer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "Self::",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;>(",
            "Lcom/superwall/sdk/misc/primitives/BaseContext<",
            "TS;TSelf;>;",
            "Lcom/superwall/sdk/misc/primitives/Reducer<",
            "TS;>;)V"
        }
    .end annotation

    const-string v0, "reducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    check-cast p0, Lcom/superwall/sdk/misc/primitives/StoreContext;

    invoke-static {p0, p1}, Lcom/superwall/sdk/misc/primitives/StoreContext$DefaultImpls;->update(Lcom/superwall/sdk/misc/primitives/StoreContext;Lcom/superwall/sdk/misc/primitives/Reducer;)V

    return-void
.end method
