.class public final Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;
.super Lexpo/modules/kotlin/modules/Module;
.source "AndroidXNotificationsChannelsProvider.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidXNotificationsChannelsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidXNotificationsChannelsProvider.kt\nexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n*L\n1#1,34:1\n69#2:35\n14#3:36\n25#3:37\n27#4,5:38\n*S KotlinDebug\n*F\n+ 1 AndroidXNotificationsChannelsProvider.kt\nexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider\n*L\n14#1:35\n14#1:36\n14#1:37\n14#1:38,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u001b\u0010\u0007\u001a\u00020\u00088VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0012\u001a\u00020\u00138VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000c\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u0017\u001a\u00020\u00188VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u000c\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;",
        "Lexpo/modules/kotlin/modules/Module;",
        "Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;",
        "<init>",
        "()V",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "groupManager",
        "Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;",
        "getGroupManager",
        "()Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;",
        "groupManager$delegate",
        "Lkotlin/Lazy;",
        "channelManager",
        "Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;",
        "getChannelManager",
        "()Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;",
        "channelManager$delegate",
        "channelSerializer",
        "Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;",
        "getChannelSerializer",
        "()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;",
        "channelSerializer$delegate",
        "groupSerializer",
        "Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;",
        "getGroupSerializer",
        "()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;",
        "groupSerializer$delegate",
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

.field private final groupManager$delegate:Lkotlin/Lazy;

.field private final groupSerializer$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2FwdIMniu5JoidVdBWSluCF00fw()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;
    .locals 1

    invoke-static {}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->channelSerializer_delegate$lambda$3()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$TBjhP44LoaisXdtr29R_xYSI-mI(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;
    .locals 0

    invoke-static {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->groupSerializer_delegate$lambda$4(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a5JZgAt21wsuRQMoxnmquPo8sxA(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;
    .locals 0

    invoke-static {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->channelManager_delegate$lambda$2(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lHgUsPbsmm0n6QIhshDxKWEPRGU(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;
    .locals 0

    invoke-static {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->groupManager_delegate$lambda$1(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 18
    new-instance v0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->groupManager$delegate:Lkotlin/Lazy;

    .line 22
    new-instance v0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->channelManager$delegate:Lkotlin/Lazy;

    .line 26
    new-instance v0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->channelSerializer$delegate:Lkotlin/Lazy;

    .line 30
    new-instance v0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->groupSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final channelManager_delegate$lambda$2(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;
    .locals 2

    .line 23
    new-instance v0, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->getGroupManager()Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;

    move-result-object p0

    check-cast p0, Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;

    invoke-direct {v0, v1, p0}, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;-><init>(Landroid/content/Context;Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;)V

    return-object v0
.end method

.method private static final channelSerializer_delegate$lambda$3()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;
    .locals 1

    .line 27
    new-instance v0, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;-><init>()V

    return-object v0
.end method

.method private static final groupManager_delegate$lambda$1(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;
    .locals 1

    .line 19
    new-instance v0, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p0

    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final groupSerializer_delegate$lambda$4(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;
    .locals 1

    .line 31
    new-instance v0, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->getChannelSerializer()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;

    move-result-object p0

    check-cast p0, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;-><init>(Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;)V

    return-object v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 4

    .line 14
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 35
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

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 35
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 15
    const-string v0, "NotificationsChannelsProvider"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public getChannelManager()Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;
    .locals 1

    .line 22
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->channelManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;

    return-object v0
.end method

.method public bridge synthetic getChannelManager()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->getChannelManager()Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

    return-object v0
.end method

.method public getChannelSerializer()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->channelSerializer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;

    return-object v0
.end method

.method public bridge synthetic getChannelSerializer()Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->getChannelSerializer()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    return-object v0
.end method

.method public getGroupManager()Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;
    .locals 1

    .line 18
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->groupManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;

    return-object v0
.end method

.method public bridge synthetic getGroupManager()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->getGroupManager()Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;

    return-object v0
.end method

.method public getGroupSerializer()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->groupSerializer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;

    return-object v0
.end method

.method public bridge synthetic getGroupSerializer()Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->getGroupSerializer()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;

    return-object v0
.end method
