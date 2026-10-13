.class public interface abstract Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor;
.super Ljava/lang/Object;
.source "NotificationsChannelProviderAccessor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor;",
        "",
        "getChannelProvider",
        "Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;",
        "registry",
        "Lexpo/modules/kotlin/ModuleRegistry;",
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
.method public abstract getChannelProvider(Lexpo/modules/kotlin/ModuleRegistry;)Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;
.end method
