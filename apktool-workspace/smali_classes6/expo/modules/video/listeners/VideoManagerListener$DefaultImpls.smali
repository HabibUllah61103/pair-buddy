.class public final Lexpo/modules/video/listeners/VideoManagerListener$DefaultImpls;
.super Ljava/lang/Object;
.source "VideoManagerListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/listeners/VideoManagerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
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


# direct methods
.method public static onAppBackgrounded(Lexpo/modules/video/listeners/VideoManagerListener;)V
    .locals 0

    return-void
.end method

.method public static onAppForegrounded(Lexpo/modules/video/listeners/VideoManagerListener;)V
    .locals 0

    return-void
.end method

.method public static onVideoViewRegistered(Lexpo/modules/video/listeners/VideoManagerListener;Lexpo/modules/video/VideoView;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/listeners/VideoManagerListener;",
            "Lexpo/modules/video/VideoView;",
            "Ljava/util/Collection<",
            "+",
            "Lexpo/modules/video/VideoView;",
            ">;)V"
        }
    .end annotation

    const-string p0, "videoView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "allVideoViews"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onVideoViewUnregistered(Lexpo/modules/video/listeners/VideoManagerListener;Lexpo/modules/video/VideoView;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/listeners/VideoManagerListener;",
            "Lexpo/modules/video/VideoView;",
            "Ljava/util/Collection<",
            "+",
            "Lexpo/modules/video/VideoView;",
            ">;)V"
        }
    .end annotation

    const-string p0, "videoView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "allVideoViews"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
