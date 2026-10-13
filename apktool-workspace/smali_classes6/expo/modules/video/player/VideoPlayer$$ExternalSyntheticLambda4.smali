.class public final synthetic Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lexpo/modules/kotlin/AppContext;

.field public final synthetic f$1:Lexpo/modules/video/player/VideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda4;->f$0:Lexpo/modules/kotlin/AppContext;

    iput-object p2, p0, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda4;->f$1:Lexpo/modules/video/player/VideoPlayer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda4;->f$0:Lexpo/modules/kotlin/AppContext;

    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda4;->f$1:Lexpo/modules/video/player/VideoPlayer;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lexpo/modules/video/player/VideoPlayer;->$r8$lambda$ELOPvjDp7XtfVYFRpMSHk3hyHVI(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;FF)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
