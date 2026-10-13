.class public final synthetic Lexpo/modules/video/managers/VideoManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/video/listeners/VideoManagerListener;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/video/listeners/VideoManagerListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/managers/VideoManager$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/video/listeners/VideoManagerListener;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/video/managers/VideoManager$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/video/listeners/VideoManagerListener;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lexpo/modules/video/managers/VideoManager;->$r8$lambda$ElW4CIh_SDLlzu7Sk1TAVtRexuQ(Lexpo/modules/video/listeners/VideoManagerListener;Ljava/lang/ref/WeakReference;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
