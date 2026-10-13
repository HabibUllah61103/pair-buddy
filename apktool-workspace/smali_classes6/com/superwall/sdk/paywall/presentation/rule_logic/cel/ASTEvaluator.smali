.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator;
.super Ljava/lang/Object;
.source "ASTEvaluator.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nASTEvaluator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ASTEvaluator.kt\ncom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n*L\n1#1,100:1\n113#2:101\n*S KotlinDebug\n*F\n+ 1 ASTEvaluator.kt\ncom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator\n*L\n51#1:101\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "storage",
        "Lcom/superwall/sdk/storage/core_data/CoreDataManager;",
        "factory",
        "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;",
        "<init>",
        "(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;)V",
        "evaluateExpression",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;",
        "rule",
        "Lcom/superwall/sdk/models/triggers/TriggerRule;",
        "eventData",
        "Lcom/superwall/sdk/models/events/EventData;",
        "(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.field private final json:Lkotlinx/serialization/json/Json;

.field private final storage:Lcom/superwall/sdk/storage/core_data/CoreDataManager;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator;->json:Lkotlinx/serialization/json/Json;

    .line 27
    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator;->storage:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    .line 28
    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator;->factory:Lcom/superwall/sdk/dependencies/RuleAttributesFactory;

    return-void
.end method


# virtual methods
.method public evaluateExpression(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p3, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 30
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRule;

    iget-object p2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    sget-object p3, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;->Companion:Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;

    .line 35
    sget-object v2, Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;->EXPRESSION:Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;

    .line 36
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {p3, v2, v5}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;->noMatch(Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;Ljava/lang/String;)Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    .line 38
    iget-object p3, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator;->factory:Lcom/superwall/sdk/dependencies/RuleAttributesFactory;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getComputedPropertyRequests()Ljava/util/List;

    move-result-object v2

    iput-object p0, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;->label:I

    invoke-interface {p3, p2, v2, v0}, Lcom/superwall/sdk/dependencies/RuleAttributesFactory;->makeRuleAttributes(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p2, p0

    .line 30
    :goto_1
    check-cast p3, Ljava/util/Map;

    .line 39
    invoke-static {p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluatorKt;->toPassableValue(Ljava/util/Map;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;

    .line 42
    new-instance p3, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$And;

    .line 43
    new-instance v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    .line 44
    new-instance v5, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bool;

    invoke-direct {v5, v4}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bool;-><init>(Z)V

    check-cast v5, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    .line 43
    invoke-direct {v2, v5}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;)V

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    .line 46
    new-instance v5, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;

    .line 47
    new-instance v6, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bool;

    invoke-direct {v6, v4}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom$Bool;-><init>(Z)V

    check-cast v6, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;

    .line 46
    invoke-direct {v5, v6}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Atom;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELAtom;)V

    check-cast v5, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    .line 42
    invoke-direct {p3, v2, v5}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$And;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;)V

    check-cast p3, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;

    .line 51
    iget-object v2, p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator;->json:Lkotlinx/serialization/json/Json;

    check-cast v2, Lkotlinx/serialization/StringFormat;

    .line 101
    invoke-interface {v2}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v5, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Companion;

    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELExpression$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v2, v5, p3}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 51
    invoke-static {p3}, Lcom/superwall/supercel/CELKt;->evaluateAst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 52
    const-string v2, "true"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 53
    iget-object p2, p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator;->storage:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    const/4 p3, 0x0

    iput-object p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/ASTEvaluator$evaluateExpression$1;->label:I

    invoke-static {p1, p2, v4, v0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt;->tryToMatchOccurrence(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/storage/core_data/CoreDataManager;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1

    .line 55
    :cond_6
    sget-object p2, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;->Companion:Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;

    .line 56
    sget-object p3, Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;->EXPRESSION:Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;

    .line 57
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p2, p3, p1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;->noMatch(Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;Ljava/lang/String;)Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    move-result-object p1

    return-object p1
.end method
