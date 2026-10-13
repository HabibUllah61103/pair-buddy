.class public final Lcom/superwall/sdk/paywall/view/PaywallView;
.super Landroid/widget/FrameLayout;
.source "PaywallView.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;
.implements Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;
.implements Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallStateDelegate;
.implements Lcom/superwall/sdk/paywall/view/ActivityEncapsulatable;
.implements Lcom/superwall/sdk/game/GameControllerDelegate;
.implements Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/PaywallView$Companion;,
        Lcom/superwall/sdk/paywall/view/PaywallView$Factory;,
        Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallView.kt\ncom/superwall/sdk/paywall/view/PaywallView\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n+ 5 Either.kt\ncom/superwall/sdk/misc/EitherKt\n*L\n1#1,1175:1\n29#2:1176\n29#2:1177\n29#2:1178\n113#3:1179\n135#4,10:1180\n143#5,4:1190\n*S KotlinDebug\n*F\n+ 1 PaywallView.kt\ncom/superwall/sdk/paywall/view/PaywallView\n*L\n963#1:1176\n1001#1:1177\n1027#1:1178\n1051#1:1179\n510#1:1180,10\n515#1:1190,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00c1\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u0007:\u0006\u00c0\u0001\u00c1\u0001\u00c2\u0001Bi\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u0007\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000e\u00102\u001a\u0002032\u0006\u00104\u001a\u000205J\u000e\u00106\u001a\u0002032\u0006\u00104\u001a\u000205J\u0008\u0010R\u001a\u000203H\u0002J\u0008\u0010S\u001a\u000203H\u0002J-\u0010T\u001a\u0002032\u0006\u0010U\u001a\u00020V2\u000c\u0010W\u001a\u0008\u0012\u0004\u0012\u00020Y0X2\u0008\u0010Z\u001a\u0004\u0018\u00010[H\u0000\u00a2\u0006\u0002\u0008\\J\u0015\u0010]\u001a\u0002032\u0006\u0010>\u001a\u00020?H\u0000\u00a2\u0006\u0002\u0008^J\u0015\u0010_\u001a\u0002032\u0006\u0010@\u001a\u00020AH\u0000\u00a2\u0006\u0002\u0008`J\u0016\u0010a\u001a\u0002032\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AJL\u0010b\u001a\u0002032\u0006\u0010c\u001a\u0002092\u0006\u0010U\u001a\u00020V2\u0008\u0010Z\u001a\u0004\u0018\u00010[2\u0008\u0010d\u001a\u0004\u0018\u00010e2\u000c\u0010W\u001a\u0008\u0012\u0004\u0012\u00020Y0X2\u0012\u0010f\u001a\u000e\u0012\u0004\u0012\u00020h\u0012\u0004\u0012\u0002030gJ\u0010\u0010i\u001a\u0002032\u0006\u0010j\u001a\u00020kH\u0016J\u0006\u0010p\u001a\u000203J\u0012\u0010q\u001a\u00020h2\u0008\u0010r\u001a\u0004\u0018\u00010sH\u0016J\u0008\u0010t\u001a\u000203H\u0002J\u0010\u0010u\u001a\u0002032\u0008\u0008\u0002\u0010v\u001a\u00020hJ\u0018\u0010w\u001a\u0002032\u0008\u0008\u0002\u0010v\u001a\u00020hH\u0086@\u00a2\u0006\u0002\u0010xJ\u0008\u0010y\u001a\u000203H\u0002J0\u0010z\u001a\u0002032\u0006\u0010{\u001a\u00020|2\u0006\u0010}\u001a\u00020~2\u0010\u0008\u0002\u0010f\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u007fH\u0000\u00a2\u0006\u0003\u0008\u0080\u0001J\t\u0010\u0081\u0001\u001a\u000203H\u0014J\u001b\u0010\u0082\u0001\u001a\u0002032\u0008\u0010\u0083\u0001\u001a\u00030\u0084\u00012\u0008\u0010\u0085\u0001\u001a\u00030\u0086\u0001J\u0007\u0010\u0087\u0001\u001a\u000203J\u0010\u0010\u008a\u0001\u001a\u000203H\u0082@\u00a2\u0006\u0003\u0010\u008b\u0001J\u0010\u0010\u008c\u0001\u001a\u000203H\u0082@\u00a2\u0006\u0003\u0010\u008b\u0001J\u0013\u0010\u008d\u0001\u001a\u0002032\u0008\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u0016J\u0011\u0010z\u001a\u0002032\u0007\u0010\u0090\u0001\u001a\u00020hH\u0002J\t\u0010\u0091\u0001\u001a\u000203H\u0002J\t\u0010\u0092\u0001\u001a\u000203H\u0002J\t\u0010\u0093\u0001\u001a\u000203H\u0002J\u0007\u0010\u0094\u0001\u001a\u000203J\t\u0010\u0095\u0001\u001a\u000203H\u0002J\t\u0010\u0096\u0001\u001a\u000203H\u0002J\u0010\u0010\u0097\u0001\u001a\u0002032\u0007\u0010\u0098\u0001\u001a\u00020hJc\u0010\u0099\u0001\u001a\u0002032\u000c\u0008\u0002\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u009b\u00012\u000c\u0008\u0002\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009b\u00012\u000c\u0008\u0002\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009b\u00012\n\u0008\u0002\u0010\u009e\u0001\u001a\u00030\u009b\u00012\u0011\u0008\u0002\u0010\u009f\u0001\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u007f2\u0011\u0008\u0002\u0010\u00a0\u0001\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u007fJ\u000f\u0010\u00a1\u0001\u001a\u000203H\u0000\u00a2\u0006\u0003\u0008\u00a2\u0001J\u0007\u0010\u00a3\u0001\u001a\u000203J\t\u0010\u00a4\u0001\u001a\u000203H\u0002J\u0013\u0010\u00aa\u0001\u001a\u0002032\u0008\u0010\u00ab\u0001\u001a\u00030\u009b\u0001H\u0016J\u0013\u0010\u00ac\u0001\u001a\u0002032\u0008\u0010\u00ab\u0001\u001a\u00030\u009b\u0001H\u0016J\u0013\u0010\u00ad\u0001\u001a\u0002032\u0008\u0010\u00ab\u0001\u001a\u00030\u009b\u0001H\u0002J\u0013\u0010\u00ae\u0001\u001a\u0002032\u0008\u0010\u00ab\u0001\u001a\u00030\u009b\u0001H\u0016J-\u0010\u00af\u0001\u001a\u0002032\u0008\u0010\u00b0\u0001\u001a\u00030\u009b\u00012\u0018\u0010\u00b1\u0001\u001a\u0013\u0012\u0007\u0012\u0005\u0018\u00010\u009b\u0001\u0012\u0004\u0012\u000203\u0018\u00010gH\u0016J\u0013\u0010\u00b2\u0001\u001a\u0002032\u0008\u0010\u00ab\u0001\u001a\u00030\u009b\u0001H\u0016J\u0013\u0010\u00b3\u0001\u001a\u0002032\u0008\u0010\u00b4\u0001\u001a\u00030\u00b5\u0001H\u0016J\u0007\u0010\u00b6\u0001\u001a\u000203J\u0007\u0010\u00b7\u0001\u001a\u000203J\u000f\u0010\u00b8\u0001\u001a\u000203H\u0000\u00a2\u0006\u0003\u0008\u00b9\u0001J#\u0010\u00bc\u0001\u001a\u0002032\u0008\u0010\u0083\u0001\u001a\u00030\u0084\u00012\u0008\u0010\u0085\u0001\u001a\u00030\u0086\u0001H\u0000\u00a2\u0006\u0003\u0008\u00bd\u0001J\u0014\u0010\u00be\u0001\u001a\u0002032\u0008\u0010\u009c\u0001\u001a\u00030\u00bf\u0001H\u0096\u0001R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0011\u0010\u001a\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010/\u001a\u00020\u0015@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\"\u00107\u001a\n\u0012\u0004\u0012\u000209\u0018\u000108X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u0010\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010@\u001a\u0004\u0018\u00010AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010B\u001a\u00020C8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010ER$\u0010G\u001a\u00020F2\u0006\u0010/\u001a\u00020F8F@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u0011\u0010L\u001a\u0002058F\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010NR\u0010\u0010O\u001a\u0004\u0018\u00010PX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010Q\u001a\u0004\u0018\u00010PX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010l\u001a\u00020m8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008n\u0010oR\u0014\u0010\u0088\u0001\u001a\u0004\u0018\u000105X\u0082\u000e\u00a2\u0006\u0005\n\u0003\u0010\u0089\u0001R\u001f\u0010\u00a5\u0001\u001a\u00020hX\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001\"\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R\u0019\u0010\u00ba\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u009b\u0001\u0018\u00010\u00bb\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00c3\u0001"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;",
        "Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallStateDelegate;",
        "Lcom/superwall/sdk/paywall/view/ActivityEncapsulatable;",
        "Lcom/superwall/sdk/game/GameControllerDelegate;",
        "Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;",
        "context",
        "Landroid/content/Context;",
        "eventCallback",
        "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;",
        "callback",
        "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;",
        "deviceHelper",
        "Lcom/superwall/sdk/network/device/DeviceHelper;",
        "factory",
        "Lcom/superwall/sdk/paywall/view/PaywallView$Factory;",
        "storage",
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "webView",
        "Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;",
        "cache",
        "Lcom/superwall/sdk/paywall/manager/PaywallViewCache;",
        "controller",
        "Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;",
        "sendMessages",
        "redeemer",
        "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
        "<init>",
        "(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lcom/superwall/sdk/network/device/DeviceHelper;Lcom/superwall/sdk/paywall/view/PaywallView$Factory;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;Lcom/superwall/sdk/web/WebPaywallRedeemer;)V",
        "getEventCallback",
        "()Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;",
        "getCallback",
        "()Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;",
        "setCallback",
        "(Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;)V",
        "getDeviceHelper",
        "()Lcom/superwall/sdk/network/device/DeviceHelper;",
        "getFactory",
        "()Lcom/superwall/sdk/paywall/view/PaywallView$Factory;",
        "getStorage",
        "()Lcom/superwall/sdk/storage/LocalStorage;",
        "getController",
        "()Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;",
        "getSendMessages",
        "()Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;",
        "value",
        "getWebView$superwall_release",
        "()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;",
        "scrollBy",
        "",
        "y",
        "",
        "scrollTo",
        "encapsulatingActivity",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "getEncapsulatingActivity",
        "()Ljava/lang/ref/WeakReference;",
        "setEncapsulatingActivity",
        "(Ljava/lang/ref/WeakReference;)V",
        "shimmerView",
        "Lcom/superwall/sdk/paywall/view/PaywallShimmerView;",
        "loadingView",
        "Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;",
        "info",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "getInfo",
        "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;",
        "loadingState",
        "getLoadingState",
        "()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;",
        "setLoadingState",
        "(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V",
        "backgroundColor",
        "getBackgroundColor",
        "()I",
        "stateListener",
        "Lkotlinx/coroutines/Job;",
        "customerInfoListener",
        "stopStateListener",
        "startStateListener",
        "set",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "paywallStatePublisher",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
        "unsavedOccurrence",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
        "set$superwall_release",
        "setupShimmer",
        "setupShimmer$superwall_release",
        "setupLoading",
        "setupLoading$superwall_release",
        "setupWith",
        "present",
        "presenter",
        "presentationStyleOverride",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
        "completion",
        "Lkotlin/Function1;",
        "",
        "updateState",
        "update",
        "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;",
        "state",
        "Lcom/superwall/sdk/paywall/view/PaywallViewState;",
        "getState",
        "()Lcom/superwall/sdk/paywall/view/PaywallViewState;",
        "beforeViewCreated",
        "onInterceptTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "presentationWillBegin",
        "beforeOnDestroy",
        "forceCleanup",
        "destroyed",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resetPresentationPreparations",
        "dismiss",
        "result",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
        "closeReason",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
        "Lkotlin/Function0;",
        "dismiss$superwall_release",
        "onAttachedToWindow",
        "registerPaymentSheetLauncher",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "registryOwner",
        "Landroidx/activity/result/ActivityResultRegistryOwner;",
        "onViewCreated",
        "initialOrientation",
        "Ljava/lang/Integer;",
        "trackOpen",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trackClose",
        "eventDidOccur",
        "paywallWebEvent",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;",
        "presentationIsAnimated",
        "showLoadingView",
        "hideLoadingView",
        "trackShimmerStart",
        "onThemeChanged",
        "showShimmerView",
        "hideShimmerView",
        "showRefreshButtonAfterTimeout",
        "isVisible",
        "showAlert",
        "title",
        "",
        "message",
        "actionTitle",
        "closeActionTitle",
        "action",
        "onClose",
        "loadingStateDidChange",
        "loadingStateDidChange$superwall_release",
        "loadWebView",
        "recreateWebview",
        "isPaymentSheetPresented",
        "isPaymentSheetPresented$superwall_release",
        "()Z",
        "setPaymentSheetPresented$superwall_release",
        "(Z)V",
        "presentPaymentSheet",
        "url",
        "presentBrowserInApp",
        "presentCheckoutBottomSheet",
        "presentBrowserExternal",
        "evaluate",
        "code",
        "resultCallback",
        "openDeepLink",
        "gameControllerEventOccured",
        "event",
        "Lcom/superwall/sdk/game/GameControllerEvent;",
        "prepareToDisplay",
        "cleanup",
        "destroyWebview",
        "destroyWebview$superwall_release",
        "activityResultLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "registerIntent",
        "registerIntent$superwall_release",
        "handle",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;",
        "PaywallController",
        "Companion",
        "Factory",
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
.field private static final Companion:Lcom/superwall/sdk/paywall/view/PaywallView$Companion;

