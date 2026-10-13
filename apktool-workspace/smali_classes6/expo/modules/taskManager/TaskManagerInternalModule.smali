.class public Lexpo/modules/taskManager/TaskManagerInternalModule;
.super Ljava/lang/Object;
.source "TaskManagerInternalModule.java"

# interfaces
.implements Lexpo/modules/core/interfaces/InternalModule;
.implements Lexpo/modules/interfaces/taskManager/TaskManagerInterface;
.implements Lexpo/modules/core/interfaces/LifecycleEventListener;


# instance fields
.field private mConstants:Lexpo/modules/interfaces/constants/ConstantsInterface;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mEmitEventWrapper:Lexpo/modules/taskManager/EmitEventWrapper;

.field private mEventsQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

.field private mUIManager:Lexpo/modules/core/interfaces/services/UIManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mEventsQueue:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private checkTaskService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find TaskService singleton module in module registry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private emitEvent(Landroid/os/Bundle;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mEmitEventWrapper:Lexpo/modules/taskManager/EmitEventWrapper;

    if-eqz v0, :cond_0

    .line 191
    const-string v1, "TaskManager.executeTask"

    invoke-interface {v0, v1, p1}, Lexpo/modules/taskManager/EmitEventWrapper;->emit(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 193
    :cond_0
    const-string p1, "ExpoTaskManager"

    const-string v0, "EmitEventWrapper is not set. Failed to emit the TaskManager Event."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getAppUrl()Ljava/lang/String;
    .locals 2

    .line 167
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mConstants:Lexpo/modules/interfaces/constants/ConstantsInterface;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Lexpo/modules/interfaces/constants/ConstantsInterface;->getConstants()Ljava/util/Map;

    move-result-object v0

    const-string v1, "experienceUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isRunningInHeadlessMode()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    invoke-virtual {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->getAppScopeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;->isStartedByHeadlessLoader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized executeTaskWithBody(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mEventsQueue:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/taskManager/TaskManagerInternalModule;->emitEvent(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized flushQueuedEvents()V
    .locals 2

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mEventsQueue:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 106
    invoke-direct {p0, v1}, Lexpo/modules/taskManager/TaskManagerInternalModule;->emitEvent(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mEventsQueue:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAppScopeKey()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mConstants:Lexpo/modules/interfaces/constants/ConstantsInterface;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lexpo/modules/interfaces/constants/ConstantsInterface;->getAppScopeKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExportedInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 39
    const-class v0, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Lexpo/modules/core/ModuleRegistry;)V
    .locals 2

    .line 51
    const-class v0, Lexpo/modules/core/interfaces/services/UIManager;

    invoke-virtual {p1, v0}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/core/interfaces/services/UIManager;

    iput-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mUIManager:Lexpo/modules/core/interfaces/services/UIManager;

    .line 52
    invoke-virtual {p1}, Lexpo/modules/core/ModuleRegistry;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    const-class v1, Lexpo/modules/interfaces/constants/ConstantsInterface;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/AppContext;->service(Ljava/lang/Class;)Lexpo/modules/kotlin/services/Service;

    move-result-object v0

    check-cast v0, Lexpo/modules/interfaces/constants/ConstantsInterface;

    iput-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mConstants:Lexpo/modules/interfaces/constants/ConstantsInterface;

    .line 53
    const-string v0, "TaskService"

    const-class v1, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    invoke-virtual {p1, v0, v1}, Lexpo/modules/core/ModuleRegistry;->getSingletonModule(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    iput-object p1, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    .line 56
    invoke-virtual {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->getAppScopeKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->getAppUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;->setTaskManager(Lexpo/modules/interfaces/taskManager/TaskManagerInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mUIManager:Lexpo/modules/core/interfaces/services/UIManager;

    invoke-interface {p1, p0}, Lexpo/modules/core/interfaces/services/UIManager;->registerLifecycleEventListener(Lexpo/modules/core/interfaces/LifecycleEventListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 63
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mUIManager:Lexpo/modules/core/interfaces/services/UIManager;

    invoke-interface {v0, p0}, Lexpo/modules/core/interfaces/services/UIManager;->unregisterLifecycleEventListener(Lexpo/modules/core/interfaces/LifecycleEventListener;)V

    .line 64
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    invoke-virtual {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->getAppScopeKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->getAppUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;->setTaskManager(Lexpo/modules/interfaces/taskManager/TaskManagerInterface;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHostDestroy()V
    .locals 3

    .line 148
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->isRunningInHeadlessMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    invoke-virtual {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->getAppScopeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;->getTaskConsumers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    .line 151
    instance-of v2, v1, Lexpo/modules/core/interfaces/LifecycleEventListener;

    if-eqz v2, :cond_0

    .line 152
    check-cast v1, Lexpo/modules/core/interfaces/LifecycleEventListener;

    invoke-interface {v1}, Lexpo/modules/core/interfaces/LifecycleEventListener;->onHostDestroy()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onHostPause()V
    .locals 3

    .line 136
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->isRunningInHeadlessMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    invoke-virtual {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->getAppScopeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;->getTaskConsumers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    .line 139
    instance-of v2, v1, Lexpo/modules/core/interfaces/LifecycleEventListener;

    if-eqz v2, :cond_0

    .line 140
    check-cast v1, Lexpo/modules/core/interfaces/LifecycleEventListener;

    invoke-interface {v1}, Lexpo/modules/core/interfaces/LifecycleEventListener;->onHostPause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onHostResume()V
    .locals 3

    .line 124
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->isRunningInHeadlessMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    invoke-virtual {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->getAppScopeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;->getTaskConsumers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    .line 127
    instance-of v2, v1, Lexpo/modules/core/interfaces/LifecycleEventListener;

    if-eqz v2, :cond_0

    .line 128
    check-cast v1, Lexpo/modules/core/interfaces/LifecycleEventListener;

    invoke-interface {v1}, Lexpo/modules/core/interfaces/LifecycleEventListener;->onHostResume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerTask(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->checkTaskService()V

    .line 73
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    invoke-virtual {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->getAppScopeKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->getAppUrl()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;->registerTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public setEmitEventWrapper(Lexpo/modules/taskManager/EmitEventWrapper;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mEmitEventWrapper:Lexpo/modules/taskManager/EmitEventWrapper;

    return-void
.end method

.method public taskHasConsumerOfClass(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2

    .line 95
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->getAppScopeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;->taskHasConsumerOfClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public unregisterTask(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->checkTaskService()V

    .line 79
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerInternalModule;->mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    invoke-virtual {p0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->getAppScopeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;->unregisterTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
