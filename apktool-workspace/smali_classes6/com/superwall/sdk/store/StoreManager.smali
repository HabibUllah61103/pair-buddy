.class public final Lcom/superwall/sdk/store/StoreManager;
.super Ljava/lang/Object;
.source "StoreManager.kt"

# interfaces
.implements Lcom/superwall/sdk/store/coordinator/ProductsFetcher;
.implements Lcom/superwall/sdk/store/StoreKit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoreManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoreManager.kt\ncom/superwall/sdk/store/StoreManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,354:1\n1611#2,9:355\n1863#2:364\n1864#2:366\n1620#2:367\n1611#2,9:369\n1863#2:378\n1864#2:380\n1620#2:381\n1202#2,2:385\n1230#2,4:387\n1202#2,2:393\n1230#2,4:395\n1863#2,2:401\n360#2,7:405\n1#3:365\n1#3:368\n1#3:379\n1#3:384\n1#3:412\n72#4,2:382\n216#5,2:391\n216#5,2:399\n216#5,2:403\n*S KotlinDebug\n*F\n+ 1 StoreManager.kt\ncom/superwall/sdk/store/StoreManager\n*L\n58#1:355,9\n58#1:364\n58#1:366\n58#1:367\n141#1:369,9\n141#1:378\n141#1:380\n141#1:381\n182#1:385,2\n182#1:387,4\n202#1:393,2\n202#1:395,4\n210#1:401,2\n251#1:405,7\n58#1:365\n141#1:379\n152#1:384\n152#1:382,2\n185#1:391,2\n204#1:399,2\n221#1:403,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001VBW\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012$\u0008\u0002\u0010\n\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000b\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J$\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0096@\u00a2\u0006\u0002\u0010-J>\u0010.\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u0002000/2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020$0\'2\u0014\u00102\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u000200\u0018\u00010/H\u0096@\u00a2\u0006\u0002\u00103J6\u00104\u001a\u0002052\u0014\u00102\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u000200\u0018\u00010/2\u0006\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0096@\u00a2\u0006\u0002\u00106J(\u00107\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u0002000/2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020$09H\u0082@\u00a2\u0006\u0002\u0010:J4\u0010;\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u0002000/2\u0018\u0010<\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000=0/H\u0082@\u00a2\u0006\u0002\u0010>J:\u0010?\u001a\u00020@2\u0014\u0010A\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u000200\u0018\u00010/2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020$0\'2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020C0\'H\u0002J\u0008\u0010D\u001a\u00020\u000eH\u0016J(\u0010E\u001a\u00020\u000e2\u0018\u0010F\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020G090/H\u0096@\u00a2\u0006\u0002\u0010>J\u0018\u0010H\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020$2\u0006\u0010J\u001a\u000200H\u0016J\u0012\u0010K\u001a\u0004\u0018\u0001002\u0006\u0010L\u001a\u00020$H\u0016J\u0010\u0010M\u001a\u00020N2\u0006\u0010L\u001a\u00020$H\u0016J\u001e\u0010O\u001a\u0008\u0012\u0004\u0012\u00020$0P2\u0006\u0010Q\u001a\u00020$H\u0096@\u00a2\u0006\u0004\u0008R\u0010SJ\"\u0010T\u001a\u0008\u0012\u0004\u0012\u000200092\u000c\u0010U\u001a\u0008\u0012\u0004\u0012\u00020$09H\u0096@\u00a2\u0006\u0002\u0010:R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R,\u0010\n\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001d\u001a\u00020\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0#X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006W"
    }
    d2 = {
        "Lcom/superwall/sdk/store/StoreManager;",
        "Lcom/superwall/sdk/store/coordinator/ProductsFetcher;",
        "Lcom/superwall/sdk/store/StoreKit;",
        "purchaseController",
        "Lcom/superwall/sdk/store/InternalPurchaseController;",
        "billing",
        "Lcom/superwall/sdk/billing/Billing;",
        "receiptManagerFactory",
        "Lkotlin/Function0;",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;",
        "track",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "testMode",
        "Lcom/superwall/sdk/store/testmode/TestMode;",
        "<init>",
        "(Lcom/superwall/sdk/store/InternalPurchaseController;Lcom/superwall/sdk/billing/Billing;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;)V",
        "getPurchaseController",
        "()Lcom/superwall/sdk/store/InternalPurchaseController;",
        "getBilling",
        "()Lcom/superwall/sdk/billing/Billing;",
        "Lkotlin/jvm/functions/Function2;",
        "getTestMode",
        "()Lcom/superwall/sdk/store/testmode/TestMode;",
        "setTestMode",
        "(Lcom/superwall/sdk/store/testmode/TestMode;)V",
        "receiptManager",
        "getReceiptManager",
        "()Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;",
        "receiptManager$delegate",
        "Lkotlin/Lazy;",
        "productsByFullId",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lcom/superwall/sdk/store/ProductState;",
        "getProductVariables",
        "",
        "Lcom/superwall/sdk/models/product/ProductVariable;",
        "paywall",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "request",
        "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
        "(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getProductsWithoutPaywall",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "productIds",
        "substituteProducts",
        "(Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getProducts",
        "Lcom/superwall/sdk/store/GetProductsResponse;",
        "(Ljava/util/Map;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchOrAwaitProducts",
        "fullProductIds",
        "",
        "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchNewProducts",
        "deferreds",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeAndStore",
        "Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;",
        "substituteProductsByName",
        "productItems",
        "Lcom/superwall/sdk/models/product/ProductItem;",
        "refreshReceipt",
        "loadPurchasedProducts",
        "serverEntitlementsByProductId",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "cacheProduct",
        "fullProductIdentifier",
        "storeProduct",
        "getProductFromCache",
        "productId",
        "hasCached",
        "",
        "consume",
        "Lkotlin/Result;",
        "purchaseToken",
        "consume-gIAlu-s",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "products",
        "identifiers",
        "ProductProcessingResult",
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


# instance fields
.field private final billing:Lcom/superwall/sdk/billing/Billing;

.field private productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/ProductState;",
            ">;"
        }
    .end annotation
