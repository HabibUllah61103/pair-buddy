.class public final Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$webView$1$2;
.super Landroid/webkit/WebViewClient;
.source "ExpoLogBoxWebViewWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;-><init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;Ljava/util/Map;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "expo/modules/logbox/ExpoLogBoxWebViewWrapper$webView$1$2",
        "Landroid/webkit/WebViewClient;",
        "onPageStarted",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "expo-log-box_release"
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
.field final synthetic this$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;


# direct methods
.method constructor <init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$webView$1$2;->this$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;

    .line 39
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 42
    iget-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$webView$1$2;->this$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;

    invoke-static {p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->access$initializeLogBoxDomEnvironment(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;)V

    return-void
.end method
