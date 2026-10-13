.class public final synthetic Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/webkit/WebView;

    check-cast p2, Landroid/webkit/RenderProcessGoneDetail;

    invoke-static {p1, p2}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;->$r8$lambda$F8HeECKvtFxKOe2wQCMwyAsdIfE(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
