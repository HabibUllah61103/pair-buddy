.class final Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IdentityManagerActor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
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
    c = "com.superwall.sdk.identity.IdentityState$Actions$IdentityChanged$1"
    f = "IdentityManagerActor.kt"
    i = {
        0x0
    }
    l = {
        0x13d,
        0x141
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
.field final synthetic $alias:Ljava/lang/String;

.field final synthetic $id:Ljava/lang/String;

.field final synthetic $restoreAssignments:Ljava/lang/Boolean;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->$id:Ljava/lang/String;

    iput-object p2, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->$alias:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->$restoreAssignments:Ljava/lang/Boolean;

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

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->$alias:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->$restoreAssignments:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/identity/IdentityContext;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->invoke(Lcom/superwall/sdk/identity/IdentityContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 302
    iget v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/identity/IdentityContext;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/superwall/sdk/identity/IdentityContext;

    .line 303
    new-instance p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$IdentityAlias;

    invoke-direct {p1, v3, v4, v3}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$IdentityAlias;-><init>(Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    invoke-interface {v1, p1}, Lcom/superwall/sdk/identity/IdentityContext;->track(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;)V

    .line 307
    invoke-interface {v1}, Lcom/superwall/sdk/identity/IdentityContext;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState;

    .line 309
    new-instance v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;

    .line 310
    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityState;->getAppInstalledAtString()Ljava/lang/String;

    move-result-object v6

    .line 311
    new-instance v7, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityState;->getUserAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v7, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 309
    invoke-direct {v5, v6, v7}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    check-cast v5, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    .line 308
    invoke-interface {v1, v5}, Lcom/superwall/sdk/identity/IdentityContext;->track(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;)V

    .line 315
    new-instance p1, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed;

    iget-object v5, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->$id:Ljava/lang/String;

    invoke-direct {p1, v5}, Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-interface {v1, p1}, Lcom/superwall/sdk/identity/IdentityContext;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    .line 316
    sget-object p1, Lcom/superwall/sdk/identity/IdentityState$Actions$CheckWebEntitlements;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Actions$CheckWebEntitlements;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-interface {v1, p1}, Lcom/superwall/sdk/identity/IdentityContext;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    .line 317
    invoke-interface {v1}, Lcom/superwall/sdk/identity/IdentityContext;->getSdkContext()Lcom/superwall/sdk/SdkContext;

    move-result-object p1

    iget-object v5, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->$id:Ljava/lang/String;

    iget-object v6, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->$alias:Ljava/lang/String;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->label:I

    invoke-interface {p1, v5, v6, v7}, Lcom/superwall/sdk/SdkContext;->reevaluateTestMode(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 320
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->$restoreAssignments:Ljava/lang/Boolean;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 321
    sget-object p1, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/TypedAction;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v3, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged$1;->label:I

    invoke-interface {v1, p1, v4}, Lcom/superwall/sdk/identity/IdentityContext;->immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_1
    return-object v0

    .line 323
    :cond_4
    sget-object p1, Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-interface {v1, p1}, Lcom/superwall/sdk/identity/IdentityContext;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    .line 325
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
