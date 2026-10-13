.class public final Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;
.super Ljava/lang/Object;
.source "SWWebView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSWWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SWWebView.kt\ncom/superwall/sdk/paywall/view/webview/WebviewChecker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,588:1\n1#2:589\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;",
        "",
        "<init>",
        "()V",
        "webviewExists",
        "",
        "getWebviewExists",
        "()Z",
        "webviewExists$delegate",
        "Lkotlin/Lazy;",
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


# static fields
.field public static final INSTANCE:Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;

.field private static final webviewExists$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$EQmTgVp-9SutpFCN0QVavm54Z4M()Z
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;->webviewExists_delegate$lambda$1()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;-><init>()V

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;

    .line 576
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/WebviewChecker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/webview/WebviewChecker$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;->webviewExists$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final webviewExists_delegate$lambda$1()Z
    .locals 2

    const/4 v0, 0x0

    .line 579
    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method


# virtual methods
.method public final getWebviewExists()Z
    .locals 1

    .line 576
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;->webviewExists$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
