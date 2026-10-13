.class public final synthetic Lexpo/modules/video/managers/PictureInPictureManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/video/VideoView;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/video/VideoView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/managers/PictureInPictureManager$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/video/VideoView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/video/VideoView;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lexpo/modules/video/managers/PictureInPictureManager;->$r8$lambda$61SpAnFX1KIMl8ywqCBMysYN8cg(Lexpo/modules/video/VideoView;Ljava/lang/ref/WeakReference;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
