.class public final Lcom/superwall/sdk/billing/GoogleBillingWrapper;
.super Ljava/lang/Object;
.source "GoogleBillingWrapper.kt"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/android/billingclient/api/BillingClientStateListener;
.implements Lcom/superwall/sdk/billing/Billing;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/billing/GoogleBillingWrapper$Companion;,
        Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;,
        Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoogleBillingWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleBillingWrapper.kt\ncom/superwall/sdk/billing/GoogleBillingWrapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 6 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 7 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,723:1\n1#2:724\n1#2:735\n1611#3,9:725\n1863#3:734\n1864#3:736\n1620#3:737\n1557#3:738\n1628#3,3:739\n1863#3:742\n1864#3:750\n1062#3:756\n1557#3:757\n1628#3,3:758\n381#4,7:743\n17#5:751\n19#5:755\n46#6:752\n51#6:754\n105#7:753\n*S KotlinDebug\n*F\n+ 1 GoogleBillingWrapper.kt\ncom/superwall/sdk/billing/GoogleBillingWrapper\n*L\n224#1:735\n224#1:725,9\n224#1:734\n224#1:736\n224#1:737\n240#1:738\n240#1:739,3\n296#1:742\n296#1:750\n655#1:756\n657#1:757\n657#1:758,3\n302#1:743,7\n604#1:751\n604#1:755\n604#1:752\n604#1:754\n604#1:753\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0008\u0018\u0000 {2\u00020\u00012\u00020\u00022\u00020\u0003:\u0003{|}B=\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010:\u001a\u00020-H\u0002J\u0014\u0010;\u001a\u0008\u0012\u0004\u0012\u00020=0<H\u0096@\u00a2\u0006\u0002\u0010>J\u001e\u0010?\u001a\u0008\u0012\u0004\u0012\u0002070@2\u0006\u0010A\u001a\u000207H\u0096@\u00a2\u0006\u0004\u0008B\u0010CJ\u0010\u0010D\u001a\u00020-2\u0008\u0008\u0002\u0010E\u001a\u00020.J\u0006\u0010F\u001a\u00020-J\"\u0010G\u001a\u0008\u0012\u0004\u0012\u00020I0H2\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u0002070HH\u0096@\u00a2\u0006\u0002\u0010KJ\u001e\u0010L\u001a\u00020-2\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u0002070H2\u0006\u0010M\u001a\u00020NH\u0002JT\u0010O\u001a\u00020-2\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u0002070H2\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u0002070H2\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020I0H2\u0018\u0010S\u001a\u0014\u0012\u0004\u0012\u000207\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020V0U0T2\u0006\u0010M\u001a\u00020NH\u0002J\u0016\u0010W\u001a\u00020-2\u000c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020-0YH\u0002Jf\u0010Z\u001a\u00020-2\u0006\u0010[\u001a\u0002072\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u0002070H2\u0018\u0010S\u001a\u0014\u0012\u0004\u0012\u000207\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020V0U0T2\u0018\u0010\\\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020I0<\u0012\u0004\u0012\u00020-0\r2\u0012\u0010]\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020-0\rH\u0002J/\u0010^\u001a\u00020-2\n\u0008\u0002\u0010E\u001a\u0004\u0018\u00010.2\u0014\u0010_\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010)\u0012\u0004\u0012\u00020-0\rH\u0002\u00a2\u0006\u0002\u0010`J\u0008\u0010a\u001a\u00020-H\u0002J\u0008\u0010b\u001a\u00020-H\u0016J\u0010\u0010c\u001a\u00020-2\u0006\u0010d\u001a\u00020eH\u0016J&\u0010f\u001a\u0004\u0018\u00010-2\u0017\u0010g\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020-0\r\u00a2\u0006\u0002\u0008h\u00a2\u0006\u0002\u0010iJ \u0010j\u001a\u00020-2\u0006\u0010k\u001a\u00020e2\u000e\u0010l\u001a\n\u0012\u0004\u0012\u00020=\u0018\u00010UH\u0016J\u0018\u0010m\u001a\u0004\u0018\u00010n2\u0006\u0010\n\u001a\u00020oH\u0096@\u00a2\u0006\u0002\u0010pJ\u0010\u0010q\u001a\u00020-2\u0006\u0010r\u001a\u00020)H\u0002J\u0008\u0010s\u001a\u00020-H\u0002J$\u0010t\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u000207\u0012\u0006\u0012\u0004\u0018\u00010v0u0<H\u0080@\u00a2\u0006\u0004\u0008w\u0010>J$\u0010x\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020=0<0@2\u0006\u0010y\u001a\u000207H\u0086@\u00a2\u0006\u0004\u0008z\u0010CR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001d\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R?\u0010&\u001a3\u0012/\u0012-\u0012!\u0012\u001f\u0012\u0015\u0012\u0013\u0018\u00010)\u00a2\u0006\u000c\u0008*\u0012\u0008\u0008+\u0012\u0004\u0008\u0008(,\u0012\u0004\u0012\u00020-0\r\u0012\u0006\u0012\u0004\u0018\u00010.0(0\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010302X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R\u0014\u00106\u001a\u000207X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00109\u00a8\u0006~"
    }
    d2 = {
        "Lcom/superwall/sdk/billing/GoogleBillingWrapper;",
        "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
        "Lcom/android/billingclient/api/BillingClientStateListener;",
        "Lcom/superwall/sdk/billing/Billing;",
        "context",
        "Landroid/content/Context;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "appLifecycleObserver",
        "Lcom/superwall/sdk/misc/AppLifecycleObserver;",
        "factory",
        "Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;",
        "createBillingClient",
        "Lkotlin/Function1;",
        "Lcom/android/billingclient/api/BillingClient;",
        "<init>",
        "(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/misc/AppLifecycleObserver;Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;Lkotlin/jvm/functions/Function1;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getIoScope",
        "()Lcom/superwall/sdk/misc/IOScope;",
        "getAppLifecycleObserver",
        "()Lcom/superwall/sdk/misc/AppLifecycleObserver;",
        "getFactory",
        "()Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;",
        "getCreateBillingClient",
        "()Lkotlin/jvm/functions/Function1;",
        "threadHandler",
        "Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;",
        "shouldFinishTransactions",
        "",
        "getShouldFinishTransactions",
        "()Z",
        "billingClient",
        "getBillingClient",
        "()Lcom/android/billingclient/api/BillingClient;",
        "setBillingClient",
        "(Lcom/android/billingclient/api/BillingClient;)V",
        "serviceRequests",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "Lkotlin/Pair;",
        "Lcom/superwall/sdk/billing/BillingError;",
        "Lkotlin/ParameterName;",
        "name",
        "connectionError",
        "",
        "",
        "reconnectMilliseconds",
        "reconnectionAlreadyScheduled",
        "purchaseResults",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/superwall/sdk/delegate/InternalPurchaseResult;",
        "getPurchaseResults",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "IN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE",
        "",
        "getIN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE$superwall_release",
        "()Ljava/lang/String;",
        "executePendingRequests",
        "queryAllPurchases",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "consume",
        "Lkotlin/Result;",
        "purchaseToken",
        "consume-gIAlu-s",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "startConnectionOnMainThread",
        "delayMilliseconds",
        "startConnection",
        "awaitGetProducts",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "fullProductIds",
        "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getProducts",
        "callback",
        "Lcom/superwall/sdk/billing/GetStoreProductsCallback;",
        "getProductsOfTypes",
        "subscriptionIds",
        "types",
        "collectedStoreProducts",
        "decomposedProductIdsBySubscriptionId",
        "",
        "",
        "Lcom/superwall/sdk/billing/DecomposedProductIds;",
        "dispatch",
        "action",
        "Lkotlin/Function0;",
        "queryProductDetailsAsync",
        "productType",
        "onReceive",
        "onError",
        "executeRequestOnUIThread",
        "request",
        "(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V",
        "retryBillingServiceConnectionWithExponentialBackoff",
        "onBillingServiceDisconnected",
        "onBillingSetupFinished",
        "billingResult",
        "Lcom/android/billingclient/api/BillingResult;",
        "withConnectedClient",
        "receivingFunction",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;",
        "onPurchasesUpdated",
        "result",
        "purchases",
        "getLatestTransaction",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
        "Lcom/superwall/sdk/dependencies/StoreTransactionFactory;",
        "(Lcom/superwall/sdk/dependencies/StoreTransactionFactory;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendErrorsToAllPendingRequests",
        "error",
        "trackProductDetailsNotSupportedIfNeeded",
        "latestPurchase",
        "",
        "",
        "latestPurchase$superwall_release",
        "queryType",
        "type",
        "queryType-gIAlu-s",
        "Companion",
        "Factory",
        "Handler",
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
.field public static final Companion:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Companion;

.field private static final QUERY_PURCHASES_MAX_RETRIES:I = 0x3

.field private static final QUERY_PURCHASES_TIMEOUT_MS:J = 0x2710L

.field private static final productsCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final IN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE:Ljava/lang/String;

.field private final appLifecycleObserver:Lcom/superwall/sdk/misc/AppLifecycleObserver;

.field private volatile billingClient:Lcom/android/billingclient/api/BillingClient;

.field private final context:Landroid/content/Context;

.field private final createBillingClient:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
            "Lcom/android/billingclient/api/BillingClient;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private final purchaseResults:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/superwall/sdk/delegate/InternalPurchaseResult;",
            ">;"
        }
    .end annotation
