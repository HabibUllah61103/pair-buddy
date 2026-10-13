.class public final Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;
.super Landroid/view/OrientationEventListener;
.source "FullscreenActivityOrientationHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;-><init>(Landroid/content/Context;Lexpo/modules/video/records/FullscreenOptions;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1",
        "Landroid/view/OrientationEventListener;",
        "onOrientationChanged",
        "",
        "orientation",
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
.field final synthetic this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;


# direct methods
.method constructor <init>(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    const/4 p1, 0x3

    .line 48
    invoke-direct {p0, p2, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    const/16 v3, 0xa

    if-le p1, v3, :cond_1

    :cond_0
    const/16 v3, 0x15e

    if-lt p1, v3, :cond_2

    const/16 v3, 0x168

    if-ge p1, v3, :cond_2

    :cond_1
    :goto_0
    move p1, v2

    goto :goto_2

    :cond_2
    const/16 v3, 0x50

    if-lt p1, v3, :cond_3

    const/16 v3, 0x64

    if-gt p1, v3, :cond_3

    :goto_1
    move p1, v1

    goto :goto_2

    :cond_3
    const/16 v3, 0xaa

    if-lt p1, v3, :cond_4

    const/16 v3, 0xbe

    if-gt p1, v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 v3, 0x104

    if-lt p1, v3, :cond_5

    const/16 v3, 0x118

    if-gt p1, v3, :cond_5

    goto :goto_1

    :cond_5
    move p1, v0

    .line 73
    :goto_2
    iget-object v3, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    invoke-virtual {v3}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->getOptions()Lexpo/modules/video/records/FullscreenOptions;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/video/records/FullscreenOptions;->getAutoExitOnRotate()Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_6

    :cond_6
    if-ne p1, v2, :cond_7

    .line 77
    iget-object v3, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    invoke-static {v3}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->access$isLockedToLandscape$p(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    invoke-static {v3}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->access$getUserHasRotatedToVideoOrientation$p(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_3

    :cond_7
    move v3, v0

    :goto_3
    if-ne p1, v1, :cond_8

    .line 78
    iget-object v4, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    invoke-static {v4}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->access$isLockedToPortrait$p(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    invoke-static {v4}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->access$getUserHasRotatedToVideoOrientation$p(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v3, :cond_a

    .line 81
    :goto_4
    iget-object v3, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    invoke-virtual {v3}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->isAutoRotationEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_6

    .line 84
    :cond_9
    iget-object v3, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    invoke-virtual {v3}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->getOnShouldReleaseOrientation()Lkotlin/jvm/functions/Function0;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 85
    iget-object v3, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    invoke-virtual {v3}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->stopOrientationEventListener()V

    :cond_a
    if-ne p1, v2, :cond_b

    .line 88
    iget-object v3, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    invoke-static {v3}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->access$isLockedToPortrait$p(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    invoke-static {v3}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->access$getUserHasRotatedToVideoOrientation$p(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v2

    goto :goto_5

    :cond_b
    move v3, v0

    :goto_5
    if-ne p1, v1, :cond_c

    .line 89
    iget-object p1, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    invoke-static {p1}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->access$isLockedToLandscape$p(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    invoke-static {p1}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->access$getUserHasRotatedToVideoOrientation$p(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Z

    move-result p1

    if-nez p1, :cond_c

    move v0, v2

    :cond_c
    if-nez v3, :cond_e

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    :goto_6
    return-void

    .line 92
    :cond_e
    :goto_7
    iget-object p1, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->this$0:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    invoke-static {p1, v2}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->access$setUserHasRotatedToVideoOrientation$p(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;Z)V

    return-void
.end method
