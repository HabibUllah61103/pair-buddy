.class public interface abstract Lexpo/modules/video/listeners/VideoManagerListener;
.super Ljava/lang/Object;
.source "VideoManagerListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/listeners/VideoManagerListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\u0016J\u001e\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u0008\u0010\n\u001a\u00020\u0003H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/video/listeners/VideoManagerListener;",
        "",
        "onVideoViewRegistered",
        "",
        "videoView",
        "Lexpo/modules/video/VideoView;",
        "allVideoViews",
        "",
        "onVideoViewUnregistered",
        "onAppBackgrounded",
        "onAppForegrounded",
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


# virtual methods
.method public abstract onAppBackgrounded()V
.end method

.method public abstract onAppForegrounded()V
.end method

.method public abstract onVideoViewRegistered(Lexpo/modules/video/VideoView;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/VideoView;",
            "Ljava/util/Collection<",
            "+",
            "Lexpo/modules/video/VideoView;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVideoViewUnregistered(Lexpo/modules/video/VideoView;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/VideoView;",
            "Ljava/util/Collection<",
            "+",
            "Lexpo/modules/video/VideoView;",
            ">;)V"
        }
    .end annotation
.end method
