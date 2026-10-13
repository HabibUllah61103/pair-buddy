.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;
.super Ljava/lang/Object;
.source "RuleLogic.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J+\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
        "",
        "confirmableAssignment",
        "Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;",
        "unsavedOccurrence",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
        "triggerResult",
        "Lcom/superwall/sdk/models/triggers/InternalTriggerResult;",
        "<init>",
        "(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;)V",
        "getConfirmableAssignment",
        "()Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;",
        "getUnsavedOccurrence",
        "()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
        "getTriggerResult",
        "()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final confirmableAssignment:Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;

.field private final triggerResult:Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

.field private final unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;)V
    .locals 1

    const-string v0, "triggerResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->confirmableAssignment:Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;

    .line 21
    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    .line 22
    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->triggerResult:Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p2, v0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;-><init>(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->confirmableAssignment:Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->triggerResult:Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->copy(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;)Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->confirmableAssignment:Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    return-object v0
.end method

.method public final component3()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->triggerResult:Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;)Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;
    .locals 1

    const-string v0, "triggerResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    invoke-direct {v0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;-><init>(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/triggers/InternalTriggerResult;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->confirmableAssignment:Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->confirmableAssignment:Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->triggerResult:Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->triggerResult:Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getConfirmableAssignment()Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->confirmableAssignment:Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;

    return-object v0
.end method

.method public final getTriggerResult()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->triggerResult:Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    return-object v0
.end method

.method public final getUnsavedOccurrence()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->confirmableAssignment:Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->triggerResult:Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/InternalTriggerResult;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->confirmableAssignment:Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->triggerResult:Lcom/superwall/sdk/models/triggers/InternalTriggerResult;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RuleEvaluationOutcome(confirmableAssignment="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", unsavedOccurrence="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
