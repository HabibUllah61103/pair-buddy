.class Lexpo/modules/taskManager/TaskService$1;
.super Ljava/lang/Object;
.source "TaskService.java"

# interfaces
.implements Lcom/facebook/react/ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/taskManager/TaskService;->waitForReactContextAndStartTask(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/taskManager/TaskService;

.field final synthetic val$appScopeKey:Ljava/lang/String;

.field final synthetic val$reactHost:Lcom/facebook/react/ReactHost;


# direct methods
.method constructor <init>(Lexpo/modules/taskManager/TaskService;Ljava/lang/String;Lcom/facebook/react/ReactHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 675
    iput-object p1, p0, Lexpo/modules/taskManager/TaskService$1;->this$0:Lexpo/modules/taskManager/TaskService;

    iput-object p2, p0, Lexpo/modules/taskManager/TaskService$1;->val$appScopeKey:Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/taskManager/TaskService$1;->val$reactHost:Lcom/facebook/react/ReactHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2

    .line 678
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService$1;->this$0:Lexpo/modules/taskManager/TaskService;

    iget-object v1, p0, Lexpo/modules/taskManager/TaskService$1;->val$appScopeKey:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lexpo/modules/taskManager/TaskService;->-$$Nest$minvokeStartHeadlessTask(Lexpo/modules/taskManager/TaskService;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V

    .line 679
    iget-object p1, p0, Lexpo/modules/taskManager/TaskService$1;->val$reactHost:Lcom/facebook/react/ReactHost;

    invoke-interface {p1, p0}, Lcom/facebook/react/ReactHost;->removeReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    return-void
.end method
