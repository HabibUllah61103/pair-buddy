.class public final Lcom/superwall/sdk/store/AutomaticPurchaseController;
.super Ljava/lang/Object;
.source "AutomaticPurchaseController.kt"

# interfaces
.implements Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/AutomaticPurchaseController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutomaticPurchaseController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutomaticPurchaseController.kt\ncom/superwall/sdk/store/AutomaticPurchaseController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,444:1\n1#2:445\n1755#3,3:446\n1567#3:449\n1598#3,4:450\n1368#3:454\n1454#3,5:455\n1368#3:460\n1454#3,5:461\n1557#3:466\n1628#3,3:467\n774#3:470\n865#3,2:471\n1863#3,2:473\n*S KotlinDebug\n*F\n+ 1 AutomaticPurchaseController.kt\ncom/superwall/sdk/store/AutomaticPurchaseController\n*L\n332#1:446,3\n338#1:449\n338#1:450,4\n348#1:454\n348#1:455,5\n351#1:460\n351#1:461,5\n365#1:466\n365#1:467,3\n422#1:470\n422#1:471,2\n423#1:473,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u0000 B2\u00020\u00012\u00020\u0002:\u0001BB;\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u001a\u0008\u0002\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010 \u001a\u00020!H\u0002J\u0008\u0010\"\u001a\u00020!H\u0002J$\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\u0008\u0010&\u001a\u0004\u0018\u00010$2\u0008\u0010\'\u001a\u0004\u0018\u00010$H\u0002J2\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0008\u0010&\u001a\u0004\u0018\u00010$2\u0008\u0010\'\u001a\u0004\u0018\u00010$H\u0096@\u00a2\u0006\u0002\u0010-J\u000e\u0010.\u001a\u00020/H\u0096@\u00a2\u0006\u0002\u00100J \u00101\u001a\u00020!2\u0006\u00102\u001a\u0002032\u000e\u00104\u001a\n\u0012\u0004\u0012\u000206\u0018\u000105H\u0016J\u0018\u00107\u001a\u00020!2\u0008\u0008\u0002\u00108\u001a\u000209H\u0082@\u00a2\u0006\u0002\u0010:J$\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002060=0<2\u0006\u0010>\u001a\u00020$H\u0082@\u00a2\u0006\u0004\u0008?\u0010@J\u0016\u0010A\u001a\u00020!2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u0002060=H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R#\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lcom/superwall/sdk/store/AutomaticPurchaseController;",
        "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;",
        "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
        "context",
        "Landroid/content/Context;",
        "scope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "entitlementsInfo",
        "Lcom/superwall/sdk/store/Entitlements;",
        "getBilling",
        "Lkotlin/Function2;",
        "Lcom/android/billingclient/api/BillingClient;",
        "<init>",
        "(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/store/Entitlements;Lkotlin/jvm/functions/Function2;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "getScope",
        "()Lcom/superwall/sdk/misc/IOScope;",
        "getEntitlementsInfo",
        "()Lcom/superwall/sdk/store/Entitlements;",
        "getGetBilling",
        "()Lkotlin/jvm/functions/Function2;",
        "billingClient",
        "isConnected",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "purchaseResults",
        "Lcom/superwall/sdk/delegate/PurchaseResult;",
        "reconnectMilliseconds",
        "",
        "startConnection",
        "",
        "syncSubscriptionStatus",
        "buildFullId",
        "",
        "subscriptionId",
        "basePlanId",
        "offerId",
        "purchase",
        "activity",
        "Landroid/app/Activity;",
        "productDetails",
        "Lcom/android/billingclient/api/ProductDetails;",
        "(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "restorePurchases",
        "Lcom/superwall/sdk/delegate/RestorationResult;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onPurchasesUpdated",
        "billingResult",
        "Lcom/android/billingclient/api/BillingResult;",
        "purchases",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "syncSubscriptionStatusAndWait",
        "count",
        "",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "queryPurchasesOfType",
        "Lkotlin/Result;",
        "",
        "productType",
        "queryPurchasesOfType-gIAlu-s",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "acknowledgePurchasesIfNecessary",
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
.field public static final Companion:Lcom/superwall/sdk/store/AutomaticPurchaseController$Companion;

