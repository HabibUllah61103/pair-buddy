.class public final Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;
.super Landroidx/media3/session/MediaSessionService;
.source "ExpoVideoPlaybackService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoVideoPlaybackService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoVideoPlaybackService.kt\nexpo/modules/video/playbackService/ExpoVideoPlaybackService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,268:1\n295#2,2:269\n295#2,2:271\n*S KotlinDebug\n*F\n+ 1 ExpoVideoPlaybackService.kt\nexpo/modules/video/playbackService/ExpoVideoPlaybackService\n*L\n156#1:269,2\n157#1:271,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 82\u00020\u0001:\u00018B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u000fJ\u000e\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u000fJ\u0012\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\u0018\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020\u00102\u0006\u0010*\u001a\u00020\u0015H\u0016J\u0012\u0010+\u001a\u00020\u001d2\u0008\u0010)\u001a\u0004\u0018\u00010\u0010H\u0003J\n\u0010,\u001a\u0004\u0018\u00010\u0010H\u0003J\u0012\u0010-\u001a\u00020\u001d2\u0008\u0010.\u001a\u0004\u0018\u00010\'H\u0016J\u0012\u0010/\u001a\u0004\u0018\u00010\u00102\u0006\u00100\u001a\u000201H\u0016J\u0008\u00102\u001a\u00020\u001dH\u0016J\u001a\u00103\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020\u00102\u0008\u0008\u0002\u0010*\u001a\u00020\u0015H\u0003J\u0008\u00104\u001a\u00020\u001dH\u0002J\u0010\u00105\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u000fH\u0003J\u0008\u00106\u001a\u00020\u001dH\u0003J\u000c\u00107\u001a\u00020\u0015*\u00020\u0010H\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;",
        "Landroidx/media3/session/MediaSessionService;",
        "<init>",
        "()V",
        "weakContext",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/kotlin/AppContext;",
        "value",
        "appContext",
        "getAppContext",
        "()Lexpo/modules/kotlin/AppContext;",
        "setAppContext",
        "(Lexpo/modules/kotlin/AppContext;)V",
        "mediaSessions",
        "",
        "Landroidx/media3/exoplayer/ExoPlayer;",
        "Landroidx/media3/session/MediaSession;",
        "binder",
        "Lexpo/modules/video/playbackService/PlaybackServiceBinder;",
        "mostRecentInteractionSession",
        "isForeground",
        "",
        "commandSeekForward",
        "Landroidx/media3/session/SessionCommand;",
        "commandSeekBackward",
        "seekForwardButton",
        "Landroidx/media3/session/CommandButton;",
        "seekBackwardButton",
        "setShowNotification",
        "",
        "showNotification",
        "player",
        "registerPlayer",
        "videoPlayer",
        "Lexpo/modules/video/player/VideoPlayer;",
        "unregisterPlayer",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onUpdateNotification",
        "session",
        "startInForegroundRequired",
        "setMostRecentInteractionSession",
        "findMostRecentInteractionSession",
        "onTaskRemoved",
        "rootIntent",
        "onGetSession",
        "controllerInfo",
        "Landroidx/media3/session/MediaSession$ControllerInfo;",
        "onDestroy",
        "createNotification",
        "cleanup",
        "hidePlayerNotification",
        "hideAllNotifications",
        "wantsToShowNotification",
        "Companion",
        "expo-video_release"
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
.field public static final CHANNEL_ID:Ljava/lang/String; = "PlaybackService"

.field public static final Companion:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;

.field public static final SEEK_BACKWARD_COMMAND:Ljava/lang/String; = "SEEK_REWIND"

.field public static final SEEK_FORWARD_COMMAND:Ljava/lang/String; = "SEEK_FORWARD"

.field public static final SEEK_INTERVAL_MS:J = 0x2710L

.field public static final SESSION_SHOW_NOTIFICATION:Ljava/lang/String; = "showNotification"


# instance fields
.field private final binder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

.field private final commandSeekBackward:Landroidx/media3/session/SessionCommand;

.field private final commandSeekForward:Landroidx/media3/session/SessionCommand;

.field private isForeground:Z

.field private final mediaSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media3/exoplayer/ExoPlayer;",
            "Landroidx/media3/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field

