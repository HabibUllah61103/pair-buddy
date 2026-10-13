.class public final Lexpo/modules/notifications/notifications/interfaces/NotificationListener$DefaultImpls;
.super Ljava/lang/Object;
.source "NotificationListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/notifications/notifications/interfaces/NotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onNotificationReceived(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;Lexpo/modules/notifications/notifications/model/Notification;)V
    .locals 0

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onNotificationResponseIntentReceived(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "extras"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onNotificationResponseReceived(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;Lexpo/modules/notifications/notifications/model/NotificationResponse;)Z
    .locals 0

    const-string p0, "response"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static onNotificationsDropped(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;)V
    .locals 0

    return-void
.end method
