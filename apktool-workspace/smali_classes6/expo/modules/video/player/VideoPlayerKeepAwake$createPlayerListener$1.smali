.class public final Lexpo/modules/video/player/VideoPlayerKeepAwake$createPlayerListener$1;
.super Ljava/lang/Object;
.source "VideoPlayerKeepAwake.kt"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/player/VideoPlayerKeepAwake;->createPlayerListener()Landroidx/media3/common/Player$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "expo/modules/video/player/VideoPlayerKeepAwake$createPlayerListener$1",
        "Landroidx/media3/common/Player$Listener;",
        "onIsPlayingChanged",
        "",
        "isPlaying",
        "",
        "onPlaybackStateChanged",
        "playbackState",
        "",
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
.field final synthetic this$0:Lexpo/modules/video/player/VideoPlayerKeepAwake;


# direct methods
.method constructor <init>(Lexpo/modules/video/player/VideoPlayerKeepAwake;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayerKeepAwake$createPlayerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayerKeepAwake;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsPlayingChanged(Z)V
    .locals 1

    .line 59
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayerKeepAwake$createPlayerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayerKeepAwake;

    invoke-static {v0}, Lexpo/modules/video/player/VideoPlayerKeepAwake;->access$getVideoPlayer$p(Lexpo/modules/video/player/VideoPlayerKeepAwake;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 61
    sget-object p1, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {p1, v0}, Lexpo/modules/video/managers/VideoManager;->requestKeepAwake(Lexpo/modules/video/player/VideoPlayer;)V

    return-void

    .line 63
    :cond_1
    sget-object p1, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {p1, v0}, Lexpo/modules/video/managers/VideoManager;->releaseKeepAwake(Lexpo/modules/video/player/VideoPlayer;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 3

    .line 68
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayerKeepAwake$createPlayerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayerKeepAwake;

    invoke-static {v0}, Lexpo/modules/video/player/VideoPlayerKeepAwake;->access$getVideoPlayer$p(Lexpo/modules/video/player/VideoPlayerKeepAwake;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-ne p1, v1, :cond_2

    .line 73
    sget-object p1, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {p1, v0}, Lexpo/modules/video/managers/VideoManager;->requestKeepAwake(Lexpo/modules/video/player/VideoPlayer;)V

    :cond_2
    :goto_0
    return-void

    .line 77
    :cond_3
    sget-object p1, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {p1, v0}, Lexpo/modules/video/managers/VideoManager;->requestKeepAwake(Lexpo/modules/video/player/VideoPlayer;)V

    return-void
.end method