.field private mostRecentInteractionSession:Landroidx/media3/session/MediaSession;

.field private final seekBackwardButton:Landroidx/media3/session/CommandButton;

.field private final seekForwardButton:Landroidx/media3/session/CommandButton;

.field private weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/AppContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->Companion:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 34
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mediaSessions:Ljava/util/Map;

    .line 42
    new-instance v0, Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    invoke-direct {v0, p0}, Lexpo/modules/video/playbackService/PlaybackServiceBinder;-><init>(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)V

    iput-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->binder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    .line 46
    new-instance v0, Landroidx/media3/session/SessionCommand;

    const-string v1, "SEEK_FORWARD"

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->commandSeekForward:Landroidx/media3/session/SessionCommand;

    .line 47
    new-instance v1, Landroidx/media3/session/SessionCommand;

    const-string v2, "SEEK_REWIND"

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->commandSeekBackward:Landroidx/media3/session/SessionCommand;

    .line 48
    new-instance v2, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v2}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    .line 49
    const-string v3, "rewind"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v0}, Landroidx/media3/session/CommandButton$Builder;->setSessionCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 51
    sget v2, Lexpo/modules/video/R$drawable;->seek_forwards_10s:I

    invoke-virtual {v0, v2}, Landroidx/media3/session/CommandButton$Builder;->setIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v0

    const-string v2, "build(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->seekForwardButton:Landroidx/media3/session/CommandButton;

    .line 54
    new-instance v0, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v0}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    .line 55
    const-string v3, "forward"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Landroidx/media3/session/CommandButton$Builder;->setSessionCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 57
    sget v1, Lexpo/modules/video/R$drawable;->seek_backwards_10s:I

    invoke-virtual {v0, v1}, Landroidx/media3/session/CommandButton$Builder;->setIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->seekBackwardButton:Landroidx/media3/session/CommandButton;

    return-void
.end method

