.class public final synthetic Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/job/JobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda1;->f$0:Landroid/app/job/JobService;

    iput-object p2, p0, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda1;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda1;->f$0:Landroid/app/job/JobService;

    iget-object v1, p0, Lexpo/modules/taskManager/TaskService$$ExternalSyntheticLambda1;->f$1:Landroid/app/job/JobParameters;

    invoke-static {v0, v1}, Lexpo/modules/taskManager/TaskService;->lambda$finishJobAfterTimeout$3(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    return-void
.end method
