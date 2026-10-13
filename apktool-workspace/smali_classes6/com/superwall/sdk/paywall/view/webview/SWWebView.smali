.class public final Lcom/superwall/sdk/paywall/view/webview/SWWebView;
.super Landroid/webkit/WebView;
.source "SWWebView.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSWWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SWWebView.kt\ncom/superwall/sdk/paywall/view/webview/SWWebView\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,588:1\n90#2,6:589\n*S KotlinDebug\n*F\n+ 1 SWWebView.kt\ncom/superwall/sdk/paywall/view/webview/SWWebView\n*L\n117#1:589,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u007f2\u00020\u00012\u00020\u0002:\u0001\u007fBr\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012%\u0008\u0002\u0010\u0007\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u0008\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012$\u0008\u0002\u0010\u0011\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010:\u001a\u00020\r2\u0006\u0010;\u001a\u00020<H\u0016J\u0010\u0010=\u001a\u00020\r2\u0006\u0010>\u001a\u00020<H\u0016J\r\u0010P\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008QJ\u0015\u0010R\u001a\u00020\r2\u0006\u0010S\u001a\u00020TH\u0000\u00a2\u0006\u0002\u0008UJ\u0008\u0010V\u001a\u00020\rH\u0016J\u0012\u0010W\u001a\u00020X2\u0008\u0010Y\u001a\u0004\u0018\u00010ZH\u0016J\u0012\u0010[\u001a\u00020@2\u0008\u0010\\\u001a\u0004\u0018\u00010]H\u0016J\u0012\u0010^\u001a\u00020@2\u0008\u0010\\\u001a\u0004\u0018\u00010_H\u0016J\u0010\u0010`\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\tH\u0016J\u0010\u0010a\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0002J\u0010\u0010b\u001a\u00020\r2\u0006\u0010c\u001a\u00020dH\u0002J\u0008\u0010e\u001a\u00020\rH\u0002J\u001e\u0010f\u001a\u00020\r2\u0006\u0010g\u001a\u00020h2\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00020\t0jH\u0002J\u0018\u0010k\u001a\u00020\r2\u0006\u0010g\u001a\u00020h2\u0006\u0010\u000c\u001a\u00020\tH\u0002J\u0010\u0010l\u001a\u00020@2\u0006\u0010\\\u001a\u00020_H\u0016J(\u0010m\u001a\u00020\r2\u0006\u0010n\u001a\u00020G2\u0006\u0010o\u001a\u00020G2\u0006\u0010p\u001a\u00020G2\u0006\u0010q\u001a\u00020GH\u0014J\u0008\u0010r\u001a\u00020\rH\u0016J\u0008\u0010s\u001a\u00020\rH\u0016J!\u0010t\u001a\u00020\r2\u0017\u0010u\u001a\u0013\u0012\u0004\u0012\u00020v\u0012\u0004\u0012\u00020\r0\u0008\u00a2\u0006\u0002\u0008wH\u0016J(\u0010x\u001a\u00020\r2\u0006\u0010y\u001a\u00020\t2\u0016\u0010z\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\r\u0018\u00010\u0008H\u0016J1\u0010{\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020|2\u0018\u0010E\u001a\u0014\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020\r0\u0012H\u0016\u00a2\u0006\u0004\u0008}\u0010~R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R+\u0010\u0007\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u0011\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0012X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010%\u001a\u0004\u0018\u00010&8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u001b\u0010)\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008+\u0010,R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001b\u00105\u001a\u0002068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010.\u001a\u0004\u00087\u00108R\u001a\u0010?\u001a\u00020@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DRJ\u0010E\u001a2\u0012\u0013\u0012\u00110@\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(F\u0012\u0013\u0012\u00110G\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(H\u0012\u0004\u0012\u00020\r0\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u0010\u0010M\u001a\u0004\u0018\u00010NX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010O\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0080\u0001"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/SWWebView;",
        "Landroid/webkit/WebView;",
        "Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;",
        "context",
        "Landroid/content/Context;",
        "messageHandler",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;",
        "onFinishedLoading",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "url",
        "",
        "options",
        "Lkotlin/Function0;",
        "Lcom/superwall/sdk/config/options/PaywallOptions;",
        "track",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "<init>",
        "(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V",
        "getMessageHandler",
        "()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;",
        "Lkotlin/jvm/functions/Function2;",
        "delegate",
        "Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;",
        "getDelegate",
        "()Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;",
        "setDelegate",
        "(Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;)V",
        "mainScope",
        "Lcom/superwall/sdk/misc/MainScope;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "activity",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "gestureDetector",
        "Landroid/view/GestureDetector;",
        "getGestureDetector",
        "()Landroid/view/GestureDetector;",
        "gestureDetector$delegate",
        "Lkotlin/Lazy;",
        "onScrollChangeListener",
        "Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;",
        "getOnScrollChangeListener",
        "()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;",
        "setOnScrollChangeListener",
        "(Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;)V",
        "localResourceHandler",
        "Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;",
        "getLocalResourceHandler",
        "()Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;",
        "localResourceHandler$delegate",
        "detach",
        "fromView",
        "Landroid/view/ViewGroup;",
        "attach",
        "toView",
        "scrollEnabled",
        "",
        "getScrollEnabled",
        "()Z",
        "setScrollEnabled",
        "(Z)V",
        "onRenderCrashed",
        "didCrash",
        "",
        "priority",
        "getOnRenderCrashed",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnRenderCrashed",
        "(Lkotlin/jvm/functions/Function2;)V",
        "lastWebViewClient",
        "Landroid/webkit/WebViewClient;",
        "lastLoadedUrl",
        "prepareWebview",
        "prepareWebview$superwall_release",
        "loadPaywallWithFallbackUrl",
        "paywall",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "loadPaywallWithFallbackUrl$superwall_release",
        "enableBackgroundRendering",
        "onCreateInputConnection",
        "Landroid/view/inputmethod/InputConnection;",
        "outAttrs",
        "Landroid/view/inputmethod/EditorInfo;",
        "dispatchKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "dispatchGenericMotionEvent",
        "Landroid/view/MotionEvent;",
        "loadUrl",
        "transformUri",
        "listenToWebviewClientEvents",
        "client",
        "Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;",
        "trackLoadFallback",
        "trackPaywallError",
        "error",
        "Lcom/superwall/sdk/paywall/view/webview/WebviewError;",
        "urls",
        "",
        "trackPaywallResourceError",
        "onTouchEvent",
        "onScrollChanged",
        "horizontalOrigin",
        "verticalOrigin",
        "oldHorizontal",
        "oldVertical",
        "destroyView",
        "destroy",
        "onView",
        "perform",
        "Landroid/view/View;",
        "Lkotlin/ExtensionFunctionType;",
        "evaluate",
        "code",
        "resultCallback",
        "setup",
        "Lcom/superwall/sdk/models/paywall/PaywallURL;",
        "setup-MkQ7Bds",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
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


