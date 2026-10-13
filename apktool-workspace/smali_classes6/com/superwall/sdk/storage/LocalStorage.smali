.class public Lcom/superwall/sdk/storage/LocalStorage;
.super Ljava/lang/Object;
.source "LocalStorage.kt"

# interfaces
.implements Lcom/superwall/sdk/storage/Storage;
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/storage/LocalStorage$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002:\u0001WBC\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u00109\u001a\u00020:2\u0006\u0010\u0015\u001a\u00020\u0008J\u0008\u0010;\u001a\u00020:H\u0002J\u0006\u0010<\u001a\u00020:J\u0006\u0010=\u001a\u00020:J\u0006\u0010>\u001a\u00020:J5\u0010?\u001a\u00020:2(\u0010@\u001a$\u0008\u0001\u0012\u0004\u0012\u00020B\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020E0D0C\u0012\u0006\u0012\u0004\u0018\u00010F0A\u00a2\u0006\u0002\u0010GJ\u0008\u0010H\u001a\u00020:H\u0016J\u0006\u0010I\u001a\u00020:J \u0010J\u001a\u00020:2\u0016\u0010K\u001a\u0012\u0012\u0008\u0012\u00060\u0008j\u0002`-\u0012\u0004\u0012\u00020.0,H\u0016J\u0018\u0010L\u001a\u0012\u0012\u0008\u0012\u00060\u0008j\u0002`-\u0012\u0004\u0012\u00020.0,H\u0016J \u0010M\u001a\u00020:\"\u0008\u0008\u0000\u0010N*\u00020F2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u0002HN0PH\u0016J\u0008\u0010Q\u001a\u00020:H\u0016J#\u0010R\u001a\u0004\u0018\u0001HN\"\u0004\u0008\u0000\u0010N2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u0002HN0PH\u0016\u00a2\u0006\u0002\u0010SJ-\u0010T\u001a\u00020:\"\u0008\u0008\u0000\u0010N*\u00020F2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u0002HN0P2\u0006\u0010U\u001a\u0002HNH\u0016\u00a2\u0006\u0002\u0010VR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017\"\u0004\u0008\u001c\u0010\u0019R$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001e8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u000e\u0010$\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010%\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001e8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010!\"\u0004\u0008\'\u0010#R\u000e\u0010(\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010)\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010!\"\u0004\u0008+\u0010#RH\u0010/\u001a\u0014\u0012\u0008\u0012\u00060\u0008j\u0002`-\u0012\u0004\u0012\u00020.\u0018\u00010,2\u0018\u0010\u001d\u001a\u0014\u0012\u0008\u0012\u00060\u0008j\u0002`-\u0012\u0004\u0012\u00020.\u0018\u00010,8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R \u00104\u001a\u0014\u0012\u0008\u0012\u00060\u0008j\u0002`-\u0012\u0004\u0012\u00020.\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00105\u001a\u000206X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108\u00a8\u0006X"
    }
    d2 = {
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "Lcom/superwall/sdk/storage/Storage;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "context",
        "Landroid/content/Context;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "_apiKey",
        "",
        "factory",
        "Lcom/superwall/sdk/storage/LocalStorage$Factory;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "cache",
        "Lcom/superwall/sdk/storage/Cache;",
        "coreDataManager",
        "Lcom/superwall/sdk/storage/core_data/CoreDataManager;",
        "<init>",
        "(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;Lcom/superwall/sdk/storage/LocalStorage$Factory;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/Cache;Lcom/superwall/sdk/storage/core_data/CoreDataManager;)V",
        "getCoreDataManager",
        "()Lcom/superwall/sdk/storage/core_data/CoreDataManager;",
        "apiKey",
        "getApiKey",
        "()Ljava/lang/String;",
        "setApiKey",
        "(Ljava/lang/String;)V",
        "debugKey",
        "getDebugKey",
        "setDebugKey",
        "value",
        "",
        "didTrackFirstSeen",
        "getDidTrackFirstSeen",
        "()Z",
        "setDidTrackFirstSeen",
        "(Z)V",
        "_didTrackFirstSeen",
        "didTrackFirstSession",
        "getDidTrackFirstSession",
        "setDidTrackFirstSession",
        "_didTrackFirstSession",
        "neverCalledStaticConfig",
        "getNeverCalledStaticConfig",
        "setNeverCalledStaticConfig",
        "",
        "Lcom/superwall/sdk/models/triggers/ExperimentID;",
        "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
        "p_confirmedAssignments",
        "getP_confirmedAssignments",
        "()Ljava/util/Map;",
        "setP_confirmedAssignments",
        "(Ljava/util/Map;)V",
        "_confirmedAssignments",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "configure",
        "",
        "updateSdkVersion",
        "reset",
        "recordFirstSeenTracked",
        "recordFirstSessionTracked",
        "recordAppInstall",
        "trackEvent",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/Result;",
        "Lcom/superwall/sdk/analytics/internal/TrackingResult;",
        "",
        "(Lkotlin/jvm/functions/Function2;)V",
        "clearCachedSessionEvents",
        "trackPaywallOpen",
        "saveConfirmedAssignments",
        "assignments",
        "getConfirmedAssignments",
        "delete",
        "T",
        "storable",
        "Lcom/superwall/sdk/storage/Storable;",
        "clean",
        "read",
        "(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;",
        "write",
        "data",
        "(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V",
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


# instance fields
.field private final _apiKey:Ljava/lang/String;

.field private _confirmedAssignments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;"
        }
    .end annotation
