.class public final Lexpo/modules/video/FullscreenPlayerActivity;
.super Landroid/app/Activity;
.source "FullscreenPlayerActivity.kt"

# interfaces
.implements Lexpo/modules/video/listeners/VideoManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/FullscreenPlayerActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFullscreenPlayerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullscreenPlayerActivity.kt\nexpo/modules/video/FullscreenPlayerActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,251:1\n1#2:252\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 -2\u00020\u00012\u00020\u0002:\u0001-B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0012\u0010\u001d\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0008\u0010\u001e\u001a\u00020\u001aH\u0016J\u0008\u0010\u001f\u001a\u00020\u001aH\u0014J\u0008\u0010 \u001a\u00020\u001aH\u0014J\u0008\u0010!\u001a\u00020\u001aH\u0014J\u0008\u0010\"\u001a\u00020\u001aH\u0014J\u0008\u0010#\u001a\u00020\u001aH\u0014J\u0008\u0010$\u001a\u00020\u001aH\u0016J\u0008\u0010%\u001a\u00020\u001aH\u0002J\u001a\u0010&\u001a\u00020\u001a2\u0006\u0010\'\u001a\u00020\u00102\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0008\u0010*\u001a\u00020\u001aH\u0002J\u0008\u0010+\u001a\u00020\u001aH\u0002J\u0010\u0010,\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020)H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lexpo/modules/video/FullscreenPlayerActivity;",
        "Landroid/app/Activity;",
        "Lexpo/modules/video/listeners/VideoManagerListener;",
        "<init>",
        "()V",
        "mContentView",
        "Landroid/view/View;",
        "videoViewId",
        "",
        "videoPlayer",
        "Lexpo/modules/video/player/VideoPlayer;",
        "playerView",
        "Landroidx/media3/ui/PlayerView;",
        "videoView",
        "Lexpo/modules/video/VideoView;",
        "didFinish",
        "",
        "wasAutoPaused",
        "isStopped",
        "options",
        "Lexpo/modules/video/records/FullscreenOptions;",
        "orientationHelper",
        "Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;",
        "captioningChangeListener",
        "Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPostCreate",
        "finish",
        "onResume",
        "onPause",
        "onStop",
        "onStart",
        "onDestroy",
        "onAppForegrounded",
        "setupFullscreenButton",
        "onPictureInPictureModeChanged",
        "isInPictureInPictureMode",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "hideStatusBar",
        "setupCaptioningChangeListener",
        "onConfigurationChanged",
        "Companion",
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


# static fields
.field public static final Companion:Lexpo/modules/video/FullscreenPlayerActivity$Companion;

.field public static final INTENT_FULLSCREEN_OPTIONS_KEY:Ljava/lang/String; = "fullscreen_options"


# instance fields
.field private captioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private didFinish:Z

.field private isStopped:Z

.field private mContentView:Landroid/view/View;

.field private options:Lexpo/modules/video/records/FullscreenOptions;

.field private orientationHelper:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

.field private playerView:Landroidx/media3/ui/PlayerView;

.field private videoPlayer:Lexpo/modules/video/player/VideoPlayer;

.field private videoView:Lexpo/modules/video/VideoView;

.field private videoViewId:Ljava/lang/String;

.field private wasAutoPaused:Z


