.class public interface abstract Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;
.super Ljava/lang/Object;
.source "NotificationsChannelSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;",
        "",
        "toBundle",
        "Landroid/os/Bundle;",
        "channel",
        "Landroid/app/NotificationChannel;",
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
.field public static final AUDIO_ATTRIBUTES_CONTENT_TYPE_KEY:Ljava/lang/String; = "contentType"

.field public static final AUDIO_ATTRIBUTES_FLAGS_ENFORCE_AUDIBILITY_KEY:Ljava/lang/String; = "enforceAudibility"

.field public static final AUDIO_ATTRIBUTES_FLAGS_HW_AV_SYNC_KEY:Ljava/lang/String; = "requestHardwareAudioVideoSynchronization"

.field public static final AUDIO_ATTRIBUTES_FLAGS_KEY:Ljava/lang/String; = "flags"

.field public static final AUDIO_ATTRIBUTES_USAGE_KEY:Ljava/lang/String; = "usage"

.field public static final BYPASS_DND_KEY:Ljava/lang/String; = "bypassDnd"

.field public static final Companion:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer$Companion;

.field public static final DESCRIPTION_KEY:Ljava/lang/String; = "description"

.field public static final ENABLE_LIGHTS_KEY:Ljava/lang/String; = "enableLights"

.field public static final ENABLE_VIBRATE_KEY:Ljava/lang/String; = "enableVibrate"

.field public static final GROUP_ID_KEY:Ljava/lang/String; = "groupId"

.field public static final ID_KEY:Ljava/lang/String; = "id"

.field public static final IMPORTANCE_KEY:Ljava/lang/String; = "importance"

.field public static final LIGHT_COLOR_KEY:Ljava/lang/String; = "lightColor"

.field public static final LOCKSCREEN_VISIBILITY_KEY:Ljava/lang/String; = "lockscreenVisibility"

.field public static final NAME_KEY:Ljava/lang/String; = "name"

.field public static final SHOW_BADGE_KEY:Ljava/lang/String; = "showBadge"

.field public static final SOUND_AUDIO_ATTRIBUTES_KEY:Ljava/lang/String; = "audioAttributes"

.field public static final SOUND_KEY:Ljava/lang/String; = "sound"

.field public static final VIBRATION_PATTERN_KEY:Ljava/lang/String; = "vibrationPattern"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer$Companion;->$$INSTANCE:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer$Companion;

    sput-object v0, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;->Companion:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer$Companion;

    return-void
.end method


# virtual methods
.method public abstract toBundle(Landroid/app/NotificationChannel;)Landroid/os/Bundle;
.end method
