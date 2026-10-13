.class public final Lexpo/modules/notifications/notifications/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\tJ\u0006\u0010\u0015\u001a\u00020\rJ\u000e\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u000bR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/NotificationManager;",
        "",
        "<init>",
        "()V",
        "listeners",
        "",
        "Lexpo/modules/notifications/notifications/interfaces/NotificationListener;",
        "pendingNotificationResponses",
        "",
        "Lexpo/modules/notifications/notifications/model/NotificationResponse;",
        "pendingNotificationResponsesFromExtras",
        "Landroid/os/Bundle;",
        "addListener",
        "",
        "listener",
        "removeListener",
        "onNotificationReceived",
        "notification",
        "Lexpo/modules/notifications/notifications/model/Notification;",
        "onNotificationResponseReceived",
        "response",
        "onNotificationsDropped",
        "onNotificationResponseFromExtras",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/notifications/notifications/NotificationManager;

.field private static final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lexpo/modules/notifications/notifications/interfaces/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final pendingNotificationResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/notifications/notifications/model/NotificationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final pendingNotificationResponsesFromExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/notifications/notifications/NotificationManager;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/NotificationManager;-><init>()V

    sput-object v0, Lexpo/modules/notifications/notifications/NotificationManager;->INSTANCE:Lexpo/modules/notifications/notifications/NotificationManager;

    .line 14
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    sput-object v1, Lexpo/modules/notifications/notifications/NotificationManager;->listeners:Ljava/util/Set;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    sput-object v1, Lexpo/modules/notifications/notifications/NotificationManager;->pendingNotificationResponses:Ljava/util/List;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    sput-object v1, Lexpo/modules/notifications/notifications/NotificationManager;->pendingNotificationResponsesFromExtras:Ljava/util/List;

    .line 25
    sget-object v1, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;

    invoke-virtual {v1, v0}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;->addListener(Lexpo/modules/notifications/notifications/NotificationManager;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lexpo/modules/notifications/notifications/NotificationManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 37
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lexpo/modules/notifications/notifications/NotificationManager;->pendingNotificationResponses:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/notifications/notifications/model/NotificationResponse;

    .line 40
    invoke-interface {p1, v1}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;->onNotificationResponseReceived(Lexpo/modules/notifications/notifications/model/NotificationResponse;)Z

    goto :goto_0

    .line 43
    :cond_1
    sget-object v0, Lexpo/modules/notifications/notifications/NotificationManager;->pendingNotificationResponsesFromExtras:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 45
    invoke-interface {p1, v1}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;->onNotificationResponseIntentReceived(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final onNotificationReceived(Lexpo/modules/notifications/notifications/model/Notification;)V
    .locals 2

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lexpo/modules/notifications/notifications/NotificationManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    .line 71
    invoke-interface {v1, p1}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;->onNotificationReceived(Lexpo/modules/notifications/notifications/model/Notification;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNotificationResponseFromExtras(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lexpo/modules/notifications/notifications/NotificationManager;->listeners:Ljava/util/Set;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    .line 110
    invoke-interface {v1, p1}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;->onNotificationResponseIntentReceived(Landroid/os/Bundle;)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object v0, Lexpo/modules/notifications/notifications/NotificationManager;->pendingNotificationResponsesFromExtras:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onNotificationResponseReceived(Lexpo/modules/notifications/notifications/model/NotificationResponse;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lexpo/modules/notifications/notifications/NotificationManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v0, Lexpo/modules/notifications/notifications/NotificationManager;->pendingNotificationResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 85
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    .line 86
    invoke-interface {v1, p1}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;->onNotificationResponseReceived(Lexpo/modules/notifications/notifications/model/NotificationResponse;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onNotificationsDropped()V
    .locals 2

    .line 96
    sget-object v0, Lexpo/modules/notifications/notifications/NotificationManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    .line 97
    invoke-interface {v1}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;->onNotificationsDropped()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeListener(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lexpo/modules/notifications/notifications/NotificationManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
