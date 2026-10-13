.class public final Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;
.super Ljava/lang/Object;
.source "TriggerRule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u001a\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;",
        "",
        "<init>",
        "()V",
        "noMatch",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;",
        "source",
        "Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;",
        "experimentId",
        "",
        "match",
        "rule",
        "Lcom/superwall/sdk/models/triggers/TriggerRule;",
        "unsavedOccurrence",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;-><init>()V

    return-void
.end method

.method public static synthetic match$default(Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;ILjava/lang/Object;)Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;->match(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;)Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final match(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;)Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;
    .locals 2

    const-string v0, "rule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;

    new-instance v1, Lcom/superwall/sdk/models/triggers/MatchedItem;

    invoke-direct {v1, p1, p2}, Lcom/superwall/sdk/models/triggers/MatchedItem;-><init>(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;)V

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Match;-><init>(Lcom/superwall/sdk/models/triggers/MatchedItem;)V

    check-cast v0, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    return-object v0
.end method

.method public final noMatch(Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;Ljava/lang/String;)Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;

    new-instance v1, Lcom/superwall/sdk/models/triggers/UnmatchedRule;

    invoke-direct {v1, p1, p2}, Lcom/superwall/sdk/models/triggers/UnmatchedRule;-><init>(Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$NoMatch;-><init>(Lcom/superwall/sdk/models/triggers/UnmatchedRule;)V

    check-cast v0, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    return-object v0
.end method
