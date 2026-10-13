.class public Lexpo/modules/taskManager/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lexpo/modules/interfaces/taskManager/TaskInterface;


# instance fields
.field private mAppScopeKey:Ljava/lang/String;

.field private mAppUrl:Ljava/lang/String;

.field private mConsumer:Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

.field private mName:Ljava/lang/String;

.field private mOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;Ljava/util/Map;Lexpo/modules/interfaces/taskManager/TaskServiceInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lexpo/modules/interfaces/taskManager/TaskServiceInterface;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lexpo/modules/taskManager/Task;->mName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lexpo/modules/taskManager/Task;->mAppScopeKey:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lexpo/modules/taskManager/Task;->mAppUrl:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lexpo/modules/taskManager/Task;->mConsumer:Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    .line 25
    iput-object p5, p0, Lexpo/modules/taskManager/Task;->mOptions:Ljava/util/Map;

    .line 26
    iput-object p6, p0, Lexpo/modules/taskManager/Task;->mService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    return-void
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;Ljava/lang/Error;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, p2, v0}, Lexpo/modules/taskManager/Task;->execute(Landroid/os/Bundle;Ljava/lang/Error;Lexpo/modules/interfaces/taskManager/TaskExecutionCallback;)V

    return-void
.end method

.method public execute(Landroid/os/Bundle;Ljava/lang/Error;Lexpo/modules/interfaces/taskManager/TaskExecutionCallback;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lexpo/modules/taskManager/Task;->mService:Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    invoke-interface {v0, p0, p1, p2, p3}, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;->executeTask(Lexpo/modules/interfaces/taskManager/TaskInterface;Landroid/os/Bundle;Ljava/lang/Error;Lexpo/modules/interfaces/taskManager/TaskExecutionCallback;)V

    return-void
.end method

.method public getAppScopeKey()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/taskManager/Task;->mAppScopeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppUrl()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lexpo/modules/taskManager/Task;->mAppUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumer()Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;
    .locals 1

    .line 42
    iget-object v0, p0, Lexpo/modules/taskManager/Task;->mConsumer:Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/taskManager/Task;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lexpo/modules/taskManager/Task;->mOptions:Ljava/util/Map;

    return-object v0
.end method

.method public getOptionsBundle()Landroid/os/Bundle;
    .locals 1

    .line 50
    iget-object v0, p0, Lexpo/modules/taskManager/Task;->mOptions:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/taskManager/TaskManagerUtils;->mapToBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lexpo/modules/taskManager/Task;->mOptions:Ljava/util/Map;

    return-void
.end method
