.class public final Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;
.super Ljava/lang/Object;
.source "ReceiptManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;,
        Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReceiptManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReceiptManager.kt\ncom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,318:1\n1557#2:319\n1628#2,3:320\n1863#2:324\n1864#2:332\n1368#2:334\n1454#2,5:335\n1863#2:340\n295#2,2:341\n295#2,2:343\n1864#2:345\n1202#2,2:346\n1230#2,4:348\n1863#2:352\n1863#2:353\n1863#2:354\n1864#2:362\n1864#2:363\n1864#2:364\n1863#2:365\n1863#2:366\n1864#2:374\n1864#2:375\n1663#2,8:376\n1971#2,14:384\n1971#2,14:398\n295#2,2:412\n1755#2,3:414\n216#3:323\n217#3:333\n381#4,7:325\n381#4,7:355\n381#4,7:367\n1#5:417\n*S KotlinDebug\n*F\n+ 1 ReceiptManager.kt\ncom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager\n*L\n65#1:319\n65#1:320,3\n94#1:324\n94#1:332\n109#1:334\n109#1:335,5\n111#1:340\n115#1:341,2\n116#1:343,2\n111#1:345\n122#1:346,2\n122#1:348,4\n124#1:352\n128#1:353\n139#1:354\n139#1:362\n128#1:363\n124#1:364\n182#1:365\n184#1:366\n184#1:374\n182#1:375\n214#1:376,8\n249#1:384,14\n274#1:398,14\n284#1:412,2\n289#1:414,3\n93#1:323\n93#1:333\n95#1:325,7\n141#1:355,7\n186#1:367,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001:\u0001MBM\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J(\u00104\u001a\u0002052\u0018\u00106\u001a\u0014\u0012\u0004\u0012\u000201\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002080007H\u0086@\u00a2\u0006\u0002\u00109J(\u0010:\u001a\u00020;2\u0018\u00106\u001a\u0014\u0012\u0004\u0012\u000201\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002080007H\u0086@\u00a2\u0006\u0002\u00109J0\u0010<\u001a\u0002052\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020?0>2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020A07H\u0082@\u00a2\u0006\u0002\u0010BJ\u0006\u0010C\u001a\u000205J\u000e\u0010D\u001a\u00020.H\u0086@\u00a2\u0006\u0002\u0010EJ\u000e\u0010F\u001a\u00020\u00162\u0006\u0010G\u001a\u000201J\u0016\u0010H\u001a\u00020\u00162\u0006\u0010I\u001a\u00020AH\u0086@\u00a2\u0006\u0002\u0010JJ\u0012\u0010K\u001a\u000e\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u000107J\n\u0010L\u001a\u0004\u0018\u000101H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R \u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0014\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010,\u001a\u0008\u0012\u0004\u0012\u00020.0-X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010/\u001a\u0008\u0012\u0004\u0012\u000201008F\u00a2\u0006\u0006\u001a\u0004\u00082\u00103\u00a8\u0006N"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;",
        "",
        "delegate",
        "Lcom/superwall/sdk/store/coordinator/ProductsFetcher;",
        "billing",
        "Lcom/superwall/sdk/billing/Billing;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "storage",
        "Lcom/superwall/sdk/storage/Storage;",
        "customerInfoManager",
        "Lkotlin/Function0;",
        "Lcom/superwall/sdk/customer/CustomerInfoManager;",
        "entitlementProcessor",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;",
        "subscriptionStatusProvider",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;",
        "<init>",
        "(Lcom/superwall/sdk/store/coordinator/ProductsFetcher;Lcom/superwall/sdk/billing/Billing;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;)V",
        "getCustomerInfoManager$superwall_release",
        "()Lkotlin/jvm/functions/Function0;",
        "latestSubscriptionWillAutoRenew",
        "",
        "getLatestSubscriptionWillAutoRenew",
        "()Ljava/lang/Boolean;",
        "setLatestSubscriptionWillAutoRenew",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "latestSubscriptionPeriodType",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;",
        "getLatestSubscriptionPeriodType",
        "()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;",
        "setLatestSubscriptionPeriodType",
        "(Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;)V",
        "transactionReceipts",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/TransactionReceipt;",
        "getTransactionReceipts",
        "()Ljava/util/List;",
        "setTransactionReceipts",
        "(Ljava/util/List;)V",
        "_purchases",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;",
        "latestSubscriptionState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;",
        "purchases",
        "",
        "",
        "getPurchases",
        "()Ljava/util/Set;",
        "loadPurchasedProducts",
        "",
        "serverEntitlementsByProductId",
        "",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadPurchases",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;",
        "updateExperimentalDeviceVariables",
        "allPurchases",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "productsById",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "(Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "refreshReceipt",
        "lastSubscriptionProperties",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "hasPurchasedProduct",
        "productId",
        "isEligibleForIntroOffer",
        "storeProduct",
        "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "experimentalProperties",
        "determinePeriodType",
        "PurchaseSnapshot",
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
.field private _purchases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;",
            ">;"
        }
    .end annotation