.method public static final synthetic access$cleanup(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->cleanup()V

    return-void
.end method

.method public static final synthetic access$findMostRecentInteractionSession(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)Landroidx/media3/session/MediaSession;
    .locals 0

    .line 33
    invoke-direct {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->findMostRecentInteractionSession()Landroidx/media3/session/MediaSession;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMediaSessions$p(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)Ljava/util/Map;
    .locals 0

    .line 33
    iget-object p0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mediaSessions:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getSeekBackwardButton$p(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)Landroidx/media3/session/CommandButton;
    .locals 0

    .line 33
    iget-object p0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->seekBackwardButton:Landroidx/media3/session/CommandButton;

    return-object p0
.end method

.method public static final synthetic access$getSeekForwardButton$p(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)Landroidx/media3/session/CommandButton;
    .locals 0

    .line 33
    iget-object p0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->seekForwardButton:Landroidx/media3/session/CommandButton;

    return-object p0
.end method

.method public static final synthetic access$hideAllNotifications(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->hideAllNotifications()V

    return-void
.end method

.method public static final synthetic access$hidePlayerNotification(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/exoplayer/ExoPlayer;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->hidePlayerNotification(Landroidx/media3/exoplayer/ExoPlayer;)V

    return-void
.end method

.method public static final synthetic access$setForeground$p(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->isForeground:Z

    return-void
.end method

.method public static final synthetic access$setMostRecentInteractionSession(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/session/MediaSession;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->setMostRecentInteractionSession(Landroidx/media3/session/MediaSession;)V

    return-void
.end method

.method public static final synthetic access$wantsToShowNotification(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/session/MediaSession;)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->wantsToShowNotification(Landroidx/media3/session/MediaSession;)Z

    move-result p0

    return p0
.end method

.method private final cleanup()V
    .locals 7

    .line 208
    invoke-virtual {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;-><init>(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final createNotification(Landroidx/media3/session/MediaSession;Z)V
    .locals 6

    .line 176
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 180
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 182
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "PlaybackService"

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 186
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "\u200e"

    check-cast v1, Ljava/lang/CharSequence;

    .line 187
    :cond_2
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    invoke-direct {v3, v5, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    sget v2, Landroidx/media3/session/R$drawable;->media3_icon_circular_play:I

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 189
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 190
    new-instance v2, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;-><init>(Landroidx/media3/session/MediaSession;)V

    check-cast v2, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-eqz p2, :cond_4

    .line 197
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->startForeground(ILandroid/app/Notification;)V

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->isForeground:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 200
    invoke-virtual {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p2

    invoke-virtual {p2}, Lexpo/modules/kotlin/AppContext;->getJsLogger()Lexpo/modules/core/logging/Logger;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v0, "Failed to start the expo-video foreground service"

    const/4 v1, 0x0

    invoke-static {v0, v1, v4, v1}, Lexpo/modules/video/VideoExceptionsKt;->getPlaybackServiceErrorMessage$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, v0, p1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3
    :goto_0
    return-void

    .line 203
    :cond_4
    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic createNotification$default(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/session/MediaSession;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 174
    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->createNotification(Landroidx/media3/session/MediaSession;Z)V

    return-void
.end method

.method private final findMostRecentInteractionSession()Landroidx/media3/session/MediaSession;
    .locals 6

    .line 154
    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mostRecentInteractionSession:Landroidx/media3/session/MediaSession;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mediaSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 156
    check-cast v0, Ljava/lang/Iterable;

    .line 269
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/media3/session/MediaSession;

    .line 156
    invoke-direct {p0, v4}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->wantsToShowNotification(Landroidx/media3/session/MediaSession;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v4

    invoke-interface {v4}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Landroidx/media3/session/MediaSession;

    if-nez v2, :cond_4

    .line 271
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/media3/session/MediaSession;

    .line 157
    invoke-direct {p0, v2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->wantsToShowNotification(Landroidx/media3/session/MediaSession;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v3, v1

    .line 272
    :cond_3
    check-cast v3, Landroidx/media3/session/MediaSession;

    return-object v3

    :cond_4
    return-object v2
.end method

.method private final hideAllNotifications()V
    .locals 2

    .line 235
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 236
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method private final hidePlayerNotification(Landroidx/media3/exoplayer/ExoPlayer;)V
    .locals 2

    .line 229
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private final setMostRecentInteractionSession(Landroidx/media3/session/MediaSession;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 130
    invoke-virtual {p0, v1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->stopForeground(I)V

    .line 131
    iput-boolean v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->isForeground:Z

    .line 134
    :cond_0
    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mostRecentInteractionSession:Landroidx/media3/session/MediaSession;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    invoke-direct {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->hideAllNotifications()V

    .line 138
    :cond_1
    iput-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mostRecentInteractionSession:Landroidx/media3/session/MediaSession;

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->createNotification(Landroidx/media3/session/MediaSession;Z)V

    return-void

    .line 141
    :cond_2
    move-object p1, p0

    check-cast p1, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    const/4 p1, 0x1

    .line 142
    invoke-virtual {p0, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->stopForeground(I)V

    .line 143
    iput-boolean v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->isForeground:Z

    return-void
.end method

.method private final wantsToShowNotification(Landroidx/media3/session/MediaSession;)Z
    .locals 2

    .line 240
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getSessionExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "showNotification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final getAppContext()Lexpo/modules/kotlin/AppContext;
    .locals 1

    .line 37
    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->weakContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const-string v0, "weakContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/AppContext;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;-><init>()V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 113
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSessionService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 114
    iget-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->binder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->cleanup()V

    .line 171
    invoke-super {p0}, Landroidx/media3/session/MediaSessionService;->onDestroy()V

    return-void
.end method

.method public onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;
    .locals 1

    const-string v0, "controllerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->cleanup()V

    .line 162
    invoke-virtual {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->stopSelf()V

    return-void
.end method

.method public onUpdateNotification(Landroidx/media3/session/MediaSession;Z)V
    .locals 7

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p0, p1, v2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;-><init>(ZLexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/session/MediaSession;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final registerPlayer(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 7

    const-string v0, "videoPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setAppContext(Lexpo/modules/kotlin/AppContext;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->weakContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setShowNotification(ZLandroidx/media3/exoplayer/ExoPlayer;)V
    .locals 7

    const-string v0, "player"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, p1, v2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;-><init>(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/exoplayer/ExoPlayer;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final unregisterPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V
    .locals 7

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$unregisterPlayer$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$unregisterPlayer$1;-><init>(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/exoplayer/ExoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
