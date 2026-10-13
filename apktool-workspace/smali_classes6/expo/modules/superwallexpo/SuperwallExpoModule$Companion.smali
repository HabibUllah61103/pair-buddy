.class public final Lexpo/modules/superwallexpo/SuperwallExpoModule$Companion;
.super Ljava/lang/Object;
.source "SuperwallExpoModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/superwallexpo/SuperwallExpoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperwallExpoModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperwallExpoModule.kt\nexpo/modules/superwallexpo/SuperwallExpoModule$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,530:1\n1#2:531\n1869#3,2:532\n*S KotlinDebug\n*F\n+ 1 SuperwallExpoModule.kt\nexpo/modules/superwallexpo/SuperwallExpoModule$Companion\n*L\n56#1:532,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR2\u0010\n\u001a&\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u00050\u0005 \u000c*\u0012\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/superwallexpo/SuperwallExpoModule$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Lexpo/modules/superwallexpo/SuperwallExpoModule;",
        "getInstance",
        "()Lexpo/modules/superwallexpo/SuperwallExpoModule;",
        "setInstance",
        "(Lexpo/modules/superwallexpo/SuperwallExpoModule;)V",
        "instances",
        "",
        "kotlin.jvm.PlatformType",
        "",
        "emitEvent",
        "",
        "name",
        "",
        "body",
        "",
        "expo-superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/superwallexpo/SuperwallExpoModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final emitEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->access$getInstances$cp()Ljava/util/Set;

    move-result-object v0

    const-string v1, "access$getInstances$cp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->access$getInstances$cp()Ljava/util/Set;

    move-result-object v1

    const-string v2, "access$getInstances$cp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 56
    check-cast v1, Ljava/lang/Iterable;

    .line 532
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/superwallexpo/SuperwallExpoModule;

    if-nez p2, :cond_0

    .line 56
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, p2

    :goto_1
    invoke-virtual {v1, p1, v2}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 55
    monitor-exit v0

    throw p1
.end method

.method public final getInstance()Lexpo/modules/superwallexpo/SuperwallExpoModule;
    .locals 1

    .line 46
    invoke-static {}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->access$getInstance$cp()Lexpo/modules/superwallexpo/SuperwallExpoModule;

    move-result-object v0

    return-object v0
.end method

.method public final setInstance(Lexpo/modules/superwallexpo/SuperwallExpoModule;)V
    .locals 0

    .line 46
    invoke-static {p1}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->access$setInstance$cp(Lexpo/modules/superwallexpo/SuperwallExpoModule;)V

    return-void
.end method
