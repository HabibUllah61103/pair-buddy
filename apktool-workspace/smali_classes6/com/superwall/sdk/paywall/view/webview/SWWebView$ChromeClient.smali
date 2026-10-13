.class final Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SWWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/view/webview/SWWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChromeClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient$ChromeClient;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0082\u0003\u0018\u00002\u00020\u0001:\u0001\nB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient;",
        "Landroid/webkit/WebChromeClient;",
        "<init>",
        "()V",
        "posterBmp",
        "Landroid/graphics/Bitmap;",
        "getPosterBmp",
        "()Landroid/graphics/Bitmap;",
        "posterBmp$delegate",
        "Lkotlin/Lazy;",
        "ChromeClient",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPosterBmp()Landroid/graphics/Bitmap;
    .locals 1

    .line 117
    invoke-static {}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->access$getPosterBmp$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
