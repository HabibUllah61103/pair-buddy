.class public final Lexpo/modules/notifications/service/delegates/ExpoNotificationLifecycleListener;
.super Ljava/lang/Object;
.source "ExpoNotificationLifecycleListener.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\tH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/notifications/service/delegates/ExpoNotificationLifecycleListener;",
        "Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "isFCMIntent",
        "extras",
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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isFCMIntent(Landroid/os/Bundle;)Z
    .locals 1

    .line 67
    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    const-string p2, "notificationResponse"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "textInputNotificationResponse"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0, p1}, Lexpo/modules/notifications/service/delegates/ExpoNotificationLifecycleListener;->isFCMIntent(Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 32
    :cond_2
    const-string p2, "ExpoNotificationLifeCycleListener.onCreate:"

    invoke-static {p2, p1}, Lexpo/modules/notifications/notifications/debug/DebugLogging;->logBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 33
    sget-object p2, Lexpo/modules/notifications/notifications/NotificationManager;->INSTANCE:Lexpo/modules/notifications/notifications/NotificationManager;

    invoke-virtual {p2, p1}, Lexpo/modules/notifications/notifications/NotificationManager;->onNotificationResponseFromExtras(Landroid/os/Bundle;)V

    return-void

    .line 26
    :cond_3
    :goto_0
    const-string p1, "ReactNativeJS"

    const-string p2, "[native] ExpoNotificationLifecycleListener contains an unmarshalled notification response. Skipping."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 5

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 45
    const-string v2, "notificationResponse"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "textInputNotificationResponse"

    if-nez v3, :cond_2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0, v0}, Lexpo/modules/notifications/service/delegates/ExpoNotificationLifecycleListener;->isFCMIntent(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 55
    :cond_1
    const-string p1, "ExpoNotificationLifeCycleListener.onNewIntent:"

    invoke-static {p1, v0}, Lexpo/modules/notifications/notifications/debug/DebugLogging;->logBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 56
    sget-object p1, Lexpo/modules/notifications/notifications/NotificationManager;->INSTANCE:Lexpo/modules/notifications/notifications/NotificationManager;

    invoke-virtual {p1, v0}, Lexpo/modules/notifications/notifications/NotificationManager;->onNotificationResponseFromExtras(Landroid/os/Bundle;)V

    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v1
.end method