.field private static final gameControllerJson$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/json/Json;",
            ">;"
        }
    .end annotation
.end field

.field private static final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private static final mainScope:Lcom/superwall/sdk/misc/MainScope;


# instance fields
.field private activityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

.field private callback:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

.field private final controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

.field private customerInfoListener:Lkotlinx/coroutines/Job;

.field private final deviceHelper:Lcom/superwall/sdk/network/device/DeviceHelper;

.field private encapsulatingActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final eventCallback:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;

.field private final factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

.field private initialOrientation:Ljava/lang/Integer;

.field private isPaymentSheetPresented:Z

.field private loadingView:Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;

.field private final redeemer:Lcom/superwall/sdk/web/WebPaywallRedeemer;

.field private final sendMessages:Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;

.field private shimmerView:Lcom/superwall/sdk/paywall/view/PaywallShimmerView;

.field private stateListener:Lkotlinx/coroutines/Job;

.field private final storage:Lcom/superwall/sdk/storage/LocalStorage;

.field private webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;


# direct methods
.method public static synthetic $r8$lambda$0oJr80BvHZc8DyiR4kdGPgz4xAo(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->gameControllerJson_delegate$lambda$19$lambda$18(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Bi-HF08Ybo2OEaqL1m9Oxe3bOCA(Lcom/superwall/sdk/paywall/view/PaywallView;)Lcom/superwall/sdk/config/options/PaywallOptions;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->recreateWebview$lambda$14(Lcom/superwall/sdk/paywall/view/PaywallView;)Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C8fUAQALc_a_Fm6o1gDhEJbnmQU(Lcom/superwall/sdk/paywall/view/PaywallView;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->registerIntent$lambda$17(Lcom/superwall/sdk/paywall/view/PaywallView;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GuKKMoWgLA06Pr7bXqv1czAmdRc(Lcom/superwall/sdk/paywall/view/PaywallView;ZZLcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;)Lkotlinx/coroutines/Job;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/view/PaywallView;->dismiss$lambda$5(Lcom/superwall/sdk/paywall/view/PaywallView;ZZLcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oCfqHZVeCcjFz1PzeDQ7udyj0z8()Lkotlinx/serialization/json/Json;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/paywall/view/PaywallView;->gameControllerJson_delegate$lambda$19()Lkotlinx/serialization/json/Json;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$y2fVXLJvcLaKo1PEr5xT5bVQzSE(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView;->dismiss$lambda$7(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->Companion:Lcom/superwall/sdk/paywall/view/PaywallView$Companion;

    .line 140
    new-instance v0, Lcom/superwall/sdk/misc/MainScope;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/misc/MainScope;-><init>(Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    .line 141
    new-instance v0, Lcom/superwall/sdk/misc/IOScope;

    invoke-direct {v0, v1, v2, v1}, Lcom/superwall/sdk/misc/IOScope;-><init>(Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 142
    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->gameControllerJson$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lcom/superwall/sdk/network/device/DeviceHelper;Lcom/superwall/sdk/paywall/view/PaywallView$Factory;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;Lcom/superwall/sdk/web/WebPaywallRedeemer;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webView"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendMessages"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redeemer"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->eventCallback:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;

    .line 106
    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->callback:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    .line 107
    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->deviceHelper:Lcom/superwall/sdk/network/device/DeviceHelper;

    .line 108
    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    .line 109
    iput-object p6, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    .line 111
    iput-object p8, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    .line 112
    iput-object p9, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    .line 113
    iput-object p10, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->sendMessages:Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;

    .line 114
    iput-object p11, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->redeemer:Lcom/superwall/sdk/web/WebPaywallRedeemer;

    .line 163
    iput-object p7, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    .line 248
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->setId(I)V

    .line 249
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->setBackgroundColor(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lcom/superwall/sdk/network/device/DeviceHelper;Lcom/superwall/sdk/paywall/view/PaywallView$Factory;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;Lcom/superwall/sdk/web/WebPaywallRedeemer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p13, p12, 0x2

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p12, p12, 0x4

    if-eqz p12, :cond_1

    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, v0

    goto :goto_0

    :cond_1
    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    :goto_0
    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 103
    invoke-direct/range {p1 .. p12}, Lcom/superwall/sdk/paywall/view/PaywallView;-><init>(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lcom/superwall/sdk/network/device/DeviceHelper;Lcom/superwall/sdk/paywall/view/PaywallView$Factory;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;Lcom/superwall/sdk/web/WebPaywallRedeemer;)V

    return-void
.end method

.method public static final synthetic access$dismiss$dismissView(Lcom/superwall/sdk/paywall/view/PaywallView;ZZLcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/view/PaywallView;->dismiss$dismissView(Lcom/superwall/sdk/paywall/view/PaywallView;ZZLcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCache$p(Lcom/superwall/sdk/paywall/view/PaywallView;)Lcom/superwall/sdk/paywall/manager/PaywallViewCache;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    return-object p0
.end method

.method public static final synthetic access$getGameControllerJson$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 103
    sget-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->gameControllerJson$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getIoScope$cp()Lcom/superwall/sdk/misc/IOScope;
    .locals 1

    .line 103
    sget-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    return-object v0
.end method

.method public static final synthetic access$getMainScope$cp()Lcom/superwall/sdk/misc/MainScope;
    .locals 1

    .line 103
    sget-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    return-object v0
.end method

.method public static final synthetic access$hideLoadingView(Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->hideLoadingView()V

    return-void
.end method

.method public static final synthetic access$hideShimmerView(Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->hideShimmerView()V

    return-void
.end method

.method public static final synthetic access$recreateWebview(Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->recreateWebview()V

    return-void
.end method

.method public static final synthetic access$showLoadingView(Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->showLoadingView()V

    return-void
.end method

.method public static final synthetic access$showShimmerView(Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->showShimmerView()V

    return-void
.end method

.method public static final synthetic access$trackClose(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->trackClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$trackOpen(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->trackOpen(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic beforeOnDestroy$default(Lcom/superwall/sdk/paywall/view/PaywallView;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 413
    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->beforeOnDestroy(Z)V

    return-void
.end method

.method public static synthetic destroyed$default(Lcom/superwall/sdk/paywall/view/PaywallView;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 423
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView;->destroyed(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final dismiss(Z)V
    .locals 0

    .line 675
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getEncapsulatingActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private static final dismiss$dismissView(Lcom/superwall/sdk/paywall/view/PaywallView;ZZLcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "ZZ",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;

    invoke-direct {v0, p4}, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 490
    iget v2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-boolean p0, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->Z$1:Z

    iget-boolean p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->Z$0:Z

    iget-object p2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$2:Ljava/lang/Object;

    iget-object p3, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$1:Ljava/lang/Object;

    check-cast p3, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p4

    goto/16 :goto_6

    :cond_3
    iget-boolean p0, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->Z$1:Z

    iget-boolean p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->Z$0:Z

    iget-object p2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallDecline;

    iget-object p3, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$1:Ljava/lang/Object;

    check-cast p3, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallView;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p4

    goto/16 :goto_3

    :cond_4
    iget-boolean p2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->Z$1:Z

    iget-boolean p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->Z$0:Z

    iget-object p0, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$1:Ljava/lang/Object;

    move-object p3, p0

    check-cast p3, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    iget-object p0, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 492
    iget-object p4, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    invoke-interface {p4}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->getMessageHandler()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    move-result-object p4

    iput-object p0, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->Z$0:Z

    iput-boolean p2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->Z$1:Z

    iput v7, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->label:I

    invoke-virtual {p4, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->getState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_6

    goto/16 :goto_8

    .line 490
    :cond_6
    :goto_1
    check-cast p4, Ljava/util/Map;

    .line 493
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    new-instance v8, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPaywallState;

    invoke-direct {v8, p4}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPaywallState;-><init>(Ljava/util/Map;)V

    check-cast v8, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v2, v8}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 496
    new-instance p2, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallDecline;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallDecline;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    .line 498
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getPresentedByEventWithName()Ljava/lang/String;

    move-result-object p1

    .line 500
    sget-object p4, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->PaywallDecline:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    invoke-virtual {p4}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    .line 502
    sget-object v2, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->TransactionAbandon:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    invoke-virtual {v2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 504
    sget-object v8, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->TransactionFail:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    invoke-virtual {v8}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p4, :cond_e

    .line 511
    :try_start_1
    iget-object p4, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    .line 512
    move-object v8, p2

    check-cast v8, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    .line 511
    iput-object p0, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$2:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->Z$0:Z

    iput-boolean p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->Z$1:Z

    iput v5, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->label:I

    invoke-interface {p4, v8, v7, v0}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->internallyGetPresentationResult(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p4, v1, :cond_7

    goto/16 :goto_8

    :cond_7
    move v9, v2

    move-object v2, p0

    move p0, p1

    move p1, v9

    .line 515
    :goto_2
    :try_start_2
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1181
    new-instance v5, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v5, p4}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v5, Lcom/superwall/sdk/misc/Either;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception p4

    move v9, v2

    move-object v2, p0

    move p0, p1

    move p1, v9

    .line 1183
    :goto_3
    invoke-static {p4}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1184
    sget-object v5, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v5}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1185
    sget-object v5, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v5}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v5

    invoke-static {v5, p4}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1188
    :cond_8
    new-instance v5, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v5, p4}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v5, Lcom/superwall/sdk/misc/Either;

    .line 1191
    :goto_4
    instance-of p4, v5, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz p4, :cond_9

    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v5, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v5}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_5

    .line 1192
    :cond_9
    instance-of p4, v5, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz p4, :cond_d

    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v5, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v5}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p4

    invoke-static {p4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 517
    :goto_5
    iget-object v5, v2, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    check-cast p2, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    iput-object v2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$2:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->Z$0:Z

    iput-boolean p0, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->Z$1:Z

    iput v4, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->label:I

    invoke-interface {v5, p2, v0}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->track-gIAlu-s(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    goto :goto_8

    :cond_a
    move-object v9, p4

    move-object p4, p2

    move-object p2, v9

    :goto_6
    invoke-static {p4}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 518
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    move-object p2, v6

    :cond_b
    check-cast p2, Lkotlin/Unit;

    if-eqz p2, :cond_c

    .line 520
    instance-of p2, p2, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$Paywall;

    if-eqz p2, :cond_c

    if-nez p1, :cond_c

    if-nez p0, :cond_c

    .line 527
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_c
    move-object p0, v2

    goto :goto_7

    .line 1190
    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 532
    :cond_e
    :goto_7
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->callback:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    if-eqz p1, :cond_10

    .line 533
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    sget-object p4, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CallbackInvoked;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CallbackInvoked;

    check-cast p4, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {p2, p4}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 534
    iput-object p0, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$dismissView$1;->label:I

    invoke-virtual {p1, p0, p3, v7, v0}, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;->onFinished(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_f

    :goto_8
    return-object v1

    .line 490
    :cond_f
    :goto_9
    check-cast p4, Lkotlin/Unit;

    if-nez p4, :cond_11

    :cond_10
    const/4 p1, 0x0

    .line 540
    invoke-direct {p0, p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->dismiss(Z)V

    .line 542
    :cond_11
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->stopStateListener()V

    .line 543
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final dismiss$lambda$5(Lcom/superwall/sdk/paywall/view/PaywallView;ZZLcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;)Lkotlinx/coroutines/Job;
    .locals 8

    .line 546
    sget-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$finalDismiss$1$1;

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/superwall/sdk/paywall/view/PaywallView$dismiss$finalDismiss$1$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;ZZLcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method private static final dismiss$lambda$7(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;)Lkotlin/Unit;
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$UpdateSurveyState;

    invoke-direct {v0, p2}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$UpdateSurveyState;-><init>(Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;)V

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 574
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 575
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic dismiss$superwall_release$default(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 474
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/view/PaywallView;->dismiss$superwall_release(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final gameControllerJson_delegate$lambda$19()Lkotlinx/serialization/json/Json;
    .locals 3

    .line 143
    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda4;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    return-object v0
.end method

.method private static final gameControllerJson_delegate$lambda$19$lambda$18(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setEncodeDefaults(Z)V

    .line 145
    sget-object v0, Lkotlinx/serialization/json/JsonNamingStrategy;->Builtins:Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->getSnakeCase()Lkotlinx/serialization/json/JsonNamingStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setNamingStrategy(Lkotlinx/serialization/json/JsonNamingStrategy;)V

    .line 146
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final hideLoadingView()V
    .locals 8

    .line 692
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->loadingView:Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;

    if-eqz v0, :cond_0

    .line 693
    sget-object v1, Lcom/superwall/sdk/paywall/view/PaywallView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallView$hideLoadingView$1$1;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/superwall/sdk/paywall/view/PaywallView$hideLoadingView$1$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final hideShimmerView()V
    .locals 10

    .line 728
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->shimmerView:Lcom/superwall/sdk/paywall/view/PaywallShimmerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 729
    sget-object v2, Lcom/superwall/sdk/paywall/view/PaywallView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/paywall/view/PaywallView$hideShimmerView$1$1;

    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallView$hideShimmerView$1$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallShimmerView;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getShimmerLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getEndAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getShimmerLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getStartAt()Ljava/util/Date;

    move-result-object v0

    .line 739
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getLastOpen()Ljava/util/Date;

    move-result-object v2

    .line 740
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 743
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v3, v4, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, v0}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    .line 748
    :goto_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    sget-object v4, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ShimmerEnded;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ShimmerEnded;

    check-cast v4, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v0, v4}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 749
    sget-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$hideShimmerView$2;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/superwall/sdk/paywall/view/PaywallView$hideShimmerView$2;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;DLkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final presentCheckoutBottomSheet(Ljava/lang/String;)V
    .locals 8

    .line 981
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 982
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 983
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 984
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Opening checkout URL in Chrome Custom Tab: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 981
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 988
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->activityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 989
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 990
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 991
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x18

    const/4 v7, 0x0

    .line 989
    const-string v3, "Activity result launcher not initialized - cannot present Chrome Custom Tab"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 994
    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->isPaymentSheetPresented:Z

    return-void
.end method

.method private final presentationWillBegin()V
    .locals 2

    .line 383
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPresentationWillPrepare()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPresentationDidFinishPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    sget-object v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$PresentationWillBegin;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$PresentationWillBegin;

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 388
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    .line 389
    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->delegate()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object v0

    .line 390
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->willPresentPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    .line 404
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->scrollTo(II)V

    .line 405
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object v0

    instance-of v0, v0, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->getMessageHandler()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TemplateParamsAndUserAttributes;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TemplateParamsAndUserAttributes;

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handle(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;)V

    return-void

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object v0

    instance-of v0, v0, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$LoadingURL;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object v0

    instance-of v0, v0, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Unknown;

    if-eqz v0, :cond_3

    .line 408
    :cond_2
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->trackShimmerStart()V

    .line 409
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    sget-object v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ShimmerStarted;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ShimmerStarted;

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final recreateWebview()V
    .locals 10

    .line 918
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    .line 919
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->detach(Landroid/view/ViewGroup;)V

    .line 920
    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->destroyView()V

    .line 922
    new-instance v2, Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->getMessageHandler()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    move-result-object v4

    .line 921
    new-instance v6, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    const/16 v8, 0x14

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 922
    invoke-direct/range {v2 .. v9}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;-><init>(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    .line 921
    iput-object v2, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    .line 925
    invoke-interface {v2, v1}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->attach(Landroid/view/ViewGroup;)V

    .line 926
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    move-object v1, p0

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->setDelegate(Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;)V

    .line 927
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->getMessageHandler()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PaywallOpen;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PaywallOpen;

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handle(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;)V

    .line 928
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->loadWebView()V

    return-void
.end method

.method private static final recreateWebview$lambda$14(Lcom/superwall/sdk/paywall/view/PaywallView;)Lcom/superwall/sdk/config/options/PaywallOptions;
    .locals 0

    .line 923
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    invoke-interface {p0}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object p0

    return-object p0
.end method

.method private static final registerIntent$lambda$17(Lcom/superwall/sdk/paywall/view/PaywallView;I)V
    .locals 8

    .line 1159
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 1160
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 1161
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 1162
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Chrome Custom Tab closed with status code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1159
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 1164
    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->isPaymentSheetPresented:Z

    .line 1165
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetBrowserPresented;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetBrowserPresented;-><init>(Z)V

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    return-void
.end method

.method private final resetPresentationPreparations()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    sget-object v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ResetPresentationPreparations;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ResetPresentationPreparations;

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    return-void
.end method

.method private final setLoadingState(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;

    invoke-direct {v1, p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;-><init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    return-void
.end method

.method public static synthetic showAlert$default(Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 772
    const-string p4, "Done"

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    .line 768
    :cond_5
    invoke-virtual/range {p0 .. p6}, Lcom/superwall/sdk/paywall/view/PaywallView;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final showLoadingView()V
    .locals 8

    .line 680
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getTransactionBackgroundView()Lcom/superwall/sdk/config/options/PaywallOptions$TransactionBackgroundView;

    move-result-object v0

    .line 681
    sget-object v1, Lcom/superwall/sdk/config/options/PaywallOptions$TransactionBackgroundView;->SPINNER:Lcom/superwall/sdk/config/options/PaywallOptions$TransactionBackgroundView;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->loadingView:Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;

    if-eqz v0, :cond_1

    .line 685
    sget-object v1, Lcom/superwall/sdk/paywall/view/PaywallView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallView$showLoadingView$1$1;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/superwall/sdk/paywall/view/PaywallView$showLoadingView$1$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method

.method private final showShimmerView()V
    .locals 8

    .line 720
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->shimmerView:Lcom/superwall/sdk/paywall/view/PaywallShimmerView;

    if-eqz v0, :cond_0

    .line 721
    sget-object v1, Lcom/superwall/sdk/paywall/view/PaywallView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallView$showShimmerView$1$1;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/superwall/sdk/paywall/view/PaywallView$showShimmerView$1$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallShimmerView;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final startStateListener()V
    .locals 14

    .line 231
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->stopStateListener()V

    .line 233
    sget-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/paywall/view/PaywallView$startStateListener$1;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/superwall/sdk/paywall/view/PaywallView$startStateListener$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 232
    iput-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->stateListener:Lkotlinx/coroutines/Job;

    .line 240
    move-object v8, v0

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$startStateListener$2;

    invoke-direct {v0, p0, v7}, Lcom/superwall/sdk/paywall/view/PaywallView$startStateListener$2;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v11, v0

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 239
    iput-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->customerInfoListener:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final stopStateListener()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->stateListener:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 224
    :cond_0
    iput-object v2, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->stateListener:Lkotlinx/coroutines/Job;

    .line 225
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->customerInfoListener:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 226
    :cond_1
    iput-object v2, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->customerInfoListener:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final trackClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/paywall/view/PaywallView$trackClose$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackClose$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackClose$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackClose$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackClose$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackClose$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/paywall/view/PaywallView$trackClose$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackClose$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 653
    iget v2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackClose$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 655
    new-instance p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallClose;

    .line 656
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v2

    .line 657
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getSurveyPresentationResult()Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    move-result-object v4

    .line 655
    invoke-direct {p1, v2, v4}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallClose;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;)V

    .line 659
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    check-cast p1, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    iput v3, v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackClose$1;->label:I

    invoke-interface {v2, p1, v0}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->track-gIAlu-s(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final trackOpen(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/paywall/view/PaywallView$trackOpen$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackOpen$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackOpen$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackOpen$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackOpen$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackOpen$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/paywall/view/PaywallView$trackOpen$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackOpen$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 639
    iget v2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackOpen$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 640
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    sget-object v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLastOpen;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLastOpen;

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {p1, v2}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 641
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    invoke-virtual {p1}, Lcom/superwall/sdk/storage/LocalStorage;->trackPaywallOpen()V

    .line 642
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    invoke-interface {p1}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->getMessageHandler()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    move-result-object p1

    sget-object v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PaywallOpen;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PaywallOpen;

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    invoke-virtual {p1, v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handle(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;)V

    .line 644
    new-instance p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallOpen;

    .line 645
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v2

    .line 646
    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    invoke-interface {v4}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->getCurrentUserAttributes()Ljava/util/Map;

    move-result-object v4

    .line 647
    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    invoke-interface {v5}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->demandTier()Ljava/lang/String;

    move-result-object v5

    .line 648
    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    invoke-interface {v6}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->demandScore()Ljava/lang/Integer;

    move-result-object v6

    .line 644
    invoke-direct {p1, v2, v4, v5, v6}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallOpen;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    check-cast p1, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    iput v3, v0, Lcom/superwall/sdk/paywall/view/PaywallView$trackOpen$1;->label:I

    invoke-interface {v2, p1, v0}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->track-gIAlu-s(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final trackShimmerStart()V
    .locals 8

    .line 702
    sget-object v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad$State;->Started:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad$State;

    .line 703
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 705
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->deviceHelper:Lcom/superwall/sdk/network/device/DeviceHelper;

    invoke-virtual {v3}, Lcom/superwall/sdk/network/device/DeviceHelper;->getDeviceTier()Lcom/superwall/sdk/analytics/Tier;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/superwall/sdk/config/options/PaywallOptionsKt;->computedShouldPreload(Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/analytics/Tier;)Z

    move-result v6

    .line 707
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getPresentation()Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->getDelay()J

    move-result-wide v3

    long-to-double v4, v3

    .line 701
    new-instance v0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad$State;Ljava/lang/String;Ljava/lang/Double;DZ)V

    .line 710
    sget-object v1, Lcom/superwall/sdk/paywall/view/PaywallView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallView$trackShimmerStart$1;

    invoke-direct {v1, p0, v0, v3}, Lcom/superwall/sdk/paywall/view/PaywallView$trackShimmerStart$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final beforeOnDestroy(Z)V
    .locals 1

    .line 414
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isBrowserViewPresented()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->updatePaywallInfo(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    .line 418
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    .line 419
    invoke-interface {p1}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->delegate()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object p1

    .line 420
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->willDismissPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    return-void
.end method

.method public final beforeViewCreated()V
    .locals 1

    .line 373
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isBrowserViewPresented()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->shimmerView:Lcom/superwall/sdk/paywall/view/PaywallShimmerView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/PaywallShimmerView;->checkForOrientationChanges()V

    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->presentationWillBegin()V

    return-void
.end method

.method public final cleanup()V
    .locals 3

    .line 1076
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getEncapsulatingActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 1077
    iput-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->callback:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    .line 1078
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    invoke-interface {v1, v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->setOnScrollChangeListener(Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;)V

    .line 1080
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    invoke-interface {v1, v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->setDelegate(Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;)V

    .line 1082
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->activityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 1083
    :cond_1
    iput-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->activityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 1084
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1085
    :cond_3
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->removeAllViews()V

    .line 1086
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->detachAllViewsFromParent()V

    .line 1088
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->stopStateListener()V

    return-void
.end method

.method public final destroyWebview$superwall_release()V
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->destroyView()V

    return-void
.end method

.method public final destroyed(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 423
    iget v2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 424
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isBrowserViewPresented()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    .line 425
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 429
    :cond_4
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->stopStateListener()V

    .line 431
    sget-object p1, Lcom/superwall/sdk/paywall/view/PaywallView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v6, p1

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$2;

    invoke-direct {p1, p0, v5}, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$2;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v9, p1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 437
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object p1

    instance-of p1, p1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$LoadingPurchase;

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object p1

    instance-of p1, p1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$ManualLoading;

    if-eqz p1, :cond_6

    .line 439
    :cond_5
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    new-instance p2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;

    sget-object v2, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;->INSTANCE:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;

    check-cast v2, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    invoke-direct {p2, v2}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;-><init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V

    check-cast p2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 442
    :cond_6
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    .line 443
    invoke-interface {p1}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->delegate()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object p1

    .line 444
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->didDismissPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    .line 446
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywallResult()Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    move-result-object p1

    if-nez p1, :cond_7

    new-instance p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;

    invoke-direct {p1}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;-><init>()V

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    .line 448
    :cond_7
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywallStatePublisher()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p2

    if-eqz p2, :cond_9

    new-instance v2, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Dismissed;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v6

    invoke-direct {v2, v6, p1}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Dismissed;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;)V

    iput-object p0, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->label:I

    invoke-interface {p2, v2, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    goto :goto_3

    :cond_8
    move-object v2, p0

    :goto_1
    move-object p2, p1

    move-object p1, v2

    goto :goto_2

    :cond_9
    move-object p2, p1

    move-object p1, p0

    .line 450
    :goto_2
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getCallbackInvoked()Z

    move-result v2

    if-nez v2, :cond_b

    .line 451
    iget-object v2, p1, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    sget-object v4, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CallbackInvoked;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CallbackInvoked;

    check-cast v4, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v2, v4}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 452
    iget-object v2, p1, Lcom/superwall/sdk/paywall/view/PaywallView;->callback:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    if-eqz v2, :cond_b

    iput-object p1, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/paywall/view/PaywallView$destroyed$1;->label:I

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3, v0}, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;->onFinished(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    :goto_3
    return-object v1

    :cond_a
    :goto_4
    check-cast p2, Lkotlin/Unit;

    .line 459
    :cond_b
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/models/paywall/Paywall;->getCloseReason()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;->getStateShouldComplete()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 460
    iget-object p2, p1, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    sget-object v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ClearStatePublisher;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ClearStatePublisher;

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {p2, v0}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 463
    :cond_c
    sget-object p2, Lcom/superwall/sdk/game/GameControllerManager;->Companion:Lcom/superwall/sdk/game/GameControllerManager$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/game/GameControllerManager$Companion;->getShared()Lcom/superwall/sdk/game/GameControllerManager;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/game/GameControllerDelegate;

    invoke-virtual {p2, v0}, Lcom/superwall/sdk/game/GameControllerManager;->clearDelegate(Lcom/superwall/sdk/game/GameControllerDelegate;)V

    .line 464
    invoke-direct {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->resetPresentationPreparations()V

    .line 466
    iget-object p2, p1, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    sget-object v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CleanupAfterDestroy;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$CleanupAfterDestroy;

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {p2, v0}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 467
    iget-object p1, p1, Lcom/superwall/sdk/paywall/view/PaywallView;->cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v5}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->setActivePaywallVcKey(Ljava/lang/String;)V

    .line 468
    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final dismiss$superwall_release(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeReason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    .line 480
    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;

    move-object/from16 v4, p3

    invoke-direct {v1, p1, p2, v4}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    .line 479
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 487
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywallResult()Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    move-result-object v0

    instance-of v0, v0, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;

    .line 488
    instance-of v1, p2, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;

    .line 545
    new-instance v4, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda2;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;ZZLcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;)V

    .line 551
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->isPaymentSheetPresented:Z

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 552
    invoke-static {p0, v6, v1, v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->beforeOnDestroy$default(Lcom/superwall/sdk/paywall/view/PaywallView;ZILjava/lang/Object;)V

    .line 553
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->cleanup()V

    .line 554
    iput-boolean v6, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->isPaymentSheetPresented:Z

    .line 557
    :cond_0
    sget-object v0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->INSTANCE:Lcom/superwall/sdk/paywall/view/survey/SurveyManager;

    .line 558
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/superwall/sdk/models/paywall/Paywall;->getSurveys()Ljava/util/List;

    move-result-object v7

    .line 562
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getEncapsulatingActivity()Ljava/lang/ref/WeakReference;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move v9, v6

    .line 567
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object v6

    .line 568
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getRequest()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isDebuggerLaunched()Z

    move-result v10

    if-ne v10, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v9

    :goto_0
    move-object v9, v8

    .line 569
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v8

    move-object v10, v9

    .line 570
    iget-object v9, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    .line 571
    iget-object v11, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    check-cast v11, Lcom/superwall/sdk/dependencies/TriggerFactory;

    move-object v12, v10

    move-object v10, v11

    .line 557
    new-instance v11, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda3;

    invoke-direct {v11, p0, v4}, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda3;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function0;)V

    move-object v2, v7

    move v7, v1

    move-object v1, v2

    move-object v5, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v12

    invoke-virtual/range {v0 .. v11}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->presentSurveyIfAvailable(Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Landroid/app/Activity;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZLcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/TriggerFactory;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 562
    :cond_3
    :goto_1
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 563
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

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

    .line 1023
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    invoke-interface {v0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->evaluate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;)V
    .locals 7

    const-string v0, "paywallWebEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    sget-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$eventDidOccur$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/superwall/sdk/paywall/view/PaywallView$eventDidOccur$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public gameControllerEventOccured(Lcom/superwall/sdk/game/GameControllerEvent;)V
    .locals 11

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1051
    :try_start_0
    sget-object v1, Lcom/superwall/sdk/paywall/view/PaywallView;->Companion:Lcom/superwall/sdk/paywall/view/PaywallView$Companion;

    invoke-static {v1}, Lcom/superwall/sdk/paywall/view/PaywallView$Companion;->access$getGameControllerJson(Lcom/superwall/sdk/paywall/view/PaywallView$Companion;)Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 1179
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v2, Lcom/superwall/sdk/game/GameControllerEvent;->Companion:Lcom/superwall/sdk/game/GameControllerEvent$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/game/GameControllerEvent$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v2, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p1, v0

    .line 1055
    :goto_0
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.paywall.accept(["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "])"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->evaluate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 1056
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 1057
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 1058
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Game controller event occurred: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1056
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final getBackgroundColor()I
    .locals 2

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getDarkBackgroundColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getBackgroundColor()I

    move-result v0

    return v0

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public final getCallback()Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->callback:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    return-object v0
.end method

.method public final getController()Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    return-object v0
.end method

.method public final getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->deviceHelper:Lcom/superwall/sdk/network/device/DeviceHelper;

    return-object v0
.end method

.method public getEncapsulatingActivity()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->encapsulatingActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getEventCallback()Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->eventCallback:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;

    return-object v0
.end method

.method public final getFactory()Lcom/superwall/sdk/paywall/view/PaywallView$Factory;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    return-object v0
.end method

.method public getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object v0

    return-object v0
.end method

.method public final getSendMessages()Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->sendMessages:Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;

    return-object v0
.end method

.method public getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    return-object v0
.end method

.method public final getStorage()Lcom/superwall/sdk/storage/LocalStorage;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    return-object v0
.end method

.method public final getWebView$superwall_release()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    return-object v0
.end method

.method public handle(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->sendMessages:Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;

    invoke-interface {v0, p1}, Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;->handle(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;)V

    return-void
.end method

.method public final isPaymentSheetPresented$superwall_release()Z
    .locals 1

    .line 934
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->isPaymentSheetPresented:Z

    return v0
.end method

.method public final loadWebView()V
    .locals 7

    .line 840
    sget-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final loadingStateDidChange$superwall_release()V
    .locals 7

    .line 807
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isPresented()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    sget-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 583
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 589
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->startStateListener()V

    .line 591
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object v0

    instance-of v0, v0, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Unknown;

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->loadWebView()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 380
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getInterceptTouchEvents()Z

    move-result p1

    return p1
.end method

.method public final onThemeChanged()V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->getMessageHandler()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TemplateParamsAndUserAttributes;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TemplateParamsAndUserAttributes;

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handle(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;)V

    return-void
.end method

.method public final onViewCreated()V
    .locals 14

    .line 606
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getViewCreatedCompletion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    sget-object v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ClearViewCreatedCompletion;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ClearViewCreatedCompletion;

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 609
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPresentationDidFinishPrepare()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 612
    :cond_1
    sget-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/paywall/view/PaywallView$onViewCreated$1;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/superwall/sdk/paywall/view/PaywallView$onViewCreated$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 617
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getUnsavedOccurrence()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 618
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/superwall/sdk/storage/LocalStorage;->getCoreDataManager()Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v1, v7, v3, v7}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->save$default(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 619
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    sget-object v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ClearUnsavedOccurrence;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$ClearUnsavedOccurrence;

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 622
    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    sget-object v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentedAndFinished;->INSTANCE:Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentedAndFinished;

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 623
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    .line 624
    invoke-interface {v1}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->delegate()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object v1

    .line 625
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->didPresentPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    .line 626
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->loadingStateDidChange$superwall_release()V

    .line 627
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    invoke-interface {v1}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->getMessageHandler()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->flushPendingMessages()V

    .line 628
    move-object v8, v0

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$onViewCreated$3;

    invoke-direct {v0, p0, v7}, Lcom/superwall/sdk/paywall/view/PaywallView$onViewCreated$3;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v11, v0

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 631
    sget-object v0, Lcom/superwall/sdk/game/GameControllerManager;->Companion:Lcom/superwall/sdk/game/GameControllerManager$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/game/GameControllerManager$Companion;->getShared()Lcom/superwall/sdk/game/GameControllerManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/superwall/sdk/game/GameControllerDelegate;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/game/GameControllerManager;->setDelegate(Lcom/superwall/sdk/game/GameControllerDelegate;)V

    .line 633
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 634
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->initialOrientation:Ljava/lang/Integer;

    return-void
.end method

.method public openDeepLink(Ljava/lang/String;)V
    .locals 11

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1178
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1028
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedDeepLink;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedDeepLink;-><init>(Landroid/net/Uri;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    invoke-virtual {p0, v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;)V

    .line 1029
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getEncapsulatingActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1031
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-nez v1, :cond_1

    const/high16 v0, 0x10000000

    .line 1033
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    if-eqz v1, :cond_2

    .line 1037
    :try_start_0
    check-cast v1, Landroid/content/Context;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1039
    :catch_0
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 1040
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 1041
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No activity found to handle deep link: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1039
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final prepareToDisplay()V
    .locals 2

    .line 1070
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1071
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getCacheKey$superwall_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->setActivePaywallVcKey(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final present(Landroid/app/Activity;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
            "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "presenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallStatePublisher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->attach(Landroid/view/ViewGroup;)V

    .line 303
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->acquireLoadingView()Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->setupLoading$superwall_release(Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->factory:Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getTimeoutAfter-FghU774()Lkotlin/time/Duration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    sget-object v1, Lcom/superwall/sdk/paywall/view/PaywallView;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;

    const/4 v3, 0x0

    invoke-direct {v1, v0, p0, v3}, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;-><init>(Lkotlin/time/Duration;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->acquireShimmerView()Lcom/superwall/sdk/paywall/view/PaywallShimmerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->setupShimmer$superwall_release(Lcom/superwall/sdk/paywall/view/PaywallShimmerView;)V

    .line 348
    :cond_2
    invoke-virtual {p0, p2, p5, p3}, Lcom/superwall/sdk/paywall/view/PaywallView;->set$superwall_release(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;)V

    .line 349
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    .line 350
    new-instance p3, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentationConfig;

    invoke-direct {p3, p4, p6}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentationConfig;-><init>(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    .line 349
    invoke-virtual {p2, p3}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 356
    sget-object p2, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->Companion:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;

    .line 357
    check-cast p1, Landroid/content/Context;

    .line 359
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getCacheKey$superwall_release()Ljava/lang/String;

    move-result-object p3

    .line 360
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p4

    invoke-virtual {p4}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPresentationStyle()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    move-result-object p4

    .line 356
    invoke-virtual {p2, p1, p0, p3, p4}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;->startWithView(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;)V

    .line 362
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->startStateListener()V

    return-void
.end method

.method public presentBrowserExternal(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "url"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1001
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "toString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1177
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1001
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 1002
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1003
    invoke-virtual/range {p0 .. p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1011
    :catchall_0
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 1012
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 1013
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v8, 0x18

    const/4 v9, 0x0

    .line 1011
    const-string v5, "Exception thrown for \"Open External URL\" click behavior."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_0

    .line 1005
    :catch_0
    sget-object v10, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 1006
    sget-object v11, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 1007
    sget-object v12, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v16, 0x18

    const/16 v17, 0x0

    .line 1005
    const-string v13, "Invalid URL provided for \"Open External URL\" click behavior."

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public presentBrowserInApp(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "url"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 961
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    const-string v2, "build(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    iget-object v2, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 963
    invoke-virtual/range {p0 .. p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "toString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1176
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 963
    invoke-virtual {v0, v2, v1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    .line 964
    :try_start_1
    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    new-instance v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetBrowserPresented;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetBrowserPresented;-><init>(Z)V

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-object/from16 v0, p0

    .line 972
    :catchall_1
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 973
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 974
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v9, 0x18

    const/4 v10, 0x0

    .line 972
    const-string v6, "Exception thrown for \"Open In-App URL\" click behavior."

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-object/from16 v0, p0

    .line 966
    :catch_1
    sget-object v11, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 967
    sget-object v12, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 968
    sget-object v13, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v17, 0x18

    const/16 v18, 0x0

    .line 966
    const-string v14, "Invalid URL provided for \"Open In-App URL\" click behavior."

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public presentPaymentSheet(Ljava/lang/String;)V
    .locals 8

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 938
    :try_start_0
    iput-boolean v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->isPaymentSheetPresented:Z

    .line 939
    invoke-direct {p0, p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->presentCheckoutBottomSheet(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p1

    .line 948
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 949
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 950
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 951
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 949
    const-string v3, "Exception thrown for \"Open In-App URL\" click behavior."

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 941
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 942
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 943
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 945
    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 941
    const-string v3, "Invalid URL provided for \"Open In-App URL\" click behavior."

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final registerIntent$superwall_release(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/ActivityResultRegistryOwner;)V
    .locals 3

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registryOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    invoke-interface {p2}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object p2

    .line 1105
    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$registerIntent$1;

    invoke-direct {v0, p0}, Lcom/superwall/sdk/paywall/view/PaywallView$registerIntent$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 1102
    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    const-string v2, "checkoutSheet"

    invoke-virtual {p2, v2, p1, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    .line 1101
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->activityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public final registerPaymentSheetLauncher(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/ActivityResultRegistryOwner;)V
    .locals 1

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registryOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView;->registerIntent$superwall_release(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/ActivityResultRegistryOwner;)V

    return-void
.end method

.method public final scrollBy(I)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->scrollBy(II)V

    return-void
.end method

.method public final scrollTo(I)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->scrollTo(II)V

    return-void
.end method

.method public final set$superwall_release(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
            ")V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallStatePublisher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    .line 260
    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetRequest;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    .line 259
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    return-void
.end method

.method public final setCallback(Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->callback:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    return-void
.end method

.method public setEncapsulatingActivity(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->encapsulatingActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setPaymentSheetPresented$superwall_release(Z)V
    .locals 0

    .line 934
    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->isPaymentSheetPresented:Z

    return-void
.end method

.method public final setupLoading$superwall_release(Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;)V
    .locals 1

    const-string v0, "loadingView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->loadingView:Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;

    .line 278
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 279
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/superwall/sdk/paywall/view/LoadingViewKt;->setupFor(Landroid/view/View;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V

    :cond_0
    return-void
.end method

.method public final setupShimmer$superwall_release(Lcom/superwall/sdk/paywall/view/PaywallShimmerView;)V
    .locals 1

    const-string v0, "shimmerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->shimmerView:Lcom/superwall/sdk/paywall/view/PaywallShimmerView;

    .line 270
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 272
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/superwall/sdk/paywall/view/PaywallShimmerViewKt;->setupFor(Landroid/view/View;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V

    :cond_0
    return-void
.end method

.method public final setupWith(Lcom/superwall/sdk/paywall/view/PaywallShimmerView;Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;)V
    .locals 2

    const-string v0, "shimmerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->webView:Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->attach(Landroid/view/ViewGroup;)V

    .line 289
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->shimmerView:Lcom/superwall/sdk/paywall/view/PaywallShimmerView;

    .line 290
    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->loadingView:Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;

    return-void
.end method

.method public final showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "closeActionTitle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getEncapsulatingActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    sget-object v0, Lcom/superwall/sdk/paywall/view/PaywallView;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;

    const/4 v10, 0x0

    move-object v7, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object p4, v1

    check-cast p4, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v1, 0x0

    move/from16 p5, p1

    move-object/from16 p6, p2

    move-object p2, p3

    move-object p1, v0

    move-object p3, v1

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method

.method public final showRefreshButtonAfterTimeout(Z)V
    .locals 0

    return-void
.end method

.method public updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V
    .locals 1

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView;->controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    return-void
.end method
