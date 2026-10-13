.class public final Lcom/superwall/sdk/storage/Cache;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/storage/Cache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u0010\u001a\u0004\u0018\u0001H\u0011\"\u0004\u0008\u0000\u0010\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0013\u00a2\u0006\u0002\u0010\u0014J+\u0010\u0015\u001a\u00020\u0016\"\u0008\u0008\u0000\u0010\u0011*\u00020\u000f2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u00132\u0006\u0010\u0017\u001a\u0002H\u0011\u00a2\u0006\u0002\u0010\u0018J\u001e\u0010\u0019\u001a\u00020\u0016\"\u0008\u0008\u0000\u0010\u0011*\u00020\u000f2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0013J\u0006\u0010\u001a\u001a\u00020\u0016J\u0008\u0010\u001b\u001a\u00020\u0016H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u00020\u0005X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/superwall/sdk/storage/Cache;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "context",
        "Landroid/content/Context;",
        "ioQueue",
        "Lkotlin/coroutines/CoroutineContext;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "<init>",
        "(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlinx/serialization/json/Json;)V",
        "getContext",
        "()Landroid/content/Context;",
        "memCache",
        "Lcom/superwall/sdk/storage/memory/LRUCache;",
        "",
        "",
        "read",
        "T",
        "storable",
        "Lcom/superwall/sdk/storage/Storable;",
        "(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;",
        "write",
        "",
        "data",
        "(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V",
        "delete",
        "clean",
        "cleanDiskCache",
        "coroutineContext",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
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
.field public static final Companion:Lcom/superwall/sdk/storage/Cache$Companion;

.field private static final appSpecificDocumentDirectoryPrefix:Ljava/lang/String; = "com.superwall.document.appSpecific.Store"

.field private static final cacheDirectoryPrefix:Ljava/lang/String; = "com.superwall.cache.Store"

.field private static final defaultMaxCachePeriodInSecond:J = 0x93a80L

.field private static final ioQueuePrefix:Ljava/lang/String; = "com.superwall.queue.Store"

.field private static final userSpecificDocumentDirectoryPrefix:Ljava/lang/String; = "com.superwall.document.userSpecific.Store"


# instance fields
.field private final synthetic $$delegate_0:Lkotlinx/coroutines/CoroutineScope;

.field private final context:Landroid/content/Context;

.field private final ioQueue:Lkotlin/coroutines/CoroutineContext;

.field private final json:Lkotlinx/serialization/json/Json;

.field private final memCache:Lcom/superwall/sdk/storage/memory/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/superwall/sdk/storage/memory/LRUCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/storage/Cache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/storage/Cache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/storage/Cache;->Companion:Lcom/superwall/sdk/storage/Cache$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlinx/serialization/json/Json;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/storage/Cache;->$$delegate_0:Lkotlinx/coroutines/CoroutineScope;

    .line 18
    iput-object p1, p0, Lcom/superwall/sdk/storage/Cache;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/superwall/sdk/storage/Cache;->ioQueue:Lkotlin/coroutines/CoroutineContext;

    .line 20
    iput-object p3, p0, Lcom/superwall/sdk/storage/Cache;->json:Lkotlinx/serialization/json/Json;

    .line 33
    new-instance p1, Lcom/superwall/sdk/storage/memory/LRUCache;

    new-instance p2, Lcom/superwall/sdk/storage/memory/PerpetualCache;

    invoke-direct {p2}, Lcom/superwall/sdk/storage/memory/PerpetualCache;-><init>()V

    check-cast p2, Lcom/superwall/sdk/storage/memory/GenericCache;

    const/16 p3, 0x3e8

    invoke-direct {p1, p2, p3}, Lcom/superwall/sdk/storage/memory/LRUCache;-><init>(Lcom/superwall/sdk/storage/memory/GenericCache;I)V

    iput-object p1, p0, Lcom/superwall/sdk/storage/Cache;->memCache:Lcom/superwall/sdk/storage/memory/LRUCache;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlinx/serialization/json/Json;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    const/4 p5, 0x2

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    .line 19
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    const/4 p4, 0x1

    const/4 v0, 0x0

    invoke-static {p2, p4, v0, p5, v0}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism$default(Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/storage/Cache;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlinx/serialization/json/Json;)V

    return-void
