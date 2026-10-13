.class public final Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;
.super Lcom/superwall/sdk/billing/BillingClientUseCase;
.source "QueryProductDetailsUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/superwall/sdk/billing/BillingClientUseCase<",
        "Lcom/android/billingclient/api/QueryProductDetailsResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQueryProductDetailsUseCase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryProductDetailsUseCase.kt\ncom/superwall/sdk/billing/QueryProductDetailsUseCase\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n774#2:110\n865#2,2:111\n1863#2,2:114\n1368#2:116\n1454#2,2:117\n1557#2:119\n1628#2,3:120\n1456#2,3:123\n1#3:113\n*S KotlinDebug\n*F\n+ 1 QueryProductDetailsUseCase.kt\ncom/superwall/sdk/billing/QueryProductDetailsUseCase\n*L\n40#1:110\n40#1:111,2\n67#1:114,2\n73#1:116\n73#1:117,2\n74#1:119\n74#1:120,3\n73#1:123,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u00ac\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0018\u0010\u0005\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0004\u0012\u00020\t0\u0006\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\t0\u0006\u0012#\u0010\u000c\u001a\u001f\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\u0006\u00a2\u0006\u0002\u0008\u000e\u0012\u0004\u0012\u00020\t0\u0006\u0012H\u0010\u000f\u001aD\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012!\u0012\u001f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\t0\u0006\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\t0\u0010j\u0002`\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0008\u0010\u001f\u001a\u00020\tH\u0016J\u0010\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\u0002H\u0016J \u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u0005\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0004\u0012\u00020\t0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001d\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\t0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019R.\u0010\u000c\u001a\u001f\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\u0006\u00a2\u0006\u0002\u0008\u000e\u0012\u0004\u0012\u00020\t0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0019\u00a8\u0006("
    }
    d2 = {
        "Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;",
        "Lcom/superwall/sdk/billing/BillingClientUseCase;",
        "Lcom/android/billingclient/api/QueryProductDetailsResult;",
        "useCaseParams",
        "Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;",
        "onReceive",
        "Lkotlin/Function1;",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "",
        "onError",
        "Lcom/superwall/sdk/billing/BillingError;",
        "withConnectedClient",
        "Lcom/android/billingclient/api/BillingClient;",
        "Lkotlin/ExtensionFunctionType;",
        "executeRequestOnUIThread",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "delayInMillis",
        "Lcom/superwall/sdk/billing/ExecuteRequestOnUIThreadFunction;",
        "<init>",
        "(Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V",
        "getOnReceive",
        "()Lkotlin/jvm/functions/Function1;",
        "getOnError",
        "getWithConnectedClient",
        "log",
        "msg",
        "",
        "executeAsync",
        "onOk",
        "received",
        "queryProductDetailsAsyncEnsuringOneResponse",
        "billingClient",
        "params",
        "Lcom/android/billingclient/api/QueryProductDetailsParams;",
        "listener",
        "Lcom/android/billingclient/api/ProductDetailsResponseListener;",
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
.field private final onError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/billing/BillingError;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onReceive:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final useCaseParams:Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;

.field private final withConnectedClient:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/BillingClient;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6HZBiKPd7XhkXD_RUSx56-aY308(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Lcom/android/billingclient/api/ProductDetailsResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->queryProductDetailsAsyncEnsuringOneResponse$lambda$7(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Lcom/android/billingclient/api/ProductDetailsResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U-CkRfEnayyPfaaqkzWiesL9lMw(Lcom/android/billingclient/api/ProductDetails;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->onOk$lambda$2(Lcom/android/billingclient/api/ProductDetails;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eDaWWowm9RjWcieutl9olVb0JXo(Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Ljava/util/Set;Lcom/android/billingclient/api/BillingClient;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->executeAsync$lambda$1(Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Ljava/util/Set;Lcom/android/billingclient/api/BillingClient;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g7q8O2CpqafFMLLXCzcSjMAg3YY(Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->executeAsync$lambda$1$processResult(Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;",
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
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/BillingClient;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/billing/BillingError;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "useCaseParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceive"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "withConnectedClient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executeRequestOnUIThread"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/billing/UseCaseParams;

    invoke-direct {p0, v0, p3, p5}, Lcom/superwall/sdk/billing/BillingClientUseCase;-><init>(Lcom/superwall/sdk/billing/UseCaseParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 26
    iput-object p1, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->useCaseParams:Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;

    .line 27
    iput-object p2, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->onReceive:Lkotlin/jvm/functions/Function1;

    .line 28
    iput-object p3, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->onError:Lkotlin/jvm/functions/Function1;

    .line 29
    iput-object p4, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->withConnectedClient:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final executeAsync$lambda$1(Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Ljava/util/Set;Lcom/android/billingclient/api/BillingClient;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$withConnectedClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->useCaseParams:Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;

    invoke-virtual {v0}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;->getProductType()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0, p1}, Lcom/superwall/sdk/billing/BillingClientParamBuildersKt;->buildQueryProductDetailsParams(Ljava/lang/String;Ljava/util/Set;)Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;)V

    .line 51
    invoke-direct {p0, p2, p1, v0}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->queryProductDetailsAsyncEnsuringOneResponse(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 56
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final synthetic executeAsync$lambda$1$processResult(Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 7

    .line 54
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/billing/BillingClientUseCase;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/superwall/sdk/billing/BillingClientUseCase;->processResult$default(Lcom/superwall/sdk/billing/BillingClientUseCase;Lcom/android/billingclient/api/BillingResult;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final log(Ljava/lang/String;)V
    .locals 8

    .line 33
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 34
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 35
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    .line 33
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final onOk$lambda$2(Lcom/android/billingclient/api/ProductDetails;)Ljava/lang/CharSequence;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final declared-synchronized queryProductDetailsAsyncEnsuringOneResponse(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 2

    monitor-enter p0

    .line 96
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 97
    new-instance v1, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p0, p3}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    invoke-virtual {p1, p2, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
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

.method private static final queryProductDetailsAsyncEnsuringOneResponse$lambda$7(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Lcom/android/billingclient/api/ProductDetailsResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 1

    const-string v0, "billingResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productDetailsList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "BillingClient queryProductDetails has returned more than once, with result "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-direct {p1, p0}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->log(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    invoke-interface {p2, p3, p4}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method


# virtual methods
.method public executeAsync()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->useCaseParams:Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;

    invoke-virtual {v0}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 111
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 40
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 111
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 110
    check-cast v1, Ljava/lang/Iterable;

    .line 40
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    const-string v0, "productId list is empty, skipping queryProductDetailsAsync call"

    invoke-direct {p0, v0}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->log(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->onReceive:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->withConnectedClient:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Ljava/util/Set;)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getOnError()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/billing/BillingError;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->onError:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnReceive()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->onReceive:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getWithConnectedClient()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/BillingClient;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->withConnectedClient:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public onOk(Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 10

    const-string v0, "received"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getProductDetailsList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->useCaseParams:Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;

    invoke-virtual {v0}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Products request finished for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->log(Ljava/lang/String;)V

    .line 66
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v7, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda2;-><init>()V

    const/16 v8, 0x1f

    const/4 v2, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrieved productDetailsList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->log(Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    .line 114
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    .line 68
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 117
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 118
    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    .line 74
    iget-object v2, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->useCaseParams:Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;

    invoke-virtual {v2}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;->getDecomposedProductIdsBySubscriptionId()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    check-cast v2, Ljava/lang/Iterable;

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 120
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 121
    check-cast v4, Lcom/superwall/sdk/billing/DecomposedProductIds;

    .line 76
    new-instance v5, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    .line 77
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v4}, Lcom/superwall/sdk/billing/DecomposedProductIds;->getFullId()Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-virtual {v4}, Lcom/superwall/sdk/billing/DecomposedProductIds;->getBasePlanType()Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    move-result-object v7

    .line 80
    invoke-virtual {v4}, Lcom/superwall/sdk/billing/DecomposedProductIds;->getOfferType()Lcom/superwall/sdk/store/abstractions/product/OfferType;

    move-result-object v4

    .line 76
    invoke-direct {v5, v1, v6, v7, v4}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;-><init>(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;)V

    .line 82
    new-instance v4, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    invoke-direct {v4, v5}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    .line 121
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 122
    :cond_2
    check-cast v3, Ljava/util/List;

    goto :goto_4

    .line 84
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_4
    check-cast v3, Ljava/lang/Iterable;

    .line 123
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_2

    .line 125
    :cond_4
    check-cast p1, Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->onReceive:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onOk(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/android/billingclient/api/QueryProductDetailsResult;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->onOk(Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