.end field

.field private final purchaseController:Lcom/superwall/sdk/store/InternalPurchaseController;

.field private final receiptManager$delegate:Lkotlin/Lazy;

.field private testMode:Lcom/superwall/sdk/store/testmode/TestMode;

.field private final track:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;",
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
.method public static synthetic $r8$lambda$sYclSUpAa6li6t-cakgEc4W1_k0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/store/StoreManager;->removeAndStore$lambda$18$lambda$17(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/superwall/sdk/store/InternalPurchaseController;Lcom/superwall/sdk/billing/Billing;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/InternalPurchaseController;",
            "Lcom/superwall/sdk/billing/Billing;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/store/testmode/TestMode;",
            ")V"
        }
    .end annotation

    const-string v0, "purchaseController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billing"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiptManagerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/superwall/sdk/store/StoreManager;->purchaseController:Lcom/superwall/sdk/store/InternalPurchaseController;

    .line 29
    iput-object p2, p0, Lcom/superwall/sdk/store/StoreManager;->billing:Lcom/superwall/sdk/billing/Billing;

    .line 31
    iput-object p4, p0, Lcom/superwall/sdk/store/StoreManager;->track:Lkotlin/jvm/functions/Function2;

    .line 34
    iput-object p5, p0, Lcom/superwall/sdk/store/StoreManager;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    .line 37
    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/StoreManager;->receiptManager$delegate:Lkotlin/Lazy;

    .line 39
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/store/StoreManager;->productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/store/InternalPurchaseController;Lcom/superwall/sdk/billing/Billing;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 31
    new-instance p4, Lcom/superwall/sdk/store/StoreManager$1;

    invoke-direct {p4, v0}, Lcom/superwall/sdk/store/StoreManager$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p4, Lkotlin/jvm/functions/Function2;

    :cond_0
    move-object v5, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move-object v6, v0

    goto :goto_0

    :cond_1
    move-object v6, p5

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 27
    invoke-direct/range {v1 .. v6}, Lcom/superwall/sdk/store/StoreManager;-><init>(Lcom/superwall/sdk/store/InternalPurchaseController;Lcom/superwall/sdk/billing/Billing;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;)V

    return-void
.end method

