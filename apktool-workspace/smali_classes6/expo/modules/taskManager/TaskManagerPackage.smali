.class public Lexpo/modules/taskManager/TaskManagerPackage;
.super Lexpo/modules/core/BasePackage;
.source "TaskManagerPackage.java"

# interfaces
.implements Lexpo/modules/interfaces/taskManager/TaskServiceProviderInterface;


# static fields
.field static mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lexpo/modules/core/BasePackage;-><init>()V

    return-void
.end method


# virtual methods
.method public createInternalModules(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/InternalModule;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lexpo/modules/taskManager/TaskManagerInternalModule;

    invoke-direct {v0, p1}, Lexpo/modules/taskManager/TaskManagerInternalModule;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public createSingletonModules(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/SingletonModule;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lexpo/modules/taskManager/TaskManagerPackage;->getTaskServiceImpl(Landroid/content/Context;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTaskServiceImpl(Landroid/content/Context;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;
    .locals 1

    .line 28
    sget-object v0, Lexpo/modules/taskManager/TaskManagerPackage;->mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lexpo/modules/taskManager/TaskService;

    invoke-direct {v0, p1}, Lexpo/modules/taskManager/TaskService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lexpo/modules/taskManager/TaskManagerPackage;->mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    .line 31
    :cond_0
    sget-object p1, Lexpo/modules/taskManager/TaskManagerPackage;->mTaskService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    return-object p1
.end method
