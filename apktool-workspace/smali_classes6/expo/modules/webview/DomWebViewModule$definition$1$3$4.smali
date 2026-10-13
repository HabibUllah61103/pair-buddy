.class final Lexpo/modules/webview/DomWebViewModule$definition$1$3$4;
.super Ljava/lang/Object;
.source "DomWebViewModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/webview/DomWebViewModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lexpo/modules/webview/DomWebView;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
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


# static fields
.field public static final INSTANCE:Lexpo/modules/webview/DomWebViewModule$definition$1$3$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/webview/DomWebViewModule$definition$1$3$4;

    invoke-direct {v0}, Lexpo/modules/webview/DomWebViewModule$definition$1$3$4;-><init>()V

    sput-object v0, Lexpo/modules/webview/DomWebViewModule$definition$1$3$4;->INSTANCE:Lexpo/modules/webview/DomWebViewModule$definition$1$3$4;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lexpo/modules/webview/DomWebView;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lexpo/modules/webview/DomWebViewModule$definition$1$3$4;->invoke(Lexpo/modules/webview/DomWebView;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lexpo/modules/webview/DomWebView;Z)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lexpo/modules/webview/DomWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lexpo/modules/webview/DomWebViewModule$definition$1$3$4$1;

    invoke-direct {v1, p1, p2}, Lexpo/modules/webview/DomWebViewModule$definition$1$3$4$1;-><init>(Lexpo/modules/webview/DomWebView;Z)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
