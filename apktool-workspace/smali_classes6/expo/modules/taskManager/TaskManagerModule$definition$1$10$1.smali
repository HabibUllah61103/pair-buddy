.class final Lexpo/modules/taskManager/TaskManagerModule$definition$1$10$1;
.super Ljava/lang/Object;
.source "TaskManagerModule.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/taskManager/TaskManagerModule$definition$1$10;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/taskManager/TaskManagerModule;


# direct methods
.method constructor <init>(Lexpo/modules/taskManager/TaskManagerModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/taskManager/TaskManagerModule$definition$1$10$1;->this$0:Lexpo/modules/taskManager/TaskManagerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 87
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerModule$definition$1$10$1;->this$0:Lexpo/modules/taskManager/TaskManagerModule;

    invoke-static {v0}, Lexpo/modules/taskManager/TaskManagerModule;->access$getTaskManagerInternal(Lexpo/modules/taskManager/TaskManagerModule;)Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;->flushQueuedEvents()V

    :cond_0
    return-void
.end method
