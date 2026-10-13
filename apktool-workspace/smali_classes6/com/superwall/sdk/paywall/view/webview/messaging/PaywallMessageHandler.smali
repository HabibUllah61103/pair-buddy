.class public final Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;
.super Ljava/lang/Object;
.source "PaywallMessageHandler.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$Companion;,
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallMessageHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallMessageHandler.kt\ncom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,910:1\n113#2:911\n113#2:914\n113#2:915\n1863#3,2:912\n1246#3,4:928\n1557#3:932\n1628#3,3:933\n135#4,10:916\n462#5:926\n412#5:927\n*S KotlinDebug\n*F\n+ 1 PaywallMessageHandler.kt\ncom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler\n*L\n311#1:911\n650#1:914\n757#1:915\n463#1:912,2\n905#1:928,4\n906#1:932\n906#1:933,3\n820#1:916,10\n905#1:926\n905#1:927\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 m2\u00020\u0001:\u0001mB\u00b9\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\"\u0010\u0006\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0007\u0012\u001e\u0010\u000c\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b0\u000e\u0012\u0004\u0012\u00020\n0\r\u0012\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\r\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u000e\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u0011\u0012\u0006\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010,\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u000fH\u0007J\u0010\u0010.\u001a\u00020\n2\u0006\u0010-\u001a\u00020+H\u0016J4\u0010/\u001a\u00020\n2\u0006\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u0002022\u0014\u0008\u0002\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b0\u000eH\u0082@\u00a2\u0006\u0002\u00104J\u0016\u00105\u001a\u00020\n2\u0006\u00101\u001a\u000202H\u0082@\u00a2\u0006\u0002\u00106J\u0016\u00107\u001a\u00020\n2\u0006\u00108\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u00109J\u001e\u0010:\u001a\u00020\n2\u0006\u00101\u001a\u0002022\u0006\u0010;\u001a\u00020<H\u0082@\u00a2\u0006\u0002\u0010=J\u0006\u0010>\u001a\u00020\nJ\u0008\u0010?\u001a\u00020\nH\u0002J\u0018\u0010@\u001a\u00020\n2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u0002J\u0010\u0010E\u001a\u00020\n2\u0006\u0010A\u001a\u00020BH\u0002J\u0010\u0010F\u001a\u00020\n2\u0006\u0010A\u001a\u00020\u000fH\u0002J\u0008\u0010G\u001a\u00020\nH\u0002J\u0018\u0010H\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u000f2\u0006\u0010J\u001a\u00020DH\u0002J\u0010\u0010K\u001a\u00020\n2\u0006\u0010L\u001a\u00020\u000fH\u0002J\u0018\u0010M\u001a\u00020\n2\u0006\u0010N\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020PH\u0002J\u0010\u0010Q\u001a\u00020\n2\u0006\u0010R\u001a\u00020SH\u0002J\u0010\u0010T\u001a\u00020\n2\u0006\u0010R\u001a\u00020UH\u0002J&\u0010V\u001a\u00020\n2\u0006\u0010W\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020[H\u0082@\u00a2\u0006\u0002\u0010\\J\u0010\u0010]\u001a\u00020\n2\u0006\u0010R\u001a\u00020^H\u0002J<\u0010_\u001a\u00020\n2\u0006\u0010W\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020\u000f2\u0006\u0010Z\u001a\u00020`2\u0014\u0010a\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000eH\u0082@\u00a2\u0006\u0002\u0010bJ(\u0010c\u001a\u00020\n2\u0006\u00100\u001a\u00020\u000f2\u0016\u0008\u0002\u0010d\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000eH\u0002J\u0008\u0010e\u001a\u00020\nH\u0002J\u0010\u0010f\u001a\u00020\n2\u0006\u0010g\u001a\u00020hH\u0002J\u001a\u0010i\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b0\u000eH\u0086@\u00a2\u0006\u0002\u0010jJ\u0012\u0010k\u001a\u00020\u000b2\u0008\u0010l\u001a\u0004\u0018\u00010\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u0006\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\"R&\u0010\u000c\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b0\u000e\u0012\u0004\u0012\u00020\n0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0014\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006n"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;",
        "Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;",
        "factory",
        "Lcom/superwall/sdk/dependencies/VariablesFactory;",
        "options",
        "Lcom/superwall/sdk/dependencies/OptionsFactory;",
        "track",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "setAttributes",
        "Lkotlin/Function1;",
        "",
        "",
        "getView",
        "Lkotlin/Function0;",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "mainScope",
        "Lcom/superwall/sdk/misc/MainScope;",
        "ioScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "encodeToB64",
        "userPermissions",
        "Lcom/superwall/sdk/permissions/UserPermissions;",
        "getActivity",
        "Landroid/app/Activity;",
        "customCallbackRegistry",
        "Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;",
        "<init>",
        "(Lcom/superwall/sdk/dependencies/VariablesFactory;Lcom/superwall/sdk/dependencies/OptionsFactory;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/MainScope;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/permissions/UserPermissions;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;)V",
        "Lkotlin/jvm/functions/Function2;",
        "messageHandler",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;",
        "getMessageHandler",
        "()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;",
        "setMessageHandler",
        "(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;)V",
        "queue",
        "Ljava/util/Queue;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;",
        "postMessage",
        "message",
        "handle",
        "pass",
        "eventName",
        "paywall",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "payload",
        "(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/Paywall;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "passTemplatesToWebView",
        "(Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "passMessageToWebView",
        "base64String",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "didLoadWebView",
        "loadedAt",
        "Ljava/util/Date;",
        "(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "flushPendingMessages",
        "flushPendingMessagesInternal",
        "openUrl",
        "url",
        "Ljava/net/URI;",
        "isPaymentSheet",
        "",
        "openUrlInBrowser",
        "openDeepLink",
        "restorePurchases",
        "purchaseProduct",
        "withId",
        "shouldDismiss",
        "handleCustomEvent",
        "customEvent",
        "handleCustomPlacement",
        "name",
        "params",
        "Lkotlinx/serialization/json/JsonObject;",
        "handleRequestReview",
        "request",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;",
        "handleRequestPermission",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;",
        "sendPermissionResult",
        "requestId",
        "permissionType",
        "Lcom/superwall/sdk/permissions/PermissionType;",
        "status",
        "Lcom/superwall/sdk/permissions/PermissionStatus;",
        "(Ljava/lang/String;Lcom/superwall/sdk/permissions/PermissionType;Lcom/superwall/sdk/permissions/PermissionStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleRequestCallback",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;",
        "sendCallbackResult",
        "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResultStatus;",
        "data",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/CustomCallbackResultStatus;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "detectHiddenPaywallEvent",
        "userInfo",
        "hapticFeedback",
        "triggerHapticFeedback",
        "hapticType",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;",
        "getState",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "replaceNullsWithEmpty",
        "value",
        "Companion",
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
.field private static final Companion:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$Companion;

