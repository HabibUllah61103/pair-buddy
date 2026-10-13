.class public abstract Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;
.super Ljava/lang/Object;
.source "TriggerRule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;,
        Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;,
        Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \t2\u00020\u0001:\u0003\u0007\u0008\tB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u0096\u0002\u0082\u0001\u0002\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;",
        "",
        "<init>",
        "()V",
        "equals",
        "",
        "other",
        "NoMatch",
        "Match",
        "Companion",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;",
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


# static fields
.field public static final Companion:Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;->Companion:Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 55
    instance-of v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;

    if-eqz v0, :cond_1

    .line 57
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;

    .line 56
    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;->getUnmatchedRule()Lcom/superwall/sdk/models/triggers/UnmatchedRule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/UnmatchedRule;->getSource()Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;

    move-result-object v3

    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;->getUnmatchedRule()Lcom/superwall/sdk/models/triggers/UnmatchedRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/UnmatchedRule;->getSource()Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;->getUnmatchedRule()Lcom/superwall/sdk/models/triggers/UnmatchedRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/UnmatchedRule;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;->getUnmatchedRule()Lcom/superwall/sdk/models/triggers/UnmatchedRule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/UnmatchedRule;->getExperimentId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 58
    :cond_1
    instance-of v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;

    if-eqz v0, :cond_2

    .line 60
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;

    .line 59
    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;->getMatchedItem()Lcom/superwall/sdk/models/triggers/MatchedItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/MatchedItem;->getRule()Lcom/superwall/sdk/models/triggers/TriggerRule;

    move-result-object v3

    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;->getMatchedItem()Lcom/superwall/sdk/models/triggers/MatchedItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/MatchedItem;->getRule()Lcom/superwall/sdk/models/triggers/TriggerRule;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;->getMatchedItem()Lcom/superwall/sdk/models/triggers/MatchedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/MatchedItem;->getUnsavedOccurrence()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;->getMatchedItem()Lcom/superwall/sdk/models/triggers/MatchedItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/MatchedItem;->getUnsavedOccurrence()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method
