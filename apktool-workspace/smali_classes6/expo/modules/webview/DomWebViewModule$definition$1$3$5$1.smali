.class final Lexpo/modules/webview/DomWebViewModule$definition$1$3$5$1;
.super Ljava/lang/Object;
.source "DomWebViewModule.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/webview/DomWebViewModule$definition$1$3$5;->invoke(Lexpo/modules/webview/DomWebView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $view:Lexpo/modules/webview/DomWebView;


# direct methods
.method constructor <init>(Lexpo/modules/webview/DomWebView;Z)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/webview/DomWebViewModule$definition$1$3$5$1;->$view:Lexpo/modules/webview/DomWebView;

    iput-boolean p2, p0, Lexpo/modules/webview/DomWebViewModule$definition$1$3$5$1;->$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 44
    iget-object v0, p0, Lexpo/modules/webview/DomWebViewModule$definition$1$3$5$1;->$view:Lexpo/modules/webview/DomWebView;

    invoke-virtual {v0}, Lexpo/modules/webview/DomWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-boolean v1, p0, Lexpo/modules/webview/DomWebViewModule$definition$1$3$5$1;->$enabled:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method
