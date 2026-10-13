.class public final Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt;
.super Ljava/lang/Object;
.source "InternalGetPaywall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a6\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0080@\u00a2\u0006\u0002\u0010\n\u001a4\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000e0\r\u00a8\u0006\u000f"
    }
    d2 = {
        "getPaywall",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "",
        "Lcom/superwall/sdk/Superwall;",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "publisher",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
        "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPaywallSync",
        "onStateChanged",
        "Lkotlin/Function1;",
        "",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$FCKzAxf57S-FR7SwWWqCGAfSFaI(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt;->getPaywallSync$lambda$2(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final getPaywall(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;

    invoke-direct {v0, p3}, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->L$2:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/Superwall;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p3

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    iput-object p0, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->label:I

    invoke-static {p0, p1, p2, v0}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt;->getPaywallComponents(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {p3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_5

    check-cast p3, Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;

    .line 38
    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;->getView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object p0

    .line 41
    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;->getRulesOutcome()Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getUnsavedOccurrence()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    move-result-object v0

    .line 38
    invoke-virtual {p0, p1, p2, v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->set$superwall_release(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;)V

    .line 43
    new-instance p0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;->getView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p0, Lcom/superwall/sdk/misc/Either;

    return-object p0

    .line 45
    :cond_5
    iput-object v2, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->L$0:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywall$1;->label:I

    invoke-static {p0, p1, v2, v0}, Lcom/superwall/sdk/paywall/presentation/internal/operators/LogErrorsKt;->logErrors(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    move-object p0, v2

    .line 46
    :goto_3
    new-instance p1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/superwall/sdk/misc/Either;

    return-object p1
.end method

.method public static synthetic getPaywall$default(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x7

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 35
    invoke-static {p4, p4, p5, p2, p5}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p2

    .line 32
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt;->getPaywall(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getPaywallSync(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onStateChanged"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 62
    invoke-static {v2, v2, v3, v1, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v1

    .line 63
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywallSync$2;

    invoke-direct {v0, v1, p2, v3}, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywallSync$2;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 68
    new-instance p2, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywallSync$3;

    invoke-direct {p2, p0, p1, v1, v3}, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$getPaywallSync$3;-><init>(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    const/4 p0, 0x1

    invoke-static {v3, p2, p0, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/superwall/sdk/misc/Either;

    return-object p0
.end method

.method public static synthetic getPaywallSync$default(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/superwall/sdk/misc/Either;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 59
    new-instance p2, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt$$ExternalSyntheticLambda0;-><init>()V

    .line 57
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/InternalGetPaywallKt;->getPaywallSync(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object p0

    return-object p0
.end method

.method private static final getPaywallSync$lambda$2(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
