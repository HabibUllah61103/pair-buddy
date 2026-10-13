.class final Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IdentityManagerActor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes;-><init>(Ljava/util/Map;ZZ)V
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
    c = "com.superwall.sdk.identity.IdentityState$Actions$MergeAttributes$1"
    f = "IdentityManagerActor.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shouldNotify:Z

.field final synthetic $shouldTrackMerge:Z

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->$attrs:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->$shouldTrackMerge:Z

    iput-boolean p3, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->$shouldNotify:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->$attrs:Ljava/util/Map;

    iget-boolean v2, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->$shouldTrackMerge:Z

    iget-boolean v3, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->$shouldNotify:Z

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;-><init>(Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/identity/IdentityContext;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->invoke(Lcom/superwall/sdk/identity/IdentityContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 369
    iget v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/identity/IdentityContext;

    .line 370
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$AttributesMerged;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->$attrs:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/identity/IdentityState$Updates$AttributesMerged;-><init>(Ljava/util/Map;)V

    check-cast v0, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-interface {p1, v0}, Lcom/superwall/sdk/identity/IdentityContext;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    .line 371
    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->$shouldTrackMerge:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-interface {p1}, Lcom/superwall/sdk/identity/IdentityContext;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/identity/IdentityState;

    .line 374
    new-instance v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;

    .line 375
    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState;->getAppInstalledAtString()Ljava/lang/String;

    move-result-object v2

    .line 376
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState;->getUserAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 374
    invoke-direct {v1, v2, v3}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    check-cast v1, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    .line 373
    invoke-interface {p1, v1}, Lcom/superwall/sdk/identity/IdentityContext;->track(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;)V

    .line 380
    :cond_0
    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes$1;->$shouldNotify:Z

    if-eqz v0, :cond_1

    .line 381
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$NotifyUserChange;

    invoke-interface {p1}, Lcom/superwall/sdk/identity/IdentityContext;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/identity/IdentityState;

    invoke-virtual {v1}, Lcom/superwall/sdk/identity/IdentityState;->getUserAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/superwall/sdk/identity/IdentityState$Actions$NotifyUserChange;-><init>(Ljava/util/Map;)V

    check-cast v0, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-interface {p1, v0}, Lcom/superwall/sdk/identity/IdentityContext;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    .line 383
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 369
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