.end field

.field private final billing:Lcom/superwall/sdk/billing/Billing;

.field private final customerInfoManager:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/customer/CustomerInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lcom/superwall/sdk/store/coordinator/ProductsFetcher;

.field private final entitlementProcessor:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private latestSubscriptionPeriodType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

.field private final latestSubscriptionState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;",
            ">;"
        }
    .end annotation
.end field

.field private latestSubscriptionWillAutoRenew:Ljava/lang/Boolean;

.field private final storage:Lcom/superwall/sdk/storage/Storage;

.field private final subscriptionStatusProvider:Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;

.field private transactionReceipts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/TransactionReceipt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/store/coordinator/ProductsFetcher;Lcom/superwall/sdk/billing/Billing;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/coordinator/ProductsFetcher;",
            "Lcom/superwall/sdk/billing/Billing;",
            "Lcom/superwall/sdk/misc/IOScope;",
            "Lcom/superwall/sdk/storage/Storage;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/customer/CustomerInfoManager;",
            ">;",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;",
            ")V"
        }
    .end annotation

    const-string v0, "billing"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customerInfoManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entitlementProcessor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionStatusProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->delegate:Lcom/superwall/sdk/store/coordinator/ProductsFetcher;

    .line 42
    iput-object p2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->billing:Lcom/superwall/sdk/billing/Billing;

    .line 43
    iput-object p3, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 44
    iput-object p4, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->storage:Lcom/superwall/sdk/storage/Storage;

    .line 45
    iput-object p5, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->customerInfoManager:Lkotlin/jvm/functions/Function0;

    .line 46
    iput-object p6, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->entitlementProcessor:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;

    .line 47
    iput-object p7, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->subscriptionStatusProvider:Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->transactionReceipts:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->_purchases:Ljava/util/Set;

    .line 62
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->UNKNOWN:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->latestSubscriptionState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 269
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->refreshReceipt()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/store/coordinator/ProductsFetcher;Lcom/superwall/sdk/billing/Billing;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    .line 43
    new-instance p3, Lcom/superwall/sdk/misc/IOScope;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p3, v1, v0, v1}, Lcom/superwall/sdk/misc/IOScope;-><init>(Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    move-object v5, p3

    and-int/lit8 p3, p8, 0x20

    if-eqz p3, :cond_1

    .line 46
    new-instance p3, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;

    invoke-direct {p3}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;-><init>()V

    move-object v8, p3

    goto :goto_0

    :cond_1
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 p3, p8, 0x40

    if-eqz p3, :cond_2

    .line 47
    new-instance p3, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayBillingSubscriptionStatusProvider;

    invoke-direct {p3, p2}, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayBillingSubscriptionStatusProvider;-><init>(Lcom/superwall/sdk/billing/Billing;)V

    check-cast p3, Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;

    move-object v9, p3

    goto :goto_1

    :cond_2
    move-object/from16 v9, p7

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    .line 40
    invoke-direct/range {v2 .. v9}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;-><init>(Lcom/superwall/sdk/store/coordinator/ProductsFetcher;Lcom/superwall/sdk/billing/Billing;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;)V

    return-void
.end method

.method public static final synthetic access$getLatestSubscriptionState$p(Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->latestSubscriptionState:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$updateExperimentalDeviceVariables(Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->updateExperimentalDeviceVariables(Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final determinePeriodType()Ljava/lang/String;
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->latestSubscriptionPeriodType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 314
    :pswitch_1
    const-string v0, "revoked"

    return-object v0

    .line 313
    :pswitch_2
    const-string v0, "winback"

    return-object v0

    .line 312
    :pswitch_3
    const-string v0, "intro"

    return-object v0

    .line 311
    :pswitch_4
    const-string v0, "normal"

    return-object v0

    .line 310
    :pswitch_5
    const-string v0, "code"

    return-object v0

    .line 309
    :pswitch_6
    const-string v0, "trial"

    return-object v0

    :pswitch_7
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final updateExperimentalDeviceVariables(Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;

    iget v1, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;-><init>(Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 245
    iget v2, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p2, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    iget-object v1, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    iget-object v0, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 249
    check-cast p1, Ljava/lang/Iterable;

    .line 384
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 385
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    .line 386
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 387
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    move-object p1, p3

    goto :goto_2

    .line 388
    :cond_4
    move-object v2, p3

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 249
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v4

    .line 390
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 391
    move-object v6, v2

    check-cast v6, Lcom/android/billingclient/api/Purchase;

    .line 249
    invoke-virtual {v6}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_6

    move-object p3, v2

    move-wide v4, v6

    .line 396
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 249
    :goto_2
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    if-nez p1, :cond_7

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 250
    :cond_7
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p3

    const-string v2, "getProducts(...)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    if-nez p2, :cond_8

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 252
    :cond_8
    iget-object p3, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->subscriptionStatusProvider:Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;

    invoke-interface {p3, p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;->getWillAutoRenew(Lcom/android/billingclient/api/Purchase;)Z

    move-result p3

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->latestSubscriptionWillAutoRenew:Ljava/lang/Boolean;

    .line 253
    iget-object p3, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->latestSubscriptionState:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->subscriptionStatusProvider:Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;

    iput-object p0, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$updateExperimentalDeviceVariables$1;->label:I

    invoke-interface {v2, p1, p2, v0}, Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;->getSubscriptionState(Lcom/android/billingclient/api/Purchase;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9

    return-object v1

    :cond_9
    move-object v1, p1

    move-object p1, p3

    move-object p3, v0

    move-object v0, p0

    :goto_3
    invoke-interface {p1, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 254
    iget-object p1, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->subscriptionStatusProvider:Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;

    invoke-interface {p1, v1, p2}, Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;->getOfferType(Lcom/android/billingclient/api/Purchase;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    move-result-object p1

    iput-object p1, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->latestSubscriptionPeriodType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    .line 255
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final experimentalProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 298
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v0

    .line 299
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->determinePeriodType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "latestSubscriptionPeriodType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->latestSubscriptionWillAutoRenew:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "latestSubscriptionWillAutoRenew"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->latestSubscriptionState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "latestSubscriptionState"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {v0}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomerInfoManager$superwall_release()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/customer/CustomerInfoManager;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->customerInfoManager:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getLatestSubscriptionPeriodType()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->latestSubscriptionPeriodType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    return-object v0
.end method

.method public final getLatestSubscriptionWillAutoRenew()Ljava/lang/Boolean;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->latestSubscriptionWillAutoRenew:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPurchases()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->_purchases:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 320
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 321
    check-cast v2, Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;

    .line 65
    invoke-virtual {v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;->getProductIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 319
    check-cast v1, Ljava/lang/Iterable;

    .line 65
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getTransactionReceipts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/TransactionReceipt;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->transactionReceipts:Ljava/util/List;

    return-object v0
.end method

.method public final hasPurchasedProduct(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->_purchases:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 412
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;

    .line 284
    invoke-virtual {v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;->getProductIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final isEligibleForIntroOffer(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 289
    iget-object p2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->_purchases:Ljava/util/Set;

    check-cast p2, Ljava/lang/Iterable;

    .line 414
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;

    .line 289
    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;->getProductIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getProductIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :cond_2
    :goto_0
    xor-int/lit8 p1, v2, 0x1

    .line 290
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final lastSubscriptionProperties(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;

    iget v1, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;-><init>(Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 272
    iget v2, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    iget-object v4, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v2, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 274
    iget-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->billing:Lcom/superwall/sdk/billing/Billing;

    iput-object p0, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->label:I

    invoke-interface {p1, v0}, Lcom/superwall/sdk/billing/Billing;->queryAllPurchases(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto/16 :goto_4

    :cond_5
    move-object v2, p0

    .line 272
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 398
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 399
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    move-object v5, v6

    goto :goto_2

    .line 400
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 401
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    .line 402
    :cond_7
    move-object v7, v5

    check-cast v7, Lcom/android/billingclient/api/Purchase;

    .line 274
    invoke-virtual {v7}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v7

    .line 404
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 405
    move-object v10, v9

    check-cast v10, Lcom/android/billingclient/api/Purchase;

    .line 274
    invoke-virtual {v10}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v10

    cmp-long v12, v7, v10

    if-gez v12, :cond_9

    move-object v5, v9

    move-wide v7, v10

    .line 410
    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_8

    .line 274
    :goto_2
    move-object p1, v5

    check-cast p1, Lcom/android/billingclient/api/Purchase;

    if-nez p1, :cond_a

    .line 275
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->UNKNOWN:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object p1

    .line 278
    :cond_a
    iget-object v5, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->billing:Lcom/superwall/sdk/billing/Billing;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v7

    const-string v8, "getProducts(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    iput-object v2, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->label:I

    invoke-interface {v5, v7, v0}, Lcom/superwall/sdk/billing/Billing;->awaitGetProducts(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_b

    goto :goto_4

    :cond_b
    move-object v13, v2

    move-object v2, p1

    move-object p1, v4

    move-object v4, v13

    :goto_3
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    if-nez p1, :cond_c

    .line 279
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;->UNKNOWN:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;

    return-object p1

    .line 281
    :cond_c
    iget-object v4, v4, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->subscriptionStatusProvider:Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;

    iput-object v6, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$lastSubscriptionProperties$1;->label:I

    invoke-interface {v4, v2, p1, v0}, Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;->getSubscriptionState(Lcom/android/billingclient/api/Purchase;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    :goto_4
    return-object v1

    :cond_d
    return-object p1
.end method

.method public final loadPurchasedProducts(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->loadPurchases(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final loadPurchases(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29
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
            "Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;

    iget v3, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;

    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;-><init>(Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 83
    iget v4, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->label:I

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v4, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v7, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    iget-object v2, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v4, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->I$0:I

    iget-object v7, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$8:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v10, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$7:Ljava/lang/Object;

    check-cast v10, Ljava/util/Map;

    iget-object v11, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$6:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$5:Ljava/lang/Object;

    check-cast v12, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;

    iget-object v13, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$4:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    iget-object v14, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/util/Set;

    iget-object v15, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$2:Ljava/lang/Object;

    check-cast v15, Ljava/util/Set;

    iget-object v5, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    iget-object v6, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v13

    move-object v13, v6

    move-object v6, v0

    move-object v0, v7

    const/4 v7, 0x0

    goto/16 :goto_c

    :cond_3
    iget v4, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->I$0:I

    iget-object v5, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;

    iget-object v6, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$4:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v10, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/util/Set;

    iget-object v11, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/util/Set;

    iget-object v12, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map;

    iget-object v13, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v10

    move-object v10, v12

    :goto_1
    move-object v12, v5

    goto/16 :goto_3

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v11, v1

    check-cast v11, Ljava/util/Set;

    .line 85
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    .line 86
    iget-object v4, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->transactionReceipts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 92
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 323
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 94
    check-cast v6, Ljava/lang/Iterable;

    .line 324
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 95
    invoke-virtual {v12}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v12

    .line 325
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_6

    .line 95
    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v13, Ljava/util/Set;

    .line 328
    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_6
    check-cast v13, Ljava/util/Set;

    .line 95
    invoke-interface {v13, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    :cond_7
    iget-object v5, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v6, Lcom/superwall/sdk/storage/StoredTransactionHistory;->INSTANCE:Lcom/superwall/sdk/storage/StoredTransactionHistory;

    check-cast v6, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v5, v6}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;

    if-nez v5, :cond_8

    new-instance v5, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;

    invoke-direct {v5, v9, v8, v9}, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    :cond_8
    iget-object v6, v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->billing:Lcom/superwall/sdk/billing/Billing;

    iput-object v0, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$0:Ljava/lang/Object;

    move-object/from16 v10, p1

    iput-object v10, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$2:Ljava/lang/Object;

    iput-object v1, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$4:Ljava/lang/Object;

    iput-object v5, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$5:Ljava/lang/Object;

    const/4 v12, 0x0

    iput v12, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->I$0:I

    iput v8, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->label:I

    invoke-interface {v6, v2}, Lcom/superwall/sdk/billing/Billing;->queryAllPurchases(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_9

    goto/16 :goto_14

    :cond_9
    move-object v13, v0

    move-object v14, v1

    move-object v1, v6

    move-object v6, v4

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 83
    :goto_3
    check-cast v1, Ljava/util/List;

    .line 104
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v5, Ljava/util/Map;

    .line 105
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    check-cast v15, Ljava/util/List;

    .line 109
    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/Iterable;

    .line 334
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v18

    check-cast v8, Ljava/util/Collection;

    .line 335
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 336
    check-cast v18, Lcom/android/billingclient/api/Purchase;

    .line 109
    invoke-virtual/range {v18 .. v18}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v7

    const-string v9, "getProducts(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Iterable;

    .line 337
    invoke-static {v8, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    const/4 v7, 0x2

    const/4 v9, 0x0

    goto :goto_4

    .line 339
    :cond_a
    check-cast v8, Ljava/util/List;

    .line 334
    check-cast v8, Ljava/lang/Iterable;

    .line 109
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 110
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v8, Ljava/util/Map;

    .line 111
    check-cast v7, Ljava/lang/Iterable;

    .line 340
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 115
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    check-cast v17, Ljava/lang/Iterable;

    .line 341
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    move-object/from16 v0, p0

    goto :goto_6

    :cond_c
    const/16 v21, 0x0

    :goto_7
    check-cast v21, Ljava/lang/String;

    if-nez v21, :cond_f

    .line 116
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 343
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p1, v0

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v7

    .line 116
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v23, v3

    const-string v3, ":"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v16, v4

    move-object/from16 v24, v15

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v15, 0x0

    invoke-static {v0, v3, v7, v4, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_9

    :cond_d
    move-object/from16 v0, p1

    move/from16 v4, v16

    move-object/from16 v7, v22

    move-object/from16 v3, v23

    move-object/from16 v15, v24

    goto :goto_8

    :cond_e
    move-object/from16 v23, v3

    move/from16 v16, v4

    move-object/from16 v22, v7

    move-object/from16 v24, v15

    const/4 v7, 0x0

    const/16 v17, 0x0

    .line 344
    :goto_9
    move-object/from16 v21, v17

    check-cast v21, Ljava/lang/String;

    goto :goto_a

    :cond_f
    move-object/from16 v23, v3

    move/from16 v16, v4

    move-object/from16 v22, v7

    move-object/from16 v24, v15

    const/4 v7, 0x0

    :goto_a
    if-nez v21, :cond_10

    move-object v0, v9

    goto :goto_b

    :cond_10
    move-object/from16 v0, v21

    .line 117
    :goto_b
    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v4, v16

    move-object/from16 v7, v22

    move-object/from16 v3, v23

    move-object/from16 v15, v24

    goto/16 :goto_5

    :cond_11
    move-object/from16 v23, v3

    move/from16 v16, v4

    move-object/from16 v24, v15

    const/4 v7, 0x0

    .line 121
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 122
    iget-object v3, v13, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->billing:Lcom/superwall/sdk/billing/Billing;

    iput-object v13, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$2:Ljava/lang/Object;

    iput-object v14, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$4:Ljava/lang/Object;

    iput-object v12, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$5:Ljava/lang/Object;

    iput-object v1, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$6:Ljava/lang/Object;

    iput-object v5, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$7:Ljava/lang/Object;

    iput-object v15, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$8:Ljava/lang/Object;

    iput v4, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->I$0:I

    const/4 v8, 0x2

    iput v8, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->label:I

    invoke-interface {v3, v0, v2}, Lcom/superwall/sdk/billing/Billing;->awaitGetProducts(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, v23

    if-ne v0, v3, :cond_12

    goto/16 :goto_14

    :cond_12
    move-object/from16 v28, v1

    move-object v1, v0

    move-object v0, v15

    move-object v15, v11

    move-object/from16 v11, v28

    move-object/from16 v28, v10

    move-object v10, v5

    move-object/from16 v5, v28

    .line 83
    :goto_c
    check-cast v1, Ljava/lang/Iterable;

    const/16 v8, 0xa

    .line 346
    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v8

    .line 347
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v9, Ljava/util/Map;

    .line 348
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 349
    move-object/from16 v16, v8

    check-cast v16, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    .line 122
    invoke-virtual/range {v16 .. v16}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getProductIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 349
    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    goto :goto_d

    .line 124
    :cond_13
    move-object v1, v11

    check-cast v1, Ljava/lang/Iterable;

    .line 352
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/billingclient/api/Purchase;

    .line 126
    sget-object v8, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter$Companion;

    invoke-virtual {v8, v7, v9}, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter$Companion;->fromPurchase(Lcom/android/billingclient/api/Purchase;Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    .line 128
    check-cast v8, Ljava/lang/Iterable;

    .line 353
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v1

    move-object/from16 v1, v16

    check-cast v1, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v16, v4

    .line 131
    new-instance v4, Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;

    move-object/from16 v20, v7

    .line 132
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->getProductId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getProductIdentifier()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_15

    :cond_14
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->getProductId()Ljava/lang/String;

    move-result-object v7

    :cond_15
    move-object/from16 v21, v8

    .line 133
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->getProductId()Ljava/lang/String;

    move-result-object v8

    .line 131
    invoke-direct {v4, v7, v8}, Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-interface {v15, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_18

    .line 139
    check-cast v4, Ljava/lang/Iterable;

    .line 354
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 141
    invoke-virtual {v7}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v7

    .line 355
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_16

    .line 141
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/List;

    .line 358
    invoke-interface {v10, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_16
    check-cast v8, Ljava/util/List;

    .line 142
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 362
    :cond_17
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_18
    move-object/from16 v1, p1

    move/from16 v4, v16

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    goto :goto_f

    :cond_19
    move-object/from16 p1, v1

    move/from16 v16, v4

    move-object/from16 v20, v7

    .line 147
    invoke-virtual/range {v20 .. v20}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "getPurchaseToken(...)"

    if-nez v1, :cond_1a

    invoke-virtual/range {v20 .. v20}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    :cond_1a
    invoke-interface {v14, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 149
    iget-object v7, v13, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->transactionReceipts:Ljava/util/List;

    .line 150
    new-instance v8, Lcom/superwall/sdk/store/abstractions/product/receipt/TransactionReceipt;

    move-object/from16 v21, v10

    .line 152
    invoke-virtual/range {v20 .. v20}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {v8, v1, v10}, Lcom/superwall/sdk/store/abstractions/product/receipt/TransactionReceipt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1b
    move-object/from16 v21, v10

    :goto_11
    move-object/from16 v1, p1

    move/from16 v4, v16

    move-object/from16 v10, v21

    goto/16 :goto_e

    :cond_1c
    move/from16 v16, v4

    .line 161
    invoke-virtual {v12, v0}, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->mergeWith(Ljava/util/List;)Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;

    move-result-object v1

    .line 162
    iget-object v4, v13, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v7, Lcom/superwall/sdk/storage/StoredTransactionHistory;->INSTANCE:Lcom/superwall/sdk/storage/StoredTransactionHistory;

    check-cast v7, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v4, v7, v1}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 164
    sget-object v20, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 165
    sget-object v21, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 166
    sget-object v22, Lcom/superwall/sdk/logger/LogScope;->receipts:Lcom/superwall/sdk/logger/LogScope;

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 169
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->getTransactions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 170
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->activeTransactions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Transaction history: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " current, "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " total stored, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " active"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x18

    const/16 v27, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 164
    invoke-static/range {v20 .. v27}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 174
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->allTransactions()Ljava/util/List;

    move-result-object v0

    .line 177
    iget-object v1, v13, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->entitlementProcessor:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;

    invoke-virtual {v1, v0}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;->processTransactions(Ljava/util/List;)Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$ProcessedTransactions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$ProcessedTransactions;->component1()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$ProcessedTransactions;->component2()Ljava/util/List;

    move-result-object v1

    .line 181
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    .line 182
    check-cast v0, Ljava/lang/Iterable;

    .line 365
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    .line 183
    invoke-interface {v8}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getProductId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    if-eqz v10, :cond_1d

    .line 184
    check-cast v10, Ljava/lang/Iterable;

    .line 366
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_13
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 186
    invoke-virtual {v12}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v12

    .line 367
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_1e

    .line 186
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    check-cast v14, Ljava/util/List;

    .line 370
    invoke-interface {v7, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_1e
    check-cast v14, Ljava/util/List;

    .line 187
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 374
    :cond_1f
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_12

    .line 192
    :cond_20
    iget-object v0, v13, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->entitlementProcessor:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;

    invoke-virtual {v0, v7, v5, v6}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;->buildEntitlementsFromTransactions(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v16, :cond_22

    .line 200
    iput-object v13, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$0:Ljava/lang/Object;

    iput-object v15, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$2:Ljava/lang/Object;

    iput-object v1, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$3:Ljava/lang/Object;

    iput-object v0, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$4:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$5:Ljava/lang/Object;

    iput-object v5, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$6:Ljava/lang/Object;

    iput-object v5, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$7:Ljava/lang/Object;

    iput-object v5, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->L$8:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v2, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$loadPurchases$1;->label:I

    invoke-direct {v13, v11, v9, v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->updateExperimentalDeviceVariables(Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_21

    :goto_14
    return-object v3

    :cond_21
    move-object v3, v0

    move-object v5, v4

    move-object v2, v13

    move-object v7, v15

    move-object v4, v1

    :goto_15
    move-object v13, v2

    move-object v0, v3

    move-object v1, v4

    move-object v4, v5

    move-object v15, v7

    .line 203
    :cond_22
    iput-object v15, v13, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->_purchases:Ljava/util/Set;

    .line 208
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    .line 209
    move-object v3, v4

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    .line 212
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 213
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 376
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 377
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 378
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 379
    move-object v11, v10

    check-cast v11, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 214
    invoke-virtual {v11}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v11

    .line 380
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 381
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 383
    :cond_24
    check-cast v9, Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    .line 215
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    .line 216
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v10, 0x1

    goto :goto_17

    :cond_25
    const/4 v10, 0x0

    .line 207
    :goto_17
    new-instance v5, Lcom/superwall/sdk/models/customer/CustomerInfo;

    const-string v8, ""

    invoke-direct/range {v5 .. v10}, Lcom/superwall/sdk/models/customer/CustomerInfo;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    .line 220
    iget-object v1, v13, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v4, Lcom/superwall/sdk/storage/LatestDeviceCustomerInfo;->INSTANCE:Lcom/superwall/sdk/storage/LatestDeviceCustomerInfo;

    check-cast v4, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v1, v4, v5}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 222
    sget-object v16, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 223
    sget-object v17, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 224
    sget-object v18, Lcom/superwall/sdk/logger/LogScope;->receipts:Lcom/superwall/sdk/logger/LogScope;

    .line 226
    invoke-virtual {v5}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getSubscriptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 227
    invoke-virtual {v5}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getNonSubscriptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 228
    invoke-virtual {v5}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getEntitlements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Built device CustomerInfo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " subs, "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " non-subs, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " entitlements"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x18

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 222
    invoke-static/range {v16 .. v23}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 232
    iget-object v1, v13, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->customerInfoManager:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/customer/CustomerInfoManager;

    invoke-virtual {v1}, Lcom/superwall/sdk/customer/CustomerInfoManager;->updateMergedCustomerInfo()V

    .line 234
    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;

    .line 237
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 238
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 234
    invoke-direct {v1, v15, v0, v3, v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$PurchaseSnapshot;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public final refreshReceipt()V
    .locals 8

    .line 258
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 259
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 260
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->receipts:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x18

    const/4 v7, 0x0

    .line 258
    const-string v3, "Refreshing receipts"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$refreshReceipt$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager$refreshReceipt$1;-><init>(Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setLatestSubscriptionPeriodType(Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->latestSubscriptionPeriodType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    return-void
.end method

.method public final setLatestSubscriptionWillAutoRenew(Ljava/lang/Boolean;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->latestSubscriptionWillAutoRenew:Ljava/lang/Boolean;

    return-void
.end method

.method public final setTransactionReceipts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/TransactionReceipt;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/ReceiptManager;->transactionReceipts:Ljava/util/List;

    return-void
.end method