.method public static final synthetic access$fetchNewProducts(Lcom/superwall/sdk/store/StoreManager;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/store/StoreManager;->fetchNewProducts(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchOrAwaitProducts(Lcom/superwall/sdk/store/StoreManager;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/store/StoreManager;->fetchOrAwaitProducts(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final fetchNewProducts(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;

    iget v1, v0, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;-><init>(Lcom/superwall/sdk/store/StoreManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 197
    iget v2, v0, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object v0, v0, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/store/StoreManager;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 198
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 201
    :cond_3
    :try_start_1
    iget-object p2, p0, Lcom/superwall/sdk/store/StoreManager;->billing:Lcom/superwall/sdk/billing/Billing;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iput-object p0, v0, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/store/StoreManager$fetchNewProducts$1;->label:I

    invoke-interface {p2, v2, v0}, Lcom/superwall/sdk/billing/Billing;->awaitGetProducts(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    .line 197
    :goto_1
    :try_start_2
    check-cast p2, Ljava/util/Set;

    .line 202
    check-cast p2, Ljava/lang/Iterable;

    const/16 v1, 0xa

    .line 393
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 394
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .line 395
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 396
    move-object v3, v1

    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    .line 202
    invoke-virtual {v3}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 396
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 399
    :cond_5
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 204
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    .line 205
    iget-object v4, v0, Lcom/superwall/sdk/store/StoreManager;->productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v4, Ljava/util/Map;

    new-instance v5, Lcom/superwall/sdk/store/ProductState$Loaded;

    invoke-direct {v5, v1}, Lcom/superwall/sdk/store/ProductState$Loaded;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v3, :cond_6

    invoke-interface {v3, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    goto :goto_3

    .line 210
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {p2, v1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 401
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Product "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in store"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 213
    iget-object v4, v0, Lcom/superwall/sdk/store/StoreManager;->productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/superwall/sdk/store/ProductState$Loaded;

    if-nez v4, :cond_9

    .line 214
    iget-object v4, v0, Lcom/superwall/sdk/store/StoreManager;->productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v4, Ljava/util/Map;

    new-instance v5, Lcom/superwall/sdk/store/ProductState$Error;

    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    invoke-direct {v5, v6}, Lcom/superwall/sdk/store/ProductState$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_9
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v1, :cond_8

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_a
    return-object v2

    :catchall_1
    move-exception p2

    move-object v0, p0

    .line 403
    :goto_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 221
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CompletableDeferred;

    .line 222
    iget-object v3, v0, Lcom/superwall/sdk/store/StoreManager;->productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v3, Ljava/util/Map;

    new-instance v4, Lcom/superwall/sdk/store/ProductState$Error;

    invoke-direct {v4, p2}, Lcom/superwall/sdk/store/ProductState$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-interface {v1, p2}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_6

    .line 225
    :cond_b
    throw p2
.end method

.method private final fetchOrAwaitProducts(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;

    iget v1, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;-><init>(Lcom/superwall/sdk/store/StoreManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 135
    iget v2, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object v1, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v0, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object v2, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v4, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v6, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/StoreManager;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :catchall_0
    move-exception p2

    goto/16 :goto_d

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 136
    iget-object p2, p0, Lcom/superwall/sdk/store/StoreManager;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object p2, v5

    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/superwall/sdk/store/testmode/TestMode;->getTestProductsByFullId$superwall_release()Ljava/util/Map;

    move-result-object p2

    goto :goto_2

    :cond_5
    move-object p2, v5

    :goto_2
    if-nez p2, :cond_6

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 138
    :cond_6
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 139
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    goto :goto_5

    .line 141
    :cond_7
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .line 369
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 378
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 377
    check-cast v7, Ljava/lang/String;

    .line 141
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    if-eqz v8, :cond_9

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    goto :goto_4

    :cond_9
    move-object v7, v5

    :goto_4
    if-eqz v7, :cond_8

    .line 377
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 381
    :cond_a
    check-cast v6, Ljava/util/List;

    .line 369
    check-cast v6, Ljava/lang/Iterable;

    .line 141
    invoke-static {v6}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p2

    .line 143
    :goto_5
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {p1, v2}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object p2

    .line 146
    :cond_b
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 147
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 148
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    .line 150
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 152
    iget-object v9, p0, Lcom/superwall/sdk/store/StoreManager;->productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v9, Ljava/util/concurrent/ConcurrentMap;

    .line 382
    invoke-interface {v9, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_e

    .line 153
    invoke-static {v5, v4, v5}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v10

    .line 154
    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v11, Lcom/superwall/sdk/store/ProductState$Loading;

    invoke-direct {v11, v10}, Lcom/superwall/sdk/store/ProductState$Loading;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    check-cast v11, Lcom/superwall/sdk/store/ProductState;

    .line 383
    invoke-interface {v9, v8, v11}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_d

    move-object v10, v11

    goto :goto_7

    :cond_d
    move-object v10, v9

    .line 152
    :cond_e
    :goto_7
    check-cast v10, Lcom/superwall/sdk/store/ProductState;

    .line 158
    instance-of v9, v10, Lcom/superwall/sdk/store/ProductState$Loaded;

    if-eqz v9, :cond_f

    check-cast v10, Lcom/superwall/sdk/store/ProductState$Loaded;

    invoke-virtual {v10}, Lcom/superwall/sdk/store/ProductState$Loaded;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 159
    :cond_f
    instance-of v9, v10, Lcom/superwall/sdk/store/ProductState$Loading;

    if-eqz v9, :cond_10

    .line 160
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    check-cast v10, Lcom/superwall/sdk/store/ProductState$Loading;

    invoke-virtual {v10}, Lcom/superwall/sdk/store/ProductState$Loading;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 163
    :cond_10
    instance-of v9, v10, Lcom/superwall/sdk/store/ProductState$Error;

    if-eqz v9, :cond_13

    .line 165
    invoke-static {v5, v4, v5}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v9

    .line 166
    iget-object v11, p0, Lcom/superwall/sdk/store/StoreManager;->productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v12, Lcom/superwall/sdk/store/ProductState$Loading;

    invoke-direct {v12, v9}, Lcom/superwall/sdk/store/ProductState$Loading;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-virtual {v11, v8, v10, v12}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 167
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 169
    :cond_11
    iget-object v9, p0, Lcom/superwall/sdk/store/StoreManager;->productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/superwall/sdk/store/ProductState$Loading;

    if-eqz v9, :cond_12

    check-cast v8, Lcom/superwall/sdk/store/ProductState$Loading;

    goto :goto_8

    :cond_12
    move-object v8, v5

    :goto_8
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lcom/superwall/sdk/store/ProductState$Loading;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 170
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    goto/16 :goto_6

    .line 157
    :cond_13
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 180
    :cond_14
    :try_start_1
    check-cast v6, Ljava/util/Collection;

    .line 181
    iput-object p0, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->label:I

    invoke-static {v6, v0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_15

    goto :goto_b

    :cond_15
    move-object v6, p0

    move-object v4, p2

    move-object p2, p1

    move-object p1, v7

    .line 135
    :goto_9
    :try_start_2
    check-cast p2, Ljava/lang/Iterable;

    const/16 v7, 0xa

    .line 385
    invoke-static {p2, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v7

    .line 386
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object v7, v8

    check-cast v7, Ljava/util/Map;

    .line 387
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 388
    move-object v9, v8

    check-cast v9, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    .line 182
    invoke-virtual {v9}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 388
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_a

    .line 192
    :cond_16
    iput-object v4, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/store/StoreManager$fetchOrAwaitProducts$1;->label:I

    invoke-direct {v6, p1, v0}, Lcom/superwall/sdk/store/StoreManager;->fetchNewProducts(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_17

    :goto_b
    return-object v1

    :cond_17
    move-object v1, v2

    move-object v0, v4

    move-object p1, v7

    .line 135
    :goto_c
    check-cast p2, Ljava/util/Map;

    .line 194
    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p2

    move-object v6, p0

    move-object p1, v7

    .line 391
    :goto_d
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CompletableDeferred;

    .line 186
    iget-object v2, v6, Lcom/superwall/sdk/store/StoreManager;->productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v2, Ljava/util/Map;

    new-instance v3, Lcom/superwall/sdk/store/ProductState$Error;

    invoke-direct {v3, p2}, Lcom/superwall/sdk/store/ProductState$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-interface {v0, p2}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_e

    .line 189
    :cond_18
    throw p2
.end method

.method private final removeAndStore(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;)",
            "Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 234
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 235
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 236
    move-object/from16 v3, p3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    if-eqz p1, :cond_6

    .line 240
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    .line 241
    invoke-virtual {v5}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 244
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {v0, v7, v5}, Lcom/superwall/sdk/store/StoreManager;->cacheProduct(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    .line 248
    sget-object v8, Lcom/superwall/sdk/billing/DecomposedProductIds;->Companion:Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;

    invoke-virtual {v5}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;->from(Ljava/lang/String;)Lcom/superwall/sdk/billing/DecomposedProductIds;

    move-result-object v5

    .line 406
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 407
    check-cast v10, Lcom/superwall/sdk/models/product/ProductItem;

    .line 251
    invoke-virtual {v10}, Lcom/superwall/sdk/models/product/ProductItem;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, -0x1

    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-ltz v9, :cond_2

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    const-string v9, ""

    if-eqz v8, :cond_4

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 254
    new-instance v8, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    .line 255
    new-instance v10, Lcom/superwall/sdk/models/product/PlayStoreProduct;

    .line 256
    invoke-virtual {v5}, Lcom/superwall/sdk/billing/DecomposedProductIds;->getSubscriptionId()Ljava/lang/String;

    move-result-object v12

    .line 257
    invoke-virtual {v5}, Lcom/superwall/sdk/billing/DecomposedProductIds;->getBasePlanId()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    move-object v13, v9

    goto :goto_4

    :cond_3
    move-object v13, v11

    .line 258
    :goto_4
    invoke-virtual {v5}, Lcom/superwall/sdk/billing/DecomposedProductIds;->getOfferType()Lcom/superwall/sdk/store/abstractions/product/OfferType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/store/abstractions/product/OfferType;->toOffer()Lcom/superwall/sdk/models/product/Offer;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v11, 0x0

    .line 255
    invoke-direct/range {v10 .. v16}, Lcom/superwall/sdk/models/product/PlayStoreProduct;-><init>(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 254
    invoke-direct {v8, v10}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;-><init>(Lcom/superwall/sdk/models/product/PlayStoreProduct;)V

    .line 263
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/superwall/sdk/models/product/ProductItem;

    invoke-virtual {v5}, Lcom/superwall/sdk/models/product/ProductItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/superwall/sdk/models/product/ProductItem;

    invoke-virtual {v9}, Lcom/superwall/sdk/models/product/ProductItem;->getEntitlements()Ljava/util/Set;

    move-result-object v9

    .line 266
    invoke-virtual {v8}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;->getProduct()Lcom/superwall/sdk/models/product/PlayStoreProduct;

    move-result-object v10

    invoke-virtual {v10}, Lcom/superwall/sdk/models/product/PlayStoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v10

    .line 262
    new-instance v11, Lcom/superwall/sdk/models/product/ProductItem;

    .line 265
    check-cast v8, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    .line 262
    invoke-direct {v11, v10, v5, v8, v9}, Lcom/superwall/sdk/models/product/ProductItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;Ljava/util/Set;)V

    .line 261
    invoke-interface {v3, v6, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 268
    :cond_4
    move-object v8, v0

    check-cast v8, Lcom/superwall/sdk/store/StoreManager;

    .line 270
    new-instance v8, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    .line 271
    new-instance v10, Lcom/superwall/sdk/models/product/PlayStoreProduct;

    .line 272
    invoke-virtual {v5}, Lcom/superwall/sdk/billing/DecomposedProductIds;->getSubscriptionId()Ljava/lang/String;

    move-result-object v12

    .line 273
    invoke-virtual {v5}, Lcom/superwall/sdk/billing/DecomposedProductIds;->getBasePlanId()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_5

    move-object v13, v9

    goto :goto_5

    :cond_5
    move-object v13, v11

    .line 274
    :goto_5
    invoke-virtual {v5}, Lcom/superwall/sdk/billing/DecomposedProductIds;->getOfferType()Lcom/superwall/sdk/store/abstractions/product/OfferType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/store/abstractions/product/OfferType;->toOffer()Lcom/superwall/sdk/models/product/Offer;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v11, 0x0

    .line 271
    invoke-direct/range {v10 .. v16}, Lcom/superwall/sdk/models/product/PlayStoreProduct;-><init>(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 270
    invoke-direct {v8, v10}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;-><init>(Lcom/superwall/sdk/models/product/PlayStoreProduct;)V

    .line 281
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v5

    .line 283
    invoke-virtual {v8}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;->getProduct()Lcom/superwall/sdk/models/product/PlayStoreProduct;

    move-result-object v9

    invoke-virtual {v9}, Lcom/superwall/sdk/models/product/PlayStoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 279
    new-instance v10, Lcom/superwall/sdk/models/product/ProductItem;

    .line 282
    check-cast v8, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    .line 279
    invoke-direct {v10, v9, v6, v8, v5}, Lcom/superwall/sdk/models/product/ProductItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;Ljava/util/Set;)V

    .line 278
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :goto_6
    new-instance v5, Lcom/superwall/sdk/store/StoreManager$$ExternalSyntheticLambda0;

    invoke-direct {v5, v7}, Lcom/superwall/sdk/store/StoreManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    goto/16 :goto_0

    .line 293
    :cond_6
    new-instance v4, Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;

    .line 294
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 293
    invoke-direct {v4, v1, v2, v3}, Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)V

    return-object v4
.end method

.method private static final removeAndStore$lambda$18$lambda$17(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cacheProduct(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V
    .locals 3

    const-string v0, "fullProductIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeProduct"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/superwall/sdk/store/StoreManager;->productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/store/ProductState;

    .line 323
    iget-object v1, p0, Lcom/superwall/sdk/store/StoreManager;->productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/superwall/sdk/store/ProductState$Loaded;

    invoke-direct {v2, p2}, Lcom/superwall/sdk/store/ProductState$Loaded;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    instance-of p1, v0, Lcom/superwall/sdk/store/ProductState$Loading;

    if-eqz p1, :cond_0

    .line 326
    check-cast v0, Lcom/superwall/sdk/store/ProductState$Loading;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/ProductState$Loading;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public consume-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p2, Lcom/superwall/sdk/store/StoreManager$consume$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/store/StoreManager$consume$1;

    iget v1, v0, Lcom/superwall/sdk/store/StoreManager$consume$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/store/StoreManager$consume$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/store/StoreManager$consume$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/StoreManager$consume$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/store/StoreManager$consume$1;-><init>(Lcom/superwall/sdk/store/StoreManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/store/StoreManager$consume$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 349
    iget v2, v0, Lcom/superwall/sdk/store/StoreManager$consume$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/superwall/sdk/store/StoreManager;->billing:Lcom/superwall/sdk/billing/Billing;

    iput v3, v0, Lcom/superwall/sdk/store/StoreManager$consume$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/superwall/sdk/billing/Billing;->consume-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    return-object p1
.end method

.method public final getBilling()Lcom/superwall/sdk/billing/Billing;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/store/StoreManager;->billing:Lcom/superwall/sdk/billing/Billing;

    return-object v0
.end method

.method public getProductFromCache(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/StoreProduct;
    .locals 2

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/superwall/sdk/store/StoreManager;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestMode;->getTestProductsByFullId$superwall_release()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    if-eqz v0, :cond_0

    return-object v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/store/StoreManager;->productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/superwall/sdk/store/ProductState$Loaded;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/superwall/sdk/store/ProductState$Loaded;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/superwall/sdk/store/ProductState$Loaded;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public getProductVariables(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/store/StoreManager$getProductVariables$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/store/StoreManager$getProductVariables$1;

    iget v1, v0, Lcom/superwall/sdk/store/StoreManager$getProductVariables$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/store/StoreManager$getProductVariables$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/store/StoreManager$getProductVariables$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/StoreManager$getProductVariables$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/store/StoreManager$getProductVariables$1;-><init>(Lcom/superwall/sdk/store/StoreManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v5, v0

    iget-object p3, v5, Lcom/superwall/sdk/store/StoreManager$getProductVariables$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 47
    iget v1, v5, Lcom/superwall/sdk/store/StoreManager$getProductVariables$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v5, Lcom/superwall/sdk/store/StoreManager$getProductVariables$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    move-object v1, p0

    check-cast v1, Lcom/superwall/sdk/store/StoreKit;

    iput-object p1, v5, Lcom/superwall/sdk/store/StoreManager$getProductVariables$1;->L$0:Ljava/lang/Object;

    iput v2, v5, Lcom/superwall/sdk/store/StoreManager$getProductVariables$1;->label:I

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Lcom/superwall/sdk/store/StoreKit$DefaultImpls;->getProducts$default(Lcom/superwall/sdk/store/StoreKit;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    move-object p1, v3

    .line 47
    :goto_1
    check-cast p3, Lcom/superwall/sdk/store/GetProductsResponse;

    .line 58
    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/Paywall;->getPlayStoreProducts()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 355
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 364
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 363
    check-cast v0, Lcom/superwall/sdk/models/product/CrossplatformProduct;

    .line 59
    invoke-virtual {p3}, Lcom/superwall/sdk/store/GetProductsResponse;->getProductsByFullId()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getFullProductId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    if-eqz v1, :cond_5

    .line 60
    new-instance v2, Lcom/superwall/sdk/models/product/ProductVariable;

    .line 61
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getName()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getAttributes()Ljava/util/Map;

    move-result-object v1

    .line 60
    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/models/product/ProductVariable;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    .line 363
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 367
    :cond_6
    check-cast p2, Ljava/util/List;

    return-object p2
.end method

.method public getProducts(Ljava/util/Map;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/GetProductsResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/superwall/sdk/store/StoreManager$getProducts$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;

    iget v1, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;

    invoke-direct {v0, p0, p4}, Lcom/superwall/sdk/store/StoreManager$getProducts$1;-><init>(Lcom/superwall/sdk/store/StoreManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 91
    iget v2, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p2, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    iget-object p3, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$1:Ljava/lang/Object;

    check-cast p3, Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;

    iget-object v0, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$4:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object p2, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$3:Ljava/lang/Object;

    check-cast p2, Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;

    iget-object p3, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$2:Ljava/lang/Object;

    check-cast p3, Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-object v2, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/models/paywall/Paywall;

    iget-object v4, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/StoreManager;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, p3

    move-object p3, p2

    move-object p2, v2

    move-object v2, p4

    move-object p4, v10

    goto :goto_1

    :catchall_0
    move-exception p4

    move-object v10, p4

    move-object p4, p1

    move-object p1, v10

    move-object v10, v2

    move-object v2, p2

    move-object p2, v10

    goto/16 :goto_3

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p2}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductIds()Ljava/util/List;

    move-result-object p4

    .line 100
    invoke-virtual {p2}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductItems()Ljava/util/List;

    move-result-object v2

    .line 97
    invoke-direct {p0, p1, p4, v2}, Lcom/superwall/sdk/store/StoreManager;->removeAndStore(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;->getSubstituteProductsById()Ljava/util/Map;

    move-result-object p4

    invoke-static {p4}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p4

    .line 106
    :try_start_1
    invoke-virtual {p1}, Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;->getFullProductIdsToLoad()Ljava/util/Set;

    move-result-object v2

    iput-object p0, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$3:Ljava/lang/Object;

    iput-object p4, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->label:I

    invoke-direct {p0, v2, v0}, Lcom/superwall/sdk/store/StoreManager;->fetchOrAwaitProducts(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v2, v1, :cond_4

    goto/16 :goto_6

    :cond_4
    move-object v4, p3

    move-object p3, p1

    move-object p1, p4

    move-object p4, v4

    move-object v4, p0

    .line 91
    :goto_1
    :try_start_2
    check-cast v2, Ljava/util/Map;

    .line 107
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    .line 108
    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v10, p4

    move-object p4, p1

    move-object p1, v2

    move-object v2, p3

    move-object p3, v10

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    move-object v4, p0

    .line 111
    :goto_3
    invoke-virtual {p2}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductsLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->setFailAt(Ljava/util/Date;)V

    const/4 v5, 0x0

    if-eqz p3, :cond_5

    .line 112
    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->getEventData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object v6, v5

    :goto_4
    invoke-virtual {p2, v6}, Lcom/superwall/sdk/models/paywall/Paywall;->getInfo(Lcom/superwall/sdk/models/events/EventData;)Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v6

    .line 114
    new-instance v7, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad;

    .line 115
    new-instance v8, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State$Fail;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State$Fail;-><init>(Ljava/lang/String;)V

    check-cast v8, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State;

    if-eqz p3, :cond_6

    .line 117
    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->getEventData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object p3

    goto :goto_5

    :cond_6
    move-object p3, v5

    .line 114
    :goto_5
    invoke-direct {v7, v8, v6, p3}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/models/events/EventData;)V

    .line 119
    iget-object p3, v4, Lcom/superwall/sdk/store/StoreManager;->track:Lkotlin/jvm/functions/Function2;

    iput-object p2, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/store/StoreManager$getProducts$1;->label:I

    invoke-interface {p3, v7, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    :goto_6
    return-object v1

    :cond_7
    move-object v0, p2

    move-object p2, p4

    move-object p3, v2

    .line 123
    :goto_7
    instance-of p4, p1, Lcom/superwall/sdk/billing/BillingError$BillingNotAvailable;

    if-nez p4, :cond_9

    move-object p1, p2

    move-object p2, v0

    .line 128
    :cond_8
    new-instance p4, Lcom/superwall/sdk/store/GetProductsResponse;

    .line 130
    invoke-virtual {p3}, Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;->getProductItems()Ljava/util/List;

    move-result-object p3

    .line 128
    invoke-direct {p4, p1, p3, p2}, Lcom/superwall/sdk/store/GetProductsResponse;-><init>(Ljava/util/Map;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall;)V

    return-object p4

    .line 124
    :cond_9
    throw p1
.end method

.method public getProductsWithoutPaywall(Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/store/StoreManager$getProductsWithoutPaywall$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/store/StoreManager$getProductsWithoutPaywall$1;

    iget v1, v0, Lcom/superwall/sdk/store/StoreManager$getProductsWithoutPaywall$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/store/StoreManager$getProductsWithoutPaywall$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/store/StoreManager$getProductsWithoutPaywall$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/StoreManager$getProductsWithoutPaywall$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/store/StoreManager$getProductsWithoutPaywall$1;-><init>(Lcom/superwall/sdk/store/StoreManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/store/StoreManager$getProductsWithoutPaywall$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 70
    iget v2, v0, Lcom/superwall/sdk/store/StoreManager$getProductsWithoutPaywall$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/store/StoreManager$getProductsWithoutPaywall$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 75
    invoke-direct {p0, p2, p1, p3}, Lcom/superwall/sdk/store/StoreManager;->removeAndStore(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;->getSubstituteProductsById()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 82
    invoke-virtual {p1}, Lcom/superwall/sdk/store/StoreManager$ProductProcessingResult;->getFullProductIdsToLoad()Ljava/util/Set;

    move-result-object p1

    iput-object p2, v0, Lcom/superwall/sdk/store/StoreManager$getProductsWithoutPaywall$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/store/StoreManager$getProductsWithoutPaywall$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/superwall/sdk/store/StoreManager;->fetchOrAwaitProducts(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    .line 70
    :goto_1
    check-cast p3, Ljava/util/Map;

    .line 84
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    .line 85
    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public final getPurchaseController()Lcom/superwall/sdk/store/InternalPurchaseController;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/superwall/sdk/store/StoreManager;->purchaseController:Lcom/superwall/sdk/store/InternalPurchaseController;

    return-object v0
.end method

.method public final getReceiptManager()Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/superwall/sdk/store/StoreManager;->receiptManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    return-object v0
.end method

.method public final getTestMode()Lcom/superwall/sdk/store/testmode/TestMode;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/superwall/sdk/store/StoreManager;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    return-object v0
.end method

.method public hasCached(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/superwall/sdk/store/StoreManager;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestMode;->getTestProductsByFullId$superwall_release()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/store/StoreManager;->productsByFullId:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/superwall/sdk/store/ProductState$Loaded;

    return p1
.end method

.method public loadPurchasedProducts(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 311
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 312
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->storeKitManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x18

    const/4 v7, 0x0

    .line 310
    const-string v3, "Loading purchased products from the Google Play receipt."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 315
    invoke-virtual {p0}, Lcom/superwall/sdk/store/StoreManager;->getReceiptManager()Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->loadPurchasedProducts(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public products(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/superwall/sdk/store/StoreManager;->billing:Lcom/superwall/sdk/billing/Billing;

    invoke-interface {v0, p1, p2}, Lcom/superwall/sdk/billing/Billing;->awaitGetProducts(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public refreshReceipt()V
    .locals 8

    .line 301
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 302
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 303
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->storeKitManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x18

    const/4 v7, 0x0

    .line 301
    const-string v3, "Refreshing Google Play receipt."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 306
    invoke-virtual {p0}, Lcom/superwall/sdk/store/StoreManager;->getReceiptManager()Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->refreshReceipt()V

    return-void
.end method

.method public final setTestMode(Lcom/superwall/sdk/store/testmode/TestMode;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/superwall/sdk/store/StoreManager;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    return-void
.end method
