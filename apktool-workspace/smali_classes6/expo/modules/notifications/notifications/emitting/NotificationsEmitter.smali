.class public Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;
.super Lexpo/modules/kotlin/modules/Module;
.source "NotificationsEmitter.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/interfaces/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationsEmitter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationsEmitter.kt\nexpo/modules/notifications/notifications/emitting/NotificationsEmitter\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 6 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 7 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeKt\n*L\n1#1,90:1\n69#2:91\n14#3:92\n25#3:93\n27#4,3:94\n31#4:115\n110#5,2:97\n124#5,2:99\n120#6:101\n121#6,2:106\n111#6:108\n112#6,2:113\n19#7:102\n13#7,3:103\n19#7:109\n13#7,3:110\n*S KotlinDebug\n*F\n+ 1 NotificationsEmitter.kt\nexpo/modules/notifications/notifications/emitting/NotificationsEmitter\n*L\n20#1:91\n20#1:92\n20#1:93\n20#1:94,3\n20#1:115\n29#1:97,2\n34#1:99,2\n38#1:101\n38#1:106,2\n42#1:108\n42#1:113,2\n38#1:102\n38#1:103,3\n42#1:109\n42#1:110,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0006H\u0016J\u0008\u0010\u0013\u001a\u00020\nH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;",
        "Lexpo/modules/kotlin/modules/Module;",
        "Lexpo/modules/notifications/notifications/interfaces/NotificationListener;",
        "<init>",
        "()V",
        "lastNotificationResponseBundle",
        "Landroid/os/Bundle;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "onNotificationReceived",
        "",
        "notification",
        "Lexpo/modules/notifications/notifications/model/Notification;",
        "onNotificationResponseReceived",
        "",
        "response",
        "Lexpo/modules/notifications/notifications/model/NotificationResponse;",
        "onNotificationResponseIntentReceived",
        "extras",
        "onNotificationsDropped",
        "expo-notifications_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private lastNotificationResponseBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLastNotificationResponseBundle$p(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)Landroid/os/Bundle;
    .locals 0

    .line 17
    iget-object p0, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->lastNotificationResponseBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public static final synthetic access$setLastNotificationResponseBundle$p(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;Landroid/os/Bundle;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->lastNotificationResponseBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 9

    .line 20
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ModuleDefinition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 91
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 21
    const-string v0, "ExpoNotificationsEmitter"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 24
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "onDidReceiveNotification"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 25
    const-string v2, "onNotificationsDeleted"

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 26
    const-string v2, "onDidReceiveNotificationResponse"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 23
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 29
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .line 97
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v4, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v5, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v6, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnCreate$1;

    invoke-direct {v6, p0}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnCreate$1;-><init>(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-direct {v4, v5, v6}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .line 99
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v4, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v5, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v6, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnDestroy$1;

    invoke-direct {v6, p0}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnDestroy$1;-><init>(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-direct {v4, v5, v6}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getLastNotificationResponse"

    .line 101
    new-instance v4, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    new-array v5, v3, [Lexpo/modules/kotlin/types/AnyType;

    .line 102
    sget-object v6, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .line 103
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v7

    const-class v8, Landroid/os/Bundle;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v7, :cond_0

    new-instance v7, Lexpo/modules/kotlin/types/ReturnType;

    const-class v8, Landroid/os/Bundle;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    .line 104
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v6

    const-class v8, Landroid/os/Bundle;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    new-instance v6, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$Function$1;

    invoke-direct {v6, p0}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$Function$1;-><init>(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v2, v5, v7, v6}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 106
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "clearLastNotificationResponse"

    .line 108
    new-instance v4, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    new-array v3, v3, [Lexpo/modules/kotlin/types/AnyType;

    .line 109
    sget-object v5, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .line 110
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v6, :cond_1

    new-instance v6, Lexpo/modules/kotlin/types/ReturnType;

    const-class v7, Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    .line 111
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v5

    const-class v7, Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1
    new-instance v5, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$FunctionWithoutArgs$1;

    invoke-direct {v5, p0}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$FunctionWithoutArgs$1;-><init>(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v2, v3, v6, v5}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 113
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public onNotificationReceived(Lexpo/modules/notifications/notifications/model/Notification;)V
    .locals 1

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/Notification;)Landroid/os/Bundle;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "NotificationsEmitter.onNotificationReceived"

    invoke-static {v0, p1}, Lexpo/modules/notifications/notifications/debug/DebugLogging;->logBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    const-string v0, "onDidReceiveNotification"

    invoke-virtual {p0, v0, p1}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onNotificationResponseIntentReceived(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toResponseBundleFromExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "toResponseBundleFromExtras(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const-string v0, "NotificationsEmitter.onNotificationResponseIntentReceived"

    invoke-static {v0, p1}, Lexpo/modules/notifications/notifications/debug/DebugLogging;->logBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 78
    iput-object p1, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->lastNotificationResponseBundle:Landroid/os/Bundle;

    .line 79
    const-string v0, "onDidReceiveNotificationResponse"

    invoke-virtual {p0, v0, p1}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onNotificationResponseReceived(Lexpo/modules/notifications/notifications/model/NotificationResponse;)Z
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/NotificationResponse;)Landroid/os/Bundle;

    move-result-object p1

    .line 69
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "NotificationsEmitter.onNotificationResponseReceived"

    invoke-static {v0, p1}, Lexpo/modules/notifications/notifications/debug/DebugLogging;->logBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 70
    iput-object p1, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->lastNotificationResponseBundle:Landroid/os/Bundle;

    .line 71
    const-string v0, "onDidReceiveNotificationResponse"

    invoke-virtual {p0, v0, p1}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onNotificationsDropped()V
    .locals 2

    .line 87
    const-string v0, "onNotificationsDeleted"

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
