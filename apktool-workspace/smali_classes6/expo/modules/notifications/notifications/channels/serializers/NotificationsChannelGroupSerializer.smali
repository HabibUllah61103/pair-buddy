.class public interface abstract Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;
.super Ljava/lang/Object;
.source "NotificationsChannelGroupSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;",
        "",
        "toBundle",
        "Landroid/os/Bundle;",
        "group",
        "Landroid/app/NotificationChannelGroup;",
        "Companion",
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


# static fields
.field public static final CHANNELS_KEY:Ljava/lang/String; = "channels"

.field public static final Companion:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer$Companion;

.field public static final DESCRIPTION_KEY:Ljava/lang/String; = "description"

.field public static final ID_KEY:Ljava/lang/String; = "id"

.field public static final IS_BLOCKED_KEY:Ljava/lang/String; = "isBlocked"

.field public static final NAME_KEY:Ljava/lang/String; = "name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer$Companion;->$$INSTANCE:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer$Companion;

    sput-object v0, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;->Companion:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer$Companion;

    return-void
.end method


# virtual methods
.method public abstract toBundle(Landroid/app/NotificationChannelGroup;)Landroid/os/Bundle;
.end method