.end method

.method public static final synthetic access$getJson$p(Lcom/superwall/sdk/storage/Cache;)Lkotlinx/serialization/json/Json;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/superwall/sdk/storage/Cache;->json:Lkotlinx/serialization/json/Json;

    return-object p0
.end method

.method private final cleanDiskCache()V
    .locals 6

    .line 128
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/storage/Cache$cleanDiskCache$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/storage/Cache$cleanDiskCache$1;-><init>(Lcom/superwall/sdk/storage/Cache;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final clean()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/superwall/sdk/storage/Cache;->memCache:Lcom/superwall/sdk/storage/memory/LRUCache;

    invoke-virtual {v0}, Lcom/superwall/sdk/storage/memory/LRUCache;->clear()V

    .line 124
    invoke-direct {p0}, Lcom/superwall/sdk/storage/Cache;->cleanDiskCache()V

    return-void
.end method

.method public final delete(Lcom/superwall/sdk/storage/Storable;)V
    .locals 8
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

    .line 99
    iget-object v0, p0, Lcom/superwall/sdk/storage/Cache;->memCache:Lcom/superwall/sdk/storage/memory/LRUCache;

    invoke-interface {p1}, Lcom/superwall/sdk/storage/Storable;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/storage/memory/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/storage/Cache$delete$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/superwall/sdk/storage/Cache$delete$1;-><init>(Lcom/superwall/sdk/storage/Storable;Lcom/superwall/sdk/storage/Cache;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/superwall/sdk/storage/Cache;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/storage/Cache;->$$delegate_0:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;
    .locals 12
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

    const/4 v1, 0x0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/storage/Cache;->memCache:Lcom/superwall/sdk/storage/memory/LRUCache;

    invoke-interface {p1}, Lcom/superwall/sdk/storage/Storable;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/superwall/sdk/storage/memory/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    iget-object v2, p0, Lcom/superwall/sdk/storage/Cache;->memCache:Lcom/superwall/sdk/storage/memory/LRUCache;

    invoke-interface {p1}, Lcom/superwall/sdk/storage/Storable;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/superwall/sdk/storage/memory/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v4, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 46
    sget-object v5, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 47
    sget-object v6, Lcom/superwall/sdk/logger/LogScope;->cache:Lcom/superwall/sdk/logger/LogScope;

    .line 48
    invoke-interface {p1}, Lcom/superwall/sdk/storage/Storable;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "ClassCastException reading from memory cache for key: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 49
    move-object v9, v0

    check-cast v9, Ljava/lang/Throwable;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 45
    invoke-static/range {v4 .. v11}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    if-nez v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/superwall/sdk/storage/Cache;->context:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/superwall/sdk/storage/Storable;->file(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    const-string v2, ""

    .line 57
    :try_start_1
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v3}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 58
    iget-object v0, p0, Lcom/superwall/sdk/storage/Cache;->json:Lkotlinx/serialization/json/Json;

    invoke-interface {p1}, Lcom/superwall/sdk/storage/Storable;->getSerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v3, v2}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/superwall/sdk/storage/Cache;->memCache:Lcom/superwall/sdk/storage/memory/LRUCache;

    invoke-interface {p1}, Lcom/superwall/sdk/storage/Storable;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/superwall/sdk/storage/memory/LRUCache;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v0

    .line 63
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 64
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 65
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->cache:Lcom/superwall/sdk/logger/LogScope;

    .line 66
    invoke-interface {p1}, Lcom/superwall/sdk/storage/Storable;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Unable to read key: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", got "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 63
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    :goto_1
    return-object v1
.end method

.method public final write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V
    .locals 8
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

    .line 80
    iget-object v0, p0, Lcom/superwall/sdk/storage/Cache;->memCache:Lcom/superwall/sdk/storage/memory/LRUCache;

    invoke-interface {p1}, Lcom/superwall/sdk/storage/Storable;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/superwall/sdk/storage/memory/LRUCache;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/storage/Cache$write$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/superwall/sdk/storage/Cache$write$1;-><init>(Lcom/superwall/sdk/storage/Storable;Lcom/superwall/sdk/storage/Cache;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
