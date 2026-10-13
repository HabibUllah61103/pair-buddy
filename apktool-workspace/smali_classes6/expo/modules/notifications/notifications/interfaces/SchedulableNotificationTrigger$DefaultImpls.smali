.class public final Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger$DefaultImpls;
.super Ljava/lang/Object;
.source "SchedulableNotificationTrigger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;
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
.method public static getNotificationChannel(Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;)Ljava/lang/String;
    .locals 0

    .line 11
    check-cast p0, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    invoke-static {p0}, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger$DefaultImpls;->getNotificationChannel(Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
