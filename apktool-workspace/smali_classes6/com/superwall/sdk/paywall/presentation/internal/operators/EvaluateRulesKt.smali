.class public final Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt;
.super Ljava/lang/Object;
.source "EvaluateRules.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEvaluateRules.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EvaluateRules.kt\ncom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt\n+ 2 Either.kt\ncom/superwall/sdk/misc/EitherKt\n*L\n1#1,77:1\n143#2,4:78\n*S KotlinDebug\n*F\n+ 1 EvaluateRules.kt\ncom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt\n*L\n56#1:78,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a \u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010\u0006\u001aP\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u00102\u0006\u0010\u0004\u001a\u00020\u0005H\u0080@\u00a2\u0006\u0002\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "evaluateRules",
        "Lkotlin/Result;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
        "Lcom/superwall/sdk/Superwall;",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "assignments",
        "Lcom/superwall/sdk/config/Assignments;",
        "storage",
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "factory",
        "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;",
        "expressionEvaluating",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;",
        "triggersByEventName",
        "",
        "",
        "Lcom/superwall/sdk/models/triggers/Trigger;",
        "(Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final evaluateRules(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;

    invoke-direct {v0, p2}, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    iget-object p2, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget v1, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/dependencies/RuleAttributesFactory;

    iget-object p1, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/storage/LocalStorage;

    iget-object v1, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/config/Assignments;

    iget-object v3, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v4, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/Superwall;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v3

    move-object v3, p0

    move-object p0, v4

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getAssignments$superwall_release()Lcom/superwall/sdk/config/Assignments;

    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object p2

    .line 28
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v4

    check-cast v4, Lcom/superwall/sdk/dependencies/RuleAttributesFactory;

    .line 29
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getContext$superwall_release()Landroid/content/Context;

    move-result-object v6

    iput-object p0, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$0:Ljava/lang/Object;

    iput-object p1, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$1:Ljava/lang/Object;

    iput-object v1, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$2:Ljava/lang/Object;

    iput-object p2, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$3:Ljava/lang/Object;

    iput-object v4, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$4:Ljava/lang/Object;

    iput v3, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->label:I

    invoke-virtual {v5, v6, v7}, Lcom/superwall/sdk/dependencies/DependencyContainer;->provideRuleEvaluator(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, p1

    move-object p1, p2

    move-object p2, v3

    move-object v3, v4

    .line 24
    :goto_1
    move-object v4, p2

    check-cast v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;

    .line 30
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getTriggersByEventName()Ljava/util/Map;

    move-result-object v5

    const/4 p0, 0x0

    .line 25
    iput-object p0, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$0:Ljava/lang/Object;

    iput-object p0, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$1:Ljava/lang/Object;

    iput-object p0, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$2:Ljava/lang/Object;

    iput-object p0, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$3:Ljava/lang/Object;

    iput-object p0, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->L$4:Ljava/lang/Object;

    iput v2, v7, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$1;->label:I

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt;->evaluateRules(Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    :goto_2
    return-object v0

    :cond_5
    return-object p0
.end method

.method public static final evaluateRules(Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/Assignments;",
            "Lcom/superwall/sdk/storage/LocalStorage;",
            "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$2;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$2;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p6, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$2;->label:I

    sub-int/2addr p6, v2

    iput p6, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$2;

    invoke-direct {v0, p6}, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$2;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p6, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getPresentationInfo()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    move-result-object p6

    invoke-virtual {p6}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;->getEventData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object p6

    if-eqz p6, :cond_6

    .line 46
    new-instance p5, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;-><init>(Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;)V

    .line 53
    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt$evaluateRules$2;->label:I

    invoke-virtual {p5, p6, p4, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;->evaluateRules(Lcom/superwall/sdk/models/events/EventData;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_3

    return-object v1

    .line 34
    :cond_3
    :goto_1
    check-cast p6, Lcom/superwall/sdk/misc/Either;

    .line 79
    instance-of p0, p6, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz p0, :cond_4

    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p6, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {p6}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 80
    :cond_4
    instance-of p0, p6, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz p0, :cond_5

    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p6, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {p6}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 78
    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 60
    :cond_6
    invoke-virtual {p5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getPresentationInfo()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    .line 61
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 62
    new-instance p0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoPaywallView;

    .line 63
    const-string p1, "No paywall identifier provided for debugger presentation."

    .line 62
    invoke-direct {p0, p1}, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoPaywallView;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    .line 61
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 67
    :cond_7
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 68
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    .line 70
    new-instance p1, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Paywall;

    .line 71
    sget-object p2, Lcom/superwall/sdk/models/triggers/Experiment;->Companion:Lcom/superwall/sdk/models/triggers/Experiment$Companion;

    invoke-virtual {p2, p0}, Lcom/superwall/sdk/models/triggers/Experiment$Companion;->presentById(Ljava/lang/String;)Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object p0

    .line 70
    invoke-direct {p1, p0}, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Paywall;-><init>(Lcom/superwall/sdk/models/triggers/Experiment;)V

    move-object v3, p1

    check-cast v3, Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;-><init>(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
