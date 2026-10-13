.class final Lexpo/modules/taskManager/TaskManagerModule$definition$1$10;
.super Ljava/lang/Object;
.source "TaskManagerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/taskManager/TaskManagerModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
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

    iput-object p1, p0, Lexpo/modules/taskManager/TaskManagerModule$definition$1$10;->this$0:Lexpo/modules/taskManager/TaskManagerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lexpo/modules/taskManager/TaskManagerModule$definition$1$10;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    new-instance v1, Lexpo/modules/taskManager/TaskManagerModule$definition$1$10$1;

    iget-object v2, p0, Lexpo/modules/taskManager/TaskManagerModule$definition$1$10;->this$0:Lexpo/modules/taskManager/TaskManagerModule;

    invoke-direct {v1, v2}, Lexpo/modules/taskManager/TaskManagerModule$definition$1$10$1;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
