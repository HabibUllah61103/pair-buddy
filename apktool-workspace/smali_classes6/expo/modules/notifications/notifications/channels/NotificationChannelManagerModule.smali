.class public Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "NotificationChannelManagerModule.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationChannelManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationChannelManagerModule.kt\nexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 7 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n*L\n1#1,83:1\n69#2:84\n14#3:85\n25#3:86\n27#4,3:87\n31#4:290\n235#5:90\n236#5,2:117\n245#5,8:119\n253#5,2:171\n261#5:173\n264#5,3:232\n245#5,8:235\n253#5,2:288\n13#6,6:91\n19#6,19:98\n13#6,6:145\n19#6,19:152\n13#6,6:206\n19#6,19:213\n13#6,6:262\n19#6,19:269\n11#7:97\n11#7:151\n11#7:212\n11#7:268\n172#8,7:127\n169#8:134\n145#8,2:135\n159#8,8:137\n182#8,8:174\n169#8:182\n145#8,2:183\n159#8,8:185\n190#8:193\n169#8:194\n145#8,2:195\n159#8,8:197\n188#8:205\n172#8,7:243\n169#8:250\n145#8,2:251\n159#8,8:253\n177#8:261\n*S KotlinDebug\n*F\n+ 1 NotificationChannelManagerModule.kt\nexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule\n*L\n24#1:84\n24#1:85\n24#1:86\n24#1:87,3\n24#1:290\n27#1:90\n27#1:117,2\n37#1:119,8\n37#1:171,2\n45#1:173\n45#1:232,3\n65#1:235,8\n65#1:288,2\n27#1:91,6\n27#1:98,19\n37#1:145,6\n37#1:152,19\n45#1:206,6\n45#1:213,19\n65#1:262,6\n65#1:269,19\n27#1:97\n37#1:151\n45#1:212\n65#1:268\n37#1:127,7\n37#1:134\n37#1:135,2\n37#1:137,8\n45#1:174,8\n45#1:182\n45#1:183,2\n45#1:185,8\n45#1:193\n45#1:194\n45#1:195,2\n45#1:197,8\n45#1:205\n65#1:243,7\n65#1:250\n65#1:251,2\n65#1:253,8\n65#1:261\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015H\u0003R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor;",
        "<init>",
        "()V",
        "channelManager",
        "Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;",
        "getChannelManager",
        "()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;",
        "channelManager$delegate",
        "Lkotlin/Lazy;",
        "channelSerializer",
        "Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;",
        "getChannelSerializer",
        "()Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;",
        "channelSerializer$delegate",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "getNameFromOptions",
        "",
        "channelOptions",
        "Lexpo/modules/core/arguments/ReadableArguments;",
        "getImportanceFromOptions",
        "",
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
.field private final channelManager$delegate:Lkotlin/Lazy;

