.class public final Lexpo/modules/kotlin/services/ServicesRegistry;
.super Ljava/lang/Object;
.source "ServicesRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServicesRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServicesRegistry.kt\nexpo/modules/kotlin/services/ServicesRegistry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1869#2,2:59\n11228#3:61\n11563#3,3:62\n1#4:65\n*S KotlinDebug\n*F\n+ 1 ServicesRegistry.kt\nexpo/modules/kotlin/services/ServicesRegistry\n*L\n25#1:59,2\n47#1:61\n47#1:62,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\u000f\u001a\u00020\u00002\u000e\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\tJ\u001c\u0010\u000f\u001a\u00020\u00002\u0014\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t0\u0012J\u0015\u0010\u000f\u001a\u00020\u0000\"\n\u0008\u0000\u0010\u0013\u0018\u0001*\u00020\nH\u0086\u0008J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\nJ\u001e\u0010\u000f\u001a\u00020\u00002\u000e\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t2\u0006\u0010\u0014\u001a\u00020\nJ\u001e\u0010\u0015\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t0\u00122\u0006\u0010\u0014\u001a\u00020\nH\u0002J\u001c\u0010\u0014\u001a\u0004\u0018\u0001H\u0013\"\n\u0008\u0000\u0010\u0013\u0018\u0001*\u00020\nH\u0086\u0008\u00a2\u0006\u0002\u0010\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R0\u0010\u0007\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t\u0012\u0004\u0012\u00020\n0\u00088\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/kotlin/services/ServicesRegistry;",
        "",
        "appContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/kotlin/AppContext;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;)V",
        "registry",
        "",
        "Ljava/lang/Class;",
        "Lexpo/modules/kotlin/services/Service;",
        "getRegistry$annotations",
        "()V",
        "getRegistry",
        "()Ljava/util/Map;",
        "register",
        "serviceClass",
        "serviceClasses",
        "",
        "T",
        "service",
        "getServiceInterfaces",
        "()Lexpo/modules/kotlin/services/Service;",
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

.field private final registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lexpo/modules/kotlin/services/Service;",
            ">;",
            "Lexpo/modules/kotlin/services/Service;",
            ">;"
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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lexpo/modules/kotlin/services/ServicesRegistry;->appContextHolder:Ljava/lang/ref/WeakReference;

    .line 10
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lexpo/modules/kotlin/services/ServicesRegistry;->registry:Ljava/util/Map;

    return-void
.end method

.method public static synthetic getRegistry$annotations()V
    .locals 0

    return-void
.end method

.method private final getServiceInterfaces(Lexpo/modules/kotlin/services/Service;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/services/Service;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lexpo/modules/kotlin/services/Service;",
            ">;>;"
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 46
    const-class v0, Lexpo/modules/kotlin/services/ServiceInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v1, "getAnnotationsByType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 62
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 63
    check-cast v4, Lexpo/modules/kotlin/services/ServiceInterface;

    .line 47
    invoke-interface {v4}, Lexpo/modules/kotlin/services/ServiceInterface;->clazz()Ljava/lang/Class;

    move-result-object v4

    .line 63
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 48
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    .line 49
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final getRegistry()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lexpo/modules/kotlin/services/Service;",
            ">;",
            "Lexpo/modules/kotlin/services/Service;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lexpo/modules/kotlin/services/ServicesRegistry;->registry:Ljava/util/Map;

    return-object v0
.end method

.method public final synthetic register()Lexpo/modules/kotlin/services/ServicesRegistry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lexpo/modules/kotlin/services/Service;",
            ">()",
            "Lexpo/modules/kotlin/services/ServicesRegistry;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 30
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lexpo/modules/kotlin/services/Service;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/services/ServicesRegistry;->register(Ljava/lang/Class;)Lexpo/modules/kotlin/services/ServicesRegistry;

    move-result-object v0

    return-object v0
.end method

.method public final register(Lexpo/modules/kotlin/services/Service;)Lexpo/modules/kotlin/services/ServicesRegistry;
    .locals 3

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/services/ServicesRegistry;

    .line 33
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/services/ServicesRegistry;->getServiceInterfaces(Lexpo/modules/kotlin/services/Service;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 34
    iget-object v2, p0, Lexpo/modules/kotlin/services/ServicesRegistry;->registry:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final register(Ljava/lang/Class;)Lexpo/modules/kotlin/services/ServicesRegistry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lexpo/modules/kotlin/services/Service;",
            ">;)",
            "Lexpo/modules/kotlin/services/ServicesRegistry;"
        }
    .end annotation

    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/services/ServicesRegistry;

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/services/ServicesRegistry;->appContextHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lexpo/modules/kotlin/AppContext;

    .line 17
    sget-object v1, Lexpo/modules/kotlin/services/Service;->Companion:Lexpo/modules/kotlin/services/Service$Companion;

    invoke-virtual {v1, p1, v0}, Lexpo/modules/kotlin/services/Service$Companion;->construct(Ljava/lang/Class;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/services/Service;

    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/services/ServicesRegistry;->getServiceInterfaces(Lexpo/modules/kotlin/services/Service;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 20
    iget-object v2, p0, Lexpo/modules/kotlin/services/ServicesRegistry;->registry:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot register a service to an invalid app context."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final register(Ljava/lang/Class;Lexpo/modules/kotlin/services/Service;)Lexpo/modules/kotlin/services/ServicesRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lexpo/modules/kotlin/services/Service;",
            ">;",
            "Lexpo/modules/kotlin/services/Service;",
            ")",
            "Lexpo/modules/kotlin/services/ServicesRegistry;"
        }
    .end annotation

    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/services/ServicesRegistry;

    .line 39
    iget-object v0, p0, Lexpo/modules/kotlin/services/ServicesRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final register(Ljava/util/List;)Lexpo/modules/kotlin/services/ServicesRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Lexpo/modules/kotlin/services/Service;",
            ">;>;)",
            "Lexpo/modules/kotlin/services/ServicesRegistry;"
        }
    .end annotation

    const-string v0, "serviceClasses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/services/ServicesRegistry;

    .line 25
    check-cast p1, Ljava/lang/Iterable;

    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 26
    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/services/ServicesRegistry;->register(Ljava/lang/Class;)Lexpo/modules/kotlin/services/ServicesRegistry;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final synthetic service()Lexpo/modules/kotlin/services/Service;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lexpo/modules/kotlin/services/Service;",
            ">()TT;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lexpo/modules/kotlin/services/ServicesRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Lexpo/modules/kotlin/services/Service;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast v0, Lexpo/modules/kotlin/services/Service;

    return-object v0
.end method
