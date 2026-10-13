.class public final Lexpo/modules/taskManager/TaskManagerModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "TaskManagerModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskManagerModule.kt\nexpo/modules/taskManager/TaskManagerModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ConstantComponentBuilder.kt\nexpo/modules/kotlin/objects/ConstantComponentBuilder\n+ 7 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 8 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 9 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 11 AppContext.kt\nexpo/modules/kotlin/AppContext\n*L\n1#1,100:1\n69#2:101\n14#3:102\n25#3:103\n27#4,3:104\n31#4:429\n571#5,2:107\n573#5,2:112\n235#5:116\n236#5,2:143\n261#5:145\n264#5,3:203\n245#5,8:206\n253#5,2:259\n245#5,8:261\n253#5,2:314\n235#5:316\n236#5,2:343\n245#5,8:345\n253#5,2:398\n235#5:400\n236#5,2:427\n11#6,3:109\n110#7,2:114\n13#8,6:117\n19#8,19:124\n13#8,6:177\n19#8,19:184\n13#8,6:233\n19#8,19:240\n13#8,6:288\n19#8,19:295\n13#8,6:317\n19#8,19:324\n13#8,6:372\n19#8,19:379\n13#8,6:401\n19#8,19:408\n11#9:123\n11#9:183\n11#9:239\n11#9:294\n11#9:323\n11#9:378\n11#9:407\n182#10,8:146\n169#10:154\n145#10,2:155\n159#10,8:157\n190#10:165\n169#10:166\n145#10,2:167\n159#10,8:169\n172#10,7:214\n169#10:221\n145#10,2:222\n159#10,8:224\n177#10:232\n172#10,7:269\n169#10:276\n145#10,2:277\n159#10,8:279\n177#10:287\n172#10,7:353\n169#10:360\n145#10,2:361\n159#10,8:363\n177#10:371\n161#11,5:430\n*S KotlinDebug\n*F\n+ 1 TaskManagerModule.kt\nexpo/modules/taskManager/TaskManagerModule\n*L\n26#1:101\n26#1:102\n26#1:103\n26#1:104,3\n26#1:429\n31#1:107,2\n31#1:112,2\n55#1:116\n55#1:143,2\n59#1:145\n59#1:203,3\n63#1:206,8\n63#1:259,2\n67#1:261,8\n67#1:314,2\n71#1:316\n71#1:343,2\n75#1:345,8\n75#1:398,2\n79#1:400\n79#1:427,2\n31#1:109,3\n35#1:114,2\n55#1:117,6\n55#1:124,19\n59#1:177,6\n59#1:184,19\n63#1:233,6\n63#1:240,19\n67#1:288,6\n67#1:295,19\n71#1:317,6\n71#1:324,19\n75#1:372,6\n75#1:379,19\n79#1:401,6\n79#1:408,19\n55#1:123\n59#1:183\n63#1:239\n67#1:294\n71#1:323\n75#1:378\n79#1:407\n59#1:146,8\n59#1:154\n59#1:155,2\n59#1:157,8\n59#1:165\n59#1:166\n59#1:167,2\n59#1:169,8\n63#1:214,7\n63#1:221\n63#1:222,2\n63#1:224,8\n63#1:232\n67#1:269,7\n67#1:276\n67#1:277,2\n67#1:279,8\n67#1:287\n75#1:353,7\n75#1:360\n75#1:361,2\n75#1:363,8\n75#1:371\n23#1:430,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0007R\u001d\u0010\u000c\u001a\u0004\u0018\u00010\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\t\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/taskManager/TaskManagerModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "<init>",
        "()V",
        "_taskService",
        "Lexpo/modules/interfaces/taskManager/TaskServiceInterface;",
        "get_taskService",
        "()Lexpo/modules/interfaces/taskManager/TaskServiceInterface;",
        "_taskService$delegate",
        "Lkotlin/Lazy;",
        "taskService",
        "getTaskService",
        "taskManagerInternal",
        "Lexpo/modules/interfaces/taskManager/TaskManagerInterface;",
        "getTaskManagerInternal",
        "()Lexpo/modules/interfaces/taskManager/TaskManagerInterface;",
        "taskManagerInternal$delegate",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "appScopeKey",
        "",
        "getAppScopeKey",
        "()Ljava/lang/String;",
        "expo-task-manager_release"
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
.field private final _taskService$delegate:Lkotlin/Lazy;

