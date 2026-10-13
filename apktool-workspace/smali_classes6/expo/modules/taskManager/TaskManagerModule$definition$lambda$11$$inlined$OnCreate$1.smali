.class public final Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$OnCreate$1;
.super Ljava/lang/Object;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/taskManager/TaskManagerModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnCreate$1\n+ 2 TaskManagerModule.kt\nexpo/modules/taskManager/TaskManagerModule\n+ 3 AppContext.kt\nexpo/modules/kotlin/AppContext\n*L\n1#1,110:1\n37#2,2:111\n52#2:113\n53#2:119\n161#3,5:114\n*S KotlinDebug\n*F\n+ 1 TaskManagerModule.kt\nexpo/modules/taskManager/TaskManagerModule\n*L\n52#1:114,5\n*E\n"
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
.method public constructor <init>(Lexpo/modules/taskManager/TaskManagerModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$OnCreate$1;->this$0:Lexpo/modules/taskManager/TaskManagerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$OnCreate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$OnCreate$1;->this$0:Lexpo/modules/taskManager/TaskManagerModule;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 112
    new-instance v1, Lexpo/modules/taskManager/TaskManagerModule$definition$1$2$emitEvent$1;

    invoke-direct {v1, v0}, Lexpo/modules/taskManager/TaskManagerModule$definition$1$2$emitEvent$1;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 113
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$OnCreate$1;->this$0:Lexpo/modules/taskManager/TaskManagerModule;

    invoke-virtual {v0}, Lexpo/modules/taskManager/TaskManagerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    const/4 v2, 0x0

    .line 115
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-class v3, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    invoke-virtual {v0, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v2

    .line 113
    :goto_0
    instance-of v3, v0, Lexpo/modules/taskManager/TaskManagerInternalModule;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Lexpo/modules/taskManager/TaskManagerInternalModule;

    :cond_0
    if-eqz v2, :cond_1

    new-instance v0, Lexpo/modules/taskManager/TaskManagerModule$sam$expo_modules_taskManager_EmitEventWrapper$0;

    invoke-direct {v0, v1}, Lexpo/modules/taskManager/TaskManagerModule$sam$expo_modules_taskManager_EmitEventWrapper$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lexpo/modules/taskManager/EmitEventWrapper;

    invoke-virtual {v2, v0}, Lexpo/modules/taskManager/TaskManagerInternalModule;->setEmitEventWrapper(Lexpo/modules/taskManager/EmitEventWrapper;)V

    :cond_1
    return-void
.end method
