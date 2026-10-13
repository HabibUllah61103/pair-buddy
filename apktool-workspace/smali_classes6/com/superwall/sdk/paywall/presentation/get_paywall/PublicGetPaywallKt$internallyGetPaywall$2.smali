.class final Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PublicGetPaywall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt;->internallyGetPaywall(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/superwall/sdk/misc/Either<",
        "+",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "Ljava/lang/Throwable;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.superwall.sdk.paywall.presentation.get_paywall.PublicGetPaywallKt$internallyGetPaywall$2"
    f = "PublicGetPaywall.kt"
    i = {}
    l = {
        0x5e,
        0x6d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

.field final synthetic $params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

.field final synthetic $placement:Ljava/lang/String;

.field final synthetic $this_internallyGetPaywall:Lcom/superwall/sdk/Superwall;

.field label:I


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;",
            "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$params:Ljava/util/Map;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$placement:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$this_internallyGetPaywall:Lcom/superwall/sdk/Superwall;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    iput-object p5, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$params:Ljava/util/Map;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$placement:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$this_internallyGetPaywall:Lcom/superwall/sdk/Superwall;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;-><init>(Ljava/util/Map;Ljava/lang/String;Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 86
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    iget-object v2, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$params:Ljava/util/Map;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 88
    :cond_3
    new-instance v5, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent$Track;

    .line 89
    iget-object v6, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$placement:Ljava/lang/String;

    const/4 v7, 0x0

    .line 88
    invoke-direct {v5, v6, v7, v7, v2}, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent$Track;-><init>(Ljava/lang/String;ZZLjava/util/Map;)V

    .line 94
    iget-object v2, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$this_internallyGetPaywall:Lcom/superwall/sdk/Superwall;

    check-cast v5, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v4, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->label:I

    invoke-static {v2, v5, v6}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_1

    .line 96
    :cond_4
    :goto_0
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 97
    new-instance v1, Lcom/superwall/sdk/misc/Either$Failure;

    .line 98
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error in tracking event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    .line 97
    :cond_5
    invoke-direct {v1, v2}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 102
    :cond_6
    iget-object v4, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$this_internallyGetPaywall:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v4}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/superwall/sdk/dependencies/RequestFactory;

    .line 103
    new-instance v4, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$ExplicitTrigger;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v2, Lcom/superwall/sdk/analytics/internal/TrackingResult;

    invoke-virtual {v2}, Lcom/superwall/sdk/analytics/internal/TrackingResult;->getData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$ExplicitTrigger;-><init>(Lcom/superwall/sdk/models/events/EventData;)V

    move-object v6, v4

    check-cast v6, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    .line 104
    iget-object v7, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    .line 106
    new-instance v2, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;

    iget-object v4, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    invoke-direct {v2, v4}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;-><init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;)V

    move-object v12, v2

    check-cast v12, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    const/16 v13, 0x1c

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 102
    invoke-static/range {v5 .. v14}, Lcom/superwall/sdk/dependencies/RequestFactory$DefaultImpls;->makePresentationRequest$default(Lcom/superwall/sdk/dependencies/RequestFactory;Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Landroid/app/Activity;Ljava/lang/Boolean;Lkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    move-result-object v16

    .line 109
    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->$this_internallyGetPaywall:Lcom/superwall/sdk/Superwall;

    move-object/from16 v18, v0

    check-cast v18, Lkotlin/coroutines/Continuation;

    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$internallyGetPaywall$2;->label:I

    const/16 v17, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt;->getPaywall$default(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    :goto_1
    return-object v1

    :cond_7
    return-object v2
.end method
