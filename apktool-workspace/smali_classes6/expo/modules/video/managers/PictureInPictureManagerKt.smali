.class public final Lexpo/modules/video/managers/PictureInPictureManagerKt;
.super Ljava/lang/Object;
.source "PictureInPictureManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "calculateCurrentPipAspectRatio",
        "Landroid/util/Rational;",
        "Lexpo/modules/video/VideoView;",
        "expo-video_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final calculateCurrentPipAspectRatio(Lexpo/modules/video/VideoView;)Landroid/util/Rational;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v0

    const-string v1, "getVideoSize(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getContentFit()Lexpo/modules/video/enums/ContentFit;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->calculatePiPAspectRatio(Landroidx/media3/common/VideoSize;IILexpo/modules/video/enums/ContentFit;)Landroid/util/Rational;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