# direct methods
.method public static synthetic $r8$lambda$9JzzHamlsdoybc4Jiaqjd7AUEYs(Lexpo/modules/video/FullscreenPlayerActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->onCreate$lambda$1(Lexpo/modules/video/FullscreenPlayerActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G1W1tV8Bax8bLHnO-lQBC_HPBus(Lexpo/modules/video/FullscreenPlayerActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/FullscreenPlayerActivity;->setupFullscreenButton$lambda$9(Lexpo/modules/video/FullscreenPlayerActivity;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$I86mRVrxb3s3Px1OsmAahD4SZj0(Lexpo/modules/video/FullscreenPlayerActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->onCreate$lambda$2(Lexpo/modules/video/FullscreenPlayerActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RU2BgYFy8NOyMagb3IlTNXxr2p0(Lexpo/modules/video/FullscreenPlayerActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lexpo/modules/video/FullscreenPlayerActivity;->onPostCreate$lambda$6(Lexpo/modules/video/FullscreenPlayerActivity;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$a4aiLHC0sd-TpGxxB94MGuX4Ajo(Lexpo/modules/video/FullscreenPlayerActivity;ZLandroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p10}, Lexpo/modules/video/FullscreenPlayerActivity;->onPostCreate$lambda$5(Lexpo/modules/video/FullscreenPlayerActivity;ZLandroid/view/View;IIIIIIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/video/FullscreenPlayerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/video/FullscreenPlayerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/video/FullscreenPlayerActivity;->Companion:Lexpo/modules/video/FullscreenPlayerActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final hideStatusBar()V
    .locals 4

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    const-string v3, "mContentView"

    if-lt v0, v1, :cond_2

    .line 214
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 216
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 217
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    :cond_1
    return-void

    .line 221
    :cond_2
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->mContentView:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    const/16 v0, 0x1307

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private static final onCreate$lambda$1(Lexpo/modules/video/FullscreenPlayerActivity;)Lkotlin/Unit;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->finish()V

    .line 66
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreate$lambda$2(Lexpo/modules/video/FullscreenPlayerActivity;)Lkotlin/Unit;
    .locals 1

    const/4 v0, -0x1

    .line 68
    invoke-virtual {p0, v0}, Lexpo/modules/video/FullscreenPlayerActivity;->setRequestedOrientation(I)V

    .line 69
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onPostCreate$lambda$5(Lexpo/modules/video/FullscreenPlayerActivity;ZLandroid/view/View;IIIIIIII)V
    .locals 0

    .line 108
    iget-object p0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez p0, :cond_0

    const-string p0, "playerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1}, Lexpo/modules/video/PlayerViewExtensionKt;->setTimeBarInteractive(Landroidx/media3/ui/PlayerView;Z)V

    return-void
.end method

.method private static final onPostCreate$lambda$6(Lexpo/modules/video/FullscreenPlayerActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 119
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez p0, :cond_0

    const-string p0, "playerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->calculateRectHint(Landroidx/media3/ui/PlayerView;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p1, p0}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyRectHint(Landroid/app/Activity;Landroid/graphics/Rect;)V

    return-void
.end method

.method private final setupCaptioningChangeListener()V
    .locals 4

    .line 233
    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Lexpo/modules/video/FullscreenPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/accessibility/CaptioningManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 235
    :goto_0
    sget-object v1, Lexpo/modules/video/utils/SubtitleUtils;->INSTANCE:Lexpo/modules/video/utils/SubtitleUtils;

    iget-object v3, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v3, :cond_1

    const-string v3, "playerView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lexpo/modules/video/utils/SubtitleUtils;->createCaptioningChangeListener(Landroidx/media3/ui/PlayerView;Landroid/content/Context;)Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    move-result-object v1

    iput-object v1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->captioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    :cond_2
    return-void
.end method

.method private final setupFullscreenButton()V
    .locals 4

    .line 194
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x0

    const-string v2, "playerView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v3, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/video/FullscreenPlayerActivity;)V

    invoke-virtual {v0, v3}, Landroidx/media3/ui/PlayerView;->setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V

    .line 196
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    sget v0, Landroidx/media3/ui/R$id;->exo_fullscreen:I

    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    .line 197
    sget v1, Landroidx/media3/ui/R$drawable;->exo_icon_fullscreen_exit:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method private static final setupFullscreenButton$lambda$9(Lexpo/modules/video/FullscreenPlayerActivity;Z)V
    .locals 0

    .line 194
    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->didFinish:Z

    .line 126
    iget-object v1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoViewId:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {v2, v1}, Lexpo/modules/video/managers/VideoManager;->getVideoView(Ljava/lang/String;)Lexpo/modules/video/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/video/VideoView;->attachPlayer()V

    .line 129
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 130
    invoke-virtual {p0, v0, v3, v3}, Lexpo/modules/video/FullscreenPlayerActivity;->overrideActivityTransition(III)V

    return-void

    .line 133
    :cond_1
    invoke-virtual {p0, v3, v3}, Lexpo/modules/video/FullscreenPlayerActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onAppBackgrounded()V
    .locals 0

    .line 28
    invoke-static {p0}, Lexpo/modules/video/listeners/VideoManagerListener$DefaultImpls;->onAppBackgrounded(Lexpo/modules/video/listeners/VideoManagerListener;)V

    return-void
.end method

.method public onAppForegrounded()V
    .locals 1

    .line 188
    iget-boolean v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->isStopped:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 189
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 244
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->orientationHelper:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "player_uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    iput-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoViewId:Ljava/lang/String;

    .line 49
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Lexpo/modules/kotlin/exception/CodedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x21

    const-string v1, "fullscreen_options"

    const/4 v2, 0x0

    if-lt p1, v0, :cond_1

    .line 50
    :try_start_1
    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-class v0, Lexpo/modules/video/records/FullscreenOptions;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/records/FullscreenOptions;

    if-eqz p1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    new-instance p1, Lexpo/modules/video/FullScreenOptionsNotFoundException;

    invoke-direct {p1}, Lexpo/modules/video/FullScreenOptionsNotFoundException;-><init>()V

    throw p1

    .line 54
    :cond_1
    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Lexpo/modules/video/records/FullscreenOptions;

    if-eqz v0, :cond_2

    check-cast p1, Lexpo/modules/video/records/FullscreenOptions;

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_10

    .line 49
    :goto_1
    iput-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->options:Lexpo/modules/video/records/FullscreenOptions;

    .line 58
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoViewId:Ljava/lang/String;

    if-eqz p1, :cond_f

    sget-object v0, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {v0, p1}, Lexpo/modules/video/managers/VideoManager;->getVideoView(Ljava/lang/String;)Lexpo/modules/video/VideoView;

    move-result-object p1

    if-eqz p1, :cond_f

    iput-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    .line 61
    new-instance p1, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    .line 62
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 63
    iget-object v1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->options:Lexpo/modules/video/records/FullscreenOptions;
    :try_end_1
    .catch Lexpo/modules/kotlin/exception/CodedException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "options"

    if-nez v1, :cond_3

    :try_start_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .line 61
    :cond_3
    new-instance v4, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/video/FullscreenPlayerActivity;)V

    new-instance v5, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/video/FullscreenPlayerActivity;)V

    invoke-direct {p1, v0, v1, v4, v5}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;-><init>(Landroid/content/Context;Lexpo/modules/video/records/FullscreenOptions;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->orientationHelper:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    .line 71
    invoke-virtual {p1}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->startOrientationEventListener()V
    :try_end_2
    .catch Lexpo/modules/kotlin/exception/CodedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    sget p1, Lexpo/modules/video/R$layout;->fullscreen_player_activity:I

    invoke-virtual {p0, p1}, Lexpo/modules/video/FullscreenPlayerActivity;->setContentView(I)V

    .line 79
    sget p1, Lexpo/modules/video/R$id;->enclosing_layout:I

    invoke-virtual {p0, p1}, Lexpo/modules/video/FullscreenPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->mContentView:Landroid/view/View;

    .line 80
    sget p1, Lexpo/modules/video/R$id;->player_view:I

    invoke-virtual {p0, p1}, Lexpo/modules/video/FullscreenPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/media3/ui/PlayerView;

    iput-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    .line 81
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->options:Lexpo/modules/video/records/FullscreenOptions;

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_4
    invoke-virtual {p1}, Lexpo/modules/video/records/FullscreenOptions;->getOrientation()Lexpo/modules/video/enums/FullscreenOrientation;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/video/enums/FullscreenOrientation;->toActivityOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lexpo/modules/video/FullscreenPlayerActivity;->setRequestedOrientation(I)V

    .line 83
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    const-string v0, "videoView"

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_5
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    .line 84
    const-string v1, "playerView"

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 85
    check-cast p1, Landroidx/media3/common/Player;

    iget-object v3, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    if-nez v3, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_6
    invoke-virtual {v3}, Lexpo/modules/video/VideoView;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v3

    iget-object v4, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v4, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_7
    invoke-static {p1, v3, v4}, Landroidx/media3/ui/PlayerView;->switchTargetView(Landroidx/media3/common/Player;Landroidx/media3/ui/PlayerView;Landroidx/media3/ui/PlayerView;)V

    .line 86
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->hasBeenDisconnectedFromVideoView()V

    .line 89
    :cond_8
    sget-object p1, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, p0}, Lexpo/modules/video/managers/VideoManager;->registerFullscreenPlayerActivity(Ljava/lang/String;Lexpo/modules/video/FullscreenPlayerActivity;)V

    .line 90
    sget-object p1, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    move-object v3, p0

    check-cast v3, Lexpo/modules/video/listeners/VideoManagerListener;

    invoke-virtual {p1, v3}, Lexpo/modules/video/managers/VideoManager;->registerListener(Lexpo/modules/video/listeners/VideoManagerListener;)V

    .line 91
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez p1, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_9
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getPlayer()Landroidx/media3/common/Player;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 92
    invoke-interface {p1}, Landroidx/media3/common/Player;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object p1

    const-string v3, "getVideoSize(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v3, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_a
    invoke-virtual {v3}, Landroidx/media3/ui/PlayerView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v4, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_b
    invoke-virtual {v4}, Landroidx/media3/ui/PlayerView;->getHeight()I

    move-result v1

    iget-object v4, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    if-nez v4, :cond_c

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_c
    invoke-virtual {v4}, Lexpo/modules/video/VideoView;->getContentFit()Lexpo/modules/video/enums/ContentFit;

    move-result-object v4

    invoke-static {p1, v3, v1, v4}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->calculatePiPAspectRatio(Landroidx/media3/common/VideoSize;IILexpo/modules/video/enums/ContentFit;)Landroid/util/Rational;

    move-result-object p1

    .line 93
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    iget-object v3, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    if-nez v3, :cond_d

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    move-object v2, v3

    :goto_2
    invoke-virtual {v2}, Lexpo/modules/video/VideoView;->getAutoEnterPiP()Z

    move-result v0

    invoke-static {v1, v0, p1}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyPiPParams(Landroid/app/Activity;ZLandroid/util/Rational;)V

    :cond_e
    return-void

    .line 59
    :cond_f
    :try_start_3
    new-instance p1, Lexpo/modules/video/FullScreenVideoViewNotFoundException;

    invoke-direct {p1}, Lexpo/modules/video/FullScreenVideoViewNotFoundException;-><init>()V

    throw p1

    .line 55
    :cond_10
    new-instance p1, Lexpo/modules/video/FullScreenOptionsNotFoundException;

    invoke-direct {p1}, Lexpo/modules/video/FullScreenOptionsNotFoundException;-><init>()V

    throw p1

    .line 47
    :cond_11
    new-instance p1, Lexpo/modules/video/FullScreenVideoViewNotFoundException;

    invoke-direct {p1}, Lexpo/modules/video/FullScreenVideoViewNotFoundException;-><init>()V

    throw p1
    :try_end_3
    .catch Lexpo/modules/kotlin/exception/CodedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Lexpo/modules/kotlin/exception/CodedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "ExpoVideo"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 171
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->captioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 172
    const-string v2, "captioning"

    invoke-virtual {p0, v2}, Lexpo/modules/video/FullscreenPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/view/accessibility/CaptioningManager;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/accessibility/CaptioningManager;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {v2, v0}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 174
    :cond_1
    iput-object v1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->captioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 177
    :cond_2
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    if-nez v0, :cond_3

    const-string v0, "videoView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lexpo/modules/video/VideoView;->exitFullscreen()V

    .line 178
    sget-object v0, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    move-object v1, p0

    check-cast v1, Lexpo/modules/video/listeners/VideoManagerListener;

    invoke-virtual {v0, v1}, Lexpo/modules/video/managers/VideoManager;->unregisterListener(Lexpo/modules/video/listeners/VideoManagerListener;)V

    .line 179
    sget-object v0, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/video/managers/VideoManager;->unregisterFullscreenPlayerActivity(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->orientationHelper:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->stopOrientationEventListener()V

    :cond_4
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 146
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getStaysActiveInBackground()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->didFinish:Z

    if-nez v0, :cond_3

    .line 147
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlaying()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->wasAutoPaused:Z

    if-eqz v1, :cond_3

    .line 149
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v0, :cond_2

    const-string v0, "playerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 150
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->pause()V

    .line 153
    :cond_3
    :goto_1
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->orientationHelper:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->stopOrientationEventListener()V

    .line 154
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    .line 201
    const-string v0, "playerView"

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 202
    iget-object v2, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_0
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    if-nez v0, :cond_1

    const-string v0, "videoView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lexpo/modules/video/VideoView;->getUseNativeControls()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    goto :goto_2

    .line 204
    :cond_2
    iget-object v2, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v2, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 206
    :goto_2
    iget-boolean v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->wasAutoPaused:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 207
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->play()V

    .line 209
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-direct {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->hideStatusBar()V

    .line 100
    invoke-direct {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->setupFullscreenButton()V

    .line 101
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getRequiresLinearPlayback()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 102
    :goto_0
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    const-string v1, "videoView"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lexpo/modules/video/VideoView;->getButtonOptions()Lexpo/modules/video/records/ButtonOptions;

    move-result-object v3

    const/16 v12, 0x7f

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v3 .. v13}, Lexpo/modules/video/records/ButtonOptions;->copy$default(Lexpo/modules/video/records/ButtonOptions;ZZZZLjava/lang/Boolean;ZZZILjava/lang/Object;)Lexpo/modules/video/records/ButtonOptions;

    move-result-object v0

    .line 103
    iget-object v3, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    const-string v4, "playerView"

    if-nez v3, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    invoke-static {v3, v0, p1}, Lexpo/modules/video/PlayerViewExtensionKt;->applyButtonOptions(Landroidx/media3/ui/PlayerView;Lexpo/modules/video/records/ButtonOptions;Z)V

    .line 104
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-static {v0, p1}, Lexpo/modules/video/PlayerViewExtensionKt;->setTimeBarInteractive(Landroidx/media3/ui/PlayerView;Z)V

    .line 105
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    new-instance v3, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/video/FullscreenPlayerActivity;Z)V

    invoke-virtual {v0, v3}, Landroidx/media3/ui/PlayerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 110
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez p1, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_5
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-virtual {v0}, Lexpo/modules/video/VideoView;->getButtonOptions()Lexpo/modules/video/records/ButtonOptions;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/video/records/ButtonOptions;->getShowSubtitles()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    invoke-virtual {v0}, Lexpo/modules/video/VideoView;->getCurrentTrackHasSubtitles()Z

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->setShowSubtitleButton(Z)V

    .line 113
    sget-object p1, Lexpo/modules/video/utils/SubtitleUtils;->INSTANCE:Lexpo/modules/video/utils/SubtitleUtils;

    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v0, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lexpo/modules/video/utils/SubtitleUtils;->configureSubtitleView(Landroidx/media3/ui/PlayerView;Landroid/content/Context;)V

    .line 116
    invoke-direct {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->setupCaptioningChangeListener()V

    .line 118
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez p1, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object v2, p1

    :goto_2
    new-instance p1, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda4;-><init>(Lexpo/modules/video/FullscreenPlayerActivity;)V

    invoke-virtual {v2, p1}, Landroidx/media3/ui/PlayerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 138
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->orientationHelper:Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->startOrientationEventListener()V

    .line 139
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x0

    const-string v2, "playerView"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 141
    sget-object v0, Lexpo/modules/video/utils/SubtitleUtils;->INSTANCE:Lexpo/modules/video/utils/SubtitleUtils;

    iget-object v3, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lexpo/modules/video/utils/SubtitleUtils;->configureSubtitleView(Landroidx/media3/ui/PlayerView;Landroid/content/Context;)V

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->isStopped:Z

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->isStopped:Z

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onVideoViewRegistered(Lexpo/modules/video/VideoView;Ljava/util/Collection;)V
    .locals 0
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

    .line 28
    invoke-static {p0, p1, p2}, Lexpo/modules/video/listeners/VideoManagerListener$DefaultImpls;->onVideoViewRegistered(Lexpo/modules/video/listeners/VideoManagerListener;Lexpo/modules/video/VideoView;Ljava/util/Collection;)V

    return-void
.end method

.method public onVideoViewUnregistered(Lexpo/modules/video/VideoView;Ljava/util/Collection;)V
    .locals 0
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

    .line 28
    invoke-static {p0, p1, p2}, Lexpo/modules/video/listeners/VideoManagerListener$DefaultImpls;->onVideoViewUnregistered(Lexpo/modules/video/listeners/VideoManagerListener;Lexpo/modules/video/VideoView;Ljava/util/Collection;)V

    return-void
.end method
