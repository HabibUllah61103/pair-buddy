.class public Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "NotificationChannelGroupManagerModule.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationChannelGroupManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationChannelGroupManagerModule.kt\nexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 7 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 8 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,66:1\n69#2:67\n14#3:68\n25#3:69\n27#4,3:70\n31#4:273\n245#5,8:73\n253#5,2:125\n235#5:127\n236#5,2:154\n261#5:156\n264#5,3:215\n245#5,8:218\n253#5,2:271\n172#6,7:81\n169#6:88\n145#6,2:89\n159#6,8:91\n182#6,8:157\n169#6:165\n145#6,2:166\n159#6,8:168\n190#6:176\n169#6:177\n145#6,2:178\n159#6,8:180\n188#6:188\n172#6,7:226\n169#6:233\n145#6,2:234\n159#6,8:236\n177#6:244\n13#7,6:99\n19#7,19:106\n13#7,6:128\n19#7,19:135\n13#7,6:189\n19#7,19:196\n13#7,6:245\n19#7,19:252\n11#8:105\n11#8:134\n11#8:195\n11#8:251\n*S KotlinDebug\n*F\n+ 1 NotificationChannelGroupManagerModule.kt\nexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule\n*L\n21#1:67\n21#1:68\n21#1:69\n21#1:70,3\n21#1:273\n24#1:73,8\n24#1:125,2\n32#1:127\n32#1:154,2\n42#1:156\n42#1:215,3\n55#1:218,8\n55#1:271,2\n24#1:81,7\n24#1:88\n24#1:89,2\n24#1:91,8\n42#1:157,8\n42#1:165\n42#1:166,2\n42#1:168,8\n42#1:176\n42#1:177\n42#1:178,2\n42#1:180,8\n42#1:188\n55#1:226,7\n55#1:233\n55#1:234,2\n55#1:236,8\n55#1:244\n24#1:99,6\n24#1:106,19\n32#1:128,6\n32#1:135,19\n42#1:189,6\n42#1:196,19\n55#1:245,6\n55#1:252,19\n24#1:105\n32#1:134\n42#1:195\n55#1:251\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor;",
        "<init>",
        "()V",
        "groupManager",
        "Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;",
        "getGroupManager",
        "()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;",
        "groupManager$delegate",
        "Lkotlin/Lazy;",
        "groupSerializer",
        "Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;",
        "getGroupSerializer",
        "()Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;",
        "groupSerializer$delegate",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "getNameFromOptions",
        "",
        "groupOptions",
        "Lexpo/modules/core/arguments/ReadableArguments;",
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
.field private final groupManager$delegate:Lkotlin/Lazy;