.field private final taskManagerInternal$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$i7GfdFWamNJPBQI_TmH0_8prh2I(Lexpo/modules/taskManager/TaskManagerModule;)Lexpo/modules/interfaces/taskManager/TaskManagerInterface;
    .locals 0

    invoke-static {p0}, Lexpo/modules/taskManager/TaskManagerModule;->taskManagerInternal_delegate$lambda$1(Lexpo/modules/taskManager/TaskManagerModule;)Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zIgaZLdPkieJSrrYIwoh4MNmNhc(Lexpo/modules/taskManager/TaskManagerModule;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;
    .locals 0

    invoke-static {p0}, Lexpo/modules/taskManager/TaskManagerModule;->_taskService_delegate$lambda$0(Lexpo/modules/taskManager/TaskManagerModule;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 15
    new-instance v0, Lexpo/modules/taskManager/TaskManagerModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lexpo/modules/taskManager/TaskManagerModule$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/taskManager/TaskManagerModule;->_taskService$delegate:Lkotlin/Lazy;

    .line 22
    new-instance v0, Lexpo/modules/taskManager/TaskManagerModule$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lexpo/modules/taskManager/TaskManagerModule$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/taskManager/TaskManagerModule;->taskManagerInternal$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final _taskService_delegate$lambda$0(Lexpo/modules/taskManager/TaskManagerModule;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;
    .locals 2

    .line 16
    invoke-virtual {p0}, Lexpo/modules/taskManager/TaskManagerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p0

    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object p0

    const-string v0, "TaskService"

    const-class v1, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/core/ModuleRegistry;->getSingletonModule(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    return-object p0
.end method

.method public static final synthetic access$getAppScopeKey(Lexpo/modules/taskManager/TaskManagerModule;)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskManagerModule;->getAppScopeKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTaskManagerInternal(Lexpo/modules/taskManager/TaskManagerModule;)Lexpo/modules/interfaces/taskManager/TaskManagerInterface;
    .locals 0

    .line 14
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskManagerModule;->getTaskManagerInternal()Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTaskService(Lexpo/modules/taskManager/TaskManagerModule;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;
    .locals 0

    .line 14
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskManagerModule;->getTaskService()Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    move-result-object p0

    return-object p0
.end method

.method private final getAppScopeKey()Ljava/lang/String;
    .locals 2

    .line 96
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskManagerModule;->getTaskManagerInternal()Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;->getAppScopeKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAppScopeKey(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ModuleNotFound;

    const-class v1, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/exception/Exceptions$ModuleNotFound;-><init>(Lkotlin/reflect/KClass;)V

    throw v0
.end method

.method private final getTaskManagerInternal()Lexpo/modules/interfaces/taskManager/TaskManagerInterface;
    .locals 1

    .line 22
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerModule;->taskManagerInternal$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    return-object v0
.end method

.method private final getTaskService()Lexpo/modules/interfaces/taskManager/TaskServiceInterface;
    .locals 2

    .line 19
    invoke-direct {p0}, Lexpo/modules/taskManager/TaskManagerModule;->get_taskService()Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ModuleNotFound;

    const-class v1, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/exception/Exceptions$ModuleNotFound;-><init>(Lkotlin/reflect/KClass;)V

    throw v0
.end method

.method private final get_taskService()Lexpo/modules/interfaces/taskManager/TaskServiceInterface;
    .locals 1

    .line 15
    iget-object v0, p0, Lexpo/modules/taskManager/TaskManagerModule;->_taskService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    return-object v0
.end method

.method private static final taskManagerInternal_delegate$lambda$1(Lexpo/modules/taskManager/TaskManagerModule;)Lexpo/modules/interfaces/taskManager/TaskManagerInterface;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lexpo/modules/taskManager/TaskManagerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p0

    .line 431
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object p0

    const-class v0, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    invoke-virtual {p0, v0}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 430
    :goto_0
    check-cast p0, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    return-object p0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 11

    .line 26
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 101
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

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 101
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 27
    const-string v0, "ExpoTaskManager"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 29
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "TaskManager.executeTask"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 31
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "EVENT_NAME"

    .line 107
    new-instance v5, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;

    invoke-direct {v5, v3}, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v6, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$Constant$1;

    invoke-direct {v6}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$Constant$1;-><init>()V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v6}, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->setGetter(Lkotlin/jvm/functions/Function0;)V

    .line 112
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConstants()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .line 114
    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v6, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v7, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$OnCreate$1;

    invoke-direct {v7, p0}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$OnCreate$1;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-direct {v5, v6, v7}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "isAvailableAsync"

    .line 116
    new-array v5, v4, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v6, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$1;

    invoke-direct {v6}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$1;-><init>()V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 120
    const-class v7, Ljava/lang/Boolean;

    .line 121
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 124
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 126
    :cond_0
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 128
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 130
    :cond_1
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 132
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 134
    :cond_2
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 136
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 138
    :cond_3
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 140
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 142
    :cond_4
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 143
    :goto_0
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "notifyTaskFinishedAsync"

    .line 145
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 148
    const-class v6, Ljava/lang/String;

    .line 149
    const-class v6, Ljava/util/Map;

    const/4 v6, 0x2

    .line 153
    new-array v6, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 154
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 155
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_5

    .line 154
    sget-object v7, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$2;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 157
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 158
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v4, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 157
    invoke-direct {v8, v9, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 154
    :cond_5
    aput-object v7, v6, v4

    .line 166
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 167
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/util/Map;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_6

    .line 166
    sget-object v7, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$3;->INSTANCE:Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$3;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 169
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 170
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/util/Map;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v4, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 169
    invoke-direct {v8, v9, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 166
    :cond_6
    aput-object v7, v6, v0

    .line 145
    new-instance v5, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$4;

    invoke-direct {v5, p0}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$4;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 180
    const-class v7, Lkotlin/Unit;

    .line 181
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 184
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v6, v5}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 186
    :cond_7
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 188
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v6, v5}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 190
    :cond_8
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 192
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v6, v5}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 194
    :cond_9
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 196
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v6, v5}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 198
    :cond_a
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 200
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v6, v5}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 202
    :cond_b
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v6, v5}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 204
    :goto_1
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "isTaskRegisteredAsync"

    .line 206
    const-class v5, Ljava/lang/String;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 207
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v6, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 213
    new-instance v7, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$5;

    invoke-direct {v7, p0}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$5;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 207
    invoke-direct {v5, v3, v6, v7}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_3

    .line 209
    :cond_c
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 216
    const-class v6, Ljava/lang/String;

    .line 220
    new-array v6, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 221
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 222
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_d

    .line 221
    sget-object v7, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$6;->INSTANCE:Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$6;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 224
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 225
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v4, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 224
    invoke-direct {v8, v9, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 221
    :cond_d
    aput-object v7, v6, v4

    .line 209
    new-instance v5, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$7;

    invoke-direct {v5, p0}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$7;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 236
    const-class v7, Ljava/lang/Boolean;

    .line 237
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 240
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v6, v5}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_2
    move-object v5, v7

    goto :goto_3

    .line 242
    :cond_e
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 244
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v6, v5}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 246
    :cond_f
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 248
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v6, v5}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 250
    :cond_10
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 252
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v6, v5}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 254
    :cond_11
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 256
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v6, v5}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 258
    :cond_12
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v6, v5}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 259
    :goto_3
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getTaskOptionsAsync"

    .line 261
    const-class v5, Ljava/lang/String;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 262
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v6, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 268
    new-instance v7, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$8;

    invoke-direct {v7, p0}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$8;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 262
    invoke-direct {v5, v3, v6, v7}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 264
    :cond_13
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 271
    const-class v6, Ljava/lang/String;

    .line 275
    new-array v6, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 276
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 277
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_14

    .line 276
    sget-object v7, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$9;->INSTANCE:Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$9;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 279
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 280
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v4, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 279
    invoke-direct {v8, v9, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 276
    :cond_14
    aput-object v7, v6, v4

    .line 264
    new-instance v5, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$10;

    invoke-direct {v5, p0}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$10;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 289
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v6, v5}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    move-object v5, v7

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 314
    :goto_4
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getRegisteredTasksAsync"

    .line 316
    new-array v5, v4, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v6, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$11;

    invoke-direct {v6, p0}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$11;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 320
    const-class v7, Ljava/util/List;

    .line 321
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 324
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 326
    :cond_15
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 328
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 330
    :cond_16
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 332
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 334
    :cond_17
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 336
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 338
    :cond_18
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 340
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 342
    :cond_19
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 343
    :goto_5
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "unregisterTaskAsync"

    .line 345
    const-class v5, Ljava/lang/String;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 346
    new-instance v0, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v5, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 352
    new-instance v6, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$12;

    invoke-direct {v6, p0}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$12;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 346
    invoke-direct {v0, v3, v5, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_7

    .line 348
    :cond_1a
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 355
    const-class v6, Ljava/lang/String;

    .line 359
    new-array v0, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 360
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 361
    new-instance v7, Lkotlin/Pair;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_1b

    .line 360
    sget-object v6, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$13;->INSTANCE:Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$13;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 363
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 364
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v4, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 363
    invoke-direct {v7, v8, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v6, v7

    .line 360
    :cond_1b
    aput-object v6, v0, v4

    .line 348
    new-instance v5, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$14;

    invoke-direct {v5, p0}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$14;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 375
    const-class v6, Lkotlin/Unit;

    .line 376
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 379
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v3, v0, v5}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_6
    move-object v0, v6

    goto :goto_7

    .line 381
    :cond_1c
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 383
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v3, v0, v5}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_6

    .line 385
    :cond_1d
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 387
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v3, v0, v5}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_6

    .line 389
    :cond_1e
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 391
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v3, v0, v5}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_6

    .line 393
    :cond_1f
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 395
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v3, v0, v5}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_6

    .line 397
    :cond_20
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v3, v0, v5}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_6

    .line 398
    :goto_7
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "unregisterAllTasksAsync"

    .line 400
    new-array v3, v4, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v4, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$15;

    invoke-direct {v4, p0}, Lexpo/modules/taskManager/TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$15;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 404
    const-class v5, Lkotlin/Unit;

    .line 405
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 408
    new-instance v5, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 410
    :cond_21
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 412
    new-instance v5, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 414
    :cond_22
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 416
    new-instance v5, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 418
    :cond_23
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 420
    new-instance v5, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 422
    :cond_24
    const-class v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 424
    new-instance v5, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 426
    :cond_25
    new-instance v5, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 427
    :goto_8
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Lexpo/modules/taskManager/TaskManagerModule$definition$1$10;

    invoke-direct {v0, p0}, Lexpo/modules/taskManager/TaskManagerModule$definition$1$10;-><init>(Lexpo/modules/taskManager/TaskManagerModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->OnStartObserving(Lkotlin/jvm/functions/Function0;)V

    .line 101
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
