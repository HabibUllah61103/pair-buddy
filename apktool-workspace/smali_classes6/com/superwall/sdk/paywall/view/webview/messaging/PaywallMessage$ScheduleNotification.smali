.class public final Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;
.super Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;
.source "PaywallMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScheduleNotification"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\nH\u00c6\u0003JE\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u00d6\u0003J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000eR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006$"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;",
        "id",
        "",
        "type",
        "Lcom/superwall/sdk/models/paywall/LocalNotificationType;",
        "title",
        "subtitle",
        "body",
        "delay",
        "",
        "<init>",
        "(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/LocalNotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V",
        "getId",
        "()Ljava/lang/String;",
        "getType",
        "()Lcom/superwall/sdk/models/paywall/LocalNotificationType;",
        "getTitle",
        "getSubtitle",
        "getBody",
        "getDelay",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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
.field private final body:Ljava/lang/String;

.field private final delay:J

.field private final id:Ljava/lang/String;

.field private final subtitle:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final type:Lcom/superwall/sdk/models/paywall/LocalNotificationType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/LocalNotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 115
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->id:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->type:Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    .line 117
    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->title:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->subtitle:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->body:Ljava/lang/String;

    .line 120
    iput-wide p6, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->delay:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/LocalNotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->type:Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->title:Ljava/lang/String;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->subtitle:Ljava/lang/String;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->body:Ljava/lang/String;

    :cond_4
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_5

    iget-wide p6, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->delay:J

    :cond_5
    move-wide p8, p6

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->copy(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/LocalNotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/models/paywall/LocalNotificationType;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->type:Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->delay:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/LocalNotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;
    .locals 9

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/LocalNotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->type:Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->type:Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->subtitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->subtitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->body:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->body:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->delay:J

    iget-wide v5, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->delay:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getDelay()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->delay:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/superwall/sdk/models/paywall/LocalNotificationType;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->type:Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->type:Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/LocalNotificationType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->subtitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->delay:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->type:Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->subtitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->body:Ljava/lang/String;

    iget-wide v5, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->delay:J

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ScheduleNotification(id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", type="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
