.class public final Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;
.super Ljava/lang/Object;
.source "PaywallMessage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;",
        "",
        "version",
        "",
        "payload",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;",
        "<init>",
        "(ILcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;)V",
        "getVersion",
        "()I",
        "setVersion",
        "(I)V",
        "getPayload",
        "()Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final payload:Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;

.field private version:I


# direct methods
.method public constructor <init>(ILcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;)V
    .locals 1

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->version:I

    .line 26
    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->payload:Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p1, p4

    .line 24
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;-><init>(ILcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;ILcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->version:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->payload:Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->copy(ILcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;)Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->version:I

    return v0
.end method

.method public final component2()Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->payload:Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;

    return-object v0
.end method

.method public final copy(ILcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;)Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;
    .locals 1

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;-><init>(ILcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;

    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->version:I

    iget v3, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->version:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->payload:Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->payload:Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPayload()Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->payload:Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->version:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->payload:Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setVersion(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->version:I

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->payload:Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WrappedPaywallMessages(version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", payload="

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
