.class public final Lexpo/modules/video/playbackService/PlaybackServiceConnection;
.super Ljava/lang/Object;
.source "PlaybackServiceConnection.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0012\u0010\u001e\u001a\u00020\u00182\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001aH\u0016J\u0010\u0010 \u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\"\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0010\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00060\u00060\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/video/playbackService/PlaybackServiceConnection;",
        "Landroid/content/ServiceConnection;",
        "player",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/video/player/VideoPlayer;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;Lexpo/modules/kotlin/AppContext;)V",
        "getPlayer",
        "()Ljava/lang/ref/WeakReference;",
        "value",
        "Lexpo/modules/video/playbackService/PlaybackServiceBinder;",
        "playbackServiceBinder",
        "getPlaybackServiceBinder",
        "()Lexpo/modules/video/playbackService/PlaybackServiceBinder;",
        "",
        "isConnected",
        "()Z",
        "_appContext",
        "kotlin.jvm.PlatformType",
        "getAppContext",
        "()Lexpo/modules/kotlin/AppContext;",
        "onServiceConnected",
        "",
        "componentName",
        "Landroid/content/ComponentName;",
        "binder",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
        "onBindingDied",
        "name",
        "onNullBinding",
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


# instance fields
.field private final _appContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/AppContext;",
            ">;"
        }
    .end annotation
.end field

.field private isConnected:Z

.field private playbackServiceBinder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

.field private final player:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/player/VideoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lexpo/modules/kotlin/AppContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/player/VideoPlayer;",
            ">;",
            "Lexpo/modules/kotlin/AppContext;",
            ")V"
        }
    .end annotation

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->player:Ljava/lang/ref/WeakReference;

    .line 20
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->_appContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final getAppContext()Lexpo/modules/kotlin/AppContext;
    .locals 1

    .line 22
    iget-object v0, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->_appContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/AppContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;-><init>()V

    throw v0
.end method


# virtual methods
.method public final getPlaybackServiceBinder()Lexpo/modules/video/playbackService/PlaybackServiceBinder;
    .locals 1

    .line 16
    iget-object v0, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->playbackServiceBinder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    return-object v0
.end method

.method public final getPlayer()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/player/VideoPlayer;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->player:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->isConnected:Z

    return v0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->isConnected:Z

    .line 46
    invoke-direct {p0}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getJsLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    const-string v1, "Expo-video has lost connection to the playback service binder"

    .line 49
    const-string v2, "This will cause issues with now playing notification and sustaining background playback."

    .line 47
    invoke-static {v1, v2}, Lexpo/modules/video/VideoExceptionsKt;->getPlaybackServiceErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 46
    invoke-static {v0, v1, v3, v2, v3}, Lexpo/modules/core/logging/Logger;->error$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 4

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->isConnected:Z

    .line 57
    invoke-direct {p0}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getJsLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    const-string v1, "Expo Video could not bind to the playback service"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v2}, Lexpo/modules/video/VideoExceptionsKt;->getPlaybackServiceErrorMessage$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0, v1, v2, v3, v2}, Lexpo/modules/core/logging/Logger;->error$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "binder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/player/VideoPlayer;

    if-nez p1, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    instance-of v0, p2, Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_3

    move-object p1, p0

    check-cast p1, Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    .line 27
    invoke-direct {p0}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getJsLogger()Lexpo/modules/core/logging/Logger;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 28
    const-string p2, "Expo-video could not bind to the playback service"

    const/4 v0, 0x2

    invoke-static {p2, v1, v0, v1}, Lexpo/modules/video/VideoExceptionsKt;->getPlaybackServiceErrorMessage$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-static {p1, p2, v1, v0, v1}, Lexpo/modules/core/logging/Logger;->error$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->isConnected:Z

    .line 34
    iput-object p2, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->playbackServiceBinder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    .line 35
    invoke-virtual {p2}, Lexpo/modules/video/playbackService/PlaybackServiceBinder;->getService()Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    move-result-object v0

    invoke-direct {p0}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->setAppContext(Lexpo/modules/kotlin/AppContext;)V

    .line 36
    invoke-virtual {p2}, Lexpo/modules/video/playbackService/PlaybackServiceBinder;->getService()Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->registerPlayer(Lexpo/modules/video/player/VideoPlayer;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->playbackServiceBinder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->isConnected:Z

    return-void
.end method
