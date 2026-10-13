.class public final Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;
.super Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
.source "SuperwallEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomerInfoDidChange"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u000bH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;",
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
        "from",
        "Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "to",
        "<init>",
        "(Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;)V",
        "getFrom",
        "()Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "getTo",
        "rawName",
        "",
        "getRawName",
        "()Ljava/lang/String;",
        "component1",
        "component2",
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
.field private final from:Lcom/superwall/sdk/models/customer/CustomerInfo;

.field private final to:Lcom/superwall/sdk/models/customer/CustomerInfo;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 539
    invoke-direct {p0, v0}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 537
    iput-object p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->from:Lcom/superwall/sdk/models/customer/CustomerInfo;

    .line 538
    iput-object p2, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->to:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;ILjava/lang/Object;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->from:Lcom/superwall/sdk/models/customer/CustomerInfo;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->to:Lcom/superwall/sdk/models/customer/CustomerInfo;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->copy(Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->from:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->to:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;-><init>(Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->from:Lcom/superwall/sdk/models/customer/CustomerInfo;

    iget-object v3, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->from:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->to:Lcom/superwall/sdk/models/customer/CustomerInfo;

    iget-object p1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->to:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFrom()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->from:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-object v0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    .line 541
    sget-object v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->CustomerInfoDidChange:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTo()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->to:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->from:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/customer/CustomerInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->to:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->from:Lcom/superwall/sdk/models/customer/CustomerInfo;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;->to:Lcom/superwall/sdk/models/customer/CustomerInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CustomerInfoDidChange(from="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", to="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
