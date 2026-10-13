.class public final Lexpo/modules/notifications/service/NotificationForwarderActivity;
.super Landroid/app/Activity;
.source "NotificationForwarderActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0012\u0010\u0008\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/notifications/service/NotificationForwarderActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    :try_start_0
    sget-object p1, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    invoke-virtual {p0}, Lexpo/modules/notifications/service/NotificationForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lexpo/modules/notifications/service/NotificationForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lexpo/modules/notifications/service/NotificationsService$Companion;->createNotificationResponseBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 21
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    invoke-virtual {p0}, Lexpo/modules/notifications/service/NotificationForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "getIntent(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lexpo/modules/notifications/service/NotificationsService$Companion;->getNotificationResponseFromBroadcastIntent(Landroid/content/Intent;)Lexpo/modules/notifications/notifications/model/NotificationResponse;

    move-result-object v0

    .line 22
    sget-object v1, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;->openAppToForeground(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/NotificationResponse;)V

    .line 23
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationForwarderActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    const-string v0, "Failed to handle notification response: could not recover notification data from intent extras. This may happen on some Android versions. Opening app to foreground."

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "expo-notifications"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    invoke-virtual {p0}, Lexpo/modules/notifications/service/NotificationForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lexpo/modules/notifications/service/NotificationForwarderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationForwarderActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lexpo/modules/notifications/service/NotificationForwarderActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method
