.class public final Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$14;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 TaskManagerModule.kt\nexpo/modules/taskManager/TaskManagerModule\n*L\n1#1,613:1\n11#2:614\n76#3,2:615\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n*L\n249#1:614\n*E\n"
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

    iput-object p1, p0, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$14;->this$0:Lexpo/modules/taskManager/TaskManagerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 248
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$14;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 250
    check-cast p1, Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$14;->this$0:Lexpo/modules/taskManager/TaskManagerModule;

    invoke-static {v0}, Lexpo/modules/taskManager/TaskManagerModule;->access$getTaskService(Lexpo/modules/taskManager/TaskManagerModule;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$14;->this$0:Lexpo/modules/taskManager/TaskManagerModule;

    invoke-static {v1}, Lexpo/modules/taskManager/TaskManagerModule;->access$getAppScopeKey(Lexpo/modules/taskManager/TaskManagerModule;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;->unregisterTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 616
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
