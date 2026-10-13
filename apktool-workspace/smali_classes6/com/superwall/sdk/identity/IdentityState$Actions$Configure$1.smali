.class final Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IdentityManagerActor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/superwall/sdk/identity/IdentityContext;",
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
        "Lcom/superwall/sdk/identity/IdentityContext;"
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
    c = "com.superwall.sdk.identity.IdentityState$Actions$Configure$1"
    f = "IdentityManagerActor.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $neverCalledStaticConfig:Z

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;->$neverCalledStaticConfig:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;

    iget-boolean v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;->$neverCalledStaticConfig:Z

    invoke-direct {v0, v1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/superwall/sdk/identity/IdentityContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/identity/IdentityContext;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;->invoke(Lcom/superwall/sdk/identity/IdentityContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 250
    iget v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/identity/IdentityContext;

    .line 251
    invoke-interface {p1}, Lcom/superwall/sdk/identity/IdentityContext;->getStorage()Lcom/superwall/sdk/storage/Storage;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/storage/DidTrackFirstSeen;->INSTANCE:Lcom/superwall/sdk/storage/DidTrackFirstSeen;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    .line 253
    sget-object v1, Lcom/superwall/sdk/identity/IdentityLogic;->INSTANCE:Lcom/superwall/sdk/identity/IdentityLogic;

    .line 254
    invoke-interface {p1}, Lcom/superwall/sdk/identity/IdentityContext;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/identity/IdentityState;

    invoke-virtual {v2}, Lcom/superwall/sdk/identity/IdentityState;->isLoggedIn()Z

    move-result v2

    .line 255
    iget-boolean v3, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;->$neverCalledStaticConfig:Z

    .line 253
    invoke-virtual {v1, v2, v3, v0}, Lcom/superwall/sdk/identity/IdentityLogic;->shouldGetAssignments(ZZZ)Z

    move-result v0

    .line 258
    new-instance v1, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;-><init>(Z)V

    check-cast v1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-interface {p1, v1}, Lcom/superwall/sdk/identity/IdentityContext;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    if-eqz v0, :cond_1

    .line 260
    sget-object v0, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments;

    check-cast v0, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-interface {p1, v0}, Lcom/superwall/sdk/identity/IdentityContext;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    .line 262
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 250
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
