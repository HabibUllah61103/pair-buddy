.class public final Lexpo/modules/kotlin/ModuleRegistry;
.super Ljava/lang/Object;
.source "ModuleRegistry.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lexpo/modules/kotlin/ModuleHolder<",
        "*>;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleRegistry.kt\nexpo/modules/kotlin/ModuleRegistry\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,194:1\n14#2:195\n25#2:196\n27#3,3:197\n31#3:201\n1#4:200\n216#5,2:202\n13472#6,2:204\n1869#7,2:206\n1869#7,2:208\n1869#7,2:210\n1869#7,2:212\n1869#7,2:214\n1869#7:216\n1869#7,2:217\n1870#7:219\n*S KotlinDebug\n*F\n+ 1 ModuleRegistry.kt\nexpo/modules/kotlin/ModuleRegistry\n*L\n24#1:195\n24#1:196\n24#1:197,3\n24#1:201\n43#1:202,2\n50#1:204,2\n87#1:206,2\n100#1:208,2\n110#1:210,2\n120#1:212,2\n133#1:214,2\n146#1:216\n147#1:217,2\n146#1:219\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010(\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001:\u0001?B\u0015\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\'\u0010\u0014\u001a\u00020\u0015\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u0002H\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u001aJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001cJ\u001f\u0010\u0014\u001a\u00020\u00002\u0012\u0010\u001d\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00170\u001e\"\u00020\u0017\u00a2\u0006\u0002\u0010\u001fJ\u000e\u0010 \u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\nJ\u0010\u0010!\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0019\u001a\u00020\nJ\u0018\u0010!\u001a\u0004\u0018\u0001H\u0016\"\u0006\u0008\u0000\u0010\u0016\u0018\u0001H\u0086\u0008\u00a2\u0006\u0002\u0010\"J\u0014\u0010#\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00022\u0006\u0010\u0019\u001a\u00020\nJ%\u0010#\u001a\n\u0012\u0004\u0012\u0002H\u0016\u0018\u00010\u0002\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u0002H\u0016\u00a2\u0006\u0002\u0010$J$\u0010#\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0002\"\u0008\u0008\u0000\u0010\u0016*\u00020%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\'J,\u0010(\u001a\u0004\u0018\u00010)\"\u0008\u0008\u0000\u0010\u0016*\u00020%2\n\u0010*\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\'J\u001c\u0010(\u001a\u0004\u0018\u00010)2\n\u0010*\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010+\u001a\u00020\nJ\u0006\u0010,\u001a\u00020\u0015J\u000e\u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020/J!\u0010-\u001a\u00020\u0015\"\u0004\u0008\u0000\u001002\u0006\u0010.\u001a\u00020/2\u0006\u00101\u001a\u0002H0\u00a2\u0006\u0002\u00102J/\u0010-\u001a\u00020\u0015\"\u0004\u0008\u0000\u00100\"\u0004\u0008\u0001\u001032\u0006\u0010.\u001a\u00020/2\u0006\u00101\u001a\u0002H02\u0006\u00104\u001a\u0002H3\u00a2\u0006\u0002\u00105J\u0013\u00106\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000207H\u0096\u0002J\u0006\u00108\u001a\u00020\u0015J\r\u00109\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008:J\u0008\u0010;\u001a\u00020\u0015H\u0002J\u0008\u0010<\u001a\u00020\u0015H\u0002J(\u0010=\u001a\u00020\u00132\u0006\u0010.\u001a\u00020/2\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010>2\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010>H\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\t8\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lexpo/modules/kotlin/ModuleRegistry;",
        "",
        "Lexpo/modules/kotlin/ModuleHolder;",
        "appContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/kotlin/AppContext;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;)V",
        "registry",
        "",
        "",
        "getRegistry$annotations",
        "()V",
        "getRegistry",
        "()Ljava/util/Map;",
        "eventQueue",
        "",
        "Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;",
        "isReadyForPostingEvents",
        "",
        "register",
        "",
        "T",
        "Lexpo/modules/kotlin/modules/Module;",
        "module",
        "name",
        "(Lexpo/modules/kotlin/modules/Module;Ljava/lang/String;)V",
        "provider",
        "Lexpo/modules/kotlin/ModulesProvider;",
        "modules",
        "",
        "([Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/ModuleRegistry;",
        "hasModule",
        "getModule",
        "()Ljava/lang/Object;",
        "getModuleHolder",
        "(Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/ModuleHolder;",
        "Landroid/view/View;",
        "viewClass",
        "Ljava/lang/Class;",
        "getViewDefinition",
        "Lexpo/modules/kotlin/views/ViewManagerDefinition;",
        "holder",
        "viewName",
        "postOnCreate",
        "post",
        "eventName",
        "Lexpo/modules/kotlin/events/EventName;",
        "Sender",
        "sender",
        "(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;)V",
        "Payload",
        "payload",
        "(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V",
        "iterator",
        "",
        "cleanUp",
        "registerActivityContracts",
        "registerActivityContracts$expo_modules_core_release",
        "readyForPostingEvents",
        "flushTheEventQueue",
        "addToQueueIfNeeded",
        "",
        "PostponedEvent",
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
.field private final appContextHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/AppContext;",
            ">;"
        }
    .end annotation
