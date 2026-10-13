.class public final Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;
.super Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
.source "SuperwallEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReviewRequested"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\tH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;",
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
        "count",
        "",
        "<init>",
        "(I)V",
        "getCount",
        "()I",
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
.field private final count:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 517
    invoke-direct {p0, v0}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 516
    iput p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;->count:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;IILjava/lang/Object;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;->count:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;->copy(I)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;->count:I

    return v0
.end method

.method public final copy(I)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;
    .locals 1

    new-instance v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;

    iget v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;->count:I

    iget p1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;->count:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 516
    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;->count:I

    return v0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    .line 519
    const-string/jumbo v0, "review_requested"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;->count:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ReviewRequested(count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