# static fields
.field private static final ChromeClient:Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient;

.field private static final posterBmp$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private delegate:Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;

.field private final gestureDetector$delegate:Lkotlin/Lazy;

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private lastLoadedUrl:Ljava/lang/String;

.field private lastWebViewClient:Landroid/webkit/WebViewClient;

.field private final localResourceHandler$delegate:Lkotlin/Lazy;

.field private final mainScope:Lcom/superwall/sdk/misc/MainScope;

.field private final messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

.field private final onFinishedLoading:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onRenderCrashed:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onScrollChangeListener:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;

.field private final options:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/config/options/PaywallOptions;",
            ">;"
        }
    .end annotation
.end field

.field private scrollEnabled:Z

.field private final track:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9l5pN8Vy2DyKw7N-jnKg6QjSSJE()Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->posterBmp_delegate$lambda$11()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$EgvC2JufSadOsXk_yuLEAL9InJU(Landroid/content/Context;)Landroid/view/GestureDetector;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->gestureDetector_delegate$lambda$0(Landroid/content/Context;)Landroid/view/GestureDetector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HeMySFyeCG-mJjcqlN7ttD2zZzU(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->loadPaywallWithFallbackUrl$lambda$6(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$I-BqkKp6yuY4JWSe4aqRZXGdkh8(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->loadPaywallWithFallbackUrl$lambda$8(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qb5QncUIxLZ3_ahh1minJwEzqSs()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->localResourceHandler_delegate$lambda$2$lambda$1()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$mNjZM7Uz2U0YvFrB1Ot3JdiSvcw(ZI)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->onRenderCrashed$lambda$3(ZI)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oqvoSfDGHU01O__PJBZ-uuB8O2c(Landroid/content/Context;)Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->localResourceHandler_delegate$lambda$2(Landroid/content/Context;)Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p59XSe4tpCICtHHanfOsZbgYYm0(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->loadPaywallWithFallbackUrl$lambda$7(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xhzOrD_auF4geAqM0_LAbQK8BvM(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->evaluate$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yyc0Z-yUTqwR31uqOZRnL14UyRg(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Landroid/app/Activity;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->prepareWebview$lambda$4(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z1cuv80Rz71KY7In20JvWIyn9OM(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->loadUrl$lambda$9(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->ChromeClient:Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient;

    .line 117
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->posterBmp$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/config/options/PaywallOptions;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    .line 72
    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->onFinishedLoading:Lkotlin/jvm/functions/Function1;

    .line 73
    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->options:Lkotlin/jvm/functions/Function0;

    .line 74
    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->track:Lkotlin/jvm/functions/Function2;

    .line 78
    new-instance p2, Lcom/superwall/sdk/misc/MainScope;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-direct {p2, p3, p4, p3}, Lcom/superwall/sdk/misc/MainScope;-><init>(Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    .line 79
    new-instance p2, Lcom/superwall/sdk/misc/IOScope;

    invoke-direct {p2, p3, p4, p3}, Lcom/superwall/sdk/misc/IOScope;-><init>(Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 84
    new-instance p2, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda7;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->gestureDetector$delegate:Lkotlin/Lazy;

    .line 92
    new-instance p2, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->localResourceHandler$delegate:Lkotlin/Lazy;

    .line 111
    iput-boolean p4, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->scrollEnabled:Z

    .line 114
    new-instance p1, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda9;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->onRenderCrashed:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    .line 74
    new-instance p5, Lcom/superwall/sdk/paywall/view/webview/SWWebView$1;

    invoke-direct {p5, v0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p5, Lkotlin/jvm/functions/Function2;

    :cond_1
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 69
    invoke-direct/range {p1 .. p6}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;-><init>(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getChromeClient$p()Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient;
    .locals 1

    .line 69
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->ChromeClient:Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient;

    return-object v0
.end method

.method public static final synthetic access$getLastLoadedUrl$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->lastLoadedUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLastWebViewClient$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Landroid/webkit/WebViewClient;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->lastWebViewClient:Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method public static final synthetic access$getMainScope$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Lcom/superwall/sdk/misc/MainScope;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    return-object p0
.end method

.method public static final synthetic access$getOnFinishedLoading$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->onFinishedLoading:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getOptions$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->options:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getPosterBmp$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 69
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->posterBmp$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getTrack$p(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->track:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$trackLoadFallback(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->trackLoadFallback()V

    return-void
.end method

.method public static final synthetic access$trackPaywallError(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lcom/superwall/sdk/paywall/view/webview/WebviewError;Ljava/util/List;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->trackPaywallError(Lcom/superwall/sdk/paywall/view/webview/WebviewError;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$trackPaywallResourceError(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lcom/superwall/sdk/paywall/view/webview/WebviewError;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->trackPaywallResourceError(Lcom/superwall/sdk/paywall/view/webview/WebviewError;Ljava/lang/String;)V

    return-void
.end method

.method private static final evaluate$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    .line 550
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final gestureDetector_delegate$lambda$0(Landroid/content/Context;)Landroid/view/GestureDetector;
    .locals 2

    .line 85
    new-instance v0, Landroid/view/GestureDetector;

    .line 87
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/ScrollDisabledListener;

    invoke-direct {v1}, Lcom/superwall/sdk/paywall/view/webview/ScrollDisabledListener;-><init>()V

    check-cast v1, Landroid/view/GestureDetector$OnGestureListener;

    .line 85
    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v0
.end method

.method private final getGestureDetector()Landroid/view/GestureDetector;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->gestureDetector$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GestureDetector;

    return-object v0
.end method

.method private final getLocalResourceHandler()Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->localResourceHandler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;

    return-object v0
.end method

.method private final listenToWebviewClientEvents(Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;)V
    .locals 7

    .line 329
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$listenToWebviewClientEvents$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final loadPaywallWithFallbackUrl$lambda$6(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->lastLoadedUrl:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->transformUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 221
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final loadPaywallWithFallbackUrl$lambda$7(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Lkotlin/Unit;
    .locals 0

    .line 223
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->stopLoading()V

    .line 224
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final loadPaywallWithFallbackUrl$lambda$8(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Lkotlin/Unit;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->onRenderCrashed:Lkotlin/jvm/functions/Function2;

    .line 229
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 230
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 228
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final loadUrl$lambda$9(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Lkotlin/Unit;
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->onRenderCrashed:Lkotlin/jvm/functions/Function2;

    .line 286
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 287
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 285
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final localResourceHandler_delegate$lambda$2(Landroid/content/Context;)Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;
    .locals 2

    .line 93
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method private static final localResourceHandler_delegate$lambda$2$lambda$1()Ljava/util/Map;
    .locals 1

    .line 93
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getLocalResources()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final onRenderCrashed$lambda$3(ZI)Lkotlin/Unit;
    .locals 0

    .line 114
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final posterBmp_delegate$lambda$11()Landroid/graphics/Bitmap;
    .locals 2

    const/16 v0, 0xa

    .line 592
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 594
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static final prepareWebview$lambda$4(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)Landroid/app/Activity;
    .locals 0

    .line 199
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private final trackLoadFallback()V
    .locals 7

    .line 456
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackLoadFallback$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final trackPaywallError(Lcom/superwall/sdk/paywall/view/webview/WebviewError;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/webview/WebviewError;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackPaywallError$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackPaywallError$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lcom/superwall/sdk/paywall/view/webview/WebviewError;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final trackPaywallResourceError(Lcom/superwall/sdk/paywall/view/webview/WebviewError;Ljava/lang/String;)V
    .locals 7

    .line 497
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackPaywallResourceError$1;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p1, p0, v2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$trackPaywallResourceError$1;-><init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/view/webview/WebviewError;Lcom/superwall/sdk/paywall/view/webview/SWWebView;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final transformUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 308
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 312
    const-string v0, "platform"

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 313
    const-string v0, "transport"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 314
    const-string v0, "debug"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 316
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 319
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 321
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 322
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "SWWebView.loadUrl: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 320
    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "toView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq p1, v0, :cond_1

    .line 107
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 540
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->setOnScrollChangeListener(Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;)V

    .line 541
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public destroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 535
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->setOnScrollChangeListener(Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;)V

    .line 536
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->destroy()V

    return-void
.end method

.method public detach(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "fromView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 268
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->isGameControllerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superwall/sdk/game/PublicGameControllerKt;->dispatchMotionEvent(Lcom/superwall/sdk/Superwall;Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    .line 269
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 260
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->isGameControllerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superwall/sdk/game/PublicGameControllerKt;->dispatchKeyEvent(Lcom/superwall/sdk/Superwall;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    return p1

    .line 261
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public enableBackgroundRendering()V
    .locals 0

    return-void
.end method

.method public evaluate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 550
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 82
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getActivityProvider()Lcom/superwall/sdk/misc/ActivityProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lcom/superwall/sdk/misc/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelegate()Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->delegate:Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;

    return-object v0
.end method

.method public getMessageHandler()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    return-object v0
.end method

.method public final getOnRenderCrashed()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->onRenderCrashed:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public getOnScrollChangeListener()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->onScrollChangeListener:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;

    return-object v0
.end method

.method public final getScrollEnabled()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->scrollEnabled:Z

    return v0
.end method

.method public final loadPaywallWithFallbackUrl$superwall_release(Lcom/superwall/sdk/models/paywall/Paywall;)V
    .locals 9

    const-string v0, "paywall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->prepareWebview$superwall_release()V

    .line 207
    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/Paywall;->getUrlConfig()Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    move-result-object v2

    if-nez v2, :cond_0

    .line 208
    move-object p1, p0

    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    .line 209
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 210
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 211
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x18

    const/4 v7, 0x0

    .line 209
    const-string v3, "Tried to start a paywall with multiple URLS but without URL config"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    .line 217
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 237
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getLocalResourceHandler()Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;

    move-result-object v8

    .line 205
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;

    .line 217
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 216
    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 204
    new-instance v5, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda2;-><init>(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)V

    new-instance v6, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda3;-><init>(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)V

    new-instance v7, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda4;-><init>(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)V

    .line 205
    invoke-direct/range {v1 .. v8}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;-><init>(Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;)V

    .line 239
    move-object p1, v1

    check-cast p1, Landroid/webkit/WebViewClient;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 243
    move-object p1, v1

    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;

    invoke-direct {p0, p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->listenToWebviewClientEvents(Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;)V

    .line 244
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/WebviewFallbackClient;->loadWithFallback$superwall_release()V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->lastLoadedUrl:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->prepareWebview$superwall_release()V

    .line 279
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;

    .line 281
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 278
    new-instance v2, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda5;-><init>(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)V

    .line 294
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getLocalResourceHandler()Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;

    move-result-object v3

    .line 279
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;-><init>(Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;)V

    .line 296
    move-object v1, v0

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 302
    invoke-direct {p0, v0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->listenToWebviewClientEvents(Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;)V

    .line 303
    invoke-direct {p0, p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->transformUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 257
    new-instance p1, Landroid/view/inputmethod/BaseInputConnection;

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    check-cast p1, Landroid/view/inputmethod/InputConnection;

    return-object p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 525
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 526
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getOnScrollChangeListener()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;->onScrollChanged(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->scrollEnabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getGestureDetector()Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v0

    .line 509
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onView(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "perform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final prepareWebview$superwall_release()V
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getMessageHandler()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    move-result-object v0

    const-string v1, "SWAndroid"

    invoke-virtual {p0, v0, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "getSettings(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 186
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    const/4 v2, 0x1

    .line 187
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 188
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 189
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 190
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 192
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    const/16 v2, 0x64

    .line 193
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 198
    invoke-virtual {p0, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->setBackgroundColor(I)V

    .line 199
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient$ChromeClient;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$$ExternalSyntheticLambda10;-><init>(Lcom/superwall/sdk/paywall/view/webview/SWWebView;)V

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient$ChromeClient;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setDelegate(Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->delegate:Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;

    return-void
.end method

.method public final setOnRenderCrashed(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->onRenderCrashed:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public setOnScrollChangeListener(Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->onScrollChangeListener:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;

    return-void
.end method

.method public final setScrollEnabled(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->scrollEnabled:Z

    return-void
.end method

.method public setup-MkQ7Bds(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRenderCrashed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->onRenderCrashed:Lkotlin/jvm/functions/Function2;

    .line 558
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->getDelegate()Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/superwall/sdk/models/paywall/Paywall;->isScrollEnabled()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    iput-boolean p2, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->scrollEnabled:Z

    .line 559
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/superwall/sdk/paywall/view/webview/SWWebView$setup$1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView$setup$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/SWWebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
