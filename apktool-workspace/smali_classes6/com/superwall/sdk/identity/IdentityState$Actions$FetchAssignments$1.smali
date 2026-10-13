.class final Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IdentityManagerActor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments;-><init>()V
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
    c = "com.superwall.sdk.identity.IdentityState$Actions$FetchAssignments$1"
    f = "IdentityManagerActor.kt"
    i = {
        0x0
    }
    l = {
        0x163
    }
    m = "invokeSuspend"
    n = {
        "<this>"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;

    invoke-direct {v0, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/identity/IdentityContext;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;->invoke(Lcom/superwall/sdk/identity/IdentityContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 353
    iget v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/identity/IdentityContext;

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

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/identity/IdentityContext;

    .line 355
    :try_start_1
    invoke-interface {p1}, Lcom/superwall/sdk/identity/IdentityContext;->getSdkContext()Lcom/superwall/sdk/SdkContext;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments$1;->label:I

    invoke-interface {v1, v3}, Lcom/superwall/sdk/SdkContext;->fetchAssignments(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 357
    :goto_0
    sget-object p1, Lcom/superwall/sdk/identity/IdentityState$Updates$AssignmentsCompleted;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$AssignmentsCompleted;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-interface {v0, p1}, Lcom/superwall/sdk/identity/IdentityContext;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    .line 359
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 357
    :goto_1
    sget-object v1, Lcom/superwall/sdk/identity/IdentityState$Updates$AssignmentsCompleted;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$AssignmentsCompleted;

    check-cast v1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/identity/IdentityContext;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    throw p1
.end method