.field private static final MAX_RETRIES:I = 0x3

.field private static final QUERY_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private context:Landroid/content/Context;

.field private final entitlementsInfo:Lcom/superwall/sdk/store/Entitlements;

.field private final getBilling:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/content/Context;",
            "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
            "Lcom/android/billingclient/api/BillingClient;",
            ">;"
        }
    .end annotation
.end field

.field private final isConnected:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final purchaseResults:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;"
        }
    .end annotation
.end field

.field private reconnectMilliseconds:J

.field private final scope:Lcom/superwall/sdk/misc/IOScope;


# direct methods
.method public static synthetic $r8$lambda$C0YVlVfCfbdc4Mh7xVb77yfxaTQ(Lcom/superwall/sdk/models/entitlements/Entitlement;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->syncSubscriptionStatusAndWait$lambda$13$lambda$11(Lcom/superwall/sdk/models/entitlements/Entitlement;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MCg4P6hXAnp07D03nvQkNyiZJ2w(Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->acknowledgePurchasesIfNecessary$lambda$17$lambda$16(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XROV1lUbm4t-aPPf3H_gqUjiNdo(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->_init_$lambda$0(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z1QU1zeJ7q6wEXutovceijTmtFs(Lkotlinx/coroutines/CompletableDeferred;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->queryPurchasesOfType_gIAlu_s$lambda$14(Lkotlinx/coroutines/CompletableDeferred;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/AutomaticPurchaseController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->Companion:Lcom/superwall/sdk/store/AutomaticPurchaseController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/store/Entitlements;Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/superwall/sdk/misc/IOScope;",
            "Lcom/superwall/sdk/store/Entitlements;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
            "+",
            "Lcom/android/billingclient/api/BillingClient;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entitlementsInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getBilling"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->scope:Lcom/superwall/sdk/misc/IOScope;

    .line 53
    iput-object p3, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->entitlementsInfo:Lcom/superwall/sdk/store/Entitlements;

    .line 54
    iput-object p4, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->getBilling:Lkotlin/jvm/functions/Function2;

    .line 80
    invoke-interface {p4, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/BillingClient;

    iput-object p1, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const/4 p1, 0x0

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->isConnected:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p1, 0x0

    .line 83
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->purchaseResults:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-wide/16 p3, 0x3e8

    .line 86
    iput-wide p3, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->reconnectMilliseconds:J

    .line 91
    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/superwall/sdk/store/AutomaticPurchaseController$2;

    invoke-direct {p2, p0, p1}, Lcom/superwall/sdk/store/AutomaticPurchaseController$2;-><init>(Lcom/superwall/sdk/store/AutomaticPurchaseController;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/store/Entitlements;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 54
    new-instance p4, Lcom/superwall/sdk/store/AutomaticPurchaseController$$ExternalSyntheticLambda3;

    invoke-direct {p4}, Lcom/superwall/sdk/store/AutomaticPurchaseController$$ExternalSyntheticLambda3;-><init>()V

    .line 50
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/store/AutomaticPurchaseController;-><init>(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/store/Entitlements;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final _init_$lambda$0(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient;
    .locals 6

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    .line 60
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v5, p0

    .line 63
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 64
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 65
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    .line 66
    invoke-static {}, Lcom/superwall/sdk/store/AutomaticPurchaseControllerKt;->access$getBILLING_INSANTIATION_ERROR$p()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Unknown message"

    :cond_0
    const-string p1, "error_message"

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/superwall/sdk/logger/Logger;->debug(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 70
    throw v5
.end method

.method public static final synthetic access$getPurchaseResults$p(Lcom/superwall/sdk/store/AutomaticPurchaseController;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->purchaseResults:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$getReconnectMilliseconds$p(Lcom/superwall/sdk/store/AutomaticPurchaseController;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->reconnectMilliseconds:J

    return-wide v0
.end method

.method public static final synthetic access$isConnected$p(Lcom/superwall/sdk/store/AutomaticPurchaseController;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->isConnected:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$queryPurchasesOfType-gIAlu-s(Lcom/superwall/sdk/store/AutomaticPurchaseController;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->queryPurchasesOfType-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setReconnectMilliseconds$p(Lcom/superwall/sdk/store/AutomaticPurchaseController;J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->reconnectMilliseconds:J

    return-void
.end method

.method public static final synthetic access$startConnection(Lcom/superwall/sdk/store/AutomaticPurchaseController;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->startConnection()V

    return-void
.end method

.method public static final synthetic access$syncSubscriptionStatus(Lcom/superwall/sdk/store/AutomaticPurchaseController;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->syncSubscriptionStatus()V

    return-void
.end method

.method public static final synthetic access$syncSubscriptionStatusAndWait(Lcom/superwall/sdk/store/AutomaticPurchaseController;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->syncSubscriptionStatusAndWait(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final acknowledgePurchasesIfNecessary(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 421
    check-cast p1, Ljava/lang/Iterable;

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 471
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 422
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 471
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 472
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 470
    check-cast v0, Ljava/lang/Iterable;

    .line 473
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 426
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v1

    .line 427
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/superwall/sdk/store/AutomaticPurchaseController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/superwall/sdk/store/AutomaticPurchaseController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static final acknowledgePurchasesIfNecessary$lambda$17$lambda$16(Lcom/android/billingclient/api/BillingResult;)V
    .locals 8

    const-string v0, "billingResult"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    if-eqz p0, :cond_0

    .line 432
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 433
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 434
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x18

    const/4 v7, 0x0

    .line 432
    const-string v3, "Unable to acknowledge purchase."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final buildFullId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string p1, ":"

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p3, :cond_1

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final queryPurchasesOfType-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Lcom/superwall/sdk/store/AutomaticPurchaseController$queryPurchasesOfType$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$queryPurchasesOfType$1;

    iget v1, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$queryPurchasesOfType$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$queryPurchasesOfType$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$queryPurchasesOfType$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$queryPurchasesOfType$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/store/AutomaticPurchaseController$queryPurchasesOfType$1;-><init>(Lcom/superwall/sdk/store/AutomaticPurchaseController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$queryPurchasesOfType$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 393
    iget v2, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$queryPurchasesOfType$1;->label:I

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

    .line 394
    invoke-static {p2, v3, p2}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    .line 396
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p1

    const-string v4, "build(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    iget-object v4, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v4

    if-nez v4, :cond_3

    .line 399
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Billing client not ready"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 402
    :cond_3
    iget-object v4, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/superwall/sdk/store/AutomaticPurchaseController$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-virtual {v4, p1, v5}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 415
    new-instance p1, Lcom/superwall/sdk/store/AutomaticPurchaseController$queryPurchasesOfType$3;

    invoke-direct {p1, v2, p2}, Lcom/superwall/sdk/store/AutomaticPurchaseController$queryPurchasesOfType$3;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$queryPurchasesOfType$1;->label:I

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

    .line 417
    :cond_5
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Query purchases timed out"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static final queryPurchasesOfType_gIAlu_s$lambda$14(Lkotlinx/coroutines/CompletableDeferred;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 9

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchasesList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 405
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 406
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    const/16 v7, 0x18

    const/4 v8, 0x0

    .line 404
    const-string v4, "Unable to query for purchases."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 409
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

    .line 412
    :cond_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private final startConnection()V
    .locals 9

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 99
    new-instance v1, Lcom/superwall/sdk/store/AutomaticPurchaseController$startConnection$1;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/store/AutomaticPurchaseController$startConnection$1;-><init>(Lcom/superwall/sdk/store/AutomaticPurchaseController;)V

    check-cast v1, Lcom/android/billingclient/api/BillingClientStateListener;

    .line 98
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 130
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 131
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 132
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    .line 133
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IllegalStateException when connecting to billing client for ExternalNativePurchaseController: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 130
    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final syncSubscriptionStatus()V
    .locals 7

    .line 143
    iget-object v0, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->scope:Lcom/superwall/sdk/misc/IOScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatus$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatus$1;-><init>(Lcom/superwall/sdk/store/AutomaticPurchaseController;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final syncSubscriptionStatusAndWait(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;

    iget v3, v2, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;

    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;-><init>(Lcom/superwall/sdk/store/AutomaticPurchaseController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v2

    iget-object v1, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 322
    iget v3, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->label:I

    const/4 v4, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v11, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v9, :cond_1

    iget v2, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->I$0:I

    iget-object v3, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/AutomaticPurchaseController;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v3, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->I$0:I

    iget-object v4, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/store/AutomaticPurchaseController;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v12, v3

    move-object v13, v4

    goto :goto_2

    :cond_3
    iget v3, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->I$0:I

    iget-object v5, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/store/AutomaticPurchaseController;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v1, v3

    move-object v12, v5

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 324
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall;->getConfigurationStateListener()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v3, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$2;

    invoke-direct {v3, v10}, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput-object v0, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->L$0:Ljava/lang/Object;

    move/from16 v5, p1

    iput v5, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->I$0:I

    iput v11, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->label:I

    invoke-static {v1, v3, v6}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v12, v0

    move v1, v5

    .line 326
    :goto_1
    new-instance v3, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$subscriptionPurchases$1;

    invoke-direct {v3, v12, v10}, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$subscriptionPurchases$1;-><init>(Lcom/superwall/sdk/store/AutomaticPurchaseController;Lkotlin/coroutines/Continuation;)V

    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iput-object v12, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->L$0:Ljava/lang/Object;

    iput v1, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->I$0:I

    iput v4, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retryOrNull$default(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v13, v12

    move v12, v1

    move-object v1, v3

    .line 322
    :goto_2
    check-cast v1, Ljava/util/List;

    .line 328
    new-instance v3, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$inAppPurchases$1;

    invoke-direct {v3, v13, v10}, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$inAppPurchases$1;-><init>(Lcom/superwall/sdk/store/AutomaticPurchaseController;Lkotlin/coroutines/Continuation;)V

    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iput-object v13, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->L$0:Ljava/lang/Object;

    iput-object v1, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->L$1:Ljava/lang/Object;

    iput v12, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->I$0:I

    iput v9, v6, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retryOrNull$default(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_7

    :goto_3
    return-object v2

    :cond_7
    move-object v2, v3

    move-object v3, v1

    move-object v1, v2

    move v2, v12

    move-object v4, v13

    .line 322
    :goto_4
    check-cast v1, Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v3, :cond_9

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    move v6, v5

    goto :goto_6

    :cond_9
    :goto_5
    move v6, v11

    :goto_6
    if-nez v3, :cond_a

    .line 330
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_a
    check-cast v3, Ljava/util/Collection;

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_7
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 332
    check-cast v1, Ljava/lang/Iterable;

    .line 446
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_d

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    move v11, v5

    goto :goto_8

    .line 447
    :cond_d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/billingclient/api/Purchase;

    .line 332
    invoke-virtual {v7}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v7

    if-ne v7, v11, :cond_e

    .line 334
    :goto_8
    sget-object v12, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 335
    sget-object v13, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 336
    sget-object v14, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    .line 449
    new-instance v3, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 451
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const-string v10, "getProducts(...)"

    if-eqz v15, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v5, 0x1

    if-gez v5, :cond_f

    .line 452
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_f
    check-cast v15, Lcom/android/billingclient/api/Purchase;

    .line 339
    invoke-virtual {v15}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v9

    check-cast v20, Ljava/lang/Iterable;

    const-string v9, ","

    move-object/from16 v21, v9

    check-cast v21, Ljava/lang/CharSequence;

    const/16 v27, 0x3e

    const/16 v28, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v20 .. v28}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 340
    invoke-virtual {v15}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v8

    invoke-virtual {v15}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v7

    invoke-virtual {v15}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v15

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v20, v1

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Products: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v5, v16

    move-object/from16 v8, v17

    move-object/from16 v1, v20

    const/16 v7, 0xa

    const/4 v9, 0x3

    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_10
    move-object/from16 v20, v1

    .line 453
    check-cast v3, Ljava/util/List;

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found purchases: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x18

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 334
    invoke-static/range {v12 .. v19}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v11, :cond_15

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 455
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 456
    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 349
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 457
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_a

    .line 459
    :cond_11
    check-cast v0, Ljava/util/List;

    .line 454
    check-cast v0, Ljava/lang/Iterable;

    .line 350
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 461
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 462
    check-cast v3, Ljava/lang/String;

    .line 352
    iget-object v5, v4, Lcom/superwall/sdk/store/AutomaticPurchaseController;->entitlementsInfo:Lcom/superwall/sdk/store/Entitlements;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Lcom/superwall/sdk/store/Entitlements;->byProductId$superwall_release(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 353
    check-cast v3, Ljava/lang/Iterable;

    .line 463
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_b

    .line 465
    :cond_12
    check-cast v1, Ljava/util/List;

    .line 354
    invoke-static {v1}, Lcom/superwall/sdk/models/customer/CustomerInfoMergingKt;->toSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 356
    sget-object v7, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 357
    sget-object v8, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 358
    sget-object v9, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    .line 359
    move-object v10, v0

    check-cast v10, Ljava/lang/Iterable;

    new-instance v16, Lcom/superwall/sdk/store/AutomaticPurchaseController$$ExternalSyntheticLambda1;

    invoke-direct/range {v16 .. v16}, Lcom/superwall/sdk/store/AutomaticPurchaseController$$ExternalSyntheticLambda1;-><init>()V

    const/16 v17, 0x1f

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v10

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Found entitlements: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x18

    const/4 v14, 0x0

    .line 356
    invoke-static/range {v7 .. v14}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 362
    iget-object v1, v4, Lcom/superwall/sdk/store/AutomaticPurchaseController;->entitlementsInfo:Lcom/superwall/sdk/store/Entitlements;

    invoke-virtual {v1, v0}, Lcom/superwall/sdk/store/Entitlements;->setActiveDeviceEntitlements$superwall_release(Ljava/util/Set;)V

    .line 363
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 467
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 468
    move-object/from16 v20, v3

    check-cast v20, Lcom/superwall/sdk/models/entitlements/Entitlement;

    const/16 v34, 0x1ffb

    const/16 v35, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 365
    invoke-static/range {v20 .. v35}, Lcom/superwall/sdk/models/entitlements/Entitlement;->copy$default(Lcom/superwall/sdk/models/entitlements/Entitlement;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;ILjava/lang/Object;)Lcom/superwall/sdk/models/entitlements/Entitlement;

    move-result-object v3

    .line 468
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 469
    :cond_13
    check-cast v0, Ljava/util/List;

    .line 365
    invoke-static {v0}, Lcom/superwall/sdk/models/customer/CustomerInfoMergingKt;->toSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 364
    new-instance v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;-><init>(Ljava/util/Set;)V

    check-cast v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    goto :goto_d

    .line 368
    :cond_14
    sget-object v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    move-object v1, v0

    check-cast v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    goto :goto_d

    .line 372
    :cond_15
    sget-object v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    move-object v1, v0

    check-cast v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    .line 374
    :goto_d
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_16

    .line 375
    sget-object v7, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 376
    sget-object v8, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 377
    sget-object v9, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    const/16 v13, 0x18

    const/4 v14, 0x0

    .line 375
    const-string v10, "Attempting to sync subscription status before Superwall has been initialized."

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v14}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 380
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 383
    :cond_16
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/Superwall;->internallySetSubscriptionStatus$superwall_release(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    if-eqz v6, :cond_17

    const/4 v0, 0x3

    if-ge v2, v0, :cond_17

    .line 386
    iget-object v0, v4, Lcom/superwall/sdk/store/AutomaticPurchaseController;->scope:Lcom/superwall/sdk/misc/IOScope;

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$4;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v4, v1}, Lcom/superwall/sdk/store/AutomaticPurchaseController$syncSubscriptionStatusAndWait$4;-><init>(ILcom/superwall/sdk/store/AutomaticPurchaseController;Lkotlin/coroutines/Continuation;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 391
    :cond_17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static synthetic syncSubscriptionStatusAndWait$default(Lcom/superwall/sdk/store/AutomaticPurchaseController;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 322
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->syncSubscriptionStatusAndWait(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final syncSubscriptionStatusAndWait$lambda$13$lambda$11(Lcom/superwall/sdk/models/entitlements/Entitlement;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getEntitlementsInfo()Lcom/superwall/sdk/store/Entitlements;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->entitlementsInfo:Lcom/superwall/sdk/store/Entitlements;

    return-object v0
.end method

.method public final getGetBilling()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/content/Context;",
            "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
            "Lcom/android/billingclient/api/BillingClient;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->getBilling:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getScope()Lcom/superwall/sdk/misc/IOScope;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->scope:Lcom/superwall/sdk/misc/IOScope;

    return-object v0
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x1

    if-eq v0, p2, :cond_2

    .line 302
    new-instance p2, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    .line 303
    sget-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->Companion:Lcom/superwall/sdk/store/transactions/PlayBillingErrors$Companion;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors$Companion;->fromCode(I)Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 304
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_1
    invoke-direct {p2, v0}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/superwall/sdk/delegate/PurchaseResult;

    goto :goto_0

    .line 297
    :cond_2
    new-instance p1, Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;

    invoke-direct {p1}, Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;-><init>()V

    move-object p2, p1

    check-cast p2, Lcom/superwall/sdk/delegate/PurchaseResult;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 291
    invoke-direct {p0, p2}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->acknowledgePurchasesIfNecessary(Ljava/util/List;)V

    .line 292
    :cond_4
    new-instance p1, Lcom/superwall/sdk/delegate/PurchaseResult$Purchased;

    invoke-direct {p1}, Lcom/superwall/sdk/delegate/PurchaseResult$Purchased;-><init>()V

    move-object p2, p1

    check-cast p2, Lcom/superwall/sdk/delegate/PurchaseResult;

    .line 309
    :goto_0
    iget-object p1, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->scope:Lcom/superwall/sdk/misc/IOScope;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/store/AutomaticPurchaseController$onPurchasesUpdated$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v1}, Lcom/superwall/sdk/store/AutomaticPurchaseController$onPurchasesUpdated$1;-><init>(Lcom/superwall/sdk/store/AutomaticPurchaseController;Lcom/superwall/sdk/delegate/PurchaseResult;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public purchase(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/billingclient/api/ProductDetails;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    instance-of v5, v4, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;

    iget v6, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->label:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget v4, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->label:I

    sub-int/2addr v4, v7

    iput v4, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;

    invoke-direct {v5, v0, v4}, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;-><init>(Lcom/superwall/sdk/store/AutomaticPurchaseController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v4, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 164
    iget v7, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->label:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v8, :cond_1

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/android/billingclient/api/BillingFlowParams;

    iget-object v2, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/store/AutomaticPurchaseController;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 171
    iget-object v4, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->purchaseResults:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v4

    const-string v7, "getProductId(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-direct {v0, v4, v2, v3}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->buildFullId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    new-instance v7, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    .line 184
    sget-object v11, Lcom/superwall/sdk/store/abstractions/product/BasePlanType;->Companion:Lcom/superwall/sdk/store/abstractions/product/BasePlanType$Companion;

    invoke-virtual {v11, v2}, Lcom/superwall/sdk/store/abstractions/product/BasePlanType$Companion;->from(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    move-result-object v2

    .line 185
    sget-object v11, Lcom/superwall/sdk/store/abstractions/product/OfferType;->Companion:Lcom/superwall/sdk/store/abstractions/product/OfferType$Companion;

    invoke-virtual {v11, v3}, Lcom/superwall/sdk/store/abstractions/product/OfferType$Companion;->from(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/OfferType;

    move-result-object v11

    .line 181
    invoke-direct {v7, v1, v4, v2, v11}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;-><init>(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;)V

    .line 189
    invoke-virtual {v7}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getSelectedOffer()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;

    move-result-object v2

    .line 190
    instance-of v4, v2, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    if-eqz v4, :cond_4

    check-cast v2, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;

    invoke-virtual {v2}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 191
    :cond_4
    instance-of v4, v2, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    if-eqz v4, :cond_6

    .line 195
    check-cast v2, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;

    invoke-virtual {v2}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;->getPurchaseOptionId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    if-eqz v3, :cond_7

    .line 196
    :cond_5
    invoke-virtual {v2}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;->getUnderlying()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    if-nez v2, :cond_e

    :cond_7
    move-object v2, v10

    .line 205
    :goto_1
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    move v3, v9

    .line 209
    :goto_3
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v4

    .line 210
    invoke-virtual {v4, v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    if-nez v3, :cond_a

    .line 215
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 217
    :cond_a
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    :try_start_0
    sget-object v3, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPassIdentifiersToPlayStore()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 223
    :catchall_0
    sget-object v11, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 224
    sget-object v12, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 225
    sget-object v13, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    const/16 v17, 0x18

    const/16 v18, 0x0

    .line 223
    const-string v14, "Error getting Superwall options"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 233
    :goto_4
    :try_start_1
    sget-object v3, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getUserId()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    .line 235
    :catchall_1
    sget-object v11, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 236
    sget-object v12, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 237
    sget-object v13, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    const/16 v17, 0x18

    const/16 v18, 0x0

    .line 235
    const-string v14, "Error getting userId"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 244
    :goto_5
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v3

    .line 246
    sget-object v4, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v4}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/Superwall;->getExternalAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 247
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    sget-object v11, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 251
    sget-object v12, Lcom/superwall/sdk/logger/LogLevel;->info:Lcom/superwall/sdk/logger/LogLevel;

    .line 252
    sget-object v13, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    const/16 v17, 0x18

    const/16 v18, 0x0

    .line 250
    const-string v14, "Waiting for billing client to be connected"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 257
    iget-object v2, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->isConnected:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$2;

    invoke-direct {v3, v10}, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput-object v0, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v1, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->L$2:Ljava/lang/Object;

    iput v9, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->label:I

    invoke-static {v2, v3, v5}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_b

    goto :goto_7

    :cond_b
    move-object v3, v0

    move-object v2, v4

    .line 259
    :goto_6
    sget-object v11, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 260
    sget-object v12, Lcom/superwall/sdk/logger/LogLevel;->info:Lcom/superwall/sdk/logger/LogLevel;

    .line 261
    sget-object v13, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    const/16 v17, 0x18

    const/16 v18, 0x0

    .line 259
    const-string v14, "Billing client is connected"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 265
    iget-object v4, v3, Lcom/superwall/sdk/store/AutomaticPurchaseController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v4, v2, v1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    .line 268
    iget-object v1, v3, Lcom/superwall/sdk/store/AutomaticPurchaseController;->purchaseResults:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$value$1;

    invoke-direct {v2, v10}, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$value$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object v10, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->L$0:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->L$1:Ljava/lang/Object;

    iput-object v10, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->L$2:Ljava/lang/Object;

    iput v8, v5, Lcom/superwall/sdk/store/AutomaticPurchaseController$purchase$1;->label:I

    invoke-static {v1, v2, v5}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_c

    :goto_7
    return-object v6

    :cond_c
    :goto_8
    check-cast v4, Lcom/superwall/sdk/delegate/PurchaseResult;

    if-nez v4, :cond_d

    new-instance v1, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    const-string v2, "Purchase failed"

    invoke-direct {v1, v2}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Lcom/superwall/sdk/delegate/PurchaseResult;

    :cond_d
    return-object v4

    .line 189
    :cond_e
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method

.method public restorePurchases(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/delegate/RestorationResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/store/AutomaticPurchaseController$restorePurchases$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$restorePurchases$1;

    iget v1, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$restorePurchases$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$restorePurchases$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$restorePurchases$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$restorePurchases$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/store/AutomaticPurchaseController$restorePurchases$1;-><init>(Lcom/superwall/sdk/store/AutomaticPurchaseController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$restorePurchases$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 273
    iget v2, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$restorePurchases$1;->label:I

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

    .line 274
    iput v3, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$restorePurchases$1;->label:I

    const/4 p1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v3, v2}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->syncSubscriptionStatusAndWait$default(Lcom/superwall/sdk/store/AutomaticPurchaseController;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 275
    :cond_3
    :goto_1
    new-instance p1, Lcom/superwall/sdk/delegate/RestorationResult$Restored;

    invoke-direct {p1}, Lcom/superwall/sdk/delegate/RestorationResult$Restored;-><init>()V

    return-object p1
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController;->context:Landroid/content/Context;

    return-void
.end method
