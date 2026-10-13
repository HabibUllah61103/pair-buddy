.class public final Lexpo/modules/video/PictureInPictureHelperFragment;
.super Landroidx/fragment/app/Fragment;
.source "PictureInPictureHelperFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u000b*\u0004\u0018\u00010\u00030\u00030\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/video/PictureInPictureHelperFragment;",
        "Landroidx/fragment/app/Fragment;",
        "listener",
        "Lexpo/modules/video/PictureInPictureFragmentListener;",
        "<init>",
        "(Lexpo/modules/video/PictureInPictureFragmentListener;)V",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "release",
        "",
        "onPictureInPictureModeChanged",
        "isInPictureInPictureMode",
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
.field private final id:Ljava/lang/String;

.field private final listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/PictureInPictureFragmentListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lexpo/modules/video/PictureInPictureFragmentListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PictureInPictureHelperFragment_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->id:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->listener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPictureInPictureModeChanged(Z)V

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/PictureInPictureFragmentListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lexpo/modules/video/PictureInPictureFragmentListener;->onPictureInPictureStart()V

    return-void

    .line 26
    :cond_0
    iget-object p1, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/PictureInPictureFragmentListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lexpo/modules/video/PictureInPictureFragmentListener;->onPictureInPictureStop()V

    :cond_1
    return-void
.end method

.method public final release()V
    .locals 1

    .line 17
    iget-object v0, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method
