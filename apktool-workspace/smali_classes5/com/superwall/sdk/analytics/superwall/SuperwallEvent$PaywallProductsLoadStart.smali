.class public final Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;
.super Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
.source "SuperwallEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaywallProductsLoadStart"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\u001f\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;",
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
        "triggeredPlacementName",
        "",
        "paywallInfo",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "<init>",
        "(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V",
        "getTriggeredPlacementName",
        "()Ljava/lang/String;",
        "getPaywallInfo",
        "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "rawName",
        "getRawName",
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
.field private final paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

.field private final triggeredPlacementName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 1

    const-string v0, "paywallInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 360
    invoke-direct {p0, v0}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 358
    iput-object p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->triggeredPlacementName:Ljava/lang/String;

    .line 359
    iput-object p2, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;ILjava/lang/Object;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->triggeredPlacementName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->copy(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->triggeredPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;
    .locals 1

    const-string v0, "paywallInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;-><init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->triggeredPlacementName:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->triggeredPlacementName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object p1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    return-object v0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    .line 362
    const-string v0, "paywallProductsLoad_start"

    return-object v0
.end method

.method public final getTriggeredPlacementName()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->triggeredPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->triggeredPlacementName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->triggeredPlacementName:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PaywallProductsLoadStart(triggeredPlacementName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", paywallInfo="

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