.field private static final preventZoom:Ljava/lang/String;

.field private static final selectionString:Ljava/lang/String;


# instance fields
.field private final customCallbackRegistry:Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;

.field private final encodeToB64:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lcom/superwall/sdk/dependencies/VariablesFactory;

.field private final getActivity:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final getView:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            ">;"
        }
    .end annotation
.end field

.field private final ioScope:Lkotlinx/coroutines/CoroutineScope;

.field private final json:Lkotlinx/serialization/json/Json;

.field private final mainScope:Lcom/superwall/sdk/misc/MainScope;

.field private messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

.field private final options:Lcom/superwall/sdk/dependencies/OptionsFactory;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final setAttributes:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

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

.field private final userPermissions:Lcom/superwall/sdk/permissions/UserPermissions;


# direct methods
.method public static synthetic $r8$lambda$-gCln_k1D7RePyOypQVa0awGNE0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->_init_$lambda$0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->Companion:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$Companion;

    .line 86
    const-string v0, "var css = \'*{-webkit-touch-callout:none;-webkit-user-select:none} .w-webflow-badge { display: none !important; }\';\n                    var head = document.head || document.getElementsByTagName(\'head\')[0];\n                    var style = document.createElement(\'style\'); style.type = \'text/css\';\n                    style.appendChild(document.createTextNode(css)); head.appendChild(style); "

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->selectionString:Ljava/lang/String;

    .line 91
    const-string v0, "var meta = document.createElement(\'meta\');\n                        meta.name = \'viewport\';\n                        meta.content = \'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\';\n                        var head = document.getElementsByTagName(\'head\')[0];\n                        head.appendChild(meta);"

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->preventZoom:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/dependencies/VariablesFactory;Lcom/superwall/sdk/dependencies/OptionsFactory;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/MainScope;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/permissions/UserPermissions;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/dependencies/VariablesFactory;",
            "Lcom/superwall/sdk/dependencies/OptionsFactory;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            ">;",
            "Lcom/superwall/sdk/misc/MainScope;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/superwall/sdk/permissions/UserPermissions;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;",
            ")V"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setAttributes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getView"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainScope"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodeToB64"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userPermissions"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getActivity"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customCallbackRegistry"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->factory:Lcom/superwall/sdk/dependencies/VariablesFactory;

    .line 72
    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->options:Lcom/superwall/sdk/dependencies/OptionsFactory;

    .line 73
    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->track:Lkotlin/jvm/functions/Function2;

    .line 74
    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->setAttributes:Lkotlin/jvm/functions/Function1;

    .line 75
    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->getView:Lkotlin/jvm/functions/Function0;

    .line 76
    iput-object p6, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    .line 77
    iput-object p7, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    .line 78
    iput-object p8, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->json:Lkotlinx/serialization/json/Json;

    .line 79
    iput-object p9, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->encodeToB64:Lkotlin/jvm/functions/Function1;

    .line 80
    iput-object p10, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->userPermissions:Lcom/superwall/sdk/permissions/UserPermissions;

    .line 81
    iput-object p11, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->getActivity:Lkotlin/jvm/functions/Function0;

    .line 82
    iput-object p12, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->customCallbackRegistry:Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;

    .line 99
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    check-cast p1, Ljava/util/Queue;

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->queue:Ljava/util/Queue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/dependencies/VariablesFactory;Lcom/superwall/sdk/dependencies/OptionsFactory;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/MainScope;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/permissions/UserPermissions;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 70
    invoke-direct/range {v1 .. v13}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;-><init>(Lcom/superwall/sdk/dependencies/VariablesFactory;Lcom/superwall/sdk/dependencies/OptionsFactory;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/MainScope;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/permissions/UserPermissions;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setEncodeDefaults(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$didLoadWebView(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/models/paywall/Paywall;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->didLoadWebView(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$flushPendingMessagesInternal(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->flushPendingMessagesInternal()V

    return-void
.end method

.method public static final synthetic access$getCompanion$p()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$Companion;
    .locals 1

    .line 70
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->Companion:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$Companion;

    return-object v0
.end method

.method public static final synthetic access$getGetView$p(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->getView:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getJson$p(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;)Lkotlinx/serialization/json/Json;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->json:Lkotlinx/serialization/json/Json;

    return-object p0
.end method

.method public static final synthetic access$getMainScope$p(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;)Lcom/superwall/sdk/misc/MainScope;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    return-object p0
.end method

.method public static final synthetic access$getPreventZoom$cp()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->preventZoom:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSelectionString$cp()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->selectionString:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTrack$p(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->track:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getUserPermissions$p(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;)Lcom/superwall/sdk/permissions/UserPermissions;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->userPermissions:Lcom/superwall/sdk/permissions/UserPermissions;

    return-object p0
.end method

.method public static final synthetic access$pass(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/Paywall;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->pass(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/Paywall;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$passMessageToWebView(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->passMessageToWebView(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$passTemplatesToWebView(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->passTemplatesToWebView(Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$replaceNullsWithEmpty(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->replaceNullsWithEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendCallbackResult(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/CustomCallbackResultStatus;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->sendCallbackResult(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/CustomCallbackResultStatus;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendPermissionResult(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/String;Lcom/superwall/sdk/permissions/PermissionType;Lcom/superwall/sdk/permissions/PermissionStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->sendPermissionResult(Ljava/lang/String;Lcom/superwall/sdk/permissions/PermissionType;Lcom/superwall/sdk/permissions/PermissionStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final detectHiddenPaywallEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isPresented()Z

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->getView:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    .line 789
    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "self"

    invoke-static {v3, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 790
    const-string v3, "Superwall.instance.paywallViewController"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v1

    .line 791
    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v2, v0

    .line 788
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    if-eqz p2, :cond_1

    .line 794
    invoke-interface {v7, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 797
    :cond_1
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 798
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 799
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v9, 0x10

    const/4 v10, 0x0

    .line 797
    const-string v6, "Received Event on Hidden Superwall"

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic detectHiddenPaywallEvent$default(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 777
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->detectHiddenPaywallEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final didLoadWebView(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Ljava/util/Date;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;

    iget v3, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;

    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v2

    iget-object v1, v9, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 367
    iget v3, v9, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;->label:I

    const/4 v4, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v9, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v9, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 371
    iget-object v11, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$2;

    move-object/from16 v3, p2

    invoke-direct {v1, v0, v3, v10}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$2;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/util/Date;Lkotlin/coroutines/Continuation;)V

    move-object v14, v1

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 386
    sget-object v17, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 387
    sget-object v18, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 388
    sget-object v19, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    const/16 v23, 0x18

    const/16 v24, 0x0

    .line 386
    const-string v20, "!! PaywallMessageHandler: didLoadWebView"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v24}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 392
    invoke-virtual/range {p1 .. p1}, Lcom/superwall/sdk/models/paywall/Paywall;->getHtmlSubstitutions()Ljava/lang/String;

    move-result-object v1

    .line 394
    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v3, :cond_3

    .line 395
    invoke-interface {v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 396
    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getRequest()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 397
    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getPresentationInfo()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 398
    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;->getEventData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    :cond_3
    move-object v6, v10

    .line 400
    :goto_1
    sget-object v3, LTemplateLogic;->INSTANCE:LTemplateLogic;

    .line 403
    iget-object v7, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->factory:Lcom/superwall/sdk/dependencies/VariablesFactory;

    .line 404
    iget-object v5, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->json:Lkotlinx/serialization/json/Json;

    .line 405
    iget-object v8, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->encodeToB64:Lkotlin/jvm/functions/Function1;

    .line 400
    iput-object v0, v9, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;->L$0:Ljava/lang/Object;

    iput-object v1, v9, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;->L$1:Ljava/lang/Object;

    iput v4, v9, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$1;->label:I

    move-object v4, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v9}, LTemplateLogic;->getBase64EncodedTemplates(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/dependencies/VariablesFactory;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4

    return-object v2

    :cond_4
    move-object v2, v1

    move-object v1, v3

    move-object v3, v0

    .line 399
    :goto_2
    check-cast v1, Ljava/lang/String;

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\n      window.paywall.accept64(\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\');\n      window.paywall.accept64(\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    sget-object v11, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 413
    sget-object v12, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 414
    sget-object v13, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "!! PaywallMessageHandler: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x18

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 412
    invoke-static/range {v11 .. v18}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 418
    sget-object v19, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 419
    sget-object v20, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 420
    sget-object v21, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 422
    const-string v2, "message"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v23

    const/16 v25, 0x10

    const/16 v26, 0x0

    .line 418
    const-string v22, "Posting Message"

    const/16 v24, 0x0

    invoke-static/range {v19 .. v26}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 425
    iget-object v2, v3, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$3;

    invoke-direct {v2, v3, v1, v10}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$didLoadWebView$3;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 448
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private final flushPendingMessagesInternal()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->queue:Ljava/util/Queue;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 463
    check-cast v0, Ljava/lang/Iterable;

    .line 912
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    .line 463
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handle(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final handleCustomEvent(Ljava/lang/String;)V
    .locals 2

    .line 520
    const-string v0, "custom_event"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 518
    const-string v1, "custom"

    invoke-direct {p0, v1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->detectHiddenPaywallEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 522
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Custom;

    invoke-direct {v1, p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Custom;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;)V

    :cond_0
    return-void
.end method

.method private final handleCustomPlacement(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$CustomPlacement;

    invoke-direct {v1, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$CustomPlacement;-><init>(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;)V

    :cond_0
    return-void
.end method

.method private final handleRequestCallback(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 671
    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, ""

    .line 674
    :cond_1
    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v3, :cond_2

    .line 675
    new-instance v4, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestCallback;

    .line 676
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;->getName()Ljava/lang/String;

    move-result-object v5

    .line 677
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;->getBehavior()Lcom/superwall/sdk/paywall/presentation/CustomCallbackBehavior;

    move-result-object v6

    .line 678
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;->getRequestId()Ljava/lang/String;

    move-result-object v7

    .line 679
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;->getVariables()Ljava/util/Map;

    move-result-object v8

    .line 675
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestCallback;-><init>(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/CustomCallbackBehavior;Ljava/lang/String;Ljava/util/Map;)V

    check-cast v4, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    .line 674
    invoke-interface {v3, v4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;)V

    .line 684
    :cond_2
    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->customCallbackRegistry:Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;

    invoke-virtual {v3, v2}, Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;->getHandler(Ljava/lang/String;)Lkotlin/jvm/functions/Function2;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 687
    sget-object v4, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 688
    sget-object v5, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 689
    sget-object v6, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 690
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "No custom callback handler registered for callback: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 687
    invoke-static/range {v4 .. v11}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 693
    iget-object v12, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestCallback$1;

    invoke-direct {v2, v0, v1, v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestCallback$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;Lkotlin/coroutines/Continuation;)V

    move-object v15, v2

    check-cast v15, Lkotlin/jvm/functions/Function2;

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 704
    :cond_3
    iget-object v4, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestCallback$2;

    invoke-direct {v5, v1, v2, v0, v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestCallback$2;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v1, v4

    move-object v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final handleRequestPermission(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;)V
    .locals 20

    move-object/from16 v1, p0

    .line 546
    iget-object v0, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->getActivity:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    .line 547
    iget-object v0, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    move-object v5, v0

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;->getPermissionType()Lcom/superwall/sdk/permissions/PermissionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/permissions/PermissionType;->getRawValue()Ljava/lang/String;

    move-result-object v4

    .line 550
    iget-object v0, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v0, :cond_2

    .line 551
    new-instance v3, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestPermission;

    .line 552
    invoke-virtual/range {p1 .. p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;->getPermissionType()Lcom/superwall/sdk/permissions/PermissionType;

    move-result-object v6

    .line 553
    invoke-virtual/range {p1 .. p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;->getRequestId()Ljava/lang/String;

    move-result-object v7

    .line 551
    invoke-direct {v3, v6, v7}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestPermission;-><init>(Lcom/superwall/sdk/permissions/PermissionType;Ljava/lang/String;)V

    check-cast v3, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    .line 550
    invoke-interface {v0, v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;)V

    .line 558
    :cond_2
    iget-object v6, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$1;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    if-nez v2, :cond_3

    .line 569
    sget-object v12, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 570
    sget-object v13, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 571
    sget-object v14, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    const/16 v18, 0x18

    const/16 v19, 0x0

    .line 569
    const-string v15, "Cannot request permission - no activity available"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 575
    iget-object v4, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$2;

    move-object/from16 v6, p1

    invoke-direct {v0, v1, v6, v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$2;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_3
    move-object/from16 v6, p1

    .line 585
    iget-object v10, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;

    const/4 v6, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Landroid/app/Activity;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v13, v0

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final handleRequestReview(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;)V
    .locals 3

    .line 533
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->hapticFeedback()V

    .line 534
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v0, :cond_1

    .line 535
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview;

    .line 536
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;->getType()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    move-result-object p1

    sget-object v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 537
    sget-object p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview$Type;->EXTERNAL:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview$Type;

    goto :goto_0

    .line 539
    :cond_0
    sget-object p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview$Type;->INAPP:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview$Type;

    .line 535
    :goto_0
    invoke-direct {v1, p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview$Type;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    .line 534
    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;)V

    :cond_1
    return-void
.end method

.method private final hapticFeedback()V
    .locals 7

    .line 806
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->options:Lcom/superwall/sdk/dependencies/OptionsFactory;

    invoke-interface {v0}, Lcom/superwall/sdk/dependencies/OptionsFactory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    .line 807
    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/config/options/PaywallOptions;->isHapticFeedbackEnabled()Z

    move-result v1

    .line 808
    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->isGameControllerEnabled()Z

    move-result v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$hapticFeedback$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$hapticFeedback$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method

.method private final openDeepLink(Ljava/lang/String;)V
    .locals 2

    .line 496
    const-string v0, "url"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 494
    const-string v1, "openDeepLink"

    invoke-direct {p0, v1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->detectHiddenPaywallEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 498
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->hapticFeedback()V

    .line 499
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->openDeepLink(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final openUrl(Ljava/net/URI;Z)V
    .locals 2

    .line 472
    const-string v0, "url"

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 470
    const-string v1, "openUrl"

    invoke-direct {p0, v1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->detectHiddenPaywallEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 474
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->hapticFeedback()V

    .line 475
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedURL;

    invoke-direct {v1, p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedURL;-><init>(Ljava/net/URI;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;)V

    .line 476
    :cond_0
    const-string v0, "toString(...)"

    if-eqz p2, :cond_1

    .line 477
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->presentPaymentSheet(Ljava/lang/String;)V

    return-void

    .line 479
    :cond_1
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->presentBrowserInApp(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final openUrlInBrowser(Ljava/net/URI;)V
    .locals 2

    .line 486
    const-string v0, "url"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 484
    const-string v1, "openUrlInSafari"

    invoke-direct {p0, v1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->detectHiddenPaywallEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 488
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->hapticFeedback()V

    .line 489
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedUrlInChrome;

    invoke-direct {v1, p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedUrlInChrome;-><init>(Ljava/net/URI;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->presentBrowserExternal(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final pass(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/Paywall;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 304
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "event_name"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 305
    const-string v1, "paywall_id"

    invoke-virtual {p2}, Lcom/superwall/sdk/models/paywall/Paywall;->getDatabaseId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 306
    const-string v1, "paywall_identifier"

    invoke-virtual {p2}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 303
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 302
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 311
    :try_start_0
    iget-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->json:Lkotlinx/serialization/json/Json;

    check-cast p3, Lkotlinx/serialization/StringFormat;

    invoke-static {p2}, Lcom/superwall/sdk/storage/core_data/ConvertersKt;->convertToJsonElement(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    .line 911
    invoke-interface {p3}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v0, Lkotlinx/serialization/json/JsonElement;->Companion:Lkotlinx/serialization/json/JsonElement$Companion;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonElement$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p3, v0, p2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 313
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "{\"event_name\":\""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 316
    :goto_0
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->encodeToB64:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->passMessageToWebView(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static synthetic pass$default(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/Paywall;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 299
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 296
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->pass(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/Paywall;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final passMessageToWebView(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n      window.paywall.accept64(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\');\n    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 344
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 345
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 346
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 348
    const-string v3, "message"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/16 v6, 0x10

    const/4 v7, 0x0

    .line 344
    const-string v3, "Posting Message"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 351
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passMessageToWebView$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passMessageToWebView$2;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final passTemplatesToWebView(Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    iget-object p2, v7, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 321
    iget v1, v7, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;->label:I

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v9, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v7, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 323
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz p2, :cond_4

    .line 324
    invoke-interface {p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 325
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getRequest()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 326
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getPresentationInfo()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 327
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;->getEventData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object p2

    move-object v4, p2

    goto :goto_1

    :cond_4
    move-object v4, v8

    .line 329
    :goto_1
    sget-object v1, LTemplateLogic;->INSTANCE:LTemplateLogic;

    .line 332
    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->factory:Lcom/superwall/sdk/dependencies/VariablesFactory;

    move p2, v2

    .line 333
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->json:Lkotlinx/serialization/json/Json;

    .line 334
    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->encodeToB64:Lkotlin/jvm/functions/Function1;

    .line 329
    iput-object p0, v7, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;->L$0:Ljava/lang/Object;

    iput p2, v7, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;->label:I

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, LTemplateLogic;->getBase64EncodedTemplates(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/dependencies/VariablesFactory;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, p0

    .line 328
    :goto_2
    check-cast p2, Ljava/lang/String;

    .line 336
    iput-object v8, v7, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;->L$0:Ljava/lang/Object;

    iput v9, v7, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$passTemplatesToWebView$1;->label:I

    invoke-direct {p1, p2, v7}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->passMessageToWebView(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_3
    return-object v0

    .line 337
    :cond_6
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final purchaseProduct(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 512
    const-string v2, "purchase"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->detectHiddenPaywallEvent$default(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 513
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->hapticFeedback()V

    .line 514
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiatePurchase;

    invoke-direct {v1, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiatePurchase;-><init>(Ljava/lang/String;Z)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;)V

    :cond_0
    return-void
.end method

.method private final replaceNullsWithEmpty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    .line 904
    const-string p1, ""

    return-object p1

    .line 905
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Map;

    .line 926
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    .line 927
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 928
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 929
    check-cast v1, Ljava/util/Map$Entry;

    .line 927
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 905
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->replaceNullsWithEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 929
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    .line 906
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    .line 932
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 933
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 906
    invoke-direct {p0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->replaceNullsWithEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 934
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 935
    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_4
    return-object p1
.end method

.method private final restorePurchases()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 503
    const-string v2, "restore"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->detectHiddenPaywallEvent$default(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 504
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->hapticFeedback()V

    .line 505
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiateRestore;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiateRestore;

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;)V

    :cond_0
    return-void
.end method

.method private final sendCallbackResult(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/CustomCallbackResultStatus;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResultStatus;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 743
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "event_name"

    const-string v2, "callback_result"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 744
    const-string v1, "request_id"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 745
    const-string p1, "name"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 746
    const-string p1, "status"

    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/presentation/CustomCallbackResultStatus;->getRawValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 742
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 750
    const-string p2, "data"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 757
    :try_start_0
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->json:Lkotlinx/serialization/json/Json;

    check-cast p2, Lkotlinx/serialization/StringFormat;

    invoke-static {p1}, Lcom/superwall/sdk/storage/core_data/ConvertersKt;->convertToJsonElement(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 915
    invoke-interface {p2}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object p3, Lkotlinx/serialization/json/JsonElement;->Companion:Lkotlinx/serialization/json/JsonElement$Companion;

    invoke-virtual {p3}, Lkotlinx/serialization/json/JsonElement$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p3

    check-cast p3, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p2, p3, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 769
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 770
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 771
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Sending callback_result: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 768
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 774
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->encodeToB64:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p5}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->passMessageToWebView(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p1

    .line 759
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 760
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 761
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 762
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error encoding callback result: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 759
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 765
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final sendPermissionResult(Ljava/lang/String;Lcom/superwall/sdk/permissions/PermissionType;Lcom/superwall/sdk/permissions/PermissionStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/permissions/PermissionType;",
            "Lcom/superwall/sdk/permissions/PermissionStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 641
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "event_name"

    const-string v2, "permission_result"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 642
    const-string v1, "permission_type"

    invoke-virtual {p2}, Lcom/superwall/sdk/permissions/PermissionType;->getRawValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 643
    const-string p2, "request_id"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 644
    const-string p1, "status"

    invoke-virtual {p3}, Lcom/superwall/sdk/permissions/PermissionStatus;->getRawValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 640
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 639
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 650
    :try_start_0
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->json:Lkotlinx/serialization/json/Json;

    check-cast p2, Lkotlinx/serialization/StringFormat;

    invoke-static {p1}, Lcom/superwall/sdk/storage/core_data/ConvertersKt;->convertToJsonElement(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 914
    invoke-interface {p2}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object p3, Lkotlinx/serialization/json/JsonElement;->Companion:Lkotlinx/serialization/json/JsonElement$Companion;

    invoke-virtual {p3}, Lkotlinx/serialization/json/JsonElement$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p3

    check-cast p3, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p2, p3, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 662
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 663
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 664
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Sending permission_result: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 661
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 667
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->encodeToB64:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->passMessageToWebView(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p1

    .line 652
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 653
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 654
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 655
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error encoding permission result: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 652
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 658
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final triggerHapticFeedback(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;)V
    .locals 8

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->options:Lcom/superwall/sdk/dependencies/OptionsFactory;

    invoke-interface {v0}, Lcom/superwall/sdk/dependencies/OptionsFactory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    .line 822
    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/config/options/PaywallOptions;->isHapticFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->isGameControllerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 827
    :cond_0
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x1e

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    goto :goto_1

    .line 840
    :pswitch_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_1

    const/16 v1, 0x11

    goto :goto_0

    .line 832
    :pswitch_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_2

    const/16 v1, 0x10

    goto :goto_0

    :cond_1
    :pswitch_2
    move v1, v3

    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 849
    :cond_2
    :goto_0
    :pswitch_4
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$triggerHapticFeedback$1$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$triggerHapticFeedback$1$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;ILkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 917
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    return-void

    .line 827
    :goto_1
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 919
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 920
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 921
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 924
    :cond_4
    new-instance v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final flushPendingMessages()V
    .locals 6

    .line 451
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$flushPendingMessages$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$flushPendingMessages$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getMessageHandler()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    return-object v0
.end method

.method public final getState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$getState$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$getState$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$getState$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$getState$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$getState$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$getState$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$getState$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$getState$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 859
    iget v2, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$getState$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 862
    sget-object v4, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 863
    sget-object v5, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 864
    sget-object v6, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 866
    const-string p1, "message"

    const-string v2, "window.app.getAllState();"

    invoke-static {p1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    const/16 v10, 0x10

    const/4 v11, 0x0

    .line 862
    const-string v7, "Getting state"

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 869
    new-instance p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$getState$2;

    const/4 v4, 0x0

    invoke-direct {p1, p0, v2, v4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$getState$2;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$getState$1;->label:I

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_4

    .line 899
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public handle(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "message"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 134
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 135
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 136
    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v11

    :goto_0
    iget-object v6, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "!! PaywallMessageHandler: Handling message: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ", delegeate: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 133
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 138
    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v2, :cond_21

    invoke-interface {v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 139
    :cond_1
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 140
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 141
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 142
    iget-object v6, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "!! PaywallMessageHandler: Paywall: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 139
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 145
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TemplateParamsAndUserAttributes;

    if-eqz v3, :cond_2

    .line 146
    iget-object v4, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$1;

    invoke-direct {v1, v0, v2, v11}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 148
    :cond_2
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OnReady;

    if-eqz v3, :cond_4

    .line 149
    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v3, :cond_3

    .line 150
    new-instance v4, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPaywallJsVersion;

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OnReady;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OnReady;->getPaywallJsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPaywallJsVersion;-><init>(Ljava/lang/String;)V

    check-cast v4, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    .line 149
    invoke-interface {v3, v4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 152
    :cond_3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 153
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 154
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 155
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    const/16 v9, 0x18

    const/4 v10, 0x0

    .line 153
    const-string v6, "!! PaywallMessageHandler: Ready !!"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 158
    iget-object v12, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$2;

    invoke-direct {v3, v0, v2, v1, v11}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$2;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/models/paywall/Paywall;Ljava/util/Date;Lkotlin/coroutines/Continuation;)V

    move-object v15, v3

    check-cast v15, Lkotlin/jvm/functions/Function2;

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 161
    :cond_4
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Close;

    if-eqz v3, :cond_5

    .line 162
    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->hapticFeedback()V

    .line 163
    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v1, :cond_21

    sget-object v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Closed;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Closed;

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    invoke-interface {v1, v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;)V

    return-void

    .line 166
    :cond_5
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl;

    if-eqz v3, :cond_7

    .line 168
    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl;->getUrl()Ljava/net/URI;

    move-result-object v2

    .line 169
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl;->getBrowserType()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;

    move-result-object v1

    sget-object v3, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;->PAYMENT_SHEET:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 167
    :goto_1
    invoke-direct {v0, v2, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->openUrl(Ljava/net/URI;Z)V

    return-void

    .line 172
    :cond_7
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrlInBrowser;

    if-eqz v3, :cond_8

    .line 173
    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrlInBrowser;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrlInBrowser;->getUrl()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->openUrlInBrowser(Ljava/net/URI;)V

    return-void

    .line 175
    :cond_8
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenDeepLink;

    if-eqz v3, :cond_9

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenDeepLink;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenDeepLink;->getUrl()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->openDeepLink(Ljava/lang/String;)V

    return-void

    .line 176
    :cond_9
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Restore;

    if-eqz v3, :cond_a

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->restorePurchases()V

    return-void

    .line 177
    :cond_a
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Purchase;

    if-eqz v3, :cond_b

    .line 179
    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Purchase;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Purchase;->getProductId()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Purchase;->getShouldDismiss()Z

    move-result v1

    .line 178
    invoke-direct {v0, v2, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->purchaseProduct(Ljava/lang/String;Z)V

    return-void

    .line 183
    :cond_b
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PaywallOpen;

    if-eqz v3, :cond_e

    .line 184
    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/superwall/sdk/models/paywall/Paywall;->getPaywalljsVersion()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_c
    move-object v3, v11

    :goto_2
    if-nez v3, :cond_d

    .line 185
    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->queue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    .line 187
    :cond_d
    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$3;

    invoke-direct {v1, v0, v2, v11}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$3;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 193
    :cond_e
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PaywallClose;

    if-eqz v3, :cond_11

    .line 194
    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v3, :cond_f

    invoke-interface {v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/superwall/sdk/models/paywall/Paywall;->getPaywalljsVersion()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_f
    move-object v3, v11

    :goto_3
    if-nez v3, :cond_10

    .line 195
    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->queue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    .line 197
    :cond_10
    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$4;

    invoke-direct {v1, v0, v2, v11}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$4;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 204
    :cond_11
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Custom;

    if-eqz v3, :cond_12

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Custom;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Custom;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handleCustomEvent(Ljava/lang/String;)V

    return-void

    .line 205
    :cond_12
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$CustomPlacement;

    if-eqz v3, :cond_13

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$CustomPlacement;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$CustomPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$CustomPlacement;->getParams()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handleCustomPlacement(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    return-void

    .line 206
    :cond_13
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RestoreFailed;

    if-eqz v3, :cond_14

    .line 207
    iget-object v4, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$5;

    invoke-direct {v1, v0, v2, v11}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$5;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 211
    :cond_14
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;

    if-eqz v3, :cond_15

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handleRequestReview(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;)V

    return-void

    .line 213
    :cond_15
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TransactionStart;

    if-eqz v3, :cond_16

    .line 214
    iget-object v4, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$6;

    invoke-direct {v1, v0, v2, v11}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$6;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 219
    :cond_16
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TransactionAbandon;

    if-eqz v3, :cond_17

    .line 220
    iget-object v4, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$7;

    invoke-direct {v1, v0, v2, v11}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$7;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 225
    :cond_17
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$UserAttributesUpdated;

    if-eqz v3, :cond_18

    .line 226
    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->setAttributes:Lkotlin/jvm/functions/Function1;

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$UserAttributesUpdated;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$UserAttributesUpdated;->getData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 229
    :cond_18
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TransactionComplete;

    if-eqz v3, :cond_19

    .line 230
    iget-object v4, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$8;

    invoke-direct {v3, v0, v2, v1, v11}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$8;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;Lkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 239
    :cond_19
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TrialStarted;

    if-eqz v3, :cond_1a

    .line 240
    iget-object v4, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$9;

    invoke-direct {v3, v0, v2, v1, v11}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$9;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;Lkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 253
    :cond_1a
    instance-of v2, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;

    if-eqz v2, :cond_1b

    .line 254
    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v2, :cond_21

    .line 255
    new-instance v3, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$ScheduleNotification;

    .line 256
    new-instance v4, Lcom/superwall/sdk/models/paywall/LocalNotification;

    .line 257
    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->getId()Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->getType()Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    move-result-object v6

    .line 259
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 260
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->getSubtitle()Ljava/lang/String;

    move-result-object v8

    .line 261
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->getBody()Ljava/lang/String;

    move-result-object v9

    .line 262
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;->getDelay()J

    move-result-wide v10

    .line 256
    invoke-direct/range {v4 .. v11}, Lcom/superwall/sdk/models/paywall/LocalNotification;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/LocalNotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 255
    invoke-direct {v3, v4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$ScheduleNotification;-><init>(Lcom/superwall/sdk/models/paywall/LocalNotification;)V

    check-cast v3, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    .line 254
    invoke-interface {v2, v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;)V

    return-void

    .line 267
    :cond_1b
    instance-of v2, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;

    if-eqz v2, :cond_1c

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handleRequestPermission(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;)V

    return-void

    .line 269
    :cond_1c
    instance-of v2, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;

    if-eqz v2, :cond_1d

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handleRequestCallback(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;)V

    return-void

    .line 271
    :cond_1d
    instance-of v2, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback;

    if-eqz v2, :cond_1e

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback;->getHapticType()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->triggerHapticFeedback(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;)V

    return-void

    .line 273
    :cond_1e
    instance-of v2, v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PageView;

    if-eqz v2, :cond_20

    .line 274
    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    if-eqz v2, :cond_21

    invoke-interface {v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v2

    if-nez v2, :cond_1f

    goto :goto_4

    .line 275
    :cond_1f
    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$10;

    invoke-direct {v4, v0, v2, v1, v11}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handle$10;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;Lkotlin/coroutines/Continuation;)V

    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 286
    :cond_20
    sget-object v9, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 287
    sget-object v10, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 288
    sget-object v11, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!! PaywallMessageHandler: Unknown message type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x18

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 286
    invoke-static/range {v9 .. v16}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_21
    :goto_4
    return-void
.end method

.method public final postMessage(Ljava/lang/String;)V
    .locals 19
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 105
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 106
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "SWWebViewInterface: "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 104
    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 111
    invoke-static {v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageKt;->parseWrappedPaywallMessages(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;

    .line 113
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->getPayload()Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    .line 114
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 115
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 116
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 117
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 114
    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move-object/from16 v2, p0

    .line 119
    invoke-virtual {v2, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handle(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    return-void

    :cond_1
    move-object/from16 v2, p0

    .line 122
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    sget-object v11, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 124
    sget-object v12, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 125
    sget-object v13, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "SWWebViewInterface: Error parsing message - "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x18

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 123
    invoke-static/range {v11 .. v18}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final setMessageHandler(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    return-void
.end method
