.class public final Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;
.super Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
.source "SuperwallEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShimmerViewComplete"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\tH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;",
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
        "duration",
        "",
        "<init>",
        "(D)V",
        "getDuration",
        "()D",
        "rawName",
        "",
        "getRawName",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final duration:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    const/4 v0, 0x0

    .line 457
    invoke-direct {p0, v0}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 456
    iput-wide p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;->duration:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;DILjava/lang/Object;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;->duration:D

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;->copy(D)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;->duration:D

    return-wide v0
.end method

.method public final copy(D)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;
    .locals 1

    new-instance v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;-><init>(D)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;

    iget-wide v3, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;->duration:D

    iget-wide v5, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;->duration:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getDuration()D
    .locals 2

    .line 456
    iget-wide v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;->duration:D

    return-wide v0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    .line 459
    sget-object v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->ShimmerViewComplete:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;->duration:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;->duration:D

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ShimmerViewComplete(duration="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
