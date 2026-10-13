.class public final synthetic Lexpo/modules/webview/DomWebView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lexpo/modules/webview/ScrollToParam;

.field public final synthetic f$1:Lexpo/modules/webview/DomWebView;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/webview/ScrollToParam;Lexpo/modules/webview/DomWebView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/webview/DomWebView$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/webview/ScrollToParam;

    iput-object p2, p0, Lexpo/modules/webview/DomWebView$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/webview/DomWebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lexpo/modules/webview/DomWebView$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/webview/ScrollToParam;

    iget-object v1, p0, Lexpo/modules/webview/DomWebView$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/webview/DomWebView;

    invoke-static {v0, v1}, Lexpo/modules/webview/DomWebView;->$r8$lambda$toTUlJ7vMcMNYTD07VM35Am3Y18(Lexpo/modules/webview/ScrollToParam;Lexpo/modules/webview/DomWebView;)V

    return-void
.end method
