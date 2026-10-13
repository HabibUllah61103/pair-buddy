.class final Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExpoVideoPlaybackService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->cleanup()V
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
    c = "expo.modules.video.playbackService.ExpoVideoPlaybackService$cleanup$1"
    f = "ExpoVideoPlaybackService.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;


# direct methods
.method constructor <init>(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;

    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    invoke-direct {p1, v0, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;-><init>(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 208
    iget v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 209
    iget-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->stopForeground(I)V

    .line 210
    iget-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$setForeground$p(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Z)V

    .line 212
    iget-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    invoke-static {p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$hideAllNotifications(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)V

    .line 214
    iget-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    invoke-static {p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$getMediaSessions$p(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    invoke-static {v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$getMediaSessions$p(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession;

    .line 217
    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->release()V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$cleanup$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/NotificationManager;

    .line 222
    const-string v0, "PlaybackService"

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 224
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 208
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
