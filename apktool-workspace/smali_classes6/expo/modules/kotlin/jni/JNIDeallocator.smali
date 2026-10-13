.class public final Lexpo/modules/kotlin/jni/JNIDeallocator;
.super Ljava/lang/Object;
.source "JNIDeallocator.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/jni/JNIDeallocator$DeallocatorThread;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJNIDeallocator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JNIDeallocator.kt\nexpo/modules/kotlin/jni/JNIDeallocator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,90:1\n1#2:91\n1869#3,2:92\n774#3:94\n865#3,2:95\n1563#3:97\n1634#3,3:98\n*S KotlinDebug\n*F\n+ 1 JNIDeallocator.kt\nexpo/modules/kotlin/jni/JNIDeallocator\n*L\n54#1:92,2\n68#1:94\n68#1:95,2\n69#1:97\n69#1:98,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0001\u001bB\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\tH\u0007J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0011H\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0017J\u000c\u0010\u0018\u001a\u00020\u0011*\u00020\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u0011H\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\n\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000c\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0018\u00010\u000fR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "shouldCreateDestructorThread",
        "",
        "<init>",
        "(Z)V",
        "referenceQueue",
        "Ljava/lang/ref/ReferenceQueue;",
        "Lexpo/modules/kotlin/jni/Destructible;",
        "destructorMap",
        "",
        "Ljava/lang/ref/PhantomReference;",
        "Lcom/facebook/jni/HybridData;",
        "destructorThread",
        "Lexpo/modules/kotlin/jni/JNIDeallocator$DeallocatorThread;",
        "addReference",
        "",
        "destructible",
        "deallocate",
        "deallocate$expo_modules_core_release",
        "()Lkotlin/Unit;",
        "inspectMemory",
        "",
        "deallocator",
        "Ljava/lang/Thread;",
        "close",
        "DeallocatorThread",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final destructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ref/PhantomReference<",
            "Lexpo/modules/kotlin/jni/Destructible;",
            ">;",
            "Lcom/facebook/jni/HybridData;",
            ">;"
        }
    .end annotation
.end field

.field private final destructorThread:Lexpo/modules/kotlin/jni/JNIDeallocator$DeallocatorThread;

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lexpo/modules/kotlin/jni/Destructible;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lexpo/modules/kotlin/jni/JNIDeallocator;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 34
    new-instance p1, Lexpo/modules/kotlin/jni/JNIDeallocator$DeallocatorThread;

    invoke-direct {p1, p0}, Lexpo/modules/kotlin/jni/JNIDeallocator$DeallocatorThread;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    invoke-virtual {p1}, Lexpo/modules/kotlin/jni/JNIDeallocator$DeallocatorThread;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    iput-object p1, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorThread:Lexpo/modules/kotlin/jni/JNIDeallocator$DeallocatorThread;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JNIDeallocator;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$deallocator(Lexpo/modules/kotlin/jni/JNIDeallocator;Ljava/lang/Thread;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JNIDeallocator;->deallocator(Ljava/lang/Thread;)V

    return-void
.end method

.method private final deallocator(Ljava/lang/Thread;)V
    .locals 2

    .line 73
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :try_start_0
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/jni/HybridData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/jni/HybridData;->resetNative()V

    .line 77
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    iget-object v1, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorMap:Ljava/util/Map;

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/jni/HybridData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public final addReference(Lexpo/modules/kotlin/jni/Destructible;)V
    .locals 2

    const-string v0, "destructible"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    new-instance v0, Ljava/lang/ref/PhantomReference;

    iget-object v1, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 47
    iget-object v1, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorMap:Ljava/util/Map;

    invoke-interface {p1}, Lexpo/modules/kotlin/jni/Destructible;->getHybridDataForJNIDeallocator()Lcom/facebook/jni/HybridData;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JNIDeallocator;->deallocate$expo_modules_core_release()Lkotlin/Unit;

    return-void
.end method

.method public final deallocate$expo_modules_core_release()Lkotlin/Unit;
    .locals 2

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 92
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/jni/HybridData;

    .line 55
    invoke-virtual {v1}, Lcom/facebook/jni/HybridData;->resetNative()V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 58
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorThread:Lexpo/modules/kotlin/jni/JNIDeallocator$DeallocatorThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/kotlin/jni/JNIDeallocator$DeallocatorThread;->interrupt()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 53
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final inspectMemory()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/jni/HybridData;",
            ">;"
        }
    .end annotation

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorMap:Ljava/util/Map;

    .line 67
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 95
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

    check-cast v3, Lcom/facebook/jni/HybridData;

    .line 68
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    if-eqz v4, :cond_0

    .line 95
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 68
    monitor-exit v3

    throw v0

    .line 96
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 94
    check-cast v1, Ljava/lang/Iterable;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 98
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 99
    check-cast v2, Lcom/facebook/jni/HybridData;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_2
    check-cast v0, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
