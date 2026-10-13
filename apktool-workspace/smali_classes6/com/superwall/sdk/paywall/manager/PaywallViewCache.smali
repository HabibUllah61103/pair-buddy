.class public final Lcom/superwall/sdk/paywall/manager/PaywallViewCache;
.super Ljava/lang/Object;
.source "PaywallViewCache.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallViewCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallViewCache.kt\ncom/superwall/sdk/paywall/manager/PaywallViewCache\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1187#2,2:121\n1261#2,4:123\n1#3:127\n*S KotlinDebug\n*F\n+ 1 PaywallViewCache.kt\ncom/superwall/sdk/paywall/manager/PaywallViewCache\n*L\n38#1:121,2\n38#1:123,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eJ\u001a\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001f2\n\u0010,\u001a\u00060\u0010j\u0002`-J\u0006\u0010.\u001a\u00020/J\u0006\u00100\u001a\u000201J\u0010\u00102\u001a\u0004\u0018\u00010\u001f2\u0006\u00103\u001a\u00020\u0010J\u0012\u00104\u001a\u00020*2\n\u0010,\u001a\u00060\u0010j\u0002`-J\u0006\u00105\u001a\u00020*R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010\u0017\u001a\u0018\u0012\t\u0012\u00070\u0010\u00a2\u0006\u0002\u0008\u0019\u0012\t\u0012\u00070\u001a\u00a2\u0006\u0002\u0008\u00190\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR(\u0010!\u001a\u0004\u0018\u00010\u00102\u0008\u0010 \u001a\u0004\u0018\u00010\u00108F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u0013\u0010&\u001a\u0004\u0018\u00010\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(\u00a8\u00066"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/manager/PaywallViewCache;",
        "",
        "appCtx",
        "Landroid/content/Context;",
        "store",
        "Lcom/superwall/sdk/paywall/view/ViewStorage;",
        "activityProvider",
        "Lcom/superwall/sdk/misc/ActivityProvider;",
        "deviceHelper",
        "Lcom/superwall/sdk/network/device/DeviceHelper;",
        "<init>",
        "(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/ViewStorage;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/network/device/DeviceHelper;)V",
        "ctx",
        "getCtx",
        "()Landroid/content/Context;",
        "_activePaywallVcKey",
        "",
        "loadingView",
        "Lcom/superwall/sdk/paywall/view/LoadingView;",
        "shimmerView",
        "Lcom/superwall/sdk/paywall/view/ShimmerView;",
        "singleThreadContext",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "entries",
        "",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "Landroid/view/View;",
        "getEntries",
        "()Ljava/util/Map;",
        "getAllPaywallViews",
        "",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "value",
        "activePaywallVcKey",
        "getActivePaywallVcKey",
        "()Ljava/lang/String;",
        "setActivePaywallVcKey",
        "(Ljava/lang/String;)V",
        "activePaywallView",
        "getActivePaywallView",
        "()Lcom/superwall/sdk/paywall/view/PaywallView;",
        "save",
        "",
        "paywallView",
        "identifier",
        "Lcom/superwall/sdk/models/paywall/PaywallIdentifier;",
        "acquireLoadingView",
        "Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;",
        "acquireShimmerView",
        "Lcom/superwall/sdk/paywall/view/PaywallShimmerView;",
        "getPaywallView",
        "key",
        "removePaywallView",
        "removeAll",
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
.field private _activePaywallVcKey:Ljava/lang/String;

.field private final activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

.field private final appCtx:Landroid/content/Context;

.field private final deviceHelper:Lcom/superwall/sdk/network/device/DeviceHelper;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final loadingView:Lcom/superwall/sdk/paywall/view/LoadingView;

.field private final shimmerView:Lcom/superwall/sdk/paywall/view/ShimmerView;

