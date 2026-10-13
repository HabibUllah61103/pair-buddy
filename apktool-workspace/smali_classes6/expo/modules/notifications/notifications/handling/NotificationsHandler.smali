.class public Lexpo/modules/notifications/notifications/handling/NotificationsHandler;
.super Lexpo/modules/kotlin/modules/Module;
.source "NotificationsHandler.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/interfaces/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationsHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationsHandler.kt\nexpo/modules/notifications/notifications/handling/NotificationsHandler\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 6 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n*L\n1#1,125:1\n69#2:126\n14#3:127\n25#3:128\n27#4,3:129\n31#4:171\n110#5,2:132\n124#5,2:134\n299#6:136\n302#6,3:168\n182#7,8:137\n169#7:145\n145#7,2:146\n159#7,8:148\n190#7:156\n169#7:157\n145#7,2:158\n159#7,8:160\n*S KotlinDebug\n*F\n+ 1 NotificationsHandler.kt\nexpo/modules/notifications/notifications/handling/NotificationsHandler\n*L\n37#1:126\n37#1:127\n37#1:128\n37#1:129,3\n37#1:171\n45#1:132,2\n54#1:134,2\n63#1:136\n63#1:168,3\n63#1:137,8\n63#1:145\n63#1:146,2\n63#1:148,8\n63#1:156\n63#1:157\n63#1:158,2\n63#1:160,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u000e\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u000cR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/handling/NotificationsHandler;",
        "Lexpo/modules/kotlin/modules/Module;",
        "Lexpo/modules/notifications/notifications/interfaces/NotificationListener;",
        "<init>",
        "()V",
        "notificationsHandlerThread",
        "Landroid/os/HandlerThread;",
        "handler",
        "Landroid/os/Handler;",
        "tasksMap",
        "",
        "",
        "Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "handleNotificationAsync",
        "",
        "identifier",
        "behavior",
        "Lexpo/modules/notifications/notifications/model/NotificationBehaviorRecord;",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "onNotificationReceived",
        "notification",
        "Lexpo/modules/notifications/notifications/model/Notification;",
        "onTaskFinished",
        "task",
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
.field private handler:Landroid/os/Handler;

.field private notificationsHandlerThread:Landroid/os/HandlerThread;

.field private final tasksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->tasksMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getNotificationsHandlerThread$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)Landroid/os/HandlerThread;
    .locals 0

    .line 24
    iget-object p0, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->notificationsHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static final synthetic access$getTasksMap$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)Ljava/util/Map;
    .locals 0

    .line 24
    iget-object p0, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->tasksMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$handleNotificationAsync(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Ljava/lang/String;Lexpo/modules/notifications/notifications/model/NotificationBehaviorRecord;Lexpo/modules/kotlin/Promise;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->handleNotificationAsync(Ljava/lang/String;Lexpo/modules/notifications/notifications/model/NotificationBehaviorRecord;Lexpo/modules/kotlin/Promise;)V

    return-void
.end method

.method public static final synthetic access$setHandler$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Landroid/os/Handler;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setNotificationsHandlerThread$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Landroid/os/HandlerThread;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->notificationsHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method private final handleNotificationAsync(Ljava/lang/String;Lexpo/modules/notifications/notifications/model/NotificationBehaviorRecord;Lexpo/modules/kotlin/Promise;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->tasksMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p2, p3}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->processNotificationWithBehavior(Lexpo/modules/notifications/notifications/model/NotificationBehaviorRecord;Lexpo/modules/kotlin/Promise;)V

    return-void

    .line 77
    :cond_0
    new-instance p2, Lexpo/modules/notifications/NotificationWasAlreadyHandledException;

    invoke-direct {p2, p1}, Lexpo/modules/notifications/NotificationWasAlreadyHandledException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 12

    .line 37
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 126
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

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 126
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 38
    const-string v0, "ExpoNotificationsHandlerModule"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 41
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "onHandleNotification"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 42
    const-string v3, "onHandleNotificationTimeout"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 40
    invoke-virtual {v1, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 45
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .line 132
    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v6, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v7, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v8, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;

    invoke-direct {v8, p0, v1}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;-><init>(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-direct {v6, v7, v8}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .line 134
    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v6, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v7, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v8, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnDestroy$1;

    invoke-direct {v8, p0}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnDestroy$1;-><init>(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-direct {v6, v7, v8}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "handleNotificationAsync"

    .line 136
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v7

    .line 139
    const-class v8, Ljava/lang/String;

    .line 140
    const-class v8, Lexpo/modules/notifications/notifications/model/NotificationBehaviorRecord;

    .line 144
    new-array v0, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 145
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 146
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_0

    .line 145
    sget-object v8, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 148
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 149
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 148
    invoke-direct {v9, v10, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 145
    :cond_0
    aput-object v8, v0, v4

    .line 157
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 158
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/notifications/notifications/model/NotificationBehaviorRecord;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_1

    .line 157
    sget-object v8, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;->INSTANCE:Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 160
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 161
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/notifications/notifications/model/NotificationBehaviorRecord;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 160
    invoke-direct {v9, v10, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 157
    :cond_1
    aput-object v8, v0, v5

    .line 168
    new-instance v4, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;

    invoke-direct {v4, p0}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;-><init>(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 136
    invoke-direct {v6, v3, v0, v4}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 169
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 126
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public onNotificationReceived(Lexpo/modules/notifications/notifications/model/Notification;)V
    .locals 7

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/Notification;->getNotificationRequest()Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v0

    .line 98
    instance-of v1, v0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;

    if-eqz v1, :cond_1

    check-cast v0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->isDataOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 104
    :cond_1
    new-instance v1, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;

    .line 106
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    move-object v3, p0

    check-cast v3, Lexpo/modules/kotlin/modules/Module;

    invoke-virtual {v0, v3}, Lexpo/modules/kotlin/AppContext;->eventEmitter(Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/events/EventEmitter;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lexpo/modules/core/interfaces/services/EventEmitter;

    .line 107
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    const-string v0, "handler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    move-object v6, p0

    move-object v5, p1

    move-object v4, v0

    .line 104
    invoke-direct/range {v1 .. v6}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;-><init>(Landroid/content/Context;Lexpo/modules/core/interfaces/services/EventEmitter;Landroid/os/Handler;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)V

    .line 111
    iget-object p1, v6, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->tasksMap:Ljava/util/Map;

    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->start()V

    return-void
.end method

.method public onNotificationResponseIntentReceived(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener$DefaultImpls;->onNotificationResponseIntentReceived(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;Landroid/os/Bundle;)V

    return-void
.end method

.method public onNotificationResponseReceived(Lexpo/modules/notifications/notifications/model/NotificationResponse;)Z
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener$DefaultImpls;->onNotificationResponseReceived(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;Lexpo/modules/notifications/notifications/model/NotificationResponse;)Z

    move-result p1

    return p1
.end method

.method public onNotificationsDropped()V
    .locals 0

    .line 24
    invoke-static {p0}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener$DefaultImpls;->onNotificationsDropped(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;)V

    return-void
.end method

.method public final onTaskFinished(Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->tasksMap:Ljava/util/Map;

    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