.field private final channelSerializer$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$24BvRblmiAiVAisDH_LXoCuZsE4(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;
    .locals 0

    invoke-static {p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->channelManager_delegate$lambda$0(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y2QdQ9TMjW1HSHjSOkqnxsdZMT0(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;
    .locals 0

    invoke-static {p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->channelSerializer_delegate$lambda$1(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 17
    new-instance v0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->channelManager$delegate:Lkotlin/Lazy;

    .line 20
    new-instance v0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->channelSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getChannelManager(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;
    .locals 0

    .line 16
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->getChannelManager()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getChannelSerializer(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;
    .locals 0

    .line 16
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->getChannelSerializer()Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getImportanceFromOptions(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;Lexpo/modules/core/arguments/ReadableArguments;)I
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->getImportanceFromOptions(Lexpo/modules/core/arguments/ReadableArguments;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getNameFromOptions(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/CharSequence;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->getNameFromOptions(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static final channelManager_delegate$lambda$0(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->getChannelProvider(Lexpo/modules/kotlin/ModuleRegistry;)Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;

    move-result-object p0

    invoke-interface {p0}, Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;->getChannelManager()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

    move-result-object p0

    return-object p0
.end method

.method private static final channelSerializer_delegate$lambda$1(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->getChannelProvider(Lexpo/modules/kotlin/ModuleRegistry;)Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;

    move-result-object p0

    invoke-interface {p0}, Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;->getChannelSerializer()Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    move-result-object p0

    return-object p0
.end method

.method private final getChannelManager()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;
    .locals 1

    .line 17
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->channelManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

    return-object v0
.end method

.method private final getChannelSerializer()Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;
    .locals 1

    .line 20
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->channelSerializer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    return-object v0
.end method

.method private final getImportanceFromOptions(Lexpo/modules/core/arguments/ReadableArguments;)I
    .locals 2

    .line 78
    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->DEFAULT:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->getEnumValue()I

    move-result v0

    const-string v1, "importance"

    invoke-interface {p1, v1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 79
    invoke-static {p1}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->fromEnumValue(I)Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    .line 80
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->getNativeValue()I

    move-result p1

    return p1
.end method

.method private final getNameFromOptions(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/CharSequence;
    .locals 1

    .line 73
    const-string v0, "name"

    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 11

    .line 24
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 84
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

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 84
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 25
    const-string v0, "ExpoNotificationChannelManager"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 27
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getNotificationChannelsAsync"

    const/4 v3, 0x0

    .line 90
    new-array v4, v3, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v5, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$1;

    invoke-direct {v5, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 94
    const-class v6, Ljava/util/List;

    .line 95
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v5}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 100
    :cond_0
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 102
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v5}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 104
    :cond_1
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 106
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v5}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 108
    :cond_2
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 110
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v5}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 112
    :cond_3
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 114
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v5}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 116
    :cond_4
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v5}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 117
    :goto_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getNotificationChannelAsync"

    .line 119
    const-class v4, Ljava/lang/String;

    const-class v5, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 120
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v6, v3, [Lexpo/modules/kotlin/types/AnyType;

    .line 126
    new-instance v7, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$2;

    invoke-direct {v7, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$2;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 120
    invoke-direct {v4, v2, v6, v7}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 122
    :cond_5
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 129
    const-class v6, Ljava/lang/String;

    .line 133
    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 134
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 135
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_6

    .line 134
    sget-object v7, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$3;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$3;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 137
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 138
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v3, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 137
    invoke-direct {v8, v9, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 134
    :cond_6
    aput-object v7, v6, v3

    .line 122
    new-instance v4, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$4;

    invoke-direct {v4, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$4;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 146
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    move-object v4, v7

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 171
    :goto_1
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "setNotificationChannelAsync"

    .line 173
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 176
    const-class v6, Ljava/lang/String;

    .line 177
    const-class v6, Lexpo/modules/core/arguments/ReadableArguments;

    const/4 v6, 0x2

    .line 181
    new-array v6, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 182
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 183
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_7

    .line 182
    sget-object v7, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$5;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 185
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 186
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v3, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 185
    invoke-direct {v8, v9, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 182
    :cond_7
    aput-object v7, v6, v3

    .line 194
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 195
    new-instance v8, Lkotlin/Pair;

    const-class v9, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_8

    .line 194
    sget-object v7, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$6;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$6;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 197
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 198
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v3, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 197
    invoke-direct {v8, v9, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 194
    :cond_8
    aput-object v7, v6, v5

    .line 173
    new-instance v4, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$7;

    invoke-direct {v4, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$7;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 207
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 233
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "deleteNotificationChannelAsync"

    .line 235
    const-class v4, Ljava/lang/String;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 236
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v3, v3, [Lexpo/modules/kotlin/types/AnyType;

    .line 242
    new-instance v5, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$8;

    invoke-direct {v5, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$8;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 236
    invoke-direct {v4, v2, v3, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_2

    .line 238
    :cond_9
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 245
    const-class v6, Ljava/lang/String;

    .line 249
    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 250
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 251
    new-instance v7, Lkotlin/Pair;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_a

    .line 250
    sget-object v6, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$9;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$9;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 253
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 254
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v3, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 253
    invoke-direct {v7, v8, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v6, v7

    .line 250
    :cond_a
    aput-object v6, v5, v3

    .line 238
    new-instance v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$10;

    invoke-direct {v3, p0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$10;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 265
    const-class v4, Lkotlin/Unit;

    .line 266
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 269
    new-instance v4, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v4, v2, v5, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 271
    :cond_b
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 273
    new-instance v4, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v4, v2, v5, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 275
    :cond_c
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 277
    new-instance v4, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v4, v2, v5, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 279
    :cond_d
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 281
    new-instance v4, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v4, v2, v5, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 283
    :cond_e
    const-class v6, Ljava/lang/String;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 285
    new-instance v4, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v4, v2, v5, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 287
    :cond_f
    new-instance v4, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v4, v2, v5, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 288
    :goto_2
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public getChannelProvider(Lexpo/modules/kotlin/ModuleRegistry;)Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor$DefaultImpls;->getChannelProvider(Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor;Lexpo/modules/kotlin/ModuleRegistry;)Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;

    move-result-object p1

    return-object p1
.end method
