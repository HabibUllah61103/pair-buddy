.class public final Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$7;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 NotificationChannelManagerModule.kt\nexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule\n*L\n1#1,613:1\n18#2:614\n46#3,17:615\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n*L\n262#1:614\n*E\n"
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


# instance fields
.field final synthetic this$0:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;


# direct methods
.method public constructor <init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 261
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$7;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 263
    check-cast p1, Lexpo/modules/core/arguments/ReadableArguments;

    check-cast v0, Ljava/lang/String;

    .line 616
    iget-object v1, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;

    invoke-static {v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->access$getChannelManager(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;->customSoundExists(Lexpo/modules/core/arguments/ReadableArguments;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 617
    iget-object v1, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;

    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getJsLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 618
    const-string v2, "sound"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "expo-notifications: Custom sound \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' not found in native app. Make sure the sound file (e.g. \'custom_sound.wav\') is included in the expo-notifications config plugin sounds array in app config."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    .line 617
    invoke-static {v1, v2, v3, v4, v3}, Lexpo/modules/core/logging/Logger;->error$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 622
    :cond_0
    iget-object v1, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;

    invoke-static {v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->access$getChannelManager(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

    move-result-object v1

    .line 624
    iget-object v2, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;

    invoke-static {v2, p1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->access$getNameFromOptions(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 625
    iget-object v3, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;

    invoke-static {v3, p1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->access$getImportanceFromOptions(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;Lexpo/modules/core/arguments/ReadableArguments;)I

    move-result v3

    .line 622
    invoke-interface {v1, v0, v2, v3, p1}, Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;->createNotificationChannel(Ljava/lang/String;Ljava/lang/CharSequence;ILexpo/modules/core/arguments/ReadableArguments;)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 628
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->access$getChannelSerializer(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;->toBundle(Landroid/app/NotificationChannel;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
