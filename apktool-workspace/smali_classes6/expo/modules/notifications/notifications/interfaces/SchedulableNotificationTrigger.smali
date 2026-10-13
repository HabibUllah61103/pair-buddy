.class public interface abstract Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;
.super Ljava/lang/Object;
.source "SchedulableNotificationTrigger.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u00012\u00020\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H&\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;",
        "Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;",
        "Ljava/io/Serializable;",
        "nextTriggerDate",
        "Ljava/util/Date;",
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
.method public abstract nextTriggerDate()Ljava/util/Date;
.end method
