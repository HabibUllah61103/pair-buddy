.class public final Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$5;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$5\n+ 2 TaskManagerModule.kt\nexpo/modules/taskManager/TaskManagerModule\n*L\n1#1,252:1\n64#2:253\n*E\n"
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

    iput-object p1, p0, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$5;->this$0:Lexpo/modules/taskManager/TaskManagerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$5;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "promise"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    check-cast p2, Ljava/lang/String;

    .line 253
    iget-object p1, p0, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$5;->this$0:Lexpo/modules/taskManager/TaskManagerModule;

    invoke-static {p1}, Lexpo/modules/taskManager/TaskManagerModule;->access$getTaskService(Lexpo/modules/taskManager/TaskManagerModule;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    move-result-object p1

    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$5;->this$0:Lexpo/modules/taskManager/TaskManagerModule;

    invoke-static {v0}, Lexpo/modules/taskManager/TaskManagerModule;->access$getAppScopeKey(Lexpo/modules/taskManager/TaskManagerModule;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;->hasRegisteredTask(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