.end field

.field private final eventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private isReadyForPostingEvents:Z

.field private final registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/AppContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appContextHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lexpo/modules/kotlin/ModuleRegistry;->appContextHolder:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lexpo/modules/kotlin/ModuleRegistry;->eventQueue:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getAppContextHolder$p(Lexpo/modules/kotlin/ModuleRegistry;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 14
    iget-object p0, p0, Lexpo/modules/kotlin/ModuleRegistry;->appContextHolder:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private final addToQueueIfNeeded(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-boolean v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->isReadyForPostingEvents:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 167
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 170
    :cond_0
    :try_start_1
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->eventQueue:Ljava/util/List;

    new-instance v1, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;

    invoke-direct {v1, p1, p2, p3}, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;-><init>(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic addToQueueIfNeeded$default(Lexpo/modules/kotlin/ModuleRegistry;Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 161
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/ModuleRegistry;->addToQueueIfNeeded(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final flushTheEventQueue()V
    .locals 4

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->eventQueue:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 216
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;

    .line 147
    move-object v2, p0

    check-cast v2, Ljava/lang/Iterable;

    .line 217
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/ModuleHolder;

    .line 148
    invoke-virtual {v1, v3}, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->post(Lexpo/modules/kotlin/ModuleHolder;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->eventQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic getRegistry$annotations()V
    .locals 0

    return-void
.end method

.method private final readyForPostingEvents()V
    .locals 1

    .line 141
    monitor-enter p0

    const/4 v0, 0x1

    .line 142
    :try_start_0
    iput-boolean v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->isReadyForPostingEvents:Z

    .line 143
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final cleanUp()V
    .locals 2

    .line 128
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 129
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "\u2705 ModuleRegistry was destroyed"

    invoke-virtual {v0, v1}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final getModule(Ljava/lang/String;)Lexpo/modules/kotlin/modules/Module;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/kotlin/ModuleHolder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic getModule()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "T"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lexpo/modules/kotlin/ModuleHolder;

    invoke-virtual {v4}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v4, v4, Ljava/lang/Object;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    check-cast v1, Lexpo/modules/kotlin/ModuleHolder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v3

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast v3, Ljava/lang/Object;

    return-object v3
.end method

.method public final getModuleHolder(Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/ModuleHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lexpo/modules/kotlin/modules/Module;",
            ">(TT;)",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lexpo/modules/kotlin/ModuleHolder;

    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v3

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of p1, v1, Lexpo/modules/kotlin/ModuleHolder;

    if-eqz p1, :cond_2

    check-cast v1, Lexpo/modules/kotlin/ModuleHolder;

    return-object v1

    :cond_2
    return-object v2
.end method

.method public final getModuleHolder(Ljava/lang/Class;)Lexpo/modules/kotlin/ModuleHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;"
        }
    .end annotation

    const-string v0, "viewClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/ModuleHolder;

    .line 71
    invoke-virtual {p0, v1, p1}, Lexpo/modules/kotlin/ModuleRegistry;->getViewDefinition(Lexpo/modules/kotlin/ModuleHolder;Ljava/lang/Class;)Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v2, v1

    :cond_1
    if-eqz v2, :cond_0

    :cond_2
    return-object v2
.end method

.method public final getModuleHolder(Ljava/lang/String;)Lexpo/modules/kotlin/ModuleHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/kotlin/ModuleHolder;

    return-object p1
.end method

.method public final getRegistry()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    return-object v0
.end method

.method public final getViewDefinition(Lexpo/modules/kotlin/ModuleHolder;Ljava/lang/Class;)Lexpo/modules/kotlin/views/ViewManagerDefinition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lexpo/modules/kotlin/views/ViewManagerDefinition;"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinitions()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    invoke-virtual {v1}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getViewType$expo_modules_core_release()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    return-object v0
.end method

.method public final getViewDefinition(Lexpo/modules/kotlin/ModuleHolder;Ljava/lang/String;)Lexpo/modules/kotlin/views/ViewManagerDefinition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lexpo/modules/kotlin/views/ViewManagerDefinition;"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinitions()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    invoke-virtual {v1}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getName$expo_modules_core_release()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    return-object v0
.end method

.method public final hasModule(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final post(Lexpo/modules/kotlin/events/EventName;)V
    .locals 7

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 96
    invoke-static/range {v1 .. v6}, Lexpo/modules/kotlin/ModuleRegistry;->addToQueueIfNeeded$default(Lexpo/modules/kotlin/ModuleRegistry;Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    move-object p1, v1

    check-cast p1, Ljava/lang/Iterable;

    .line 208
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/ModuleHolder;

    .line 101
    invoke-virtual {v0, v2}, Lexpo/modules/kotlin/ModuleHolder;->post(Lexpo/modules/kotlin/events/EventName;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Sender:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/events/EventName;",
            "TSender;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 106
    invoke-static/range {v1 .. v6}, Lexpo/modules/kotlin/ModuleRegistry;->addToQueueIfNeeded$default(Lexpo/modules/kotlin/ModuleRegistry;Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    move-object p1, v1

    check-cast p1, Ljava/lang/Iterable;

    .line 210
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lexpo/modules/kotlin/ModuleHolder;

    .line 111
    invoke-virtual {p2, v2, v3}, Lexpo/modules/kotlin/ModuleHolder;->post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Sender:",
            "Ljava/lang/Object;",
            "Payload:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/events/EventName;",
            "TSender;TPayload;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/ModuleRegistry;->addToQueueIfNeeded(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 212
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/ModuleHolder;

    .line 121
    invoke-virtual {v1, p1, p2, p3}, Lexpo/modules/kotlin/ModuleHolder;->post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final postOnCreate()V
    .locals 3

    .line 87
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 206
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/ModuleHolder;

    .line 88
    sget-object v2, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v1, v2}, Lexpo/modules/kotlin/ModuleHolder;->post(Lexpo/modules/kotlin/events/EventName;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleRegistry;->registerActivityContracts$expo_modules_core_release()V

    .line 91
    invoke-direct {p0}, Lexpo/modules/kotlin/ModuleRegistry;->readyForPostingEvents()V

    .line 92
    invoke-direct {p0}, Lexpo/modules/kotlin/ModuleRegistry;->flushTheEventQueue()V

    return-void
.end method

.method public final register(Lexpo/modules/kotlin/ModulesProvider;)Lexpo/modules/kotlin/ModuleRegistry;
    .locals 4

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/ModuleRegistry;

    .line 43
    invoke-interface {p1}, Lexpo/modules/kotlin/ModulesProvider;->getModulesMap()Ljava/util/Map;

    move-result-object p1

    .line 202
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    .line 44
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/modules/Module;

    .line 45
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/modules/Module;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final varargs register([Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/ModuleRegistry;
    .locals 4

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/ModuleRegistry;

    .line 204
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const/4 v3, 0x0

    .line 51
    invoke-virtual {p0, v2, v3}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/modules/Module;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final register(Lexpo/modules/kotlin/modules/Module;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lexpo/modules/kotlin/modules/Module;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ModuleRegistry.register("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ExpoModulesCore] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 25
    :try_start_0
    invoke-static {p0}, Lexpo/modules/kotlin/ModuleRegistry;->access$getAppContextHolder$p(Lexpo/modules/kotlin/ModuleRegistry;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0}, Lexpo/modules/kotlin/ModuleRegistry;->access$getAppContextHolder$p(Lexpo/modules/kotlin/ModuleRegistry;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lexpo/modules/kotlin/modules/Module;->set_appContextHolder$expo_modules_core_release(Ljava/lang/ref/WeakReference;)V

    .line 29
    new-instance v0, Lexpo/modules/kotlin/ModuleHolder;

    invoke-direct {v0, p1, p2}, Lexpo/modules/kotlin/ModuleHolder;-><init>(Lexpo/modules/kotlin/modules/Module;Ljava/lang/String;)V

    .line 31
    new-instance p2, Lexpo/modules/kotlin/ModuleRegistry$register$1$2;

    invoke-direct {p2, v0}, Lexpo/modules/kotlin/ModuleRegistry$register$1$2;-><init>(Lexpo/modules/kotlin/ModuleHolder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lexpo/modules/kotlin/modules/Module;->setCoroutineScopeDelegate(Lkotlin/Lazy;)V

    .line 39
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleRegistry;->getRegistry()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    .line 25
    :cond_0
    :try_start_1
    const-string p1, "Cannot register a module to an invalid app context."

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 201
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method public final registerActivityContracts$expo_modules_core_release()V
    .locals 2

    .line 133
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 214
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/ModuleHolder;

    .line 134
    invoke-virtual {v1}, Lexpo/modules/kotlin/ModuleHolder;->registerContracts()V

    goto :goto_0

    :cond_0
    return-void
.end method
