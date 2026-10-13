.class public final Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;
.super Lcom/superwall/sdk/paywall/view/webview/WebviewError;
.source "WebviewClientEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/view/webview/WebviewError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timeout"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;",
        "Lcom/superwall/sdk/paywall/view/webview/WebviewError;",
        "msg",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getMsg",
        "()Ljava/lang/String;",
        "toString",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field private final msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lcom/superwall/sdk/paywall/view/webview/WebviewError;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;->msg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;->msg:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;->copy(Ljava/lang/String;)Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;->msg:Ljava/lang/String;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;->msg:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "Paywall loading reached specified timeout"

    return-object v0
.end method
