.class public final Lcom/superwall/sdk/analytics/internal/TrackingResult;
.super Ljava/lang/Object;
.source "TrackingResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/analytics/internal/TrackingResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/internal/TrackingResult;",
        "",
        "data",
        "Lcom/superwall/sdk/models/events/EventData;",
        "parameters",
        "Lcom/superwall/sdk/analytics/internal/TrackingParameters;",
        "<init>",
        "(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/analytics/internal/TrackingParameters;)V",
        "getData",
        "()Lcom/superwall/sdk/models/events/EventData;",
        "setData",
        "(Lcom/superwall/sdk/models/events/EventData;)V",
        "getParameters",
        "()Lcom/superwall/sdk/analytics/internal/TrackingParameters;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
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
.field public static final Companion:Lcom/superwall/sdk/analytics/internal/TrackingResult$Companion;


# instance fields
.field private data:Lcom/superwall/sdk/models/events/EventData;

.field private final parameters:Lcom/superwall/sdk/analytics/internal/TrackingParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/analytics/internal/TrackingResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/analytics/internal/TrackingResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->Companion:Lcom/superwall/sdk/analytics/internal/TrackingResult$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/analytics/internal/TrackingParameters;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->data:Lcom/superwall/sdk/models/events/EventData;

    .line 7
    iput-object p2, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->parameters:Lcom/superwall/sdk/analytics/internal/TrackingParameters;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/analytics/internal/TrackingResult;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/analytics/internal/TrackingParameters;ILjava/lang/Object;)Lcom/superwall/sdk/analytics/internal/TrackingResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->data:Lcom/superwall/sdk/models/events/EventData;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->parameters:Lcom/superwall/sdk/analytics/internal/TrackingParameters;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/analytics/internal/TrackingResult;->copy(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/analytics/internal/TrackingParameters;)Lcom/superwall/sdk/analytics/internal/TrackingResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/models/events/EventData;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->data:Lcom/superwall/sdk/models/events/EventData;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/analytics/internal/TrackingParameters;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->parameters:Lcom/superwall/sdk/analytics/internal/TrackingParameters;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/analytics/internal/TrackingParameters;)Lcom/superwall/sdk/analytics/internal/TrackingResult;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/analytics/internal/TrackingResult;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/analytics/internal/TrackingResult;-><init>(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/analytics/internal/TrackingParameters;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/analytics/internal/TrackingResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/analytics/internal/TrackingResult;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->data:Lcom/superwall/sdk/models/events/EventData;

    iget-object v3, p1, Lcom/superwall/sdk/analytics/internal/TrackingResult;->data:Lcom/superwall/sdk/models/events/EventData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->parameters:Lcom/superwall/sdk/analytics/internal/TrackingParameters;

    iget-object p1, p1, Lcom/superwall/sdk/analytics/internal/TrackingResult;->parameters:Lcom/superwall/sdk/analytics/internal/TrackingParameters;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getData()Lcom/superwall/sdk/models/events/EventData;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->data:Lcom/superwall/sdk/models/events/EventData;

    return-object v0
.end method

.method public final getParameters()Lcom/superwall/sdk/analytics/internal/TrackingParameters;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->parameters:Lcom/superwall/sdk/analytics/internal/TrackingParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->data:Lcom/superwall/sdk/models/events/EventData;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/events/EventData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->parameters:Lcom/superwall/sdk/analytics/internal/TrackingParameters;

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/internal/TrackingParameters;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setData(Lcom/superwall/sdk/models/events/EventData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->data:Lcom/superwall/sdk/models/events/EventData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->data:Lcom/superwall/sdk/models/events/EventData;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/TrackingResult;->parameters:Lcom/superwall/sdk/analytics/internal/TrackingParameters;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TrackingResult(data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", parameters="

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
