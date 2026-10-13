.class public final Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt;
.super Ljava/lang/Object;
.source "GetPresenter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001at\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2(\u0010\u000b\u001a$\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000c2\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0012H\u0080@\u00a2\u0006\u0002\u0010\u0013\u001a\"\u0010\u000b\u001a\u00020\u000f*\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\rH\u0080@\u00a2\u0006\u0002\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "getPresenterIfNecessary",
        "Landroid/app/Activity;",
        "paywallView",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "rulesOutcome",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "paywallStatePublisher",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
        "attemptTriggerFire",
        "Lkotlin/Function3;",
        "Lcom/superwall/sdk/models/triggers/InternalTriggerResult;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "activity",
        "Lkotlin/Function0;",
        "(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/superwall/sdk/Superwall;",
        "triggerResult",
        "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final attemptTriggerFire(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lcom/superwall/sdk/models/triggers/InternalTriggerResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$attemptTriggerFire$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$attemptTriggerFire$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$attemptTriggerFire$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$attemptTriggerFire$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$attemptTriggerFire$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$attemptTriggerFire$1;

    invoke-direct {v0, p3}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$attemptTriggerFire$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$attemptTriggerFire$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 87
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$attemptTriggerFire$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getPresentationInfo()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;->getEventName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 94
    :cond_3
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getPresentationInfo()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    move-result-object p1

    .line 95
    instance-of p3, p1, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$ExplicitTrigger;

    if-nez p3, :cond_6

    instance-of p3, p1, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$ImplicitTrigger;

    if-eqz p3, :cond_4

    goto :goto_1

    .line 104
    :cond_4
    instance-of p1, p1, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$FromIdentifier;

    if-eqz p1, :cond_5

    goto :goto_2

    .line 94
    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 97
    :cond_6
    :goto_1
    instance-of p1, p2, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Error;

    if-nez p1, :cond_9

    instance-of p1, p2, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$PlacementNotFound;

    if-eqz p1, :cond_7

    goto :goto_4

    .line 107
    :cond_7
    :goto_2
    new-instance v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TriggerFire;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    invoke-direct/range {v4 .. v9}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TriggerFire;-><init>(Lcom/superwall/sdk/models/triggers/InternalTriggerResult;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    check-cast v4, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$attemptTriggerFire$1;->label:I

    invoke-static {p0, v4, v0}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 98
    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final getPresenterIfNecessary(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "-",
            "Lcom/superwall/sdk/models/triggers/InternalTriggerResult;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/app/Activity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    instance-of v3, v2, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;

    iget v4, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;

    invoke-direct {v3, v2}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 32
    iget v5, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v0, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object v1, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->getType()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    move-result-object v2

    .line 41
    instance-of v5, v2, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;

    if-eqz v5, :cond_6

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getTriggerResult()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    move-result-object v2

    .line 43
    iput v8, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->label:I

    invoke-interface {v1, v0, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    return-object v9

    .line 50
    :cond_6
    instance-of v5, v2, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetImplicitPresentationResult;

    if-nez v5, :cond_b

    .line 51
    instance-of v5, v2, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPresentationResult;

    if-nez v5, :cond_b

    .line 52
    instance-of v5, v2, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$ConfirmAllAssignments;

    if-eqz v5, :cond_7

    goto :goto_5

    .line 55
    :cond_7
    instance-of v2, v2, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Presentation;

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getTriggerResult()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    move-result-object v2

    move-object/from16 v5, p3

    .line 60
    iput-object v5, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->L$0:Ljava/lang/Object;

    move-object/from16 v8, p5

    iput-object v8, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->L$1:Ljava/lang/Object;

    iput v7, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->label:I

    invoke-interface {v1, v0, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_8

    goto :goto_3

    :cond_8
    move-object v1, v5

    move-object v0, v8

    .line 65
    :goto_2
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_a

    .line 68
    sget-object v10, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 69
    sget-object v11, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 70
    sget-object v12, Lcom/superwall/sdk/logger/LogScope;->paywallPresentation:Lcom/superwall/sdk/logger/LogScope;

    const/16 v16, 0x18

    const/16 v17, 0x0

    .line 68
    const-string v13, "Current Activity is null, can\'t present paywall"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationLogic;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationLogic;

    .line 77
    const-string v2, "No Activity to present paywall on"

    .line 78
    const-string v5, "This usually happens when you call this method before a window was made key and visible."

    .line 74
    const-string v7, "SWPresentationError"

    const/16 v8, 0x67

    invoke-virtual {v0, v7, v8, v2, v5}, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationLogic;->presentationError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    .line 80
    new-instance v2, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$PresentationError;

    invoke-direct {v2, v0}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$PresentationError;-><init>(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_9

    .line 81
    iput-object v9, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->L$0:Ljava/lang/Object;

    iput-object v9, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->L$1:Ljava/lang/Object;

    iput v6, v3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt$getPresenterIfNecessary$1;->label:I

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_9

    :goto_3
    return-object v4

    .line 82
    :cond_9
    :goto_4
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoPresenter;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoPresenter;-><init>()V

    throw v0

    :cond_a
    return-object v0

    :cond_b
    :goto_5
    return-object v9
.end method

.method public static synthetic getPresenterIfNecessary$default(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 32
    invoke-static/range {v0 .. v6}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt;->getPresenterIfNecessary(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