.field private final singleThreadContext:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final store:Lcom/superwall/sdk/paywall/view/ViewStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/ViewStorage;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/network/device/DeviceHelper;)V
    .locals 8

    const-string v0, "appCtx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "store"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->appCtx:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->store:Lcom/superwall/sdk/paywall/view/ViewStorage;

    .line 21
    iput-object p3, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    .line 22
    iput-object p4, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->deviceHelper:Lcom/superwall/sdk/network/device/DeviceHelper;

    .line 27
    new-instance v1, Lcom/superwall/sdk/paywall/view/LoadingView;

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->getCtx()Landroid/content/Context;

    move-result-object v2

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/superwall/sdk/paywall/view/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->loadingView:Lcom/superwall/sdk/paywall/view/LoadingView;

    .line 28
    new-instance p1, Lcom/superwall/sdk/paywall/view/ShimmerView;

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->getCtx()Landroid/content/Context;

    move-result-object p3

    const/4 p4, 0x0

    const/4 v0, 0x2

    invoke-direct {p1, p3, p4, v0, p4}, Lcom/superwall/sdk/paywall/view/ShimmerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->shimmerView:Lcom/superwall/sdk/paywall/view/ShimmerView;

    .line 31
    const-string p3, "LoadingView"

    check-cast v1, Landroid/view/View;

    invoke-interface {p2, p3, v1}, Lcom/superwall/sdk/paywall/view/ViewStorage;->storeView(Ljava/lang/String;Landroid/view/View;)V

    .line 32
    const-string p3, "ShimmerView"

    check-cast p1, Landroid/view/View;

    invoke-interface {p2, p3, p1}, Lcom/superwall/sdk/paywall/view/ViewStorage;->storeView(Ljava/lang/String;Landroid/view/View;)V

    .line 35
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->singleThreadContext:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 38
    invoke-interface {p2}, Lcom/superwall/sdk/paywall/view/ViewStorage;->getViews()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const-string p2, "<get-entries>(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    const/16 p2, 0xa

    .line 121
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p2

    const/16 p3, 0x10

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    .line 122
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    .line 123
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 124
    check-cast p2, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p4, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    .line 124
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_0
    iput-object p3, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->entries:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getDeviceHelper$p(Lcom/superwall/sdk/paywall/manager/PaywallViewCache;)Lcom/superwall/sdk/network/device/DeviceHelper;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->deviceHelper:Lcom/superwall/sdk/network/device/DeviceHelper;

    return-object p0
.end method

.method public static final synthetic access$getStore$p(Lcom/superwall/sdk/paywall/manager/PaywallViewCache;)Lcom/superwall/sdk/paywall/view/ViewStorage;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->store:Lcom/superwall/sdk/paywall/view/ViewStorage;

    return-object p0
.end method

.method public static final synthetic access$get_activePaywallVcKey$p(Lcom/superwall/sdk/paywall/manager/PaywallViewCache;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->_activePaywallVcKey:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$set_activePaywallVcKey$p(Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->_activePaywallVcKey:Ljava/lang/String;

    return-void
.end method

.method private final getCtx()Landroid/content/Context;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    invoke-interface {v0}, Lcom/superwall/sdk/misc/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->appCtx:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final acquireLoadingView()Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;
    .locals 9

    .line 70
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->store:Lcom/superwall/sdk/paywall/view/ViewStorage;

    const-string v1, "LoadingView"

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/ViewStorage;->retrieveView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;

    return-object v0

    .line 72
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    .line 73
    new-instance v2, Lcom/superwall/sdk/paywall/view/LoadingView;

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->getCtx()Landroid/content/Context;

    move-result-object v3

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/superwall/sdk/paywall/view/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->store:Lcom/superwall/sdk/paywall/view/ViewStorage;

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-interface {v0, v1, v3}, Lcom/superwall/sdk/paywall/view/ViewStorage;->storeView(Ljava/lang/String;Landroid/view/View;)V

    .line 75
    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;

    return-object v2
.end method

.method public final acquireShimmerView()Lcom/superwall/sdk/paywall/view/PaywallShimmerView;
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->store:Lcom/superwall/sdk/paywall/view/ViewStorage;

    const-string v1, "ShimmerView"

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/ViewStorage;->retrieveView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallShimmerView;

    return-object v0

    .line 82
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    .line 83
    new-instance v0, Lcom/superwall/sdk/paywall/view/ShimmerView;

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->getCtx()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3, v4}, Lcom/superwall/sdk/paywall/view/ShimmerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 84
    iget-object v2, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->store:Lcom/superwall/sdk/paywall/view/ViewStorage;

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    invoke-interface {v2, v1, v3}, Lcom/superwall/sdk/paywall/view/ViewStorage;->storeView(Ljava/lang/String;Landroid/view/View;)V

    .line 85
    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallShimmerView;

    return-object v0
.end method

.method public final getActivePaywallVcKey()Ljava/lang/String;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->singleThreadContext:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$activePaywallVcKey$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$activePaywallVcKey$1;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getActivePaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->singleThreadContext:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$activePaywallView$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$activePaywallView$1;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallView;

    return-object v0
.end method

.method public final getAllPaywallViews()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->singleThreadContext:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$getAllPaywallViews$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$getAllPaywallViews$1;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->entries:Ljava/util/Map;

    return-object v0
.end method

.method public final getPaywallView(Ljava/lang/String;)Lcom/superwall/sdk/paywall/view/PaywallView;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->singleThreadContext:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$getPaywallView$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$getPaywallView$1;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallView;

    return-object p1
.end method

.method public final removeAll()V
    .locals 7

    .line 110
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->singleThreadContext:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$removeAll$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$removeAll$1;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final removePaywallView(Ljava/lang/String;)V
    .locals 7

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->singleThreadContext:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$removePaywallView$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$removePaywallView$1;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final save(Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;)V
    .locals 7

    const-string v0, "paywallView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->singleThreadContext:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$save$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, p1, v2}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$save$1;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Ljava/lang/String;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setActivePaywallVcKey(Ljava/lang/String;)V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->singleThreadContext:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$activePaywallVcKey$2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache$activePaywallVcKey$2;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
