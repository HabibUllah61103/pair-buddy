.class public final Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt;
.super Ljava/lang/Object;
.source "InternalGetPresentationResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0080@\u00a2\u0006\u0002\u0010\u0005\u001a\u001c\u0010\u0006\u001a\u00020\u00012\n\u0010\u0007\u001a\u00060\u0008j\u0002`\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "getPresentationResult",
        "Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;",
        "Lcom/superwall/sdk/Superwall;",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handle",
        "error",
        "Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationPipelineError;",
        "requestType",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;",
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
.method public static final getPresentationResult(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt$getPresentationResult$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt$getPresentationResult$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt$getPresentationResult$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt$getPresentationResult$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt$getPresentationResult$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt$getPresentationResult$1;

    invoke-direct {v0, p2}, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt$getPresentationResult$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v4, v0

    iget-object p2, v4, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt$getPresentationResult$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 14
    iget v1, v4, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt$getPresentationResult$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v4, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt$getPresentationResult$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    iput-object p1, v4, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt$getPresentationResult$1;->L$0:Ljava/lang/Object;

    iput v2, v4, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt$getPresentationResult$1;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt;->getPaywallComponents$default(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    move-object p1, v2

    .line 16
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;

    .line 17
    sget-object p2, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/GetPresentationResultLogic;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/get_presentation_result/GetPresentationResultLogic;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;->getRulesOutcome()Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getTriggerResult()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/GetPresentationResultLogic;->convertTriggerResult(Lcom/superwall/sdk/models/triggers/InternalTriggerResult;)Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;

    move-result-object p0

    .line 16
    :cond_4
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_5

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;

    return-object p0

    .line 23
    :cond_5
    instance-of p0, p2, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;

    if-eqz p0, :cond_6

    .line 24
    check-cast p2, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->getType()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/InternalGetPresentationResultKt;->handle(Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;

    move-result-object p0

    return-object p0

    .line 26
    :cond_6
    throw p2
.end method

.method private static final handle(Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;
    .locals 8

    .line 35
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetImplicitPresentationResult;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetImplicitPresentationResult;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 36
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 37
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->info:Lcom/superwall/sdk/logger/LogLevel;

    .line 38
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallPresentation:Lcom/superwall/sdk/logger/LogScope;

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Paywall presentation error: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 36
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 44
    :cond_0
    instance-of p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoPaywallView;

    if-eqz p1, :cond_1

    new-instance p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$PaywallNotAvailable;

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$PaywallNotAvailable;-><init>()V

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;

    return-object p0

    .line 45
    :cond_1
    instance-of p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoAudienceMatch;

    if-eqz p1, :cond_2

    new-instance p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$NoAudienceMatch;

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$NoAudienceMatch;-><init>()V

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;

    return-object p0

    .line 46
    :cond_2
    instance-of p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$Holdout;

    if-eqz p1, :cond_3

    new-instance p1, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$Holdout;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$Holdout;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$Holdout;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$Holdout;-><init>(Lcom/superwall/sdk/models/triggers/Experiment;)V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;

    return-object p1

    .line 47
    :cond_3
    instance-of p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$PlacementNotFound;

    if-eqz p1, :cond_4

    new-instance p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$PlacementNotFound;

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$PlacementNotFound;-><init>()V

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;

    return-object p0

    .line 48
    :cond_4
    instance-of p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$DebuggerPresented;

    if-nez p1, :cond_6

    .line 49
    instance-of p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoPresenter;

    if-nez p1, :cond_6

    .line 50
    instance-of p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$PaywallAlreadyPresented;

    if-nez p1, :cond_6

    .line 51
    instance-of p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoConfig;

    if-nez p1, :cond_6

    .line 52
    instance-of p0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$SubscriptionStatusTimeout;

    if-eqz p0, :cond_5

    goto :goto_0

    .line 43
    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 53
    :cond_6
    :goto_0
    new-instance p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$PaywallNotAvailable;

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$PaywallNotAvailable;-><init>()V

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;

    return-object p0
.end method
