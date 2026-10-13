.class public final Lexpo/modules/webview/DomWebViewRegistry;
.super Ljava/lang/Object;
.source "DomWebViewRegistry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0010\u000c\u001a\u00060\u0006j\u0002`\u0007J\u0012\u0010\r\u001a\u00060\u0006j\u0002`\u00072\u0006\u0010\u000e\u001a\u00020\u000bJ\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\n\u0010\u000c\u001a\u00060\u0006j\u0002`\u0007J\u0006\u0010\u0010\u001a\u00020\u0011R\u001e\u0010\u0004\u001a\u0012\u0012\u0008\u0012\u00060\u0006j\u0002`\u0007\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00060\u0006j\u0002`\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/webview/DomWebViewRegistry;",
        "",
        "<init>",
        "()V",
        "registry",
        "Landroidx/collection/ArrayMap;",
        "",
        "Lexpo/modules/webview/WebViewId;",
        "Lexpo/modules/webview/WeakDomWebViewRef;",
        "nextWebViewId",
        "get",
        "Lexpo/modules/webview/DomWebView;",
        "webViewId",
        "add",
        "webView",
        "remove",
        "reset",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/webview/DomWebViewRegistry;

.field private static nextWebViewId:I

.field private static final registry:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lexpo/modules/webview/WeakDomWebViewRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/webview/DomWebViewRegistry;

    invoke-direct {v0}, Lexpo/modules/webview/DomWebViewRegistry;-><init>()V

    sput-object v0, Lexpo/modules/webview/DomWebViewRegistry;->INSTANCE:Lexpo/modules/webview/DomWebViewRegistry;

    .line 11
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lexpo/modules/webview/DomWebViewRegistry;->registry:Landroidx/collection/ArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized add(Lexpo/modules/webview/DomWebView;)I
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget v0, Lexpo/modules/webview/DomWebViewRegistry;->nextWebViewId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 22
    sget-object v2, Lexpo/modules/webview/DomWebViewRegistry;->registry:Landroidx/collection/ArrayMap;

    check-cast v2, Ljava/util/Map;

    new-instance v3, Lexpo/modules/webview/WeakDomWebViewRef;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lexpo/modules/webview/WeakDomWebViewRef;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget p1, Lexpo/modules/webview/DomWebViewRegistry;->nextWebViewId:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lexpo/modules/webview/DomWebViewRegistry;->nextWebViewId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized get(I)Lexpo/modules/webview/DomWebView;
    .locals 1

    monitor-enter p0

    .line 16
    :try_start_0
    sget-object v0, Lexpo/modules/webview/DomWebViewRegistry;->registry:Landroidx/collection/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/webview/WeakDomWebViewRef;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexpo/modules/webview/WeakDomWebViewRef;->getRef()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/webview/DomWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized remove(I)Lexpo/modules/webview/DomWebView;
    .locals 1

    monitor-enter p0

    .line 29
    :try_start_0
    sget-object v0, Lexpo/modules/webview/DomWebViewRegistry;->registry:Landroidx/collection/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/webview/WeakDomWebViewRef;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexpo/modules/webview/WeakDomWebViewRef;->getRef()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/webview/DomWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 34
    :try_start_0
    sget-object v0, Lexpo/modules/webview/DomWebViewRegistry;->registry:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    const/4 v0, 0x0

    .line 35
    sput v0, Lexpo/modules/webview/DomWebViewRegistry;->nextWebViewId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