.end field

.field private _didTrackFirstSeen:Z

.field private _didTrackFirstSession:Z

.field private apiKey:Ljava/lang/String;

.field private final cache:Lcom/superwall/sdk/storage/Cache;

.field private final coreDataManager:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private debugKey:Ljava/lang/String;

.field private final factory:Lcom/superwall/sdk/storage/LocalStorage$Factory;

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private final json:Lkotlinx/serialization/json/Json;

.field private neverCalledStaticConfig:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;Lcom/superwall/sdk/storage/LocalStorage$Factory;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/Cache;Lcom/superwall/sdk/storage/core_data/CoreDataManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "json"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "_apiKey"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "factory"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioScope"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cache"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "coreDataManager"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/superwall/sdk/storage/LocalStorage;->json:Lkotlinx/serialization/json/Json;

    .line 27
    iput-object p3, p0, Lcom/superwall/sdk/storage/LocalStorage;->_apiKey:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/superwall/sdk/storage/LocalStorage;->factory:Lcom/superwall/sdk/storage/LocalStorage$Factory;

    .line 29
    iput-object p5, p0, Lcom/superwall/sdk/storage/LocalStorage;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 31
    iput-object p6, p0, Lcom/superwall/sdk/storage/LocalStorage;->cache:Lcom/superwall/sdk/storage/Cache;

    .line 33
    iput-object p7, p0, Lcom/superwall/sdk/storage/LocalStorage;->coreDataManager:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    .line 41
    iput-object p3, p0, Lcom/superwall/sdk/storage/LocalStorage;->apiKey:Ljava/lang/String;

    .line 44
    const-string p1, ""

    iput-object p1, p0, Lcom/superwall/sdk/storage/LocalStorage;->debugKey:Ljava/lang/String;

    .line 91
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x2

    const/4 p4, 0x1

    .line 94
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    .line 91
    invoke-static {p1, p4, p2, p3, p2}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism$default(Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    iput-object p1, p0, Lcom/superwall/sdk/storage/LocalStorage;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 94
    sget-object p1, Lcom/superwall/sdk/storage/DidTrackFirstSeen;->INSTANCE:Lcom/superwall/sdk/storage/DidTrackFirstSeen;

    check-cast p1, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p6, p1}, Lcom/superwall/sdk/storage/Cache;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/superwall/sdk/storage/LocalStorage;->_didTrackFirstSeen:Z

    if-eqz p1, :cond_0

    .line 98
    iput-boolean p4, p0, Lcom/superwall/sdk/storage/LocalStorage;->_didTrackFirstSession:Z

    return-void

    .line 100
    :cond_0
    sget-object p1, Lcom/superwall/sdk/storage/DidTrackFirstSession;->INSTANCE:Lcom/superwall/sdk/storage/DidTrackFirstSession;

    check-cast p1, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p6, p1}, Lcom/superwall/sdk/storage/Cache;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/superwall/sdk/storage/LocalStorage;->_didTrackFirstSession:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;Lcom/superwall/sdk/storage/LocalStorage$Factory;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/Cache;Lcom/superwall/sdk/storage/core_data/CoreDataManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_0

    .line 31
    new-instance v0, Lcom/superwall/sdk/storage/Cache;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/storage/Cache;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlinx/serialization/json/Json;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v1

    move-object p6, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    move-object p2, p1

    :goto_0
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_1

    .line 33
    new-instance p7, Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    invoke-direct {p7, p2}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;-><init>(Landroid/content/Context;)V

    :cond_1
    move-object p1, p0

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, v3

    .line 24
    invoke-direct/range {p1 .. p8}, Lcom/superwall/sdk/storage/LocalStorage;-><init>(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;Lcom/superwall/sdk/storage/LocalStorage$Factory;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/Cache;Lcom/superwall/sdk/storage/core_data/CoreDataManager;)V

    return-void
