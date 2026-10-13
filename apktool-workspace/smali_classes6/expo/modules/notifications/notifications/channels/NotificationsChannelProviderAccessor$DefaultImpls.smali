.class public final Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor$DefaultImpls;
.super Ljava/lang/Object;
.source "NotificationsChannelProviderAccessor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor;
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
.method public static getChannelProvider(Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor;Lexpo/modules/kotlin/ModuleRegistry;)Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;
    .locals 0

    const-string p0, "registry"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string p0, "NotificationsChannelsProvider"

    invoke-virtual {p1, p0}, Lexpo/modules/kotlin/ModuleRegistry;->getModule(Ljava/lang/String;)Lexpo/modules/kotlin/modules/Module;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type expo.modules.notifications.notifications.channels.NotificationsChannelsProvider"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lexpo/modules/notifications/notifications/channels/NotificationsChannelsProvider;

    return-object p0
.end method
