.class public Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;
.super Ljava/lang/Object;
.source "SuperwallOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/config/options/SuperwallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkEnvironment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Custom;,
        Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Developer;,
        Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Release;,
        Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$ReleaseCandidate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001:\u0004\u0016\u0017\u0018\u0019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0007R\u0014\u0010\u000c\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u0007R\u0014\u0010\u000e\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0007R\u0014\u0010\u0010\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0007R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;",
        "",
        "hostDomain",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getHostDomain",
        "()Ljava/lang/String;",
        "baseHost",
        "getBaseHost",
        "collectorHost",
        "getCollectorHost",
        "subscriptionHost",
        "getSubscriptionHost",
        "scheme",
        "getScheme",
        "enrichmentHost",
        "getEnrichmentHost",
        "port",
        "",
        "getPort",
        "()Ljava/lang/Integer;",
        "Release",
        "ReleaseCandidate",
        "Developer",
        "Custom",
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
.field private final hostDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "hostDomain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;->hostDomain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseHost()Ljava/lang/String;
    .locals 3

    .line 30
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;->getHostDomain()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectorHost()Ljava/lang/String;
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;->getHostDomain()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "collector."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnrichmentHost()Ljava/lang/String;
    .locals 1

    .line 48
    instance-of v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Release;

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "enrichment-api.superwall.com"

    return-object v0

    .line 51
    :cond_0
    const-string v0, "enrichment-api.superwall.dev"

    return-object v0
.end method

.method public getHostDomain()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;->hostDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "https"

    return-object v0
.end method

.method public getSubscriptionHost()Ljava/lang/String;
    .locals 1

    .line 37
    instance-of v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Release;

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "subscriptions-api.superwall.com"

    return-object v0

    .line 40
    :cond_0
    const-string v0, "subscriptions-api.superwall.dev"

    return-object v0
.end method
