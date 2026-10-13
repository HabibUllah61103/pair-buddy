.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;
.super Ljava/lang/Object;
.source "RuleLogic.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRuleLogic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RuleLogic.kt\ncom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n*L\n1#1,134:1\n135#2,10:135\n*S KotlinDebug\n*F\n+ 1 RuleLogic.kt\ncom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic\n*L\n45#1:135,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ6\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0016J\u001e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0015H\u0082@\u00a2\u0006\u0002\u0010\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;",
        "",
        "assignments",
        "Lcom/superwall/sdk/config/Assignments;",
        "storage",
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "factory",
        "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;",
        "ruleEvaluator",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;",
        "<init>",
        "(Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;)V",
        "evaluateRules",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
        "",
        "event",
        "Lcom/superwall/sdk/models/events/EventData;",
        "triggers",
        "",
        "",
        "Lcom/superwall/sdk/models/triggers/Trigger;",
        "(Lcom/superwall/sdk/models/events/EventData;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "findMatchingRule",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome;",
        "trigger",
        "(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/triggers/Trigger;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final assignments:Lcom/superwall/sdk/config/Assignments;

.field private final factory:Lcom/superwall/sdk/dependencies/RuleAttributesFactory;

.field private final ruleEvaluator:Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;

.field private final storage:Lcom/superwall/sdk/storage/LocalStorage;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;)V
    .locals 1

    const-string v0, "assignments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleEvaluator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;->assignments:Lcom/superwall/sdk/config/Assignments;

    .line 37
    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    .line 38
    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;->factory:Lcom/superwall/sdk/dependencies/RuleAttributesFactory;

    .line 39
    iput-object p4, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;->ruleEvaluator:Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;

    return-void
.end method