.end method

.method public static final synthetic access$get_confirmedAssignments$p(Lcom/superwall/sdk/storage/LocalStorage;)Ljava/util/Map;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/superwall/sdk/storage/LocalStorage;->_confirmedAssignments:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$get_didTrackFirstSeen$p(Lcom/superwall/sdk/storage/LocalStorage;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/superwall/sdk/storage/LocalStorage;->_didTrackFirstSeen:Z

    return p0
.end method

.method public static final synthetic access$get_didTrackFirstSession$p(Lcom/superwall/sdk/storage/LocalStorage;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/superwall/sdk/storage/LocalStorage;->_didTrackFirstSession:Z

    return p0
.end method

.method public static final synthetic access$set_confirmedAssignments$p(Lcom/superwall/sdk/storage/LocalStorage;Ljava/util/Map;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/superwall/sdk/storage/LocalStorage;->_confirmedAssignments:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$set_didTrackFirstSeen$p(Lcom/superwall/sdk/storage/LocalStorage;Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/superwall/sdk/storage/LocalStorage;->_didTrackFirstSeen:Z

    return-void
.end method

.method public static final synthetic access$set_didTrackFirstSession$p(Lcom/superwall/sdk/storage/LocalStorage;Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/superwall/sdk/storage/LocalStorage;->_didTrackFirstSession:Z

    return-void
.end method

.method private final getP_confirmedAssignments()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/superwall/sdk/storage/LocalStorage;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/storage/LocalStorage$p_confirmedAssignments$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/storage/LocalStorage$p_confirmedAssignments$1;-><init>(Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final setP_confirmedAssignments(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;)V"
        }
    .end annotation

    .line 85
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/storage/LocalStorage$p_confirmedAssignments$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/superwall/sdk/storage/LocalStorage$p_confirmedAssignments$2;-><init>(Lcom/superwall/sdk/storage/LocalStorage;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final updateSdkVersion()V
    .locals 3

    .line 112
    invoke-static {}, Lcom/superwall/sdk/misc/ConstantsKt;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    .line 113
    sget-object v1, Lcom/superwall/sdk/storage/SdkVersion;->INSTANCE:Lcom/superwall/sdk/storage/SdkVersion;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p0, v1}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    sget-object v2, Lcom/superwall/sdk/storage/SdkVersion;->INSTANCE:Lcom/superwall/sdk/storage/SdkVersion;

    check-cast v2, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p0, v2, v0}, Lcom/superwall/sdk/storage/LocalStorage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/superwall/sdk/storage/LocalStorage;->neverCalledStaticConfig:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/superwall/sdk/storage/LocalStorage;->reset()V

    return-void
.end method

.method public clearCachedSessionEvents()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/superwall/sdk/storage/LocalStorage;->cache:Lcom/superwall/sdk/storage/Cache;

    sget-object v1, Lcom/superwall/sdk/storage/Transactions;->INSTANCE:Lcom/superwall/sdk/storage/Transactions;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/storage/Cache;->delete(Lcom/superwall/sdk/storage/Storable;)V

    return-void
.end method

.method public final configure(Ljava/lang/String;)V
    .locals 1

    const-string v0, "apiKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/superwall/sdk/storage/LocalStorage;->updateSdkVersion()V

    .line 106
    iput-object p1, p0, Lcom/superwall/sdk/storage/LocalStorage;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public delete(Lcom/superwall/sdk/storage/Storable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "storable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/superwall/sdk/storage/LocalStorage;->cache:Lcom/superwall/sdk/storage/Cache;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/storage/Cache;->delete(Lcom/superwall/sdk/storage/Storable;)V

    return-void
.end method

.method public final getApiKey()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/superwall/sdk/storage/LocalStorage;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmedAssignments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lcom/superwall/sdk/storage/LocalStorage;->getP_confirmedAssignments()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 200
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/storage/LocalStorage;

    .line 201
    sget-object v0, Lcom/superwall/sdk/storage/ConfirmedAssignments;->INSTANCE:Lcom/superwall/sdk/storage/ConfirmedAssignments;

    check-cast v0, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 202
    :cond_1
    invoke-direct {p0, v0}, Lcom/superwall/sdk/storage/LocalStorage;->setP_confirmedAssignments(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getCoreDataManager()Lcom/superwall/sdk/storage/core_data/CoreDataManager;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/superwall/sdk/storage/LocalStorage;->coreDataManager:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/superwall/sdk/storage/LocalStorage;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getDebugKey()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/superwall/sdk/storage/LocalStorage;->debugKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getDidTrackFirstSeen()Z
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/superwall/sdk/storage/LocalStorage;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/storage/LocalStorage$didTrackFirstSeen$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/storage/LocalStorage$didTrackFirstSeen$1;-><init>(Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getDidTrackFirstSession()Z
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/superwall/sdk/storage/LocalStorage;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/storage/LocalStorage$didTrackFirstSession$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/storage/LocalStorage$didTrackFirstSession$1;-><init>(Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getNeverCalledStaticConfig()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/superwall/sdk/storage/LocalStorage;->neverCalledStaticConfig:Z

    return v0
.end method

.method public read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "storable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/superwall/sdk/storage/LocalStorage;->cache:Lcom/superwall/sdk/storage/Cache;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/storage/Cache;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final recordAppInstall(Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/superwall/sdk/analytics/internal/TrackingResult;",
            ">;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trackEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/superwall/sdk/storage/DidTrackAppInstall;->INSTANCE:Lcom/superwall/sdk/storage/DidTrackAppInstall;

    check-cast v0, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/storage/LocalStorage;->factory:Lcom/superwall/sdk/storage/LocalStorage$Factory;

    invoke-interface {v0}, Lcom/superwall/sdk/storage/LocalStorage$Factory;->makeHasExternalPurchaseController()Z

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/superwall/sdk/storage/LocalStorage;->factory:Lcom/superwall/sdk/storage/LocalStorage$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/storage/LocalStorage$Factory;->makeDeviceInfo()Lcom/superwall/sdk/network/device/DeviceInfo;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/superwall/sdk/storage/LocalStorage;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/storage/LocalStorage$recordAppInstall$1;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v0, p1, v4}, Lcom/superwall/sdk/storage/LocalStorage$recordAppInstall$1;-><init>(Lcom/superwall/sdk/network/device/DeviceInfo;ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 179
    sget-object p1, Lcom/superwall/sdk/storage/DidTrackAppInstall;->INSTANCE:Lcom/superwall/sdk/storage/DidTrackAppInstall;

    check-cast p1, Lcom/superwall/sdk/storage/Storable;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/superwall/sdk/storage/LocalStorage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    return-void
.end method

.method public final recordFirstSeenTracked()V
    .locals 6

    .line 140
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/storage/LocalStorage$recordFirstSeenTracked$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/storage/LocalStorage$recordFirstSeenTracked$1;-><init>(Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final recordFirstSessionTracked()V
    .locals 6

    .line 153
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/storage/LocalStorage$recordFirstSessionTracked$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/storage/LocalStorage$recordFirstSessionTracked$1;-><init>(Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final reset()V
    .locals 7

    .line 126
    iget-object v0, p0, Lcom/superwall/sdk/storage/LocalStorage;->coreDataManager:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    invoke-virtual {v0}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->deleteAllEntities()V

    .line 127
    iget-object v0, p0, Lcom/superwall/sdk/storage/LocalStorage;->cache:Lcom/superwall/sdk/storage/Cache;

    invoke-virtual {v0}, Lcom/superwall/sdk/storage/Cache;->clean()V

    .line 129
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/storage/LocalStorage$reset$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/storage/LocalStorage$reset$1;-><init>(Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 133
    invoke-virtual {p0}, Lcom/superwall/sdk/storage/LocalStorage;->recordFirstSeenTracked()V

    return-void
.end method

.method public saveConfirmedAssignments(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;)V"
        }
    .end annotation

    const-string v0, "assignments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/superwall/sdk/storage/ConfirmedAssignments;->INSTANCE:Lcom/superwall/sdk/storage/ConfirmedAssignments;

    check-cast v0, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p0, v0, p1}, Lcom/superwall/sdk/storage/LocalStorage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/superwall/sdk/storage/LocalStorage;->setP_confirmedAssignments(Ljava/util/Map;)V

    return-void
.end method

.method public final setApiKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/superwall/sdk/storage/LocalStorage;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public final setDebugKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/superwall/sdk/storage/LocalStorage;->debugKey:Ljava/lang/String;

    return-void
.end method

.method public final setDidTrackFirstSeen(Z)V
    .locals 6

    .line 53
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/storage/LocalStorage$didTrackFirstSeen$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/superwall/sdk/storage/LocalStorage$didTrackFirstSeen$2;-><init>(Lcom/superwall/sdk/storage/LocalStorage;ZLkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setDidTrackFirstSession(Z)V
    .locals 6

    .line 66
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/storage/LocalStorage$didTrackFirstSession$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/superwall/sdk/storage/LocalStorage$didTrackFirstSession$2;-><init>(Lcom/superwall/sdk/storage/LocalStorage;ZLkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setNeverCalledStaticConfig(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/superwall/sdk/storage/LocalStorage;->neverCalledStaticConfig:Z

    return-void
.end method

.method public final trackPaywallOpen()V
    .locals 2

    .line 187
    sget-object v0, Lcom/superwall/sdk/storage/TotalPaywallViews;->INSTANCE:Lcom/superwall/sdk/storage/TotalPaywallViews;

    check-cast v0, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    sget-object v1, Lcom/superwall/sdk/storage/TotalPaywallViews;->INSTANCE:Lcom/superwall/sdk/storage/TotalPaywallViews;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/superwall/sdk/storage/LocalStorage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 189
    sget-object v0, Lcom/superwall/sdk/storage/LastPaywallView;->INSTANCE:Lcom/superwall/sdk/storage/LastPaywallView;

    check-cast v0, Lcom/superwall/sdk/storage/Storable;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/superwall/sdk/storage/LocalStorage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "storable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/superwall/sdk/storage/LocalStorage;->cache:Lcom/superwall/sdk/storage/Cache;

    invoke-virtual {v0, p1, p2}, Lcom/superwall/sdk/storage/Cache;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    return-void
.end method
