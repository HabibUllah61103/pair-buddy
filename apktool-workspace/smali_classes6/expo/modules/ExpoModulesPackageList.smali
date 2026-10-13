.class public final Lexpo/modules/ExpoModulesPackageList;
.super Ljava/lang/Object;
.source "ExpoModulesPackageList.kt"

# interfaces
.implements Lexpo/modules/kotlin/ModulesProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ExpoModulesPackageList$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0018\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0005H\u0016J\u0016\u0010\t\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b0\u00060\nH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/ExpoModulesPackageList;",
        "Lexpo/modules/kotlin/ModulesProvider;",
        "<init>",
        "()V",
        "getModulesMap",
        "",
        "Ljava/lang/Class;",
        "Lexpo/modules/kotlin/modules/Module;",
        "",
        "getServices",
        "",
        "Lexpo/modules/kotlin/services/Service;",
        "Companion",
        "expo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/ExpoModulesPackageList$Companion;

.field private static final modulesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lexpo/modules/kotlin/modules/Module;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final packagesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lexpo/modules/ExpoModulesPackageList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/ExpoModulesPackageList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/ExpoModulesPackageList;->Companion:Lexpo/modules/ExpoModulesPackageList$Companion;

    const/16 v0, 0x9

    .line 10
    new-array v2, v0, [Lexpo/modules/core/interfaces/Package;

    new-instance v3, Lexpo/modules/logbox/ExpoLogBoxPackage;

    invoke-direct {v3}, Lexpo/modules/logbox/ExpoLogBoxPackage;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 11
    new-instance v3, Lexpo/modules/linking/ExpoLinkingPackage;

    invoke-direct {v3}, Lexpo/modules/linking/ExpoLinkingPackage;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 12
    new-instance v3, Lexpo/modules/localization/LocalizationPackage;

    invoke-direct {v3}, Lexpo/modules/localization/LocalizationPackage;-><init>()V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 13
    new-instance v3, Lexpo/modules/adapters/react/ReactAdapterPackage;

    invoke-direct {v3}, Lexpo/modules/adapters/react/ReactAdapterPackage;-><init>()V

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 14
    new-instance v3, Lexpo/modules/core/BasePackage;

    invoke-direct {v3}, Lexpo/modules/core/BasePackage;-><init>()V

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 15
    new-instance v3, Lexpo/modules/kotlin/edgeToEdge/EdgeToEdgePackage;

    invoke-direct {v3}, Lexpo/modules/kotlin/edgeToEdge/EdgeToEdgePackage;-><init>()V

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 16
    new-instance v3, Lexpo/modules/navigationbar/NavigationBarPackage;

    invoke-direct {v3}, Lexpo/modules/navigationbar/NavigationBarPackage;-><init>()V

    const/4 v10, 0x6

    aput-object v3, v2, v10

    .line 17
    new-instance v3, Lexpo/modules/notifications/NotificationsPackage;

    invoke-direct {v3}, Lexpo/modules/notifications/NotificationsPackage;-><init>()V

    const/4 v11, 0x7

    aput-object v3, v2, v11

    .line 18
    new-instance v3, Lexpo/modules/taskManager/TaskManagerPackage;

    invoke-direct {v3}, Lexpo/modules/taskManager/TaskManagerPackage;-><init>()V

    const/16 v12, 0x8

    aput-object v3, v2, v12

    .line 9
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lexpo/modules/ExpoModulesPackageList;->packagesList:Ljava/util/List;

    const/16 v2, 0x2b

    .line 22
    new-array v2, v2, [Lkotlin/Pair;

    const-class v3, Lexpo/modules/webview/DomWebViewModule;

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v4

    .line 23
    const-class v3, Lexpo/modules/ui/ExpoUIModule;

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v5

    .line 24
    const-class v3, Lexpo/modules/fetch/ExpoFetchModule;

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v6

    .line 25
    const-class v3, Lexpo/modules/application/ApplicationModule;

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v7

    .line 26
    const-class v3, Lexpo/modules/asset/AssetModule;

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    .line 27
    const-class v3, Lexpo/modules/blur/BlurModule;

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    .line 28
    const-class v3, Lexpo/modules/clipboard/ClipboardModule;

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v10

    .line 29
    const-class v3, Lexpo/modules/constants/ConstantsModule;

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v11

    .line 30
    const-class v3, Lexpo/modules/device/DeviceModule;

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v12

    .line 31
    const-class v3, Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v0

    .line 32
    const-class v0, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0xa

    aput-object v0, v2, v3

    .line 33
    const-class v0, Lexpo/modules/font/FontLoaderModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0xb

    aput-object v0, v2, v3

    .line 34
    const-class v0, Lexpo/modules/font/FontUtilsModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0xc

    aput-object v0, v2, v3

    .line 35
    const-class v0, Lexpo/modules/image/ExpoImageModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0xd

    aput-object v0, v2, v3

    .line 36
    const-class v0, Lexpo/modules/imagemanipulator/ImageManipulatorModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0xe

    aput-object v0, v2, v3

    .line 37
    const-class v0, Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0xf

    aput-object v0, v2, v3

    .line 38
    const-class v0, Lexpo/modules/keepawake/KeepAwakeModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x10

    aput-object v0, v2, v3

    .line 39
    const-class v0, Lexpo/modules/lineargradient/LinearGradientModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x11

    aput-object v0, v2, v3

    .line 40
    const-class v0, Lexpo/modules/linking/ExpoLinkingModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x12

    aput-object v0, v2, v3

    .line 41
    const-class v0, Lexpo/modules/localization/LocalizationModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x13

    aput-object v0, v2, v3

    .line 42
    const-class v0, Lexpo/modules/location/LocationModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x14

    aput-object v0, v2, v3

    .line 43
    const-class v0, Lexpo/modules/navigationbar/NavigationBarModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x15

    aput-object v0, v2, v3

    .line 44
    const-class v0, Lexpo/modules/notifications/badge/BadgeModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x16

    aput-object v0, v2, v3

    .line 45
    const-class v0, Lexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x17

    aput-object v0, v2, v3

    .line 46
    const-class v0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x18

    aput-object v0, v2, v3

    .line 47
    const-class v0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x19

    aput-object v0, v2, v3

    .line 48
    const-class v0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1a

    aput-object v0, v2, v3

    .line 49
    const-class v0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1b

    aput-object v0, v2, v3

    .line 50
    const-class v0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1c

    aput-object v0, v2, v3

    .line 51
    const-class v0, Lexpo/modules/notifications/permissions/NotificationPermissionsModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1d

    aput-object v0, v2, v3

    .line 52
    const-class v0, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1e

    aput-object v0, v2, v3

    .line 53
    const-class v0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1f

    aput-object v0, v2, v3

    .line 54
    const-class v0, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x20

    aput-object v0, v2, v3

    .line 55
    const-class v0, Lexpo/modules/notifications/tokens/PushTokenModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x21

    aput-object v0, v2, v3

    .line 56
    const-class v0, Lexpo/modules/notifications/topics/TopicSubscriptionModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x22

    aput-object v0, v2, v3

    .line 57
    const-class v0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x23

    aput-object v0, v2, v3

    .line 58
    const-class v0, Lexpo/modules/router/ExpoRouterModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x24

    aput-object v0, v2, v3

    .line 59
    const-class v0, Lexpo/modules/securestore/SecureStoreModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x25

    aput-object v0, v2, v3

    .line 60
    const-class v0, Lexpo/modules/splashscreen/SplashScreenModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x26

    aput-object v0, v2, v3

    .line 61
    const-class v0, Lexpo/modules/storereview/StoreReviewModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x27

    aput-object v0, v2, v3

    .line 62
    const-class v0, Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x28

    aput-object v0, v2, v3

    .line 63
    const-class v0, Lexpo/modules/taskManager/TaskManagerModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x29

    aput-object v0, v2, v3

    .line 64
    const-class v0, Lexpo/modules/video/VideoModule;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, v2, v1

    .line 21
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lexpo/modules/ExpoModulesPackageList;->modulesMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getModulesMap$cp()Ljava/util/Map;
    .locals 1

    .line 7
    sget-object v0, Lexpo/modules/ExpoModulesPackageList;->modulesMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getPackagesList$cp()Ljava/util/List;
    .locals 1

    .line 7
    sget-object v0, Lexpo/modules/ExpoModulesPackageList;->packagesList:Ljava/util/List;

    return-object v0
.end method

.method public static final getPackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/Package;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lexpo/modules/ExpoModulesPackageList;->Companion:Lexpo/modules/ExpoModulesPackageList$Companion;

    invoke-virtual {v0}, Lexpo/modules/ExpoModulesPackageList$Companion;->getPackageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getModulesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lexpo/modules/kotlin/modules/Module;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Lexpo/modules/ExpoModulesPackageList;->modulesMap:Ljava/util/Map;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lexpo/modules/kotlin/services/Service;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 79
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lexpo/modules/constants/ConstantsService;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 80
    const-class v2, Lexpo/modules/imageloader/ImageLoaderService;

    aput-object v2, v0, v1

    .line 78
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
