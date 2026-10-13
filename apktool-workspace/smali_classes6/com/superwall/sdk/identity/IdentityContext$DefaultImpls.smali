.class public final Lcom/superwall/sdk/identity/IdentityContext$DefaultImpls;
.super Ljava/lang/Object;
.source "IdentityContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/identity/IdentityContext;
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
.method public static delete(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/storage/Storable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/storage/Storable<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "storable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    check-cast p0, Lcom/superwall/sdk/misc/primitives/BaseContext;

    invoke-static {p0, p1}, Lcom/superwall/sdk/misc/primitives/BaseContext$DefaultImpls;->delete(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/storage/Storable;)V

    return-void
.end method

.method public static effect(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/misc/primitives/TypedAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    check-cast p0, Lcom/superwall/sdk/misc/primitives/BaseContext;

    invoke-static {p0, p1}, Lcom/superwall/sdk/misc/primitives/BaseContext$DefaultImpls;->effect(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    return-void
.end method

.method public static getState(Lcom/superwall/sdk/identity/IdentityContext;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            ")",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/superwall/sdk/identity/IdentityState;",
            ">;"
        }
    .end annotation

    .line 14
    check-cast p0, Lcom/superwall/sdk/misc/primitives/BaseContext;

    invoke-static {p0}, Lcom/superwall/sdk/misc/primitives/BaseContext$DefaultImpls;->getState(Lcom/superwall/sdk/misc/primitives/BaseContext;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public static immediate(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 14
    check-cast p0, Lcom/superwall/sdk/misc/primitives/BaseContext;

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/misc/primitives/BaseContext$DefaultImpls;->immediate(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static immediateUntil(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/identity/IdentityState;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 14
    check-cast p0, Lcom/superwall/sdk/misc/primitives/BaseContext;

    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/misc/primitives/BaseContext$DefaultImpls;->immediateUntil(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static persist(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "storable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    check-cast p0, Lcom/superwall/sdk/misc/primitives/BaseContext;

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/misc/primitives/BaseContext$DefaultImpls;->persist(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    return-void
.end method

.method public static read-IoAF18A(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "storable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    check-cast p0, Lcom/superwall/sdk/misc/primitives/BaseContext;

    invoke-static {p0, p1}, Lcom/superwall/sdk/misc/primitives/BaseContext$DefaultImpls;->read-IoAF18A(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sideEffect(Lcom/superwall/sdk/identity/IdentityContext;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/identity/IdentityContext;",
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

    .line 14
    check-cast p0, Lcom/superwall/sdk/misc/primitives/BaseContext;

    invoke-static {p0, p1}, Lcom/superwall/sdk/misc/primitives/BaseContext$DefaultImpls;->sideEffect(Lcom/superwall/sdk/misc/primitives/BaseContext;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static track(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    check-cast p0, Lcom/superwall/sdk/misc/primitives/BaseContext;

    invoke-static {p0, p1}, Lcom/superwall/sdk/misc/primitives/BaseContext$DefaultImpls;->track(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;)V

    return-void
.end method

.method public static update(Lcom/superwall/sdk/identity/IdentityContext;Lcom/superwall/sdk/misc/primitives/Reducer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/misc/primitives/Reducer<",
            "Lcom/superwall/sdk/identity/IdentityState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    check-cast p0, Lcom/superwall/sdk/misc/primitives/BaseContext;

    invoke-static {p0, p1}, Lcom/superwall/sdk/misc/primitives/BaseContext$DefaultImpls;->update(Lcom/superwall/sdk/misc/primitives/BaseContext;Lcom/superwall/sdk/misc/primitives/Reducer;)V

    return-void
.end method
