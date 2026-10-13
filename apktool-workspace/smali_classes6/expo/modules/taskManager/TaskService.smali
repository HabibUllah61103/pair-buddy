.class public Lexpo/modules/taskManager/TaskService;
.super Ljava/lang/Object;
.source "TaskService.java"

# interfaces
.implements Lexpo/modules/core/interfaces/SingletonModule;
.implements Lexpo/modules/interfaces/taskManager/TaskServiceInterface;


# static fields
.field private static final MAX_TASK_EXECUTION_TIME_MS:I = 0x3a98

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "TaskManagerModule"

.field private static final TAG:Ljava/lang/String; = "TaskService"

.field private static final sEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sHeadlessTaskIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHeadlessTaskManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/interfaces/taskManager/TaskManagerInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTaskCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/interfaces/taskManager/TaskExecutionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTaskManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/interfaces/taskManager/TaskManagerInterface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskManagerUtils:Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

.field private mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;


# direct methods
.method public static synthetic $r8$lambda$GdNLsWxo97ZRAJ3qwej_LyidzDQ(Lexpo/modules/taskManager/TaskService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lexpo/modules/taskManager/TaskService;->lambda$maybeFinishHeadlessTask$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LcEb5-Trp-bBlQ11zHIZSAXJGCY(Lexpo/modules/taskManager/TaskService;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lexpo/modules/taskManager/TaskService;->lambda$executeTask$2(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QpYokDWIj3mRaxQpy-iUogl-2n4(Lexpo/modules/taskManager/TaskService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lexpo/modules/taskManager/TaskService;->lambda$notifyTaskFinished$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minvokeStartHeadlessTask(Lexpo/modules/taskManager/TaskService;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lexpo/modules/taskManager/TaskService;->invokeStartHeadlessTask(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lexpo/modules/taskManager/TaskService;->sTaskManagers:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lexpo/modules/taskManager/TaskService;->sHeadlessTaskManagers:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lexpo/modules/taskManager/TaskService;->sEvents:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lexpo/modules/taskManager/TaskService;->sTaskCallbacks:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lexpo/modules/taskManager/TaskService;->sHeadlessTaskIds:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/taskManager/TaskService;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 86
    invoke-static {p1}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->create(Landroid/content/Context;)Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    .line 88
    invoke-interface {p1}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->tasksExist()Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {p1}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->createTasks()V

    .line 90
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskService;->restoreTasks()V

    :cond_0
    return-void
.end method

.method private createExecutionEventBody(Lexpo/modules/interfaces/taskManager/TaskInterface;Landroid/os/Bundle;Ljava/lang/Error;)Landroid/os/Bundle;
    .locals 4

    .line 481
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 482
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 483
    invoke-direct {p0, p3}, Lexpo/modules/taskManager/TaskService;->errorBundleForError(Ljava/lang/Error;)Landroid/os/Bundle;

    move-result-object p3

    .line 484
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    const-string v3, "eventId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v2, "taskName"

    invoke-interface {p1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string p1, "executionInfo"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string p1, "data"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 491
    const-string p1, "error"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private errorBundleForError(Ljava/lang/Error;)Landroid/os/Bundle;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 500
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 501
    const-string v1, "message"

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private finishJobAfterTimeout(Landroid/app/job/JobService;Landroid/app/job/JobParameters;J)V
    .locals 2

    .line 621
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 622
    new-instance v1, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda1;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getAppLoader()Lexpo/modules/apploader/HeadlessAppLoader;
    .locals 2

    .line 446
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "react-native-headless"

    invoke-static {v1, v0}, Lexpo/modules/apploader/AppLoaderProvider;->getLoader(Ljava/lang/String;Landroid/content/Context;)Lexpo/modules/apploader/HeadlessAppLoader;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getReactContext(Landroid/content/Context;)Lcom/facebook/react/bridge/ReactContext;
    .locals 0

    .line 716
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/ReactApplication;

    .line 717
    invoke-interface {p1}, Lcom/facebook/react/ReactApplication;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 718
    invoke-interface {p1}, Lcom/facebook/react/ReactHost;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 526
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 527
    const-string v1, "TaskManagerModule"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTask(Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/interfaces/taskManager/TaskInterface;
    .locals 1

    .line 506
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {v0, p2}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->getTasks(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 507
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/interfaces/taskManager/TaskInterface;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTaskConsumer(Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/taskManager/TaskService;->getTask(Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/interfaces/taskManager/TaskInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 515
    invoke-interface {p1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getConsumer()Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getTaskManager(Ljava/lang/String;)Lexpo/modules/interfaces/taskManager/TaskManagerInterface;
    .locals 3

    .line 602
    sget-object v0, Lexpo/modules/taskManager/TaskService;->sTaskManagers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    :goto_0
    if-nez v2, :cond_1

    .line 606
    sget-object v0, Lexpo/modules/taskManager/TaskService;->sHeadlessTaskManagers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/ref/WeakReference;

    :cond_1
    if-nez v0, :cond_2

    return-object v1

    .line 608
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    return-object p1
.end method

.method private getTaskManagerUtils()Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;
    .locals 1

    .line 519
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService;->mTaskManagerUtils:Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Lexpo/modules/taskManager/TaskManagerUtils;

    invoke-direct {v0}, Lexpo/modules/taskManager/TaskManagerUtils;-><init>()V

    iput-object v0, p0, Lexpo/modules/taskManager/TaskService;->mTaskManagerUtils:Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    .line 522
    :cond_0
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService;->mTaskManagerUtils:Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    return-object v0
.end method

.method private internalRegisterTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lexpo/modules/taskManager/exceptions/TaskRegisteringFailedException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 463
    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p4, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 464
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskService;->getTaskManagerUtils()Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    new-instance v1, Lexpo/modules/taskManager/Task;

    move-object v7, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lexpo/modules/taskManager/Task;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;Ljava/util/Map;Lexpo/modules/interfaces/taskManager/TaskServiceInterface;)V

    .line 471
    iget-object p1, v7, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {p1, v3}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->hasTasks(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v7, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {p1, v3}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->getTasks(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 472
    :goto_0
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object p2, v7, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {p2, v3, p1}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->putTasks(Ljava/lang/String;Ljava/util/Map;)V

    .line 475
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Registered task with name \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' for app with scoping identifier \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-interface {v5, v1}, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;->didRegister(Lexpo/modules/interfaces/taskManager/TaskInterface;)V

    return-void

    :catch_0
    move-exception v0

    move-object v7, p0

    move-object p1, v0

    .line 466
    new-instance p2, Lexpo/modules/taskManager/exceptions/TaskRegisteringFailedException;

    invoke-direct {p2, p4, p1}, Lexpo/modules/taskManager/exceptions/TaskRegisteringFailedException;-><init>(Ljava/lang/Class;Ljava/lang/Exception;)V

    throw p2
.end method

.method private invalidateAppRecord(Ljava/lang/String;)V
    .locals 1

    .line 612
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskService;->getAppLoader()Lexpo/modules/apploader/HeadlessAppLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskService;->getAppLoader()Lexpo/modules/apploader/HeadlessAppLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lexpo/modules/apploader/HeadlessAppLoader;->invalidateApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    sget-object v0, Lexpo/modules/taskManager/TaskService;->sHeadlessTaskManagers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private invokeStartHeadlessTask(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V
    .locals 6

    .line 651
    invoke-static {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object p1

    .line 652
    new-instance v0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    new-instance v2, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v2}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const-string v1, "expo-task-manager"

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;JZ)V

    .line 659
    new-instance v1, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0, p2}, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$executeTask$1()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$executeTask$2(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 431
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 432
    sget-object p2, Lexpo/modules/taskManager/TaskService;->sEvents:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object p2, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {p2, p1}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->removeEvents(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0, p1}, Lexpo/modules/taskManager/TaskService;->unregisterAllTasksForAppScopeKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$finishJobAfterTimeout$3(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 1

    const/4 v0, 0x0

    .line 622
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method static synthetic lambda$invokeStartHeadlessTask$4(Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Ljava/lang/String;)V
    .locals 3

    .line 661
    const-string v0, "TaskService"

    .line 0
    const-string v1, "Started headless task "

    .line 661
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)I

    move-result p0

    .line 662
    sget-object p1, Lexpo/modules/taskManager/TaskService;->sHeadlessTaskIds:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " to keep JS timers alive for \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 665
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to start headless task: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$maybeFinishHeadlessTask$5(Ljava/lang/String;)V
    .locals 5

    .line 692
    const-string v0, "TaskService"

    .line 0
    const-string v1, "Finished headless task "

    .line 692
    sget-object v2, Lexpo/modules/taskManager/TaskService;->sHeadlessTaskIds:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    :try_start_0
    iget-object v3, p0, Lexpo/modules/taskManager/TaskService;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    if-nez v3, :cond_1

    goto :goto_0

    .line 699
    :cond_1
    invoke-direct {p0, v3}, Lexpo/modules/taskManager/TaskService;->getReactContext(Landroid/content/Context;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_0
    return-void

    .line 702
    :cond_2
    invoke-static {v3}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object v3

    .line 703
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->finishTask(I)V

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to finish headless task: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$notifyTaskFinished$0(Ljava/lang/String;)V
    .locals 1

    .line 225
    sget-object v0, Lexpo/modules/taskManager/TaskService;->sEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-direct {p0, p1}, Lexpo/modules/taskManager/TaskService;->invalidateAppRecord(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private maybeFinishHeadlessTask(Ljava/lang/String;)V
    .locals 1

    .line 691
    new-instance v0, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/taskManager/TaskService;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private maybeStartHeadlessTask(Ljava/lang/String;)V
    .locals 2

    .line 635
    :try_start_0
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 638
    :cond_0
    invoke-direct {p0, v0}, Lexpo/modules/taskManager/TaskService;->getReactContext(Landroid/content/Context;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 640
    invoke-direct {p0, v1, p1}, Lexpo/modules/taskManager/TaskService;->invokeStartHeadlessTask(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V

    return-void

    .line 643
    :cond_1
    invoke-direct {p0, v0, p1}, Lexpo/modules/taskManager/TaskService;->waitForReactContextAndStartTask(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start headless task: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private maybeUpdateAppUrlForAppScopeKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 531
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 532
    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/taskManager/Utils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 534
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 535
    const-string v2, "appUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 537
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 538
    :cond_1
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 542
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 543
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method private removeAppFromConfig(Ljava/lang/String;)V
    .locals 1

    .line 594
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private restoreTasks()V
    .locals 13

    .line 550
    const-string v1, "TaskService"

    iget-object v0, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-direct {p0}, Lexpo/modules/taskManager/TaskService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v0, v2}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->readPersistedTasks(Landroid/content/SharedPreferences;)Ljava/util/Map;

    move-result-object v0

    .line 552
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map$Entry;

    .line 553
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 554
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/taskManager/repository/TasksAndEventsRepository$AppConfig;

    iget-object v7, v0, Lexpo/modules/taskManager/repository/TasksAndEventsRepository$AppConfig;->appUrl:Ljava/lang/String;

    .line 555
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/taskManager/repository/TasksAndEventsRepository$AppConfig;

    iget-object v10, v0, Lexpo/modules/taskManager/repository/TasksAndEventsRepository$AppConfig;->tasks:Ljava/util/Map;

    if-eqz v7, :cond_1

    if-eqz v10, :cond_1

    .line 557
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 559
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 560
    const-string v4, "consumerClass"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 563
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 564
    invoke-static {v8}, Lexpo/modules/taskManager/Utils;->getConsumerVersion(Ljava/lang/Class;)I

    move-result v9

    .line 565
    const-string v12, "consumerVersion"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v9, v12, :cond_0

    .line 569
    const-string v4, "options"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v4, p0

    .line 573
    :try_start_1
    invoke-direct/range {v4 .. v9}, Lexpo/modules/taskManager/TaskService;->internalRegisterTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V
    :try_end_1
    .catch Lexpo/modules/taskManager/exceptions/TaskRegisteringFailedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v4

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    move-object v5, v4

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v5, v4

    .line 575
    :try_start_2
    invoke-virtual {v0}, Lexpo/modules/taskManager/exceptions/TaskRegisteringFailedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-object v5, p0

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task consumer \'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' has version \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' that is not compatible with the saved version \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    :goto_3
    move-object v5, p0

    .line 581
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_1
    move-object v5, p0

    .line 589
    iget-object v0, v5, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-direct {p0}, Lexpo/modules/taskManager/TaskService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->persistTasksForAppScopeKey(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move-object v5, p0

    return-void
.end method

.method private waitForReactContextAndStartTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 671
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/ReactApplication;

    .line 672
    invoke-interface {p1}, Lcom/facebook/react/ReactApplication;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 675
    :cond_0
    new-instance v0, Lexpo/modules/taskManager/TaskService$1;

    invoke-direct {v0, p0, p2, p1}, Lexpo/modules/taskManager/TaskService$1;-><init>(Lexpo/modules/taskManager/TaskService;Ljava/lang/String;Lcom/facebook/react/ReactHost;)V

    invoke-interface {p1, v0}, Lcom/facebook/react/ReactHost;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    return-void
.end method


# virtual methods
.method public cancelJob(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 355
    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 357
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    const-string v2, "taskName"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-direct {p0, v0, v1}, Lexpo/modules/taskManager/TaskService;->getTask(Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/interfaces/taskManager/TaskInterface;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 363
    invoke-interface {v1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getConsumer()Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    .line 369
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Job for task \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' has been cancelled by the system."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TaskService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-interface {v1, p1, p2}, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;->didCancelJob(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1

    :cond_1
    return v2
.end method

.method public executeTask(Lexpo/modules/interfaces/taskManager/TaskInterface;Landroid/os/Bundle;Ljava/lang/Error;Lexpo/modules/interfaces/taskManager/TaskExecutionCallback;)V
    .locals 4

    .line 379
    invoke-interface {p1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getAppScopeKey()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-direct {p0, v0}, Lexpo/modules/taskManager/TaskService;->getTaskManager(Ljava/lang/String;)Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    move-result-object v1

    .line 381
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/taskManager/TaskService;->createExecutionEventBody(Lexpo/modules/interfaces/taskManager/TaskInterface;Landroid/os/Bundle;Ljava/lang/Error;)Landroid/os/Bundle;

    move-result-object p2

    .line 382
    const-string p3, "executionInfo"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 389
    :cond_0
    const-string v2, "eventId"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p4, :cond_1

    .line 392
    sget-object v2, Lexpo/modules/taskManager/TaskService;->sTaskCallbacks:Ljava/util/Map;

    invoke-interface {v2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_1
    sget-object p4, Lexpo/modules/taskManager/TaskService;->sEvents:Ljava/util/Map;

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 398
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 399
    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-interface {p4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 402
    :cond_3
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 403
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v2, :cond_4

    .line 411
    invoke-direct {p0, v0}, Lexpo/modules/taskManager/TaskService;->maybeStartHeadlessTask(Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 415
    invoke-interface {v1, p2}, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;->executeTaskWithBody(Landroid/os/Bundle;)V

    return-void

    .line 421
    :cond_5
    iget-object p3, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {p3, v0}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->hasEvents(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 422
    iget-object p3, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, v0, p4}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->putEvents(Ljava/lang/String;Ljava/util/List;)V

    .line 424
    :cond_6
    iget-object p3, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {p3, v0, p2}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->putEventForAppScopeKey(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 426
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskService;->getAppLoader()Lexpo/modules/apploader/HeadlessAppLoader;

    move-result-object p2

    iget-object p3, p0, Lexpo/modules/taskManager/TaskService;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    new-instance p4, Lexpo/modules/apploader/HeadlessAppLoader$Params;

    .line 427
    invoke-interface {p1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getAppUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, v0, p1}, Lexpo/modules/apploader/HeadlessAppLoader$Params;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda4;-><init>()V

    new-instance v1, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda5;-><init>(Lexpo/modules/taskManager/TaskService;Ljava/lang/String;)V

    .line 426
    invoke-interface {p2, p3, p4, p1, v1}, Lexpo/modules/apploader/HeadlessAppLoader;->loadApp(Landroid/content/Context;Lexpo/modules/apploader/HeadlessAppLoader$Params;Ljava/lang/Runnable;Lexpo/modules/core/interfaces/Consumer;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "TaskService"

    return-object v0
.end method

.method public getTaskConsumers(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {v0, p1}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->getTasks(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 201
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/interfaces/taskManager/TaskInterface;

    .line 202
    invoke-interface {v1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getConsumer()Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTaskOptions(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Lexpo/modules/taskManager/TaskService;->getTask(Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/interfaces/taskManager/TaskInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    invoke-interface {p1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getOptionsBundle()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTasksForAppScopeKey(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {v0, p1}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->getTasks(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 182
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/interfaces/taskManager/TaskInterface;

    .line 183
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 185
    const-string v3, "taskName"

    invoke-interface {v1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {v1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getConsumer()Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    move-result-object v3

    invoke-interface {v3}, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;->taskType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "taskType"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v3, "options"

    invoke-interface {v1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getOptionsBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 189
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 7

    .line 285
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 288
    sget-object v2, Lexpo/modules/taskManager/TaskBroadcastReceiver;->INTENT_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\'."

    const-string v4, "TaskService"

    if-nez v2, :cond_2

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handling intent with action \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {v1}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->allAppScopeKeysWithTasks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 294
    invoke-virtual {p0, v2}, Lexpo/modules/taskManager/TaskService;->getTaskConsumers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 296
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    .line 297
    invoke-interface {v3, v0}, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;->canReceiveCustomBroadcast(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    invoke-interface {v3, p1}, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;->didReceiveBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_4

    :cond_3
    return-void

    .line 309
    :cond_4
    const-string v0, "appId"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    const-string v2, "taskName"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-direct {p0, v1, v0}, Lexpo/modules/taskManager/TaskService;->getTaskConsumer(Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    move-result-object v2

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Handling intent with task name \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' and app scoping identifier \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_5

    .line 317
    const-string p1, "Task or consumer not found."

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskService;->getTaskManagerUtils()Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    move-result-object p1

    iget-object v2, p0, Lexpo/modules/taskManager/TaskService;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-interface {p1, v2, v0, v1}, Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;->cancelTaskIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 325
    :cond_5
    invoke-interface {v2, p1}, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;->didReceiveBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public handleJob(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)Z
    .locals 6

    .line 329
    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 331
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    const-string v2, "taskName"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-direct {p0, v0, v1}, Lexpo/modules/taskManager/TaskService;->getTaskConsumer(Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    move-result-object v2

    .line 336
    const-string v3, "TaskService"

    if-nez v2, :cond_0

    .line 337
    const-string p1, "Task or consumer not found."

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 341
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Handling job with task name \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' for app with scoping identifier \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-interface {v2, p1, p2}, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;->didExecuteJob(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x3a98

    .line 348
    invoke-direct {p0, p1, p2, v1, v2}, Lexpo/modules/taskManager/TaskService;->finishJobAfterTimeout(Landroid/app/job/JobService;Landroid/app/job/JobParameters;J)V

    :cond_1
    return v0
.end method

.method public hasRegisteredTask(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lexpo/modules/taskManager/TaskService;->getTask(Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/interfaces/taskManager/TaskInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isStartedByHeadlessLoader(Ljava/lang/String;)Z
    .locals 1

    .line 277
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskService;->getAppLoader()Lexpo/modules/apploader/HeadlessAppLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0, p1}, Lexpo/modules/apploader/HeadlessAppLoader;->isRunning(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public notifyTaskFinished(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 210
    const-string v0, "eventId"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    sget-object v1, Lexpo/modules/taskManager/TaskService;->sEvents:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finished task \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "\' with eventId \'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "\'."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "TaskService"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    .line 216
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-direct {p0, p2}, Lexpo/modules/taskManager/TaskService;->maybeFinishHeadlessTask(Ljava/lang/String;)V

    .line 223
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 224
    new-instance v1, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/taskManager/TaskService;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    :cond_0
    sget-object p1, Lexpo/modules/taskManager/TaskService;->sTaskCallbacks:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/interfaces/taskManager/TaskExecutionCallback;

    if-eqz p1, :cond_1

    .line 236
    invoke-interface {p1, p3}, Lexpo/modules/interfaces/taskManager/TaskExecutionCallback;->onFinished(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public registerTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
            Lexpo/modules/taskManager/exceptions/TaskRegisteringFailedException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Lexpo/modules/taskManager/TaskService;->getTask(Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/interfaces/taskManager/TaskInterface;

    move-result-object v0

    .line 109
    invoke-static {p4}, Lexpo/modules/taskManager/Utils;->unversionedClassForClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v0}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getConsumer()Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-interface {v0, p5}, Lexpo/modules/interfaces/taskManager/TaskInterface;->setOptions(Ljava/util/Map;)V

    .line 114
    invoke-interface {v0}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getConsumer()Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    move-result-object p1

    invoke-interface {p1, p5}, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;->setOptions(Ljava/util/Map;)V

    move-object v0, p0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 116
    invoke-direct/range {v0 .. v5}, Lexpo/modules/taskManager/TaskService;->internalRegisterTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V

    .line 118
    :goto_0
    iget-object p1, v0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-direct {p0}, Lexpo/modules/taskManager/TaskService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->persistTasksForAppScopeKey(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public setTaskManager(Lexpo/modules/interfaces/taskManager/TaskManagerInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 244
    sget-object p1, Lexpo/modules/taskManager/TaskService;->sTaskManagers:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 251
    :cond_0
    invoke-virtual {p0, p2}, Lexpo/modules/taskManager/TaskService;->isStartedByHeadlessLoader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    sget-object v1, Lexpo/modules/taskManager/TaskService;->sHeadlessTaskManagers:Ljava/util/Map;

    goto :goto_0

    :cond_1
    sget-object v1, Lexpo/modules/taskManager/TaskService;->sTaskManagers:Ljava/util/Map;

    .line 255
    :goto_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v1, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {v1, p2}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->getEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 261
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 262
    invoke-interface {p1, v2}, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;->executeTaskWithBody(Landroid/os/Bundle;)V

    goto :goto_1

    .line 267
    :cond_2
    iget-object p1, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {p1, p2}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->removeEvents(Ljava/lang/String;)V

    if-nez v0, :cond_3

    .line 271
    invoke-direct {p0, p3, p2}, Lexpo/modules/taskManager/TaskService;->maybeUpdateAppUrlForAppScopeKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public taskHasConsumerOfClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0

    .line 162
    invoke-direct {p0, p1, p2}, Lexpo/modules/taskManager/TaskService;->getTask(Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/interfaces/taskManager/TaskInterface;

    move-result-object p1

    .line 163
    invoke-static {p3}, Lexpo/modules/taskManager/Utils;->unversionedClassForClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getConsumer()Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterAllTasksForAppScopeKey(Ljava/lang/String;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {v0, p1}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->getTasks(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unregistering all tasks for app with scoping identifier \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/interfaces/taskManager/TaskInterface;

    .line 152
    invoke-interface {v1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getConsumer()Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    move-result-object v1

    invoke-interface {v1}, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;->didUnregister()V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {v0, p1}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->removeTasks(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, p1}, Lexpo/modules/taskManager/TaskService;->removeAppFromConfig(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public unregisterTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lexpo/modules/taskManager/exceptions/TaskNotFoundException;,
            Lexpo/modules/taskManager/exceptions/InvalidConsumerClassException;
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Lexpo/modules/taskManager/TaskService;->getTask(Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/interfaces/taskManager/TaskInterface;

    move-result-object v0

    .line 124
    invoke-static {p3}, Lexpo/modules/taskManager/Utils;->unversionedClassForClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 132
    invoke-interface {v0}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getConsumer()Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance p2, Lexpo/modules/taskManager/exceptions/InvalidConsumerClassException;

    invoke-direct {p2, p1}, Lexpo/modules/taskManager/exceptions/InvalidConsumerClassException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 136
    :cond_1
    :goto_0
    iget-object p3, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-interface {p3, p2, p1}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->removeTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Unregistering task \'"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' for app with scoping identifier \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\'."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TaskService"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-interface {v0}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getConsumer()Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    move-result-object p1

    invoke-interface {p1}, Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;->didUnregister()V

    .line 141
    iget-object p1, p0, Lexpo/modules/taskManager/TaskService;->mTasksAndEventsRepository:Lexpo/modules/taskManager/repository/TasksAndEventsRepository;

    invoke-direct {p0}, Lexpo/modules/taskManager/TaskService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lexpo/modules/taskManager/repository/TasksAndEventsRepository;->persistTasksForAppScopeKey(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_2
    new-instance p3, Lexpo/modules/taskManager/exceptions/TaskNotFoundException;

    invoke-direct {p3, p1, p2}, Lexpo/modules/taskManager/exceptions/TaskNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p3
.end method