.field private final groupSerializer$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$4WY8meo1n5I6ewyUWYvQqRdPuso(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;
    .locals 0

    invoke-static {p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->groupSerializer_delegate$lambda$1(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yTMRH6dQkY4mkGRssVF1CPor-Xw(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;
    .locals 0

    invoke-static {p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->groupManager_delegate$lambda$0(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 14
    new-instance v0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->groupManager$delegate:Lkotlin/Lazy;

    .line 17
    new-instance v0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->groupSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getGroupManager(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;
    .locals 0

    .line 13
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->getGroupManager()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getGroupSerializer(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;
    .locals 0

    .line 13
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->getGroupSerializer()Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNameFromOptions(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->getNameFromOptions(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getGroupManager()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;
    .locals 1

    .line 14
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->groupManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;

    return-object v0
.end method

.method private final getGroupSerializer()Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;
    .locals 1

    .line 17
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->groupSerializer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;

    return-object v0
.end method

.method private final getNameFromOptions(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "name"

    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final groupManager_delegate$lambda$0(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->getChannelProvider(Lexpo/modules/kotlin/ModuleRegistry;)Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;

    move-result-object p0

    invoke-interface {p0}, Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;->getGroupManager()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;

    move-result-object p0

    return-object p0
.end method

.method private static final groupSerializer_delegate$lambda$1(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->getChannelProvider(Lexpo/modules/kotlin/ModuleRegistry;)Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;

    move-result-object p0

    invoke-interface {p0}, Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;->getGroupSerializer()Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 11

    .line 21
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 67
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

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 67
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 22
    const-string v0, "ExpoNotificationChannelGroupManager"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 24
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getNotificationChannelGroupAsync"

    .line 73
    const-class v3, Ljava/lang/String;

    const-class v4, Lexpo/modules/kotlin/Promise;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 74
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 80
    new-instance v7, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$1;

    invoke-direct {v7, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 74
    invoke-direct {v3, v2, v6, v7}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v3

    .line 83
    const-class v6, Ljava/lang/String;

    .line 87
    new-array v6, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 88
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 89
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_1

    .line 88
    sget-object v7, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$2;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 91
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 92
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v5, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 91
    invoke-direct {v8, v9, v3}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 88
    :cond_1
    aput-object v7, v6, v5

    .line 76
    new-instance v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$3;

    invoke-direct {v3, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 100
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    move-object v3, v7

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 125
    :goto_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getNotificationChannelGroupsAsync"

    .line 127
    new-array v3, v5, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v6, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$4;

    invoke-direct {v6, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$4;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 129
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 154
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "setNotificationChannelGroupAsync"

    .line 156
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v3

    .line 159
    const-class v6, Ljava/lang/String;

    .line 160
    const-class v6, Lexpo/modules/core/arguments/ReadableArguments;

    const/4 v6, 0x2

    .line 164
    new-array v6, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 165
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 166
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_2

    .line 165
    sget-object v7, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$5;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 168
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 169
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v5, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 168
    invoke-direct {v8, v9, v3}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 165
    :cond_2
    aput-object v7, v6, v5

    .line 177
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 178
    new-instance v8, Lkotlin/Pair;

    const-class v9, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_3

    .line 177
    sget-object v7, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$6;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$6;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 180
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 181
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v5, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 180
    invoke-direct {v8, v9, v3}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 177
    :cond_3
    aput-object v7, v6, v4

    .line 156
    new-instance v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$7;

    invoke-direct {v3, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$7;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 190
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 216
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "deleteNotificationChannelGroupAsync"

    .line 218
    const-class v3, Ljava/lang/String;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 219
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v4, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 225
    new-instance v5, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$8;

    invoke-direct {v5, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$8;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 219
    invoke-direct {v3, v2, v4, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_2

    .line 221
    :cond_4
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v3

    .line 228
    const-class v6, Ljava/lang/String;

    .line 232
    new-array v4, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 233
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 234
    new-instance v7, Lkotlin/Pair;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_5

    .line 233
    sget-object v6, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$9;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$9;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 236
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 237
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v5, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 236
    invoke-direct {v7, v8, v3}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v6, v7

    .line 233
    :cond_5
    aput-object v6, v4, v5

    .line 221
    new-instance v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$10;

    invoke-direct {v3, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$7$$inlined$AsyncFunction$10;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 248
    const-class v5, Lkotlin/Unit;

    .line 249
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 252
    new-instance v5, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v5, v2, v4, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_1
    move-object v3, v5

    goto :goto_2

    .line 254
    :cond_6
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 256
    new-instance v5, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v5, v2, v4, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 258
    :cond_7
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 260
    new-instance v5, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v5, v2, v4, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 262
    :cond_8
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 264
    new-instance v5, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v5, v2, v4, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 266
    :cond_9
    const-class v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 268
    new-instance v5, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v5, v2, v4, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 270
    :cond_a
    new-instance v5, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v5, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 271
    :goto_2
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public getChannelProvider(Lexpo/modules/kotlin/ModuleRegistry;)Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor$DefaultImpls;->getChannelProvider(Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor;Lexpo/modules/kotlin/ModuleRegistry;)Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;

    move-result-object p1

    return-object p1
.end method
