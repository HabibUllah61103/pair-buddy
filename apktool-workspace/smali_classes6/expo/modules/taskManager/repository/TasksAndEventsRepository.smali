.class public interface abstract Lexpo/modules/taskManager/repository/TasksAndEventsRepository;
.super Ljava/lang/Object;
.source "TasksAndEventsRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/taskManager/repository/TasksAndEventsRepository$AppConfig;
    }
.end annotation


# direct methods
.method public static create(Landroid/content/Context;)Lexpo/modules/taskManager/repository/TasksAndEventsRepository;
    .locals 3

    .line 36
    const-string v0, "expo.modules.taskManager.oneAppId"

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 43
    new-instance p0, Lexpo/modules/taskManager/repository/BareTasksAndEventsRepository;

    new-instance v0, Lexpo/modules/taskManager/repository/TasksPersistence;

    invoke-direct {v0}, Lexpo/modules/taskManager/repository/TasksPersistence;-><init>()V

    invoke-direct {p0, v0}, Lexpo/modules/taskManager/repository/BareTasksAndEventsRepository;-><init>(Lexpo/modules/taskManager/repository/TasksPersistence;)V

    return-object p0

    .line 45
    :cond_0
    new-instance p0, Lexpo/modules/taskManager/repository/ManagedTasksAndEventsRepository;

    new-instance v0, Lexpo/modules/taskManager/repository/TasksPersistence;

    invoke-direct {v0}, Lexpo/modules/taskManager/repository/TasksPersistence;-><init>()V

    invoke-direct {p0, v0}, Lexpo/modules/taskManager/repository/ManagedTasksAndEventsRepository;-><init>(Lexpo/modules/taskManager/repository/TasksPersistence;)V

    return-object p0
.end method


# virtual methods
.method public abstract allAppScopeKeysWithTasks()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createTasks()V
.end method

.method public abstract getEvents(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getTasks(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/interfaces/taskManager/TaskInterface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasEvents(Ljava/lang/String;)Z
.end method

.method public abstract hasTasks(Ljava/lang/String;)Z
.end method

.method public abstract persistTasksForAppScopeKey(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end method

.method public abstract putEventForAppScopeKey(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract putEvents(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract putTasks(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/interfaces/taskManager/TaskInterface;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract readPersistedTasks(Landroid/content/SharedPreferences;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/taskManager/repository/TasksAndEventsRepository$AppConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeEvents(Ljava/lang/String;)V
.end method

.method public abstract removeTask(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeTasks(Ljava/lang/String;)V
.end method

.method public abstract tasksExist()Z
.end method
