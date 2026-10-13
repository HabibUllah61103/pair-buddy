.class public final synthetic Lexpo/modules/video/VideoView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/video/listeners/VideoViewListener;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/video/listeners/VideoViewListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/video/listeners/VideoViewListener;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/video/listeners/VideoViewListener;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lexpo/modules/video/VideoView;->$r8$lambda$GQsiXL9JusHeGjLOK6A0mV09iO4(Lexpo/modules/video/listeners/VideoViewListener;Ljava/lang/ref/WeakReference;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
