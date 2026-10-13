.class public final Lexpo/modules/location/services/LocationTaskService;
.super Landroid/app/Service;
.source "LocationTaskService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/location/services/LocationTaskService$Companion;,
        Lexpo/modules/location/services/LocationTaskService$ServiceBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocationTaskService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocationTaskService.kt\nexpo/modules/location/services/LocationTaskService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n1#2:141\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 %2\u00020\u0001:\u0002$%B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000bH\u0017J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\tJ\u0006\u0010\u0017\u001a\u00020\u0015J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u000e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cJ\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u001cH\u0003J\u0012\u0010\u001f\u001a\u00020\u00152\u0008\u0010 \u001a\u0004\u0018\u00010\u0005H\u0003J\u0019\u0010!\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0002\u0010#R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lexpo/modules/location/services/LocationTaskService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "mChannelId",
        "",
        "mKillService",
        "",
        "mParentContext",
        "Landroid/content/Context;",
        "mServiceId",
        "",
        "mBinder",
        "Landroid/os/IBinder;",
        "onBind",
        "intent",
        "Landroid/content/Intent;",
        "onStartCommand",
        "flags",
        "startId",
        "setParentContext",
        "",
        "context",
        "stop",
        "onTaskRemoved",
        "rootIntent",
        "startForeground",
        "serviceOptions",
        "Landroid/os/Bundle;",
        "buildServiceNotification",
        "Landroid/app/Notification;",
        "prepareChannel",
        "id",
        "colorStringToInteger",
        "color",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "ServiceBinder",
        "Companion",
        "expo-location_release"
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
.field public static final Companion:Lexpo/modules/location/services/LocationTaskService$Companion;

.field public static final META_DATA_FOREGROUND_SERVICE_ICON_KEY:Ljava/lang/String; = "expo.modules.location.foreground_service_icon"

.field private static sServiceId:I


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mChannelId:Ljava/lang/String;

.field private mKillService:Z

.field private mParentContext:Landroid/content/Context;

.field private final mServiceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/location/services/LocationTaskService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/location/services/LocationTaskService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/location/services/LocationTaskService;->Companion:Lexpo/modules/location/services/LocationTaskService$Companion;

    const v0, 0x759dc

    .line 135
    sput v0, Lexpo/modules/location/services/LocationTaskService;->sServiceId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    sget v0, Lexpo/modules/location/services/LocationTaskService;->sServiceId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lexpo/modules/location/services/LocationTaskService;->sServiceId:I

    iput v0, p0, Lexpo/modules/location/services/LocationTaskService;->mServiceId:I

    .line 23
    new-instance v0, Lexpo/modules/location/services/LocationTaskService$ServiceBinder;

    invoke-direct {v0, p0}, Lexpo/modules/location/services/LocationTaskService$ServiceBinder;-><init>(Lexpo/modules/location/services/LocationTaskService;)V

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Lexpo/modules/location/services/LocationTaskService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private final buildServiceNotification(Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 9

    .line 70
    const-string v0, "expo.modules.location.foreground_service_icon"

    iget-object v1, p0, Lexpo/modules/location/services/LocationTaskService;->mChannelId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lexpo/modules/location/services/LocationTaskService;->prepareChannel(Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/app/Notification$Builder;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lexpo/modules/location/services/LocationTaskService;->mChannelId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    const-string v3, "notificationTitle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    const-string v4, "notificationBody"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    const-string v5, "notificationColor"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lexpo/modules/location/services/LocationTaskService;->colorStringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz v3, :cond_0

    .line 76
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_0
    if-eqz v4, :cond_1

    .line 77
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 78
    move-object v5, p1

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 79
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    if-nez p1, :cond_3

    .line 80
    :cond_2
    move-object p1, p0

    check-cast p1, Lexpo/modules/location/services/LocationTaskService;

    .line 81
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string v5, "setColorized(...)"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    :cond_3
    iget-object p1, p0, Lexpo/modules/location/services/LocationTaskService;->mParentContext:Landroid/content/Context;

    const/4 v5, 0x0

    const-string v6, "mParentContext"

    if-nez p1, :cond_4

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v7, p0, Lexpo/modules/location/services/LocationTaskService;->mParentContext:Landroid/content/Context;

    if-nez v7, :cond_5

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v5

    :cond_5
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    const/high16 v7, 0x20000000

    .line 85
    invoke-virtual {p1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1f

    if-lt v7, v8, :cond_6

    const/high16 v7, 0x2000000

    goto :goto_0

    :cond_6
    move v7, v4

    :goto_0
    const/high16 v8, 0x8000000

    or-int/2addr v7, v8

    .line 88
    invoke-static {v2, v4, p1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 89
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 93
    :cond_7
    :try_start_0
    iget-object p1, p0, Lexpo/modules/location/services/LocationTaskService;->mParentContext:Landroid/content/Context;

    if-nez p1, :cond_8

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 95
    iget-object v2, p0, Lexpo/modules/location/services/LocationTaskService;->mParentContext:Landroid/content/Context;

    if-nez v2, :cond_9

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object v5, v2

    :goto_1
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    .line 94
    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-string v2, "getApplicationInfo(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_a

    .line 99
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    .line 101
    :cond_a
    invoke-virtual {p0}, Lexpo/modules/location/services/LocationTaskService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 104
    const-string v0, "Could not fetch default notification icon."

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "expo-location"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    invoke-virtual {p0}, Lexpo/modules/location/services/LocationTaskService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 108
    :goto_2
    const-string v0, "service"

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final colorStringToInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 128
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final prepareChannel(Ljava/lang/String;)V
    .locals 4

    .line 115
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lexpo/modules/location/services/LocationTaskService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/NotificationManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {p0}, Lexpo/modules/location/services/LocationTaskService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p0}, Lexpo/modules/location/services/LocationTaskService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-nez v2, :cond_2

    .line 120
    new-instance v2, Landroid/app/NotificationChannel;

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 121
    const-string p1, "Background location notification channel"

    invoke-virtual {v2, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lexpo/modules/location/services/LocationTaskService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    const-string p2, "appId"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "taskName"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lexpo/modules/location/services/LocationTaskService;->mChannelId:Ljava/lang/String;

    .line 39
    const-string p2, "killService"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lexpo/modules/location/services/LocationTaskService;->mKillService:Z

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "rootIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-boolean v0, p0, Lexpo/modules/location/services/LocationTaskService;->mKillService:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lexpo/modules/location/services/LocationTaskService;->stop()V

    :cond_0
    return-void
.end method

.method public final setParentContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lexpo/modules/location/services/LocationTaskService;->mParentContext:Landroid/content/Context;

    return-void
.end method

.method public final startForeground(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "serviceOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1}, Lexpo/modules/location/services/LocationTaskService;->buildServiceNotification(Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object p1

    .line 64
    iget v0, p0, Lexpo/modules/location/services/LocationTaskService;->mServiceId:I

    invoke-virtual {p0, v0, p1}, Lexpo/modules/location/services/LocationTaskService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lexpo/modules/location/services/LocationTaskService;->stopForeground(Z)V

    .line 52
    invoke-virtual {p0}, Lexpo/modules/location/services/LocationTaskService;->stopSelf()V

    return-void
.end method
