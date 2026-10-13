.class public final Lexpo/modules/webview/WeakDomWebViewRef;
.super Ljava/lang/Object;
.source "WeakDomWebViewRef.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/webview/WeakDomWebViewRef;",
        "",
        "ref",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/webview/DomWebView;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;)V",
        "getRef",
        "()Ljava/lang/ref/WeakReference;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "expo-dom-webview_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/webview/DomWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/webview/DomWebView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lexpo/modules/webview/WeakDomWebViewRef;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/webview/WeakDomWebViewRef;Ljava/lang/ref/WeakReference;ILjava/lang/Object;)Lexpo/modules/webview/WeakDomWebViewRef;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lexpo/modules/webview/WeakDomWebViewRef;->ref:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/webview/WeakDomWebViewRef;->copy(Ljava/lang/ref/WeakReference;)Lexpo/modules/webview/WeakDomWebViewRef;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/webview/DomWebView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/webview/WeakDomWebViewRef;->ref:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;)Lexpo/modules/webview/WeakDomWebViewRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/webview/DomWebView;",
            ">;)",
            "Lexpo/modules/webview/WeakDomWebViewRef;"
        }
    .end annotation

    const-string v0, "ref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/webview/WeakDomWebViewRef;

    invoke-direct {v0, p1}, Lexpo/modules/webview/WeakDomWebViewRef;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/webview/WeakDomWebViewRef;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/webview/WeakDomWebViewRef;

    iget-object v1, p0, Lexpo/modules/webview/WeakDomWebViewRef;->ref:Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lexpo/modules/webview/WeakDomWebViewRef;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/webview/DomWebView;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lexpo/modules/webview/WeakDomWebViewRef;->ref:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lexpo/modules/webview/WeakDomWebViewRef;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lexpo/modules/webview/WeakDomWebViewRef;->ref:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WeakDomWebViewRef(ref="

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
