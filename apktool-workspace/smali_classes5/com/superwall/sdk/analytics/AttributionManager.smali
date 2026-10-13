.class public final Lcom/superwall/sdk/analytics/AttributionManager;
.super Ljava/lang/Object;
.source "AttributionManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttributionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttributionManager.kt\ncom/superwall/sdk/analytics/AttributionManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n126#2:73\n153#2,3:74\n1#3:77\n*S KotlinDebug\n*F\n+ 1 AttributionManager.kt\ncom/superwall/sdk/analytics/AttributionManager\n*L\n45#1:73\n45#1:74,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\"\u0010\u0004\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000c\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001e0\u001cH\u0000\u00a2\u0006\u0002\u0008)J\u001a\u0010*\u001a\u00020\u00082\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\u001cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R/\u0010\u0004\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019R\u001a\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001e0\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006,"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/AttributionManager;",
        "",
        "storage",
        "Lcom/superwall/sdk/storage/Storage;",
        "track",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "redeemAfterSetting",
        "Lkotlin/Function0;",
        "vendorId",
        "Lcom/superwall/sdk/models/internal/VendorId;",
        "<init>",
        "(Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "getStorage",
        "()Lcom/superwall/sdk/storage/Storage;",
        "getTrack",
        "()Lkotlin/jvm/functions/Function2;",
        "Lkotlin/jvm/functions/Function2;",
        "getIoScope",
        "()Lcom/superwall/sdk/misc/IOScope;",
        "getRedeemAfterSetting",
        "()Lkotlin/jvm/functions/Function0;",
        "getVendorId",
        "_integrationAttributes",
        "",
        "Lcom/superwall/sdk/models/attribution/AttributionProvider;",
        "",
        "integrationAttributes",
        "getIntegrationAttributes",
        "()Ljava/util/Map;",
        "lastIntegrationJob",
        "Lkotlinx/coroutines/Job;",
        "getLastIntegrationJob",
        "()Lkotlinx/coroutines/Job;",
        "setLastIntegrationJob",
        "(Lkotlinx/coroutines/Job;)V",
        "getFullAttributionIds",
        "getFullAttributionIds$superwall_release",
        "setIntegrationAttributes",
        "attributes",
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
.field private _integrationAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/superwall/sdk/models/attribution/AttributionProvider;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private lastIntegrationJob:Lkotlinx/coroutines/Job;

.field private final redeemAfterSetting:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final storage:Lcom/superwall/sdk/storage/Storage;

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

.field private final vendorId:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/models/internal/VendorId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/Storage;",
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
            "Lcom/superwall/sdk/misc/IOScope;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/models/internal/VendorId;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "track"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redeemAfterSetting"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "vendorId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/superwall/sdk/analytics/AttributionManager;->storage:Lcom/superwall/sdk/storage/Storage;

    .line 22
    iput-object p2, p0, Lcom/superwall/sdk/analytics/AttributionManager;->track:Lkotlin/jvm/functions/Function2;

    .line 23
    iput-object p3, p0, Lcom/superwall/sdk/analytics/AttributionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 24
    iput-object p4, p0, Lcom/superwall/sdk/analytics/AttributionManager;->redeemAfterSetting:Lkotlin/jvm/functions/Function0;

    .line 25
    iput-object p5, p0, Lcom/superwall/sdk/analytics/AttributionManager;->vendorId:Lkotlin/jvm/functions/Function0;

    .line 30
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/superwall/sdk/analytics/AttributionManager;->_integrationAttributes:Ljava/util/Map;

    .line 34
    sget-object p2, Lcom/superwall/sdk/storage/IntegrationAttributes;->INSTANCE:Lcom/superwall/sdk/storage/IntegrationAttributes;

    check-cast p2, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {p1, p2}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/superwall/sdk/analytics/AttributionManager;->_integrationAttributes:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    .line 23
    new-instance p3, Lcom/superwall/sdk/misc/IOScope;

    const/4 p6, 0x1

    const/4 p7, 0x0

    invoke-direct {p3, p7, p6, p7}, Lcom/superwall/sdk/misc/IOScope;-><init>(Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/analytics/AttributionManager;-><init>(Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$get_integrationAttributes$p(Lcom/superwall/sdk/analytics/AttributionManager;)Ljava/util/Map;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/superwall/sdk/analytics/AttributionManager;->_integrationAttributes:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$set_integrationAttributes$p(Lcom/superwall/sdk/analytics/AttributionManager;Ljava/util/Map;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/superwall/sdk/analytics/AttributionManager;->_integrationAttributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getFullAttributionIds$superwall_release()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/superwall/sdk/analytics/AttributionManager;->_integrationAttributes:Ljava/util/Map;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 74
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    invoke-virtual {v3}, Lcom/superwall/sdk/models/attribution/AttributionProvider;->getRawName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 75
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 73
    check-cast v1, Ljava/lang/Iterable;

    .line 47
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getIntegrationAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/AttributionManager;->getFullAttributionIds$superwall_release()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getIoScope()Lcom/superwall/sdk/misc/IOScope;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/superwall/sdk/analytics/AttributionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    return-object v0
.end method

.method public final getLastIntegrationJob()Lkotlinx/coroutines/Job;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/superwall/sdk/analytics/AttributionManager;->lastIntegrationJob:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final getRedeemAfterSetting()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/superwall/sdk/analytics/AttributionManager;->redeemAfterSetting:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getStorage()Lcom/superwall/sdk/storage/Storage;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/superwall/sdk/analytics/AttributionManager;->storage:Lcom/superwall/sdk/storage/Storage;

    return-object v0
.end method

.method public final getTrack()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/analytics/AttributionManager;->track:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getVendorId()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/models/internal/VendorId;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/superwall/sdk/analytics/AttributionManager;->vendorId:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final setIntegrationAttributes(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/superwall/sdk/models/attribution/AttributionProvider;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/superwall/sdk/analytics/AttributionManager;->lastIntegrationJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 51
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/analytics/AttributionManager;

    iget-object v0, p0, Lcom/superwall/sdk/analytics/AttributionManager;->lastIntegrationJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/superwall/sdk/analytics/AttributionManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/analytics/AttributionManager$setIntegrationAttributes$2;

    invoke-direct {v0, p0, p1, v1}, Lcom/superwall/sdk/analytics/AttributionManager$setIntegrationAttributes$2;-><init>(Lcom/superwall/sdk/analytics/AttributionManager;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/superwall/sdk/analytics/AttributionManager;->lastIntegrationJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setLastIntegrationJob(Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/superwall/sdk/analytics/AttributionManager;->lastIntegrationJob:Lkotlinx/coroutines/Job;

    return-void
.end method
