.class final Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExpoVideoPlaybackService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->registerPlayer(Lexpo/modules/video/player/VideoPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.video.playbackService.ExpoVideoPlaybackService$registerPlayer$1"
    f = "ExpoVideoPlaybackService.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $videoPlayer:Lexpo/modules/video/player/VideoPlayer;

.field label:I

.field final synthetic this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;


# direct methods
.method constructor <init>(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/player/VideoPlayer;",
            "Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->$videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    iput-object p2, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;

    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->$videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    invoke-direct {p1, v0, v1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 76
    iget v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    iget-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->$videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    invoke-static {v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$getMediaSessions$p(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 82
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSession$Builder;

    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    check-cast v1, Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Landroidx/media3/common/Player;

    invoke-direct {v0, v1, v2}, Landroidx/media3/session/MediaSession$Builder;-><init>(Landroid/content/Context;Landroidx/media3/common/Player;)V

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ExpoVideoPlaybackService_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSession$Builder;->setId(Ljava/lang/String;)Landroidx/media3/session/MediaSession$Builder;

    move-result-object v0

    .line 84
    new-instance v1, Lexpo/modules/video/playbackService/VideoMediaSessionCallback;

    invoke-direct {v1}, Lexpo/modules/video/playbackService/VideoMediaSessionCallback;-><init>()V

    check-cast v1, Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSession$Builder;->setCallback(Landroidx/media3/session/MediaSession$Callback;)Landroidx/media3/session/MediaSession$Builder;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    invoke-static {v1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$getSeekBackwardButton$p(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)Landroidx/media3/session/CommandButton;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    invoke-static {v2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$getSeekForwardButton$p(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)Landroidx/media3/session/CommandButton;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSession$Builder;->setCustomLayout(Ljava/util/List;)Landroidx/media3/session/MediaSession$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroidx/media3/session/MediaSession$Builder;->build()Landroidx/media3/session/MediaSession;

    move-result-object v0

    .line 83
    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->$videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v1}, Lexpo/modules/video/player/VideoPlayer;->getMediaSession()Landroidx/media3/session/MediaSession;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/MediaSession;->release()V

    .line 90
    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->$videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v1, v0}, Lexpo/modules/video/player/VideoPlayer;->setMediaSession(Landroidx/media3/session/MediaSession;)V

    .line 92
    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    invoke-static {v1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$getMediaSessions$p(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    invoke-virtual {v1, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->addSession(Landroidx/media3/session/MediaSession;)V

    .line 94
    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$registerPlayer$1;->$videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v1}, Lexpo/modules/video/player/VideoPlayer;->getShowNowPlayingNotification()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->setShowNotification(ZLandroidx/media3/exoplayer/ExoPlayer;)V

    .line 95
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
