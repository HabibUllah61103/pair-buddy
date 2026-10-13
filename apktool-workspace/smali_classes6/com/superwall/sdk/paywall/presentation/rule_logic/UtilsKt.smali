.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt;
.super Ljava/lang/Object;
.source "utils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0080@\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "tryToMatchOccurrence",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;",
        "Lcom/superwall/sdk/models/triggers/TriggerRule;",
        "storage",
        "Lcom/superwall/sdk/storage/core_data/CoreDataManager;",
        "expressionMatched",
        "",
        "(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/storage/core_data/CoreDataManager;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final tryToMatchOccurrence(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/storage/core_data/CoreDataManager;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/triggers/TriggerRule;",
            "Lcom/superwall/sdk/storage/core_data/CoreDataManager;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;

    invoke-direct {v0, p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 11
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    iget-object p1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRule;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p2, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getOccurrence()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 17
    iput-object p0, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt$tryToMatchOccurrence$1;->label:I

    invoke-virtual {p1, p2, v0}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->countTriggerRuleOccurrences(Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    move-object p0, p2

    :goto_1
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr p2, v3

    .line 18
    invoke-virtual {p0}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->getMaxCount()I

    move-result p3

    if-gt p2, p3, :cond_4

    .line 21
    sget-object p2, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;->Companion:Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;

    invoke-virtual {p2, p1, p0}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;->match(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;)Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    move-result-object p0

    return-object p0

    .line 23
    :cond_4
    sget-object p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;->Companion:Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;

    .line 24
    sget-object p2, Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;->OCCURRENCE:Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;

    .line 25
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;->noMatch(Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;Ljava/lang/String;)Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    move-result-object p0

    return-object p0

    .line 29
    :cond_5
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 30
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 31
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallPresentation:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x18

    const/4 v7, 0x0

    .line 29
    const-string v3, "No occurrence parameter found for trigger rule."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 34
    sget-object p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;->Companion:Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-static {p1, p0, p3, p2, p3}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;->match$default(Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ILjava/lang/Object;)Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    move-result-object p0

    return-object p0

    .line 37
    :cond_6
    sget-object p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;->Companion:Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;

    sget-object p2, Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;->EXPRESSION:Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;

    invoke-virtual {p0}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;->noMatch(Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;Ljava/lang/String;)Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    move-result-object p0

    return-object p0
.end method
