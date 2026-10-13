.class public final Lcom/superwall/sdk/analytics/session/AppSessionManager;
.super Ljava/lang/Object;
.source "AppSessionManager.kt"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppSessionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppSessionManager.kt\ncom/superwall/sdk/analytics/session/AppSessionManager\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n*L\n1#1,151:1\n135#2,10:152\n135#2,10:162\n*S KotlinDebug\n*F\n+ 1 AppSessionManager.kt\ncom/superwall/sdk/analytics/session/AppSessionManager\n*L\n92#1:152,10\n102#1:162,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001(B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010#\u001a\u00020\u001fH\u0002J\u0006\u0010$\u001a\u00020\u001fJ\u0008\u0010%\u001a\u00020\u001fH\u0002J\u0008\u0010&\u001a\u00020\u001fH\u0002J\u0008\u0010\'\u001a\u00020\u001fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/session/AppSessionManager;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "configManager",
        "Lcom/superwall/sdk/config/ConfigManager;",
        "storage",
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "delegate",
        "Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;",
        "backgroundScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "<init>",
        "(Lcom/superwall/sdk/config/ConfigManager;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;Lcom/superwall/sdk/misc/IOScope;)V",
        "appSessionTimeout",
        "",
        "getAppSessionTimeout",
        "()Ljava/lang/Long;",
        "setAppSessionTimeout",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "value",
        "Lcom/superwall/sdk/analytics/session/AppSession;",
        "appSession",
        "getAppSession",
        "()Lcom/superwall/sdk/analytics/session/AppSession;",
        "setAppSession",
        "(Lcom/superwall/sdk/analytics/session/AppSession;)V",
        "lastAppClose",
        "Ljava/util/Date;",
        "didTrackAppLaunch",
        "",
        "onStart",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onStop",
        "willTerminate",
        "listenForAppSessionTimeout",
        "sessionCouldRefresh",
        "detectNewSession",
        "trackAppLaunch",
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
.field private appSession:Lcom/superwall/sdk/analytics/session/AppSession;

.field private appSessionTimeout:Ljava/lang/Long;

.field private final backgroundScope:Lcom/superwall/sdk/misc/IOScope;

.field private final configManager:Lcom/superwall/sdk/config/ConfigManager;

.field private final delegate:Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;

.field private didTrackAppLaunch:Z

.field private lastAppClose:Ljava/util/Date;

.field private final storage:Lcom/superwall/sdk/storage/LocalStorage;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/config/ConfigManager;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;Lcom/superwall/sdk/misc/IOScope;)V
    .locals 7

    const-string v0, "configManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "storage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->configManager:Lcom/superwall/sdk/config/ConfigManager;

    .line 28
    iput-object p2, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    .line 29
    iput-object p3, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->delegate:Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;

    .line 30
    iput-object p4, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->backgroundScope:Lcom/superwall/sdk/misc/IOScope;

    .line 39
    new-instance v1, Lcom/superwall/sdk/analytics/session/AppSession;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/superwall/sdk/analytics/session/AppSession;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->appSession:Lcom/superwall/sdk/analytics/session/AppSession;

    .line 50
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/session/AppSessionManager;->listenForAppSessionTimeout()V

    return-void
.end method

.method public static final synthetic access$getConfigManager$p(Lcom/superwall/sdk/analytics/session/AppSessionManager;)Lcom/superwall/sdk/config/ConfigManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->configManager:Lcom/superwall/sdk/config/ConfigManager;

    return-object p0
.end method

.method public static final synthetic access$getDelegate$p(Lcom/superwall/sdk/analytics/session/AppSessionManager;)Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->delegate:Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;

    return-object p0
.end method

