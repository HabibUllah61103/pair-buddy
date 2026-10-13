.class public final Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;
.super Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;
.source "PaywallMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestReview"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;",
        "type",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;",
        "<init>",
        "(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;)V",
        "getType",
        "()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "Type",
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
.field private final type:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;->type:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;->type:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;->copy(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;)Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;->type:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;)Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;->type:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;->type:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getType()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;->type:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;->type:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;->type:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestReview(type="

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
