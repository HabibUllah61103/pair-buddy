.class final Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExpoVideoPlaybackService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->setShowNotification(ZLandroidx/media3/exoplayer/ExoPlayer;)V
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
    c = "expo.modules.video.playbackService.ExpoVideoPlaybackService$setShowNotification$1"
    f = "ExpoVideoPlaybackService.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $player:Landroidx/media3/exoplayer/ExoPlayer;

.field final synthetic $showNotification:Z

.field label:I

.field final synthetic this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;


# direct methods
.method constructor <init>(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/exoplayer/ExoPlayer;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;",
            "Landroidx/media3/exoplayer/ExoPlayer;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    iput-object p2, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->$player:Landroidx/media3/exoplayer/ExoPlayer;

    iput-boolean p3, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->$showNotification:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;

    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->$player:Landroidx/media3/exoplayer/ExoPlayer;

    iget-boolean v2, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->$showNotification:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;-><init>(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/exoplayer/ExoPlayer;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 61
    iget v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    iget-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    invoke-static {p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$getMediaSessions$p(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->$player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/MediaSession;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getSessionExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 67
    :cond_1
    const-string v0, "showNotification"

    iget-boolean v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->$showNotification:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    invoke-static {v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$getMediaSessions$p(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->$player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    iget-boolean v2, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->$showNotification:Z

    iget-object v3, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$setShowNotification$1;->$player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 69
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSession;->setSessionExtras(Landroid/os/Bundle;)V

    if-eqz v2, :cond_2

    .line 70
    invoke-interface {v3}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, v0, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->onUpdateNotification(Landroidx/media3/session/MediaSession;Z)V

    .line 72
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 61
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