.method public static final synthetic access$getDidTrackAppLaunch$p(Lcom/superwall/sdk/analytics/session/AppSessionManager;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->didTrackAppLaunch:Z

    return p0
.end method

.method public static final synthetic access$getStorage$p(Lcom/superwall/sdk/analytics/session/AppSessionManager;)Lcom/superwall/sdk/storage/LocalStorage;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    return-object p0
.end method

.method public static final synthetic access$sessionCouldRefresh(Lcom/superwall/sdk/analytics/session/AppSessionManager;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/session/AppSessionManager;->sessionCouldRefresh()V

    return-void
.end method

.method private final detectNewSession()V
    .locals 8

    .line 104
    :try_start_0
    sget-object v0, Lcom/superwall/sdk/analytics/session/AppSessionLogic;->INSTANCE:Lcom/superwall/sdk/analytics/session/AppSessionLogic;

    .line 105
    iget-object v1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->lastAppClose:Ljava/util/Date;

    .line 106
    iget-object v2, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->appSessionTimeout:Ljava/lang/Long;

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/superwall/sdk/analytics/session/AppSessionLogic;->didStartNewSession(Ljava/util/Date;Ljava/lang/Long;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    new-instance v2, Lcom/superwall/sdk/analytics/session/AppSession;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/superwall/sdk/analytics/session/AppSession;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v2}, Lcom/superwall/sdk/analytics/session/AppSessionManager;->setAppSession(Lcom/superwall/sdk/analytics/session/AppSession;)V

    .line 112
    iget-object v0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->backgroundScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;

    invoke-direct {v0, p0, v1}, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;-><init>(Lcom/superwall/sdk/analytics/session/AppSessionManager;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 131
    iget-object v0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->backgroundScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$2;

    invoke-direct {v0, p0, v1}, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$2;-><init>(Lcom/superwall/sdk/analytics/session/AppSessionManager;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->appSession:Lcom/superwall/sdk/analytics/session/AppSession;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/analytics/session/AppSession;->setEndAt(Ljava/util/Date;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 163
    :goto_0
    new-instance v1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 165
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 170
    :cond_1
    new-instance v1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;

    return-void
.end method

.method private final sessionCouldRefresh()V
    .locals 7

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/session/AppSessionManager;->detectNewSession()V

    .line 94
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/session/AppSessionManager;->trackAppLaunch()V

    .line 95
    iget-object v0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->backgroundScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/analytics/session/AppSessionManager$sessionCouldRefresh$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/analytics/session/AppSessionManager$sessionCouldRefresh$1$1;-><init>(Lcom/superwall/sdk/analytics/session/AppSessionManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 155
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 160
    :cond_0
    new-instance v1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;

    return-void
.end method

.method private final trackAppLaunch()V
    .locals 7

    .line 142
    iget-boolean v0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->didTrackAppLaunch:Z

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->backgroundScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/analytics/session/AppSessionManager$trackAppLaunch$1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/superwall/sdk/analytics/session/AppSessionManager$trackAppLaunch$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->didTrackAppLaunch:Z

    return-void
.end method

.method private final willTerminate()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->appSession:Lcom/superwall/sdk/analytics/session/AppSession;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/analytics/session/AppSession;->setEndAt(Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public final getAppSession()Lcom/superwall/sdk/analytics/session/AppSession;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->appSession:Lcom/superwall/sdk/analytics/session/AppSession;

    return-object v0
.end method

.method public final getAppSessionTimeout()Ljava/lang/Long;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->appSessionTimeout:Ljava/lang/Long;

    return-object v0
.end method

.method public final listenForAppSessionTimeout()V
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->backgroundScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/analytics/session/AppSessionManager$listenForAppSessionTimeout$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/analytics/session/AppSessionManager$listenForAppSessionTimeout$1;-><init>(Lcom/superwall/sdk/analytics/session/AppSessionManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    .line 56
    iget-object p1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->backgroundScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/analytics/session/AppSessionManager$onStart$1;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/superwall/sdk/analytics/session/AppSessionManager$onStart$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 59
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/session/AppSessionManager;->sessionCouldRefresh()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    .line 65
    iget-object p1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->backgroundScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/analytics/session/AppSessionManager$onStop$1;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/superwall/sdk/analytics/session/AppSessionManager$onStop$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 68
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->lastAppClose:Ljava/util/Date;

    .line 69
    iget-object p1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->appSession:Lcom/superwall/sdk/analytics/session/AppSession;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/analytics/session/AppSession;->setEndAt(Ljava/util/Date;)V

    return-void
.end method

.method public final setAppSession(Lcom/superwall/sdk/analytics/session/AppSession;)V
    .locals 7

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->appSession:Lcom/superwall/sdk/analytics/session/AppSession;

    .line 42
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/superwall/sdk/analytics/session/AppSessionManager$appSession$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/superwall/sdk/analytics/session/AppSessionManager$appSession$1;-><init>(Lcom/superwall/sdk/analytics/session/AppSessionManager;Lcom/superwall/sdk/analytics/session/AppSession;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setAppSessionTimeout(Ljava/lang/Long;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager;->appSessionTimeout:Ljava/lang/Long;

    return-void
.end method
