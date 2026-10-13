.class public abstract Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;
.super Ljava/lang/Throwable;
.source "PaywallSkippedReason.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$Holdout;,
        Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$NoAudienceMatch;,
        Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$PlacementNotFound;,
        Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$UserIsSubscribed;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0008\t\n\u000bB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0096\u0002\u0082\u0001\u0004\u000c\r\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;",
        "",
        "<init>",
        "()V",
        "equals",
        "",
        "other",
        "",
        "Holdout",
        "NoAudienceMatch",
        "PlacementNotFound",
        "UserIsSubscribed",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$Holdout;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$NoAudienceMatch;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$PlacementNotFound;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$UserIsSubscribed;",
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

    .line 5
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 18
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$Holdout;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$Holdout;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$Holdout;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$Holdout;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object v0

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$Holdout;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$Holdout;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 19
    :cond_0
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$NoAudienceMatch;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$NoAudienceMatch;

    if-eqz v0, :cond_1

    return v1

    .line 20
    :cond_1
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$PlacementNotFound;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$PlacementNotFound;

    if-eqz v0, :cond_2

    return v1

    .line 21
    :cond_2
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$UserIsSubscribed;

    if-eqz v0, :cond_3

    instance-of p1, p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason$UserIsSubscribed;

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
