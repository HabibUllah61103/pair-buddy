.class public final Lcom/superwall/sdk/paywall/request/PaywallRequestManager;
.super Ljava/lang/Object;
.source "PaywallRequestManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallRequestManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallRequestManager.kt\ncom/superwall/sdk/paywall/request/PaywallRequestManager\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,433:1\n135#2,10:434\n1557#3:444\n1628#3,3:445\n560#4:448\n545#4,6:449\n1#5:455\n*S KotlinDebug\n*F\n+ 1 PaywallRequestManager.kt\ncom/superwall/sdk/paywall/request/PaywallRequestManager\n*L\n66#1:434,10\n410#1:444\n410#1:445,3\n430#1:448\n430#1:449,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012$\u0008\u0002\u0010\n\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u0012\u001a\u0008\u0002\u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u00110\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J,\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H\u0086@\u00a2\u0006\u0002\u0010\"J\u001e\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010%J&\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u00192\u0006\u0010(\u001a\u00020!H\u0082@\u00a2\u0006\u0002\u0010)J*\u0010*\u001a\u000c\u0012\u0004\u0012\u00020\u0019\u0012\u0002\u0008\u00030\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H\u0086@\u00a2\u0006\u0002\u0010\"J*\u0010+\u001a\u000c\u0012\u0004\u0012\u00020\u0019\u0012\u0002\u0008\u00030\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H\u0082@\u00a2\u0006\u0002\u0010\"J\u0018\u0010,\u001a\u00020\u000e2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0082@\u00a2\u0006\u0002\u0010/J \u00100\u001a\u00020\u000e2\u0006\u00101\u001a\u0002022\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0082@\u00a2\u0006\u0002\u00103J\u001e\u00104\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0086@\u00a2\u0006\u0002\u0010%J\u001e\u00105\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010%J\u001e\u00106\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010%J \u00107\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00192\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0082@\u00a2\u0006\u0002\u00108J\r\u00109\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008:J2\u0010;\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020<\u0018\u00010\u00112\u0014\u0010=\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020>\u0018\u00010\u0011H\u0082@\u00a2\u0006\u0002\u0010?R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\n\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015R \u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00190\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;",
        "",
        "storeManager",
        "Lcom/superwall/sdk/store/StoreManager;",
        "network",
        "Lcom/superwall/sdk/network/Network;",
        "factory",
        "Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "track",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "getGlobalOverrides",
        "Lkotlin/Function0;",
        "",
        "",
        "<init>",
        "(Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V",
        "Lkotlin/jvm/functions/Function2;",
        "activeTasks",
        "",
        "Lkotlinx/coroutines/Deferred;",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "paywallsByHash",
        "getPaywall",
        "Lcom/superwall/sdk/misc/Either;",
        "",
        "request",
        "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
        "isPreloading",
        "",
        "(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updatePaywall",
        "paywall",
        "(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "saveRequestHash",
        "requestHash",
        "isDebuggerLaunched",
        "(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/Paywall;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getRawPaywall",
        "getPaywallResponse",
        "trackResponseStarted",
        "event",
        "Lcom/superwall/sdk/models/events/EventData;",
        "(Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trackResponseLoaded",
        "paywallInfo",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addProducts",
        "getProducts",
        "trackProductsLoadStart",
        "trackProductsLoadFinish",
        "(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resetCache",
        "resetCache$superwall_release",
        "convertProductOverrides",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "productOverrides",
        "Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride;",
        "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final activeTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;>;"
        }
    .end annotation
.end field

.field private final factory:Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;

.field private final getGlobalOverrides:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private final network:Lcom/superwall/sdk/network/Network;

.field private final paywallsByHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;"
        }
    .end annotation
.end field

