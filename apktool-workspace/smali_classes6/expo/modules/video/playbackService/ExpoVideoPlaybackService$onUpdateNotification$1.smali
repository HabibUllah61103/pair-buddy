.class final Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExpoVideoPlaybackService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->onUpdateNotification(Landroidx/media3/session/MediaSession;Z)V
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
    c = "expo.modules.video.playbackService.ExpoVideoPlaybackService$onUpdateNotification$1"
    f = "ExpoVideoPlaybackService.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $session:Landroidx/media3/session/MediaSession;

.field final synthetic $startInForegroundRequired:Z

.field label:I

.field final synthetic this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;


# direct methods
.method constructor <init>(ZLexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/session/MediaSession;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;",
            "Landroidx/media3/session/MediaSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->$startInForegroundRequired:Z

    iput-object p2, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    iput-object p3, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->$session:Landroidx/media3/session/MediaSession;

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

    new-instance p1, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;

    iget-boolean v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->$startInForegroundRequired:Z

    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    iget-object v2, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->$session:Landroidx/media3/session/MediaSession;

    invoke-direct {p1, v0, v1, v2, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;-><init>(ZLexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/session/MediaSession;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 118
    iget v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    iget-boolean p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->$startInForegroundRequired:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->$session:Landroidx/media3/session/MediaSession;

    invoke-static {p1, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$wantsToShowNotification(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/session/MediaSession;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->$session:Landroidx/media3/session/MediaSession;

    invoke-static {p1, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$setMostRecentInteractionSession(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/session/MediaSession;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$onUpdateNotification$1;->this$0:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    invoke-static {p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$findMostRecentInteractionSession(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)Landroidx/media3/session/MediaSession;

    move-result-object v0

    invoke-static {p1, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->access$setMostRecentInteractionSession(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;Landroidx/media3/session/MediaSession;)V

    .line 124
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 118
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
