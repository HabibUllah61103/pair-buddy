.class public final Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$webView$1$1;
.super Ljava/lang/Object;
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
        "\u0000\u0017\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/logbox/ExpoLogBoxWebViewWrapper$webView$1$1",
        "",
        "postMessage",
        "",
        "rawMessage",
        "",
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

    iput-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$webView$1$1;->this$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final postMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "rawMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$webView$1$1;->this$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;

    invoke-static {v0, p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->access$processMessageFromWebView(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method
