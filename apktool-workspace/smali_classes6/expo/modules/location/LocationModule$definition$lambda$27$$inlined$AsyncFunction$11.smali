.class public final Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$11;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/location/LocationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 LocationModule.kt\nexpo/modules/location/LocationModule\n*L\n1#1,613:1\n18#2:614\n246#3,21:615\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n*L\n262#1:614\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/location/LocationModule;


# direct methods
.method public constructor <init>(Lexpo/modules/location/LocationModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$11;->this$0:Lexpo/modules/location/LocationModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 261
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$11;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    .line 263
    check-cast p1, Lexpo/modules/location/records/LocationTaskOptions;

    check-cast v1, Ljava/lang/String;

    .line 615
    invoke-virtual {p1}, Lexpo/modules/location/records/LocationTaskOptions;->getForegroundService()Lexpo/modules/location/records/LocationTaskServiceOptions;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 617
    :cond_0
    iget-object v2, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$11;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {v2}, Lexpo/modules/location/LocationModule;->access$isMissingForegroundPermissions(Lexpo/modules/location/LocationModule;)Z

    move-result v2

    if-nez v2, :cond_6

    if-nez v0, :cond_2

    .line 623
    iget-object v0, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$11;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {v0}, Lexpo/modules/location/LocationModule;->access$isMissingBackgroundPermissions(Lexpo/modules/location/LocationModule;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 624
    :cond_1
    new-instance p1, Lexpo/modules/location/LocationBackgroundUnauthorizedException;

    invoke-direct {p1}, Lexpo/modules/location/LocationBackgroundUnauthorizedException;-><init>()V

    throw p1

    .line 626
    :cond_2
    :goto_0
    sget-object v0, Lexpo/modules/location/AppForegroundedSingleton;->INSTANCE:Lexpo/modules/location/AppForegroundedSingleton;

    invoke-virtual {v0}, Lexpo/modules/location/AppForegroundedSingleton;->isForegrounded()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lexpo/modules/location/records/LocationTaskOptions;->getForegroundService()Lexpo/modules/location/records/LocationTaskServiceOptions;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 627
    :cond_3
    new-instance p1, Lexpo/modules/location/ForegroundServiceStartNotAllowedException;

    invoke-direct {p1}, Lexpo/modules/location/ForegroundServiceStartNotAllowedException;-><init>()V

    throw p1

    .line 630
    :cond_4
    :goto_1
    iget-object v0, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$11;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {v0}, Lexpo/modules/location/LocationModule;->access$hasForegroundServicePermissions(Lexpo/modules/location/LocationModule;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 634
    iget-object v0, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunction$11;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {v0}, Lexpo/modules/location/LocationModule;->access$getMTaskManager(Lexpo/modules/location/LocationModule;)Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    move-result-object v0

    const-class v2, Lexpo/modules/location/taskConsumers/LocationTaskConsumer;

    invoke-virtual {p1}, Lexpo/modules/location/records/LocationTaskOptions;->toMutableMap$expo_location_release()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;->registerTask(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V

    .line 635
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 631
    :cond_5
    new-instance p1, Lexpo/modules/location/ForegroundServicePermissionsException;

    invoke-direct {p1}, Lexpo/modules/location/ForegroundServicePermissionsException;-><init>()V

    throw p1

    .line 618
    :cond_6
    new-instance p1, Lexpo/modules/location/LocationBackgroundUnauthorizedException;

    invoke-direct {p1}, Lexpo/modules/location/LocationBackgroundUnauthorizedException;-><init>()V

    throw p1
.end method