.method public static final synthetic access$findMatchingRule(Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/triggers/Trigger;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;->findMatchingRule(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/triggers/Trigger;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final findMatchingRule(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/triggers/Trigger;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 112
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object p2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget-object v2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;

    iget-object v4, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/models/events/EventData;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v4

    move-object v4, p2

    move-object p2, v6

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    iget-object p3, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;->ruleEvaluator:Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 120
    invoke-virtual {p2}, Lcom/superwall/sdk/models/triggers/Trigger;->getRules()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 121
    iput-object p2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$findMatchingRule$1;->label:I

    invoke-interface {p3, v4, p2, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;->evaluateExpression(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v6, v2

    move-object v2, p3

    move-object p3, v4

    move-object v4, v6

    .line 112
    :goto_2
    check-cast p3, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    .line 124
    instance-of v5, p3, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;

    if-eqz v5, :cond_4

    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome$Matched;

    check-cast p3, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;

    invoke-virtual {p3}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;->getMatchedItem()Lcom/superwall/sdk/models/triggers/MatchedItem;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome$Matched;-><init>(Lcom/superwall/sdk/models/triggers/MatchedItem;)V

    return-object p1

    .line 125
    :cond_4
    instance-of v5, p3, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;

    if-eqz v5, :cond_5

    check-cast p3, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;

    invoke-virtual {p3}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;->getUnmatchedRule()Lcom/superwall/sdk/models/triggers/UnmatchedRule;

    move-result-object p3

    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p3, v2

    move-object v2, v4

    goto :goto_1

    .line 123
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 129
    :cond_6
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome$NoMatchingRules;

    invoke-direct {p1, v2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome$NoMatchingRules;-><init>(Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public final evaluateRules(Lcom/superwall/sdk/models/events/EventData;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$evaluateRules$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$evaluateRules$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$evaluateRules$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$evaluateRules$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$evaluateRules$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$evaluateRules$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$evaluateRules$1;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$evaluateRules$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 41
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$evaluateRules$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$evaluateRules$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    :try_start_1
    invoke-virtual {p1}, Lcom/superwall/sdk/models/events/EventData;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/superwall/sdk/models/triggers/Trigger;

    if-nez p2, :cond_3

    .line 48
    new-instance v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    sget-object p1, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$PlacementNotFound;->INSTANCE:Lcom/superwall/sdk/models/triggers/InternalTriggerResult$PlacementNotFound;

    move-object v7, p1

    check-cast v7, Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;-><init>(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    .line 50
    :cond_3
    iput-object p0, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$evaluateRules$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$evaluateRules$1;->label:I

    invoke-direct {p0, p1, p2, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;->findMatchingRule(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/triggers/Trigger;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 41
    :goto_1
    check-cast p3, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome;

    .line 54
    instance-of p2, p3, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome$Matched;

    if-eqz p2, :cond_9

    check-cast p3, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome$Matched;

    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome$Matched;->getItem()Lcom/superwall/sdk/models/triggers/MatchedItem;

    move-result-object p2

    .line 60
    invoke-virtual {p2}, Lcom/superwall/sdk/models/triggers/MatchedItem;->getRule()Lcom/superwall/sdk/models/triggers/TriggerRule;

    move-result-object p3

    .line 61
    iget-object v0, p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/superwall/sdk/storage/LocalStorage;->getConfirmedAssignments()Ljava/util/Map;

    move-result-object v0

    .line 65
    invoke-virtual {p3}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    if-nez v1, :cond_5

    .line 66
    iget-object v1, p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;->assignments:Lcom/superwall/sdk/config/Assignments;

    invoke-virtual {v1}, Lcom/superwall/sdk/config/Assignments;->getUnconfirmedAssignments()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p3}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    if-nez v1, :cond_5

    .line 67
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic;

    .line 68
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    .line 70
    new-instance p1, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Error;

    .line 71
    new-instance p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/PaywallNotFoundException;

    invoke-direct {p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/PaywallNotFoundException;-><init>()V

    check-cast p2, Ljava/lang/Exception;

    .line 70
    invoke-direct {p1, p2}, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Error;-><init>(Ljava/lang/Exception;)V

    move-object v3, p1

    check-cast v3, Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;-><init>(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_3

    .line 76
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 77
    new-instance p1, Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;

    invoke-virtual {p3}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant;)V

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 80
    :goto_2
    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;->getType()Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    move-result-object v0

    sget-object v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleLogic$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v3, :cond_8

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 96
    new-instance v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    .line 98
    invoke-virtual {p2}, Lcom/superwall/sdk/models/triggers/MatchedItem;->getUnsavedOccurrence()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    move-result-object p2

    .line 100
    new-instance v0, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Paywall;

    .line 101
    new-instance v2, Lcom/superwall/sdk/models/triggers/Experiment;

    .line 102
    invoke-virtual {p3}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {p3}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object p3

    invoke-virtual {p3}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getGroupId()Ljava/lang/String;

    move-result-object p3

    .line 101
    invoke-direct {v2, v3, p3, v1}, Lcom/superwall/sdk/models/triggers/Experiment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant;)V

    .line 100
    invoke-direct {v0, v2}, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Paywall;-><init>(Lcom/superwall/sdk/models/triggers/Experiment;)V

    check-cast v0, Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    .line 96
    invoke-direct {v4, p1, p2, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;-><init>(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;)V

    goto :goto_4

    .line 80
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 82
    :cond_8
    new-instance v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    .line 84
    invoke-virtual {p2}, Lcom/superwall/sdk/models/triggers/MatchedItem;->getUnsavedOccurrence()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    move-result-object p2

    .line 86
    new-instance v0, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Holdout;

    .line 87
    new-instance v2, Lcom/superwall/sdk/models/triggers/Experiment;

    .line 88
    invoke-virtual {p3}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {p3}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object p3

    invoke-virtual {p3}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getGroupId()Ljava/lang/String;

    move-result-object p3

    .line 87
    invoke-direct {v2, v3, p3, v1}, Lcom/superwall/sdk/models/triggers/Experiment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant;)V

    .line 86
    invoke-direct {v0, v2}, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$Holdout;-><init>(Lcom/superwall/sdk/models/triggers/Experiment;)V

    check-cast v0, Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    .line 82
    invoke-direct {v4, p1, p2, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;-><init>(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;)V

    goto :goto_4

    .line 55
    :cond_9
    instance-of p1, p3, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome$NoMatchingRules;

    if-eqz p1, :cond_a

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    .line 56
    new-instance p1, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$NoAudienceMatch;

    check-cast p3, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome$NoMatchingRules;

    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleMatchOutcome$NoMatchingRules;->getUnmatchedRules()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/superwall/sdk/models/triggers/InternalTriggerResult$NoAudienceMatch;-><init>(Ljava/util/List;)V

    move-object v3, p1

    check-cast v3, Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;-><init>(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    move-object v4, v0

    .line 136
    :goto_4
    new-instance p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p1, v4}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/superwall/sdk/misc/Either;

    return-object p1

    .line 53
    :cond_a
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 138
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 139
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 140
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 143
    :cond_b
    new-instance p2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lcom/superwall/sdk/misc/Either;

    return-object p2
.end method