.end field

.field private reconnectMilliseconds:J

.field private reconnectionAlreadyScheduled:Z

.field private final serviceRequests:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lkotlin/Pair<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/billing/BillingError;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threadHandler:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;


# direct methods
.method public static synthetic $r8$lambda$KuX1dRFPsaOzkMwds3i9-7OMc_I(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lcom/superwall/sdk/billing/GetStoreProductsCallback;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->getProductsOfTypes$lambda$20$lambda$17$lambda$16(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lcom/superwall/sdk/billing/GetStoreProductsCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RwFMeSqSOrkvNuL5aYim-7gRiDo(Lkotlinx/coroutines/CompletableDeferred;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->queryType_gIAlu_s$lambda$32$lambda$31(Lkotlinx/coroutines/CompletableDeferred;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WpGnCOdxnu4TZU79GAzka_hv8hQ(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->sendErrorsToAllPendingRequests$lambda$28$lambda$27(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X85b_37fJqFLvK99ou_TokTQRKI(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lcom/superwall/sdk/billing/GetStoreProductsCallback;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->getProductsOfTypes$lambda$20$lambda$19(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lcom/superwall/sdk/billing/GetStoreProductsCallback;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_N4wMOGuHkj3WOthVRdEdZXHuM8(Lcom/android/billingclient/api/BillingResult;Lcom/superwall/sdk/billing/GoogleBillingWrapper;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->onBillingSetupFinished$lambda$22(Lcom/android/billingclient/api/BillingResult;Lcom/superwall/sdk/billing/GoogleBillingWrapper;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_yO3Znx_Y2hiaiIWTIytmKmvZR0(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->_init_$lambda$0(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d-fkb_XkLWg5AuMcXSOsng5LvAc(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lcom/superwall/sdk/billing/GetStoreProductsCallback;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->getProductsOfTypes$lambda$20$lambda$17(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lcom/superwall/sdk/billing/GetStoreProductsCallback;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hTxtlRybdMlbrI2B6dgA8Exyw5c(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->executePendingRequests$lambda$4$lambda$3$lambda$1(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ly1_Sa62jgIX-iQL6czshH61Qtw(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->executePendingRequests$lambda$4$lambda$3$lambda$2(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oIVsz0E0IqKGrzAEH5cjMHtNKQI(Lcom/android/billingclient/api/QueryPurchasesParams;Lkotlinx/coroutines/CompletableDeferred;Lcom/android/billingclient/api/BillingClient;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->queryType_gIAlu_s$lambda$32(Lcom/android/billingclient/api/QueryPurchasesParams;Lkotlinx/coroutines/CompletableDeferred;Lcom/android/billingclient/api/BillingClient;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ufZFsF_xyqD68KZK5g9zXER1ME4(Lcom/superwall/sdk/billing/GoogleBillingWrapper;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->startConnectionOnMainThread$lambda$6(Lcom/superwall/sdk/billing/GoogleBillingWrapper;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ymaa7pJavf1pZ5CyWSuMfxSNLo4(Lcom/superwall/sdk/billing/GetStoreProductsCallback;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->getProductsOfTypes$lambda$20$lambda$19$lambda$18(Lcom/superwall/sdk/billing/GetStoreProductsCallback;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->Companion:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Companion;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->productsCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/misc/AppLifecycleObserver;Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/superwall/sdk/misc/IOScope;",
            "Lcom/superwall/sdk/misc/AppLifecycleObserver;",
            "Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
            "+",
            "Lcom/android/billingclient/api/BillingClient;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appLifecycleObserver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createBillingClient"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 49
    iput-object p3, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->appLifecycleObserver:Lcom/superwall/sdk/misc/AppLifecycleObserver;

    .line 50
    iput-object p4, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->factory:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;

    .line 51
    iput-object p5, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->createBillingClient:Lkotlin/jvm/functions/Function1;

    .line 78
    new-instance p1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;

    check-cast p2, Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p1, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    iput-object p1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->threadHandler:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;

    .line 88
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->serviceRequests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 p1, 0x3e8

    .line 91
    iput-wide p1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->reconnectMilliseconds:J

    const/4 p1, 0x0

    .line 98
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->purchaseResults:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 101
    const-string p2, "Google Play In-app Billing API version is less than 3"

    iput-object p2, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->IN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE:Ljava/lang/String;

    const-wide/16 p2, 0x0

    const/4 p4, 0x1

    .line 104
    invoke-static {p0, p2, p3, p4, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->startConnectionOnMainThread$default(Lcom/superwall/sdk/billing/GoogleBillingWrapper;JILjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/misc/AppLifecycleObserver;Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 51
    new-instance p5, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda6;

    invoke-direct {p5, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;-><init>(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/misc/AppLifecycleObserver;Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    .line 56
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$executeRequestOnUIThread(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->executeRequestOnUIThread(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getProductsCache$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 46
    sget-object v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->productsCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private final dispatch(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->threadHandler:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;->post(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final executePendingRequests()V
    .locals 4

    .line 128
    monitor-enter p0

    .line 129
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->serviceRequests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 132
    iget-object v2, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->threadHandler:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;

    new-instance v3, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 132
    invoke-virtual {v2, v3, v0, v1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;->postDelayed(Lkotlin/jvm/functions/Function0;J)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->threadHandler:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;

    new-instance v2, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;->post(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 141
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final executePendingRequests$lambda$4$lambda$3$lambda$1(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final executePendingRequests$lambda$4$lambda$3$lambda$2(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final declared-synchronized executeRequestOnUIThread(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/billing/BillingError;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->serviceRequests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object p1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    .line 401
    invoke-static {p0, v0, v1, p1, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->startConnectionOnMainThread$default(Lcom/superwall/sdk/billing/GoogleBillingWrapper;JILjava/lang/Object;)V

    goto :goto_0

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->executePendingRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic executeRequestOnUIThread$default(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 394
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->executeRequestOnUIThread(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final getProducts(Ljava/util/Set;Lcom/superwall/sdk/billing/GetStoreProductsCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/superwall/sdk/billing/GetStoreProductsCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 288
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "subs"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "inapp"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    .line 290
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    .line 293
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/Set;

    .line 296
    check-cast p1, Ljava/lang/Iterable;

    .line 742
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    sget-object v1, Lcom/superwall/sdk/billing/DecomposedProductIds;->Companion:Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;

    invoke-virtual {v1, v0}, Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;->from(Ljava/lang/String;)Lcom/superwall/sdk/billing/DecomposedProductIds;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/superwall/sdk/billing/DecomposedProductIds;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 746
    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 303
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_1
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v6

    .line 312
    new-instance p1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getProducts$2;

    invoke-direct {p1, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getProducts$2;-><init>(Lcom/superwall/sdk/billing/GetStoreProductsCallback;)V

    move-object v8, p1

    check-cast v8, Lcom/superwall/sdk/billing/GetStoreProductsCallback;

    move-object v3, p0

    .line 306
    invoke-direct/range {v3 .. v8}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->getProductsOfTypes(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lcom/superwall/sdk/billing/GetStoreProductsCallback;)V

    return-void
.end method

.method private final getProductsOfTypes(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lcom/superwall/sdk/billing/GetStoreProductsCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/billing/DecomposedProductIds;",
            ">;>;",
            "Lcom/superwall/sdk/billing/GetStoreProductsCallback;",
            ")V"
        }
    .end annotation

    .line 331
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 332
    move-object p2, v3

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-interface {v3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 335
    new-instance v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lcom/superwall/sdk/billing/GetStoreProductsCallback;)V

    new-instance v9, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0, v6}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lcom/superwall/sdk/billing/GetStoreProductsCallback;)V

    move-object v8, v0

    move-object v4, v1

    move-object v6, v2

    move-object v7, v5

    move-object v5, p2

    invoke-direct/range {v4 .. v9}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->queryProductDetailsAsync(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    move-object v1, p0

    move-object v4, p3

    move-object v6, p5

    .line 356
    move-object p1, v1

    check-cast p1, Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    .line 357
    invoke-interface {v6, v4}, Lcom/superwall/sdk/billing/GetStoreProductsCallback;->onReceived(Ljava/util/Set;)V

    return-void
.end method

.method private static final getProductsOfTypes$lambda$20$lambda$17(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lcom/superwall/sdk/billing/GetStoreProductsCallback;Ljava/util/List;)Lkotlin/Unit;
    .locals 9

    const-string/jumbo v0, "storeProducts"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    new-instance v1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda9;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v8}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda9;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lcom/superwall/sdk/billing/GetStoreProductsCallback;)V

    invoke-direct {v2, v1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->dispatch(Lkotlin/jvm/functions/Function0;)V

    .line 349
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getProductsOfTypes$lambda$20$lambda$17$lambda$16(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lcom/superwall/sdk/billing/GetStoreProductsCallback;)Lkotlin/Unit;
    .locals 6

    .line 344
    check-cast p4, Ljava/lang/Iterable;

    invoke-static {p3, p4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    .line 341
    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->getProductsOfTypes(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lcom/superwall/sdk/billing/GetStoreProductsCallback;)V

    .line 348
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getProductsOfTypes$lambda$20$lambda$19(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lcom/superwall/sdk/billing/GetStoreProductsCallback;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    new-instance v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda8;-><init>(Lcom/superwall/sdk/billing/GetStoreProductsCallback;Lcom/superwall/sdk/billing/BillingError;)V

    invoke-direct {p0, v0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->dispatch(Lkotlin/jvm/functions/Function0;)V

    .line 354
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getProductsOfTypes$lambda$20$lambda$19$lambda$18(Lcom/superwall/sdk/billing/GetStoreProductsCallback;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;
    .locals 0

    .line 352
    invoke-interface {p0, p1}, Lcom/superwall/sdk/billing/GetStoreProductsCallback;->onError(Lcom/superwall/sdk/billing/BillingError;)V

    .line 353
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getShouldFinishTransactions()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->factory:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;

    invoke-interface {v0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;->makeSuperwallOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getShouldObservePurchases()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static final onBillingSetupFinished$lambda$22(Lcom/android/billingclient/api/BillingResult;Lcom/superwall/sdk/billing/GoogleBillingWrapper;)Lkotlin/Unit;
    .locals 19

    move-object/from16 v0, p1

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 529
    :pswitch_0
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 530
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 531
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Billing client error, developer error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 529
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 520
    :pswitch_1
    sget-object v11, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 521
    sget-object v12, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 522
    sget-object v13, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Billing client error, item not supported or unavailable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x18

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 520
    invoke-static/range {v11 .. v18}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 448
    :pswitch_2
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 449
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 450
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v7, 0x18

    const/4 v8, 0x0

    .line 448
    const-string v4, "Billing client connected"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 453
    invoke-direct {v0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->executePendingRequests()V

    const-wide/16 v1, 0x3e8

    .line 454
    iput-wide v1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->reconnectMilliseconds:J

    .line 455
    invoke-direct {v0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->trackProductDetailsNotSupportedIfNeeded()V

    goto/16 :goto_1

    .line 462
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DebugMessage: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ErrorCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->IN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Billing is not available in this device. Make sure there\'s an account configured in Play Store. Reopen the Play Store or clean its caches if this keeps happening. Original error message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    new-instance v2, Lcom/superwall/sdk/billing/BillingError$BillingNotAvailable;

    invoke-direct {v2, v1}, Lcom/superwall/sdk/billing/BillingError$BillingNotAvailable;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Billing is not available in this device. Original error message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    new-instance v2, Lcom/superwall/sdk/billing/BillingError$BillingNotAvailable;

    invoke-direct {v2, v1}, Lcom/superwall/sdk/billing/BillingError$BillingNotAvailable;-><init>(Ljava/lang/String;)V

    .line 491
    :goto_0
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 492
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 493
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    .line 494
    invoke-virtual {v2}, Lcom/superwall/sdk/billing/BillingError$BillingNotAvailable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Billing is not available in this device. "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v6, v1

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 491
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 499
    check-cast v2, Lcom/superwall/sdk/billing/BillingError;

    invoke-direct {v0, v2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->sendErrorsToAllPendingRequests(Lcom/superwall/sdk/billing/BillingError;)V

    goto :goto_1

    .line 508
    :cond_2
    :pswitch_4
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 509
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 510
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Billing client error, retrying: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 508
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 513
    invoke-direct {v0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->retryBillingServiceConnectionWithExponentialBackoff()V

    .line 536
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private final queryProductDetailsAsync(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/billing/DecomposedProductIds;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/billing/BillingError;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 372
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 373
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 374
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    .line 375
    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    const/16 v12, 0x3f

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Requesting products from the store with identifiers: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 372
    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 379
    new-instance v10, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;

    .line 380
    new-instance v11, Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;

    .line 384
    iget-object v2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->appLifecycleObserver:Lcom/superwall/sdk/misc/AppLifecycleObserver;

    invoke-virtual {v2}, Lcom/superwall/sdk/misc/AppLifecycleObserver;->isInBackground()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    .line 380
    invoke-direct {v11, v1, v4, v3, v2}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Z)V

    .line 388
    new-instance v1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryProductDetailsAsync$useCase$1;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryProductDetailsAsync$useCase$1;-><init>(Ljava/lang/Object;)V

    move-object v14, v1

    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 389
    new-instance v1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryProductDetailsAsync$useCase$2;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryProductDetailsAsync$useCase$2;-><init>(Ljava/lang/Object;)V

    move-object v15, v1

    check-cast v15, Lkotlin/jvm/functions/Function2;

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 379
    invoke-direct/range {v10 .. v15}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;-><init>(Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 391
    check-cast v10, Lcom/superwall/sdk/billing/BillingClientUseCase;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {v10, v3, v4, v1, v2}, Lcom/superwall/sdk/billing/BillingClientUseCase;->run$default(Lcom/superwall/sdk/billing/BillingClientUseCase;JILjava/lang/Object;)V

    return-void
.end method

.method private static final queryType_gIAlu_s$lambda$32(Lcom/android/billingclient/api/QueryPurchasesParams;Lkotlinx/coroutines/CompletableDeferred;Lcom/android/billingclient/api/BillingClient;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$withConnectedClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    new-instance v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda7;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-virtual {p2, p0, v0}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 701
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final queryType_gIAlu_s$lambda$32$lambda$31(Lkotlinx/coroutines/CompletableDeferred;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 9

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchasesList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 691
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 692
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    const/16 v7, 0x18

    const/4 v8, 0x0

    .line 690
    const-string v4, "Unable to query for purchases."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 695
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p2, Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Billing query failed with code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void

    .line 699
    :cond_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private final retryBillingServiceConnectionWithExponentialBackoff()V
    .locals 18

    move-object/from16 v0, p0

    .line 414
    iget-boolean v1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->reconnectionAlreadyScheduled:Z

    if-eqz v1, :cond_0

    .line 415
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 416
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 417
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v8, 0x18

    const/4 v9, 0x0

    .line 415
    const-string v5, "Billing client retry already scheduled."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 421
    :cond_0
    sget-object v10, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 422
    sget-object v11, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 423
    sget-object v12, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    .line 424
    iget-wide v1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->reconnectMilliseconds:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Billing client disconnected, retrying in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " milliseconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x18

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 421
    invoke-static/range {v10 .. v17}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 426
    iput-boolean v1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->reconnectionAlreadyScheduled:Z

    .line 427
    iget-wide v1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->reconnectMilliseconds:J

    invoke-virtual {v0, v1, v2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->startConnectionOnMainThread(J)V

    .line 430
    iget-wide v1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->reconnectMilliseconds:J

    const/4 v3, 0x2

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e80

    .line 431
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 428
    iput-wide v1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->reconnectMilliseconds:J

    return-void
.end method

.method private final declared-synchronized sendErrorsToAllPendingRequests(Lcom/superwall/sdk/billing/BillingError;)V
    .locals 3

    monitor-enter p0

    .line 630
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->serviceRequests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 631
    iget-object v1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->threadHandler:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;

    new-instance v2, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/billing/BillingError;)V

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;->post(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 636
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static final sendErrorsToAllPendingRequests$lambda$28$lambda$27(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;
    .locals 0

    .line 632
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic startConnectionOnMainThread$default(Lcom/superwall/sdk/billing/GoogleBillingWrapper;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 170
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->startConnectionOnMainThread(J)V

    return-void
.end method

.method private static final startConnectionOnMainThread$lambda$6(Lcom/superwall/sdk/billing/GoogleBillingWrapper;)Lkotlin/Unit;
    .locals 0

    .line 172
    invoke-virtual {p0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->startConnection()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final trackProductDetailsNotSupportedIfNeeded()V
    .locals 11

    .line 640
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    const-string v1, "fff"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 643
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 645
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 646
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 647
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    .line 648
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Product details not supported: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 645
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic awaitGetProducts(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 223
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 725
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 734
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 733
    check-cast v2, Ljava/lang/String;

    .line 225
    sget-object v3, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->productsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/misc/Either;

    if-eqz v2, :cond_3

    .line 227
    instance-of v3, v2, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v2}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    goto :goto_1

    .line 228
    :cond_1
    instance-of p1, v2, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz p1, :cond_2

    check-cast v2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v2}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 226
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 733
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    :cond_4
    check-cast v1, Ljava/util/List;

    .line 725
    check-cast v1, Ljava/lang/Iterable;

    .line 231
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v1, v2, :cond_5

    return-object v0

    .line 240
    :cond_5
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 738
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 739
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 740
    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    .line 240
    invoke-virtual {v3}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 740
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 741
    :cond_6
    check-cast v2, Ljava/util/List;

    .line 738
    check-cast v2, Ljava/lang/Iterable;

    .line 240
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {p1, v1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 242
    new-instance v1, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 245
    new-instance v3, Lcom/superwall/sdk/billing/GoogleBillingWrapper$awaitGetProducts$2$1;

    invoke-direct {v3, p1, v0, v2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$awaitGetProducts$2$1;-><init>(Ljava/util/Set;Ljava/util/Set;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lcom/superwall/sdk/billing/GetStoreProductsCallback;

    .line 243
    invoke-direct {p0, p1, v3}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->getProducts(Ljava/util/Set;Lcom/superwall/sdk/billing/GetStoreProductsCallback;)V

    .line 242
    invoke-virtual {v1}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_7

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_7
    return-object p1
.end method

.method public consume-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;

    iget v1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 150
    iget v2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 151
    iput-object p0, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$1;->label:I

    check-cast v0, Lkotlin/coroutines/Continuation;

    new-instance p2, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p2, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, p2

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 153
    new-instance v4, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;

    .line 154
    new-instance v5, Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;

    .line 156
    iget-object v6, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->appLifecycleObserver:Lcom/superwall/sdk/misc/AppLifecycleObserver;

    invoke-virtual {v6}, Lcom/superwall/sdk/misc/AppLifecycleObserver;->isInBackground()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 154
    invoke-direct {v5, p1, v6}, Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;-><init>(Ljava/lang/String;Z)V

    .line 152
    new-instance p1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$2$useCase$1;

    invoke-direct {p1, v2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$2$useCase$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$2$useCase$2;

    invoke-direct {p1, v2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$2$useCase$2;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 164
    new-instance p1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$2$useCase$3;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$2$useCase$3;-><init>(Ljava/lang/Object;)V

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 165
    new-instance p1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$2$useCase$4;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$consume$2$useCase$4;-><init>(Ljava/lang/Object;)V

    move-object v9, p1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 153
    invoke-direct/range {v4 .. v9}, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;-><init>(Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 167
    check-cast v4, Lcom/superwall/sdk/billing/BillingClientUseCase;

    const-wide/16 v5, 0x0

    const/4 p1, 0x0

    invoke-static {v4, v5, v6, v3, p1}, Lcom/superwall/sdk/billing/BillingClientUseCase;->run$default(Lcom/superwall/sdk/billing/BillingClientUseCase;JILjava/lang/Object;)V

    .line 151
    invoke-virtual {p2}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_3

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getAppLifecycleObserver()Lcom/superwall/sdk/misc/AppLifecycleObserver;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->appLifecycleObserver:Lcom/superwall/sdk/misc/AppLifecycleObserver;

    return-object v0
.end method

.method public final declared-synchronized getBillingClient()Lcom/android/billingclient/api/BillingClient;
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->billingClient:Lcom/android/billingclient/api/BillingClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCreateBillingClient()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
            "Lcom/android/billingclient/api/BillingClient;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->createBillingClient:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getFactory()Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->factory:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Factory;

    return-object v0
.end method

.method public final getIN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE$superwall_release()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->IN_APP_BILLING_LESS_THAN_3_ERROR_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method public final getIoScope()Lcom/superwall/sdk/misc/IOScope;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    return-object v0
.end method

.method public getLatestTransaction(Lcom/superwall/sdk/dependencies/StoreTransactionFactory;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/dependencies/StoreTransactionFactory;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;

    iget v1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 600
    iget v2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/dependencies/StoreTransactionFactory;

    iget-object v2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 602
    invoke-virtual {p0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->getPurchaseResults()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    .line 603
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    .line 753
    new-instance v2, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$$inlined$filter$1;

    invoke-direct {v2, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    .line 605
    iput-object p0, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;->label:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 606
    :goto_1
    check-cast p2, Lcom/superwall/sdk/delegate/InternalPurchaseResult;

    .line 608
    instance-of v4, p2, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Purchased;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 609
    invoke-direct {v2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->getShouldFinishTransactions()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 610
    check-cast p2, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Purchased;

    invoke-virtual {p2}, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Purchased;->getPurchase()Lcom/android/billingclient/api/Purchase;

    move-result-object p2

    iput-object v5, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$getLatestTransaction$1;->label:I

    invoke-interface {p1, p2, v0}, Lcom/superwall/sdk/dependencies/StoreTransactionFactory;->makeStoreTransaction(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1

    :cond_6
    return-object v5

    .line 616
    :cond_7
    instance-of p1, p2, Lcom/superwall/sdk/delegate/InternalPurchaseResult$Cancelled;

    return-object v5
.end method

.method public getPurchaseResults()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/superwall/sdk/delegate/InternalPurchaseResult;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->purchaseResults:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final latestPurchase$superwall_release(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;

    iget v1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 653
    iget v2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v5, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lcom/android/billingclient/api/Purchase;

    iget-object v6, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    iget-object v8, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 654
    iput-object p0, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->label:I

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->queryAllPurchases(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, p0

    .line 653
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 756
    new-instance v5, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$$inlined$sortedByDescending$1;

    invoke-direct {v5}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$$inlined$sortedByDescending$1;-><init>()V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 757
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {p1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 758
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v6, p1

    move-object v8, v2

    move-object v2, v5

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 759
    move-object v5, p1

    check-cast v5, Lcom/android/billingclient/api/Purchase;

    .line 658
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p1

    const-string v7, "getProducts(...)"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object v8, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$latestPurchase$1;->label:I

    invoke-virtual {v8, p1, v0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->awaitGetProducts(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_3
    return-object v1

    :cond_5
    move-object v7, v2

    :goto_4
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    .line 659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    .line 660
    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->toMillis()J

    .line 662
    :cond_6
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v9

    if-ne v9, v3, :cond_7

    .line 663
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    .line 665
    :cond_7
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v9

    if-ne v9, v4, :cond_8

    .line 666
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    .line 669
    :cond_8
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    const/4 v9, 0x3

    .line 673
    new-array v9, v9, [Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getSubscriptionPeriod()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;->getUnit()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;

    move-result-object p1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    :goto_5
    const-string v10, "latestSubscriptionPeriodType"

    invoke-static {v10, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v10, 0x0

    aput-object p1, v9, v10

    .line 674
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v10, "latestSubscriptionState"

    invoke-static {v10, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v9, v4

    .line 675
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v5, "latestSubscriptionWillAutoRenew"

    invoke-static {v5, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v9, v3

    .line 672
    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 759
    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v7

    goto/16 :goto_2

    .line 760
    :cond_a
    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method public onBillingServiceDisconnected()V
    .locals 8

    .line 437
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 438
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 439
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x18

    const/4 v7, 0x0

    .line 437
    const-string v3, "Billing client disconnected"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->threadHandler:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;

    new-instance v1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/billingclient/api/BillingResult;Lcom/superwall/sdk/billing/GoogleBillingWrapper;)V

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;->post(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 555
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 556
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->storeKitManager:Lcom/superwall/sdk/logger/LogScope;

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "onPurchasesUpdated: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 554
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 559
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 560
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 561
    sget-object v4, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 562
    sget-object v5, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 563
    sget-object v6, Lcom/superwall/sdk/logger/LogScope;->storeKitManager:Lcom/superwall/sdk/logger/LogScope;

    .line 564
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Purchase: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 561
    invoke-static/range {v4 .. v11}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 566
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    new-instance v4, Lcom/superwall/sdk/billing/GoogleBillingWrapper$onPurchasesUpdated$1;

    invoke-direct {v4, v0, v2, v3}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$onPurchasesUpdated$1;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)V

    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    return-void

    .line 572
    :cond_1
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 573
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$onPurchasesUpdated$2;

    invoke-direct {v1, v0, v3}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$onPurchasesUpdated$2;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 577
    sget-object v10, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 578
    sget-object v11, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 579
    sget-object v12, Lcom/superwall/sdk/logger/LogScope;->storeKitManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v16, 0x18

    const/16 v17, 0x0

    .line 577
    const-string v13, "User cancelled purchase"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 583
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v2, Lcom/superwall/sdk/billing/GoogleBillingWrapper$onPurchasesUpdated$3;

    invoke-direct {v2, v0, v1, v3}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$onPurchasesUpdated$3;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lcom/android/billingclient/api/BillingResult;Lkotlin/coroutines/Continuation;)V

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 586
    sget-object v10, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 587
    sget-object v11, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 588
    sget-object v12, Lcom/superwall/sdk/logger/LogScope;->storeKitManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v16, 0x18

    const/16 v17, 0x0

    .line 586
    const-string v13, "Purchase failed"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public queryAllPurchases(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;

    iget v1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v4, v0

    iget-object p1, v4, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 144
    iget v1, v4, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;->label:I

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v8, :cond_1

    iget-object v0, v4, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, v4, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 145
    new-instance p1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$apps$1;

    invoke-direct {p1, p0, v7}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$apps$1;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iput-object p0, v4, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;->L$0:Ljava/lang/Object;

    iput v2, v4, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;->label:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retryOrNull$default(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p0

    .line 144
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 146
    new-instance v2, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$subs$1;

    invoke-direct {v2, v1, v7}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$subs$1;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iput-object p1, v4, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;->L$0:Ljava/lang/Object;

    iput v8, v4, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryAllPurchases$1;->label:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retryOrNull$default(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    :goto_2
    return-object v0

    :cond_5
    move-object v0, p1

    move-object p1, v1

    .line 144
    :goto_3
    check-cast p1, Ljava/util/List;

    if-nez v0, :cond_6

    .line 147
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_6
    check-cast v0, Ljava/util/Collection;

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_4
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final queryType-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryType$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryType$1;

    iget v1, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryType$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryType$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryType$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryType$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryType$1;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryType$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 679
    iget v2, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryType$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 680
    invoke-static {p2, v3, p2}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    .line 683
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v4

    .line 684
    invoke-virtual {v4, p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p1

    .line 685
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p1

    const-string v4, "build(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    new-instance v4, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, v2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/billingclient/api/QueryPurchasesParams;Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-virtual {p0, v4}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->withConnectedClient(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p1

    if-nez p1, :cond_3

    .line 702
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Throwable;

    const-string v4, "Billing client not ready"

    invoke-direct {p1, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    .line 701
    invoke-interface {v2, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 705
    :cond_3
    new-instance p1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryType$3;

    invoke-direct {p1, v2, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryType$3;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$queryType$1;->label:I

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Lkotlin/Result;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 707
    :cond_5
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "Query purchases timed out"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized setBillingClient(Lcom/android/billingclient/api/BillingClient;)V
    .locals 0

    monitor-enter p0

    .line 82
    :try_start_0
    iput-object p1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->billingClient:Lcom/android/billingclient/api/BillingClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final startConnection()V
    .locals 11

    const-string v1, "IllegalStateException when connecting to billing client: "

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->createBillingClient:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingClient;

    iput-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->billingClient:Lcom/android/billingclient/api/BillingClient;

    :cond_0
    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->reconnectionAlreadyScheduled:Z

    .line 185
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 188
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 189
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    .line 190
    const-string v6, "Starting billing client"

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 187
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :try_start_1
    move-object v2, p0

    check-cast v2, Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    :try_start_2
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 196
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 197
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    .line 198
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 195
    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 200
    sget-object v0, Lcom/superwall/sdk/billing/BillingError$IllegalStateException;->INSTANCE:Lcom/superwall/sdk/billing/BillingError$IllegalStateException;

    check-cast v0, Lcom/superwall/sdk/billing/BillingError;

    invoke-direct {p0, v0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->sendErrorsToAllPendingRequests(Lcom/superwall/sdk/billing/BillingError;)V

    .line 185
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final startConnectionOnMainThread(J)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->threadHandler:Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;

    new-instance v1, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda10;-><init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/superwall/sdk/billing/GoogleBillingWrapper$Handler;->postDelayed(Lkotlin/jvm/functions/Function0;J)V

    return-void
.end method

.method public final withConnectedClient(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/BillingClient;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "receivingFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    .line 541
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 542
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 543
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v8, 0x18

    const/4 v9, 0x0

    .line 541
    const-string v5, "Billing client not ready"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1
.end method
