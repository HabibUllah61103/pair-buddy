.class public final Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;
.super Ljava/lang/Object;
.source "SuperwallEventInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u00c6\u0003J)\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;",
        "",
        "event",
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
        "params",
        "",
        "",
        "<init>",
        "(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;Ljava/util/Map;)V",
        "getEvent",
        "()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
        "getParams",
        "()Ljava/util/Map;",
        "placement",
        "getPlacement$annotations",
        "()V",
        "getPlacement",
        "component1",
        "component2",
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
.field private final event:Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->event:Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    .line 8
    iput-object p2, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->params:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;Ljava/util/Map;ILjava/lang/Object;)Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->event:Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->params:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->copy(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;Ljava/util/Map;)Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPlacement$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use event instead"
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->event:Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    return-object v0
.end method

.method public final component2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->params:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;Ljava/util/Map;)Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;-><init>(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->event:Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    iget-object v3, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->event:Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->params:Ljava/util/Map;

    iget-object p1, p1, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->params:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEvent()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->event:Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    return-object v0
.end method

.method public final getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->params:Ljava/util/Map;

    return-object v0
.end method

.method public final getPlacement()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->event:Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->event:Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->params:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->event:Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;->params:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SuperwallEventInfo(event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", params="

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
