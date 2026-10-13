.class public final Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;
.super Ljava/lang/Object;
.source "FirebaseMessagingDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseMessagingDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseMessagingDelegate.kt\nexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,144:1\n1869#2,2:145\n*S KotlinDebug\n*F\n+ 1 FirebaseMessagingDelegate.kt\nexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion\n*L\n89#1:145,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000cH\u0007J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u000cH\u0007J\u000e\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0016J\u000e\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0016J\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001fJ\u0016\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR \u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006%"
    }
    d2 = {
        "Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;",
        "",
        "<init>",
        "()V",
        "sLastToken",
        "",
        "getSLastToken",
        "()Ljava/lang/String;",
        "setSLastToken",
        "(Ljava/lang/String;)V",
        "sTokenListenersReferences",
        "Ljava/util/HashSet;",
        "Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;",
        "getSTokenListenersReferences",
        "()Ljava/util/HashSet;",
        "addTokenListener",
        "",
        "listener",
        "removeTokenListener",
        "",
        "sBackgroundTaskConsumers",
        "",
        "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
        "getSBackgroundTaskConsumers",
        "()Ljava/util/Set;",
        "setSBackgroundTaskConsumers",
        "(Ljava/util/Set;)V",
        "addBackgroundTaskConsumer",
        "taskConsumer",
        "removeBackgroundTaskConsumer",
        "getBackgroundTasks",
        "",
        "runTaskManagerTasks",
        "applicationContext",
        "Landroid/content/Context;",
        "bundle",
        "Landroid/os/Bundle;",
        "expo-notifications_release"
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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final addBackgroundTaskConsumer(Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;)V
    .locals 1

    const-string v0, "taskConsumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSBackgroundTaskConsumers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addTokenListener(Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSTokenListenersReferences()Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;

    invoke-virtual {v1}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSTokenListenersReferences()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    sget-object v1, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;

    invoke-virtual {v1}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSTokenListenersReferences()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v1, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;

    invoke-virtual {v1}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSLastToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    invoke-interface {p1, v1}, Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;->onNewToken(Ljava/lang/String;)V

    .line 56
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getBackgroundTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSBackgroundTaskConsumers()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final getSBackgroundTaskConsumers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-static {}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->access$getSBackgroundTaskConsumers$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final getSLastToken()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->access$getSLastToken$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getSTokenListenersReferences()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-static {}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->access$getSTokenListenersReferences$cp()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final removeBackgroundTaskConsumer(Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;)V
    .locals 1

    const-string v0, "taskConsumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSBackgroundTaskConsumers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeTokenListener(Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSTokenListenersReferences()Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;

    invoke-virtual {v1}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSTokenListenersReferences()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final runTaskManagerTasks(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;->INSTANCE:Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;

    invoke-virtual {v0, p1}, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;->getTaskServiceImpl(Landroid/content/Context;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    .line 89
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getBackgroundTasks()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 145
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;

    .line 90
    invoke-virtual {v0, p2}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->executeTask(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final setSBackgroundTaskConsumers(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->access$setSBackgroundTaskConsumers$cp(Ljava/util/Set;)V

    return-void
.end method

.method protected final setSLastToken(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-static {p1}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->access$setSLastToken$cp(Ljava/lang/String;)V

    return-void
.end method
