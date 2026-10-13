.class final Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DependencyContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/dependencies/DependencyContainer;->makePaywallView(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.dependencies.DependencyContainer$makePaywallView$paywallView$1"
    f = "DependencyContainer.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

.field final synthetic $controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

.field final synthetic $delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

.field final synthetic $messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;


# direct methods
.method public static synthetic $r8$lambda$vjk3s15-s4oVlhsGGCHrAjNCLCE(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/config/options/PaywallOptions;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->invokeSuspend$lambda$0(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/dependencies/DependencyContainer;",
            "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;",
            "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;",
            "Lcom/superwall/sdk/paywall/manager/PaywallViewCache;",
            "Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    iput-object p2, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    iput-object p3, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    iput-object p4, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    iput-object p5, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/config/options/PaywallOptions;
    .locals 0

    .line 845
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;

    iget-object v1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    iget-object v2, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    iget-object v3, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    iget-object v4, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    iget-object v5, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 839
    iget v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 841
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/SWWebView;

    .line 842
    iget-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 843
    iget-object v3, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    .line 840
    iget-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    new-instance v5, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V

    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 841
    invoke-direct/range {v1 .. v8}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;-><init>(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 851
    iget-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 855
    iget-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v6

    .line 856
    iget-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v8

    .line 858
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    .line 861
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getReedemer()Lcom/superwall/sdk/web/WebPaywallRedeemer;

    move-result-object v13

    .line 850
    new-instance v2, Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 858
    move-object v4, p1

    check-cast v4, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;

    .line 854
    iget-object v5, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    .line 852
    iget-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-object v7, p1

    check-cast v7, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    .line 857
    move-object v9, v1

    check-cast v9, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    .line 853
    iget-object v10, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    .line 859
    iget-object v11, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$controller:Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    .line 860
    iget-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    move-object v12, p1

    check-cast v12, Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;

    .line 850
    invoke-direct/range {v2 .. v13}, Lcom/superwall/sdk/paywall/view/PaywallView;-><init>(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lcom/superwall/sdk/network/device/DeviceHelper;Lcom/superwall/sdk/paywall/view/PaywallView$Factory;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;Lcom/superwall/sdk/web/WebPaywallRedeemer;)V

    .line 863
    move-object p1, v2

    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;

    invoke-virtual {v1, p1}, Lcom/superwall/sdk/paywall/view/webview/SWWebView;->setDelegate(Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;)V

    .line 864
    iget-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$makePaywallView$paywallView$1;->$messageHandler:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    move-object v0, v2

    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->setMessageHandler(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;)V

    return-object v2

    .line 839
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
