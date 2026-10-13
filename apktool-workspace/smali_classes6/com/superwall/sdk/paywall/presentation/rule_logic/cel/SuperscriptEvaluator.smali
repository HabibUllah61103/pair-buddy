.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;
.super Ljava/lang/Object;
.source "SuperscriptEvaluator.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$NotError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0015B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096@\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "storage",
        "Lcom/superwall/sdk/storage/core_data/CoreDataManager;",
        "factory",
        "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;",
        "hostContext",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;",
        "<init>",
        "(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;)V",
        "evaluateExpression",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;",
        "rule",
        "Lcom/superwall/sdk/models/triggers/TriggerRule;",
        "eventData",
        "Lcom/superwall/sdk/models/events/EventData;",
        "(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "NotError",
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
.field private final factory:Lcom/superwall/sdk/dependencies/RuleAttributesFactory;

.field private final hostContext:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private final json:Lkotlinx/serialization/json/Json;

.field private final storage:Lcom/superwall/sdk/storage/core_data/CoreDataManager;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostContext"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->json:Lkotlinx/serialization/json/Json;

    .line 43
    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 44
    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->storage:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    .line 45
    iput-object p4, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->factory:Lcom/superwall/sdk/dependencies/RuleAttributesFactory;

    .line 46
    iput-object p5, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->hostContext:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 47
    new-instance p5, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;

    invoke-direct {p5, p1, p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;-><init>(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/storage/core_data/CoreDataManager;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;-><init>(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;)V

    return-void
.end method

.method public static final synthetic access$getFactory$p(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;)Lcom/superwall/sdk/dependencies/RuleAttributesFactory;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->factory:Lcom/superwall/sdk/dependencies/RuleAttributesFactory;

    return-object p0
.end method

.method public static final synthetic access$getHostContext$p(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->hostContext:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;

    return-object p0
.end method

.method public static final synthetic access$getJson$p(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;)Lkotlinx/serialization/json/Json;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->json:Lkotlinx/serialization/json/Json;

    return-object p0
.end method

.method public static final synthetic access$getStorage$p(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;)Lcom/superwall/sdk/storage/core_data/CoreDataManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->storage:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    return-object p0
.end method


# virtual methods
.method public evaluateExpression(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/triggers/TriggerRule;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRule;

    iget-object p2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRule;

    iget-object p2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExpressionCEL()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    .line 61
    iget-object p2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->storage:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    iput v5, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->label:I

    invoke-static {p1, p2, v5, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt;->tryToMatchOccurrence(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/storage/core_data/CoreDataManager;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    return-object p1

    .line 64
    :cond_6
    iget-object p3, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    check-cast p3, Lcom/superwall/sdk/misc/SuperwallScope;

    .line 65
    new-instance v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;

    const/4 v5, 0x0

    invoke-direct {v2, p0, p2, p1, v5}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/triggers/TriggerRule;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->label:I

    invoke-static {p3, v2, v0}, Lcom/superwall/sdk/misc/ScopesKt;->asyncWithTracking(Lcom/superwall/sdk/misc/SuperwallScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    goto :goto_2

    :cond_7
    move-object p2, p0

    .line 56
    :goto_1
    check-cast p3, Lkotlinx/coroutines/Deferred;

    .line 113
    iput-object p2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$1;->label:I

    invoke-interface {p3, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    :goto_2
    return-object v1

    .line 114
    :cond_8
    :goto_3
    check-cast p3, Lcom/superwall/sdk/misc/Either;

    .line 115
    invoke-virtual {p3}, Lcom/superwall/sdk/misc/Either;->getSuccess()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    if-nez v0, :cond_a

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;

    .line 117
    invoke-virtual {p3}, Lcom/superwall/sdk/misc/Either;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 118
    invoke-virtual {p3}, Lcom/superwall/sdk/misc/Either;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 120
    :cond_9
    new-instance p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$NotError;

    .line 121
    invoke-virtual {p3}, Lcom/superwall/sdk/misc/Either;->getThrowable()Ljava/lang/Throwable;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 120
    invoke-direct {p2, p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$NotError;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    .line 124
    :goto_4
    sget-object p3, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p3}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 125
    sget-object p2, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;->Companion:Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;

    .line 126
    sget-object p3, Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;->EXPRESSION:Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;

    .line 127
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p2, p3, p1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;->noMatch(Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;Ljava/lang/String;)Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    move-result-object p1

    return-object p1

    :cond_a
    return-object v0
.end method
