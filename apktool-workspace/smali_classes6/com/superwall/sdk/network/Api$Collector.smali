.class public final Lcom/superwall/sdk/network/Api$Collector;
.super Ljava/lang/Object;
.source "API.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/network/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Collector"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\n\u001a\u00020\u0003H\u00c2\u0003J\u0013\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0007H\u00d6\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/superwall/sdk/network/Api$Collector;",
        "",
        "networkEnvironment",
        "Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;",
        "<init>",
        "(Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;)V",
        "host",
        "",
        "getHost",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
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
.field private final networkEnvironment:Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;)V
    .locals 1

    const-string v0, "networkEnvironment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/superwall/sdk/network/Api$Collector;->networkEnvironment:Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    return-void
.end method

.method private final component1()Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/network/Api$Collector;->networkEnvironment:Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/network/Api$Collector;Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;ILjava/lang/Object;)Lcom/superwall/sdk/network/Api$Collector;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/network/Api$Collector;->networkEnvironment:Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/network/Api$Collector;->copy(Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;)Lcom/superwall/sdk/network/Api$Collector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;)Lcom/superwall/sdk/network/Api$Collector;
    .locals 1

    const-string v0, "networkEnvironment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/network/Api$Collector;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/network/Api$Collector;-><init>(Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/network/Api$Collector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/network/Api$Collector;

    iget-object v1, p0, Lcom/superwall/sdk/network/Api$Collector;->networkEnvironment:Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    iget-object p1, p1, Lcom/superwall/sdk/network/Api$Collector;->networkEnvironment:Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/network/Api$Collector;->networkEnvironment:Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;->getCollectorHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/network/Api$Collector;->networkEnvironment:Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/network/Api$Collector;->networkEnvironment:Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Collector(networkEnvironment="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
