.class public final synthetic Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient$ChromeClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/webkit/JsPromptResult;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient$ChromeClient$$ExternalSyntheticLambda0;->f$0:Landroid/webkit/JsPromptResult;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient$ChromeClient$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient$ChromeClient$$ExternalSyntheticLambda0;->f$0:Landroid/webkit/JsPromptResult;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient$ChromeClient$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    invoke-static {v0, v1, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient$ChromeClient;->$r8$lambda$UPFebDf5OzWw870E40vHuxicd0Y(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
