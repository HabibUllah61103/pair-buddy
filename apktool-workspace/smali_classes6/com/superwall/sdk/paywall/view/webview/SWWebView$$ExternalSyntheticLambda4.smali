.class public final synthetic Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda4;->f$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda4;->f$0:Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    check-cast p1, Landroid/webkit/WebView;

    check-cast p2, Landroid/webkit/RenderProcessGoneDetail;

    invoke-static {v0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->$r8$lambda$I-BqkKp6yuY4JWSe4aqRZXGdkh8(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
