.class public interface abstract Lexpo/modules/notifications/notifications/interfaces/NotificationListener;
.super Ljava/lang/Object;
.source "NotificationListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/notifications/interfaces/NotificationListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/interfaces/NotificationListener;",
        "",
        "onNotificationReceived",
        "",
        "notification",
        "Lexpo/modules/notifications/notifications/model/Notification;",
        "onNotificationResponseReceived",
        "",
        "response",
        "Lexpo/modules/notifications/notifications/model/NotificationResponse;",
        "onNotificationResponseIntentReceived",
        "extras",
        "Landroid/os/Bundle;",
        "onNotificationsDropped",
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


# virtual methods
.method public abstract onNotificationReceived(Lexpo/modules/notifications/notifications/model/Notification;)V
.end method

.method public abstract onNotificationResponseIntentReceived(Landroid/os/Bundle;)V
.end method

.method public abstract onNotificationResponseReceived(Lexpo/modules/notifications/notifications/model/NotificationResponse;)Z
.end method

.method public abstract onNotificationsDropped()V
.end method
