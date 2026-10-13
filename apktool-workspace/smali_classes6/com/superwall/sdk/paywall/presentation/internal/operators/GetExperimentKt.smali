.class public final Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt;
.super Ljava/lang/Object;
.source "GetExperiment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0002\u0010\u0007\u001a\u0096\u0001\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b2\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u00122H\u0008\u0002\u0010\u0000\u001aB\u0008\u0001\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0003\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0016\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0013H\u0080@\u00a2\u0006\u0002\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "activateSession",
        "",
        "Lcom/superwall/sdk/Superwall;",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "rulesOutcome",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
        "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getExperiment",
        "Lcom/superwall/sdk/models/triggers/Experiment;",
        "debugInfo",
        "",
        "",
        "",
        "paywallStatePublisher",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
        "storage",
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlin/coroutines/Continuation;",
        "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final synthetic access$activateSession(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt;->activateSession(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final activateSession(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->getType()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetImplicitPresentationResult;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetImplicitPresentationResult;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 24
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->getType()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPresentationResult;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPresentationResult;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getTriggerResult()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt;->attemptTriggerFire(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 26
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final getExperiment(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lcom/superwall/sdk/storage/LocalStorage;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/models/triggers/Experiment;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    instance-of v5, v4, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;

    iget v6, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->label:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget v4, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->label:I

    sub-int/2addr v4, v7

    iput v4, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;

    invoke-direct {v5, v4}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v4, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 43
    iget v7, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->label:I

    const/4 v8, 0x0

    packed-switch v7, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v0, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/storage/LocalStorage;

    iget-object v1, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v2, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto :goto_1

    :pswitch_3
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getTriggerResult()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    move-result-object v4

    .line 57
    instance-of v7, v4, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Paywall;

    if-eqz v7, :cond_1

    .line 58
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getTriggerResult()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Paywall;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Paywall;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object v0

    return-object v0

    .line 61
    :cond_1
    instance-of v7, v4, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Holdout;

    const/4 v9, 0x1

    if-eqz v7, :cond_4

    .line 62
    iput-object v1, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$0:Ljava/lang/Object;

    iput-object v2, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$1:Ljava/lang/Object;

    move-object/from16 v4, p4

    iput-object v4, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$2:Ljava/lang/Object;

    iput v9, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->label:I

    invoke-interface {v3, v0, v1, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_2

    goto/16 :goto_3

    :cond_2
    move-object v0, v4

    .line 63
    :goto_1
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getUnsavedOccurrence()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    .line 64
    invoke-virtual {v0}, Lcom/superwall/sdk/storage/LocalStorage;->getCoreDataManager()Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    move-result-object v0

    invoke-static {v0, v3, v8, v4, v8}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->save$default(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 67
    :cond_3
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$Holdout;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getTriggerResult()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Holdout;

    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Holdout;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$Holdout;-><init>(Lcom/superwall/sdk/models/triggers/Experiment;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;

    if-eqz v2, :cond_b

    .line 69
    new-instance v3, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Skipped;

    .line 70
    new-instance v7, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$Holdout;

    .line 71
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getTriggerResult()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Holdout;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Holdout;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object v1

    .line 70
    invoke-direct {v7, v1}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$Holdout;-><init>(Lcom/superwall/sdk/models/triggers/Experiment;)V

    check-cast v7, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;

    .line 69
    invoke-direct {v3, v7}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Skipped;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;)V

    .line 68
    iput-object v0, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$0:Ljava/lang/Object;

    iput-object v8, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$1:Ljava/lang/Object;

    iput-object v8, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$2:Ljava/lang/Object;

    iput v4, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->label:I

    invoke-interface {v2, v3, v5}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_b

    goto/16 :goto_3

    .line 77
    :cond_4
    instance-of v7, v4, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$NoAudienceMatch;

    if-eqz v7, :cond_7

    .line 78
    iput-object v2, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->label:I

    invoke-interface {v3, v0, v1, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_5

    goto/16 :goto_3

    :cond_5
    move-object v0, v2

    .line 79
    :goto_2
    new-instance v1, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoAudienceMatch;

    invoke-direct {v1}, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoAudienceMatch;-><init>()V

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;

    if-eqz v0, :cond_6

    .line 80
    new-instance v2, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Skipped;

    new-instance v3, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$NoAudienceMatch;

    invoke-direct {v3}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$NoAudienceMatch;-><init>()V

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;

    invoke-direct {v2, v3}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Skipped;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;)V

    iput-object v1, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->label:I

    invoke-interface {v0, v2, v5}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_6

    goto/16 :goto_3

    :cond_6
    move-object v0, v1

    goto/16 :goto_4

    .line 83
    :cond_7
    instance-of v3, v4, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$PlacementNotFound;

    if-eqz v3, :cond_8

    .line 84
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$PlacementNotFound;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$PlacementNotFound;-><init>()V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;

    if-eqz v2, :cond_b

    .line 85
    new-instance v1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Skipped;

    new-instance v3, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$PlacementNotFound;

    invoke-direct {v3}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$PlacementNotFound;-><init>()V

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;

    invoke-direct {v1, v3}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Skipped;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;)V

    iput-object v0, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->label:I

    invoke-interface {v2, v1, v5}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_b

    goto :goto_3

    .line 88
    :cond_8
    instance-of v3, v4, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Error;

    if-eqz v3, :cond_c

    .line 89
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->getType()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    move-result-object v3

    sget-object v4, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetImplicitPresentationResult;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetImplicitPresentationResult;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 90
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->getType()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    move-result-object v0

    sget-object v3, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPresentationResult;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPresentationResult;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 92
    :cond_9
    sget-object v10, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 93
    sget-object v11, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 94
    sget-object v12, Lcom/superwall/sdk/logger/LogScope;->paywallPresentation:Lcom/superwall/sdk/logger/LogScope;

    .line 97
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getTriggerResult()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Error;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Error;->getError()Ljava/lang/Exception;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/Throwable;

    .line 92
    const-string v13, "Error Getting Paywall view"

    move-object/from16 v14, p2

    invoke-virtual/range {v10 .. v15}, Lcom/superwall/sdk/logger/Logger;->debug(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 100
    :cond_a
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoPaywallView;

    invoke-direct {v0, v8, v9, v8}, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoPaywallView;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;

    if-eqz v2, :cond_b

    .line 101
    new-instance v3, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$PresentationError;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getTriggerResult()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Error;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Error;->getError()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v3, v1}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$PresentationError;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->L$0:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, v5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$1;->label:I

    invoke-interface {v2, v3, v5}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_b

    :goto_3
    return-object v6

    .line 105
    :cond_b
    :goto_4
    throw v0

    .line 56
    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic getExperiment$default(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_1

    .line 50
    new-instance p5, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$2;

    invoke-direct {p5, v0}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt$getExperiment$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p5, Lkotlin/jvm/functions/Function3;

    .line 43
    :cond_1
    invoke-static/range {p0 .. p6}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt;->getExperiment(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