.field private final storeManager:Lcom/superwall/sdk/store/StoreManager;

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
.method public static synthetic $r8$lambda$zW6SkIziyha9D4w3VSX-fRT1kyM()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->_init_$lambda$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/StoreManager;",
            "Lcom/superwall/sdk/network/Network;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;",
            "Lcom/superwall/sdk/misc/IOScope;",
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
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "storeManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getGlobalOverrides"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    .line 46
    iput-object p2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->network:Lcom/superwall/sdk/network/Network;

    .line 47
    iput-object p3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->factory:Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;

    .line 48
    iput-object p4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 49
    iput-object p5, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->track:Lkotlin/jvm/functions/Function2;

    .line 52
    iput-object p6, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getGlobalOverrides:Lkotlin/jvm/functions/Function0;

    .line 59
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->activeTasks:Ljava/util/Map;

    .line 60
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->paywallsByHash:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    .line 49
    new-instance p5, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$1;

    const/4 p8, 0x0

    invoke-direct {p5, p8}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p5, Lkotlin/jvm/functions/Function2;

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    .line 52
    new-instance p6, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$$ExternalSyntheticLambda0;

    invoke-direct {p6}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$$ExternalSyntheticLambda0;-><init>()V

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 44
    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;-><init>(Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final _init_$lambda$0()Ljava/util/Map;
    .locals 1

    .line 53
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getOverrideProductsByName()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$convertProductOverrides(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->convertProductOverrides(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActiveTasks$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Ljava/util/Map;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->activeTasks:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getFactory$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->factory:Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;

    return-object p0
.end method

.method public static final synthetic access$getGetGlobalOverrides$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getGlobalOverrides:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getIoScope$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/misc/IOScope;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    return-object p0
.end method

.method public static final synthetic access$getNetwork$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/network/Network;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->network:Lcom/superwall/sdk/network/Network;

    return-object p0
.end method

.method public static final synthetic access$getPaywallResponse(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getPaywallResponse(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPaywallsByHash$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Ljava/util/Map;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->paywallsByHash:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getProducts(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getProducts(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getStoreManager$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/store/StoreManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    return-object p0
.end method

.method public static final synthetic access$getTrack$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->track:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$saveRequestHash(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/Paywall;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->saveRequestHash(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/Paywall;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$trackProductsLoadFinish(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->trackProductsLoadFinish(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$trackProductsLoadStart(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->trackProductsLoadStart(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$trackResponseLoaded(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->trackResponseLoaded(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$trackResponseStarted(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->trackResponseStarted(Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updatePaywall(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->updatePaywall(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final convertProductOverrides(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride;",
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

    instance-of v0, p2, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v4, v0

    iget-object p2, v4, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 404
    iget v1, v4, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;->label:I

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v4, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object v0, v4, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p2

    move-object p2, p1

    move-object p1, v0

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_e

    .line 405
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_6

    .line 406
    :cond_3
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    .line 408
    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    check-cast v1, Lcom/superwall/sdk/store/StoreKit;

    .line 409
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 444
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 445
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 446
    check-cast v6, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride;

    .line 412
    instance-of v8, v6, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ById;

    if-eqz v8, :cond_4

    check-cast v6, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ById;

    invoke-virtual {v6}, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ById;->getProductId()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 413
    :cond_4
    instance-of v8, v6, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ByProduct;

    if-eqz v8, :cond_5

    check-cast v6, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ByProduct;

    invoke-virtual {v6}, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ByProduct;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    move-result-object v6

    invoke-virtual {v6}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getProductIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 446
    :goto_2
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 411
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 447
    :cond_6
    check-cast v5, Ljava/util/List;

    .line 444
    check-cast v5, Ljava/lang/Iterable;

    .line 415
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 408
    iput-object p1, v4, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;->L$0:Ljava/lang/Object;

    iput-object p2, v4, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;->L$1:Ljava/lang/Object;

    iput v2, v4, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$convertProductOverrides$1;->label:I

    move-object v2, v3

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/superwall/sdk/store/StoreKit$DefaultImpls;->getProductsWithoutPaywall$default(Lcom/superwall/sdk/store/StoreKit;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return-object v0

    .line 404
    :cond_7
    :goto_3
    check-cast v1, Ljava/util/Map;

    .line 417
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride;

    .line 419
    instance-of v3, v0, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ByProduct;

    if-eqz v3, :cond_8

    .line 420
    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ByProduct;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ByProduct;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 423
    :cond_8
    instance-of v3, v0, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ById;

    if-eqz v3, :cond_9

    .line 424
    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ById;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride$ById;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    .line 425
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 418
    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 448
    :cond_a
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 449
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 430
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_5

    .line 451
    :cond_b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 430
    :cond_c
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d

    return-object v7

    :cond_d
    return-object p1

    :cond_e
    :goto_6
    return-object v7
.end method

.method public static synthetic getPaywall$default(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getPaywall(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getPaywallResponse(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/IOScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic getPaywallResponse$default(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 222
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getPaywallResponse(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getProducts(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/IOScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getProducts$2;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic getRawPaywall$default(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 197
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getRawPaywall(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final saveRequestHash(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/Paywall;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/IOScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$saveRequestHash$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$saveRequestHash$2;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Ljava/lang/String;ZLcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final trackProductsLoadFinish(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/IOScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final trackProductsLoadStart(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/IOScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadStart$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadStart$2;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final trackResponseLoaded(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/IOScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackResponseLoaded$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackResponseLoaded$2;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final trackResponseStarted(Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/IOScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackResponseStarted$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackResponseStarted$2;-><init>(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final updatePaywall(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/IOScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$updatePaywall$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$updatePaywall$2;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final addProducts(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/IOScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPaywall(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 62
    iget v2, v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    :try_start_1
    iget-object p3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    invoke-virtual {p3}, Lcom/superwall/sdk/misc/IOScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    new-instance v2, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, p2, v4}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;->label:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 62
    :cond_3
    :goto_1
    check-cast p3, Lcom/superwall/sdk/models/paywall/Paywall;

    .line 435
    new-instance p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p1, p3}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/superwall/sdk/misc/Either;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 437
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 438
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 439
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 442
    :cond_4
    new-instance p2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lcom/superwall/sdk/misc/Either;

    return-object p2
.end method

.method public final getRawPaywall(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/IOScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getRawPaywall$2;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final resetCache$superwall_release()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->paywallsByHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
