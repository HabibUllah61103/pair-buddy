.class public final Lexpo/modules/video/managers/PictureInPictureManager;
.super Ljava/lang/Object;
.source "PictureInPictureManager.kt"

# interfaces
.implements Lexpo/modules/video/PictureInPictureFragmentListener;
.implements Lexpo/modules/video/listeners/VideoManagerListener;
.implements Lexpo/modules/video/listeners/VideoViewListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPictureInPictureManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PictureInPictureManager.kt\nexpo/modules/video/managers/PictureInPictureManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,330:1\n1617#2,9:331\n1869#2:340\n1870#2:342\n1626#2:343\n2746#2,3:344\n1761#2,3:347\n1869#2,2:350\n1869#2,2:352\n295#2,2:354\n774#2:356\n865#2,2:357\n774#2:359\n865#2,2:360\n1056#2:362\n774#2:363\n865#2,2:364\n774#2:366\n865#2,2:367\n774#2:369\n865#2,2:370\n1761#2,3:372\n1#3:341\n*S KotlinDebug\n*F\n+ 1 PictureInPictureManager.kt\nexpo/modules/video/managers/PictureInPictureManager\n*L\n45#1:331,9\n45#1:340\n45#1:342\n45#1:343\n72#1:344,3\n73#1:347,3\n129#1:350,2\n144#1:352,2\n175#1:354,2\n238#1:356\n238#1:357,2\n239#1:359\n239#1:360,2\n239#1:362\n240#1:363\n240#1:364,2\n241#1:366\n241#1:367,2\n248#1:369\n248#1:370,2\n309#1:372,3\n45#1:341\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u001e\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\"\u001a\u00020#J\u0008\u0010$\u001a\u00020#H\u0002J\u000e\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0012J\u0010\u0010\'\u001a\u00020#2\u0006\u0010(\u001a\u00020\u0012H\u0002J \u0010)\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00122\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+H\u0016J\u0018\u0010-\u001a\u00020\r2\u0006\u0010.\u001a\u00020+2\u0006\u0010/\u001a\u00020+H\u0002J\u0008\u00100\u001a\u00020#H\u0016J\u0008\u00101\u001a\u00020#H\u0016J\u001e\u00102\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00122\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u001204H\u0016J\u001e\u00105\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00122\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u001204H\u0016J\u0008\u00106\u001a\u00020#H\u0016J\u0008\u00107\u001a\u00020#H\u0016J\u0008\u00108\u001a\u00020#H\u0002J\u0008\u00109\u001a\u00020#H\u0002J\u0008\u0010:\u001a\u00020#H\u0002J\u0018\u0010;\u001a\u0004\u0018\u00010\u00122\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001bH\u0002J\u0008\u0010<\u001a\u00020#H\u0002J\u0010\u0010=\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0012H\u0002J\u0012\u0010>\u001a\u00020#2\u0008\u0010&\u001a\u0004\u0018\u00010\u0012H\u0002J\u0018\u0010?\u001a\u00020\r2\u0006\u0010@\u001a\u00020+2\u0006\u0010/\u001a\u00020+H\u0002J\u0010\u0010A\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u0012H\u0002R\u001c\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00050\u00050\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R*\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00080\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006B"
    }
    d2 = {
        "Lexpo/modules/video/managers/PictureInPictureManager;",
        "Lexpo/modules/video/PictureInPictureFragmentListener;",
        "Lexpo/modules/video/listeners/VideoManagerListener;",
        "Lexpo/modules/video/listeners/VideoViewListener;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "<init>",
        "(Lexpo/modules/kotlin/AppContext;)V",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "mainActivity",
        "Landroid/app/Activity;",
        "value",
        "",
        "autoEnterPiP",
        "getAutoEnterPiP",
        "()Z",
        "isInPiP",
        "Lexpo/modules/video/VideoView;",
        "currentPiPViewCandidate",
        "getCurrentPiPViewCandidate",
        "()Ljava/lang/ref/WeakReference;",
        "pipHelperFragment",
        "Lexpo/modules/video/PictureInPictureHelperFragment;",
        "videoViews",
        "",
        "strongVideoViews",
        "",
        "getStrongVideoViews",
        "()Ljava/util/List;",
        "rootViewChildrenOriginalVisibility",
        "",
        "",
        "isReleased",
        "release",
        "",
        "findAndSetupPipCandidate",
        "enterPictureInPicture",
        "videoView",
        "applyPipParamsForView",
        "view",
        "onPiPParamsChanged",
        "oldPiPParams",
        "Lexpo/modules/video/records/PiPParams;",
        "newPiPParams",
        "pipParamChangeInfluenceRectHint",
        "old",
        "new",
        "onPictureInPictureStart",
        "onPictureInPictureStop",
        "onVideoViewRegistered",
        "allVideoViews",
        "",
        "onVideoViewUnregistered",
        "onAppBackgrounded",
        "onAppForegrounded",
        "addPiPHelperFragment",
        "removePiPHelperFragment",
        "electAutoPipViewCandidate",
        "findAutoPiPViewCandidate",
        "maybeWarnAboutAutoEnterViews",
        "layoutForPiPEnter",
        "layoutForPiPExit",
        "paramChangeInfluencesAutoEnter",
        "previous",
        "shouldPauseOnBackground",
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
.field private final appContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/AppContext;",
            ">;"
        }
    .end annotation
.end field

.field private autoEnterPiP:Z

.field private currentPiPViewCandidate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/VideoView;",
            ">;"
        }
    .end annotation
.end field

.field private isInPiP:Z

.field private isReleased:Z

.field private final mainActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private pipHelperFragment:Lexpo/modules/video/PictureInPictureHelperFragment;

.field private final rootViewChildrenOriginalVisibility:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final videoViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/VideoView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$61SpAnFX1KIMl8ywqCBMysYN8cg(Lexpo/modules/video/VideoView;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/managers/PictureInPictureManager;->onVideoViewUnregistered$lambda$10(Lexpo/modules/video/VideoView;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lexpo/modules/kotlin/AppContext;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->appContext:Ljava/lang/ref/WeakReference;

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->mainActivity:Ljava/lang/ref/WeakReference;

    .line 39
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lexpo/modules/video/managers/PictureInPictureManager;->currentPiPViewCandidate:Ljava/lang/ref/WeakReference;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lexpo/modules/video/managers/PictureInPictureManager;->videoViews:Ljava/util/List;

    .line 46
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lexpo/modules/video/managers/PictureInPictureManager;->rootViewChildrenOriginalVisibility:Ljava/util/Map;

    .line 50
    sget-object p1, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    move-object v0, p0

    check-cast v0, Lexpo/modules/video/listeners/VideoManagerListener;

    invoke-virtual {p1, v0}, Lexpo/modules/video/managers/VideoManager;->registerListener(Lexpo/modules/video/listeners/VideoManagerListener;)V

    return-void
.end method

.method public static final synthetic access$getStrongVideoViews(Lexpo/modules/video/managers/PictureInPictureManager;)Ljava/util/List;
    .locals 0

    .line 28
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->getStrongVideoViews()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$shouldPauseOnBackground(Lexpo/modules/video/managers/PictureInPictureManager;Lexpo/modules/video/VideoView;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lexpo/modules/video/managers/PictureInPictureManager;->shouldPauseOnBackground(Lexpo/modules/video/VideoView;)Z

    move-result p0

    return p0
.end method

.method private final addPiPHelperFragment()V
    .locals 3

    .line 209
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->mainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 210
    new-instance v1, Lexpo/modules/video/PictureInPictureHelperFragment;

    move-object v2, p0

    check-cast v2, Lexpo/modules/video/PictureInPictureFragmentListener;

    invoke-direct {v1, v2}, Lexpo/modules/video/PictureInPictureHelperFragment;-><init>(Lexpo/modules/video/PictureInPictureFragmentListener;)V

    .line 211
    iput-object v1, p0, Lexpo/modules/video/managers/PictureInPictureManager;->pipHelperFragment:Lexpo/modules/video/PictureInPictureHelperFragment;

    .line 212
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 213
    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Lexpo/modules/video/PictureInPictureHelperFragment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method private final applyPipParamsForView(Lexpo/modules/video/VideoView;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->mainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->calculateRectHint(Landroidx/media3/ui/PlayerView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyRectHint(Landroid/app/Activity;Landroid/graphics/Rect;)V

    .line 104
    iget-boolean v1, p0, Lexpo/modules/video/managers/PictureInPictureManager;->autoEnterPiP:Z

    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/video/records/PiPParams;->getAspectRatio()Landroid/util/Rational;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyPiPParams(Landroid/app/Activity;ZLandroid/util/Rational;)V

    :cond_0
    return-void
.end method

.method private final electAutoPipViewCandidate()V
    .locals 2

    .line 230
    iget-boolean v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->isInPiP:Z

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->getStrongVideoViews()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/video/managers/PictureInPictureManager;->findAutoPiPViewCandidate(Ljava/util/List;)Lexpo/modules/video/VideoView;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lexpo/modules/video/managers/PictureInPictureManager;->currentPiPViewCandidate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final findAndSetupPipCandidate()V
    .locals 5

    .line 69
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->getStrongVideoViews()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/video/managers/PictureInPictureManager;->findAutoPiPViewCandidate(Ljava/util/List;)Lexpo/modules/video/VideoView;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lexpo/modules/video/managers/PictureInPictureManager;->currentPiPViewCandidate:Ljava/lang/ref/WeakReference;

    .line 72
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->getStrongVideoViews()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 344
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/video/VideoView;

    .line 72
    invoke-virtual {v2}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/video/records/PiPParams;->getBlocksAppFromEntering()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->getStrongVideoViews()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 347
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 348
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/video/VideoView;

    .line 73
    invoke-virtual {v2}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/video/records/PiPParams;->getAutoEnter()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/video/records/PiPParams;->getCanEnter()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 74
    :goto_2
    iput-boolean v1, p0, Lexpo/modules/video/managers/PictureInPictureManager;->autoEnterPiP:Z

    if-nez v1, :cond_6

    .line 77
    iget-object v1, p0, Lexpo/modules/video/managers/PictureInPictureManager;->mainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 78
    iget-boolean v2, p0, Lexpo/modules/video/managers/PictureInPictureManager;->autoEnterPiP:Z

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyPiPParams$default(Landroid/app/Activity;ZLandroid/util/Rational;ILjava/lang/Object;)V

    :cond_6
    if-eqz v0, :cond_7

    .line 83
    invoke-direct {p0, v0}, Lexpo/modules/video/managers/PictureInPictureManager;->applyPipParamsForView(Lexpo/modules/video/VideoView;)V

    :cond_7
    return-void
.end method

.method private final findAutoPiPViewCandidate(Ljava/util/List;)Lexpo/modules/video/VideoView;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/video/VideoView;",
            ">;)",
            "Lexpo/modules/video/VideoView;"
        }
    .end annotation

    .line 238
    check-cast p1, Ljava/lang/Iterable;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 357
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lexpo/modules/video/VideoView;

    .line 238
    invoke-virtual {v2}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/video/records/PiPParams;->getAutoEnter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 239
    move-object p1, v0

    check-cast p1, Ljava/lang/Iterable;

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 360
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lexpo/modules/video/VideoView;

    .line 239
    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lexpo/modules/video/utils/ViewVisibilityUtilsKt;->isVisibleOnScreen(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 361
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 359
    check-cast v1, Ljava/lang/Iterable;

    .line 362
    new-instance v2, Lexpo/modules/video/managers/PictureInPictureManager$findAutoPiPViewCandidate$$inlined$sortedBy$1;

    invoke-direct {v2}, Lexpo/modules/video/managers/PictureInPictureManager$findAutoPiPViewCandidate$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 239
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 364
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lexpo/modules/video/VideoView;

    .line 240
    invoke-virtual {v5}, Lexpo/modules/video/VideoView;->getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lexpo/modules/video/player/VideoPlayer;->getPlaying()Z

    move-result v6

    if-ne v6, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lexpo/modules/video/VideoView;->getWasAutoPaused()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 364
    :goto_3
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 365
    :cond_6
    check-cast v2, Ljava/util/List;

    .line 241
    move-object p1, v1

    check-cast p1, Ljava/lang/Iterable;

    .line 366
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 367
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lexpo/modules/video/VideoView;

    .line 241
    invoke-virtual {v6}, Lexpo/modules/video/VideoView;->getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lexpo/modules/video/player/VideoPlayer;->getPlaying()Z

    move-result v6

    if-ne v6, v4, :cond_7

    .line 367
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 368
    :cond_8
    check-cast v3, Ljava/util/List;

    const/4 p1, 0x4

    .line 242
    new-array p1, p1, [Ljava/util/List;

    const/4 v5, 0x0

    aput-object v3, p1, v5

    aput-object v2, p1, v4

    const/4 v2, 0x2

    aput-object v1, p1, v2

    const/4 v1, 0x3

    aput-object v0, p1, v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 244
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/VideoView;

    return-object p1
.end method

.method private final getStrongVideoViews()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/video/VideoView;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->videoViews:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 340
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 339
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 45
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/video/VideoView;

    if-eqz v2, :cond_0

    .line 339
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final layoutForPiPEnter(Lexpo/modules/video/VideoView;)V
    .locals 6

    .line 266
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->mainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object p1

    .line 268
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x1020002

    .line 269
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 271
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 272
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 273
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 274
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 275
    iget-object v4, p0, Lexpo/modules/video/managers/PictureInPictureManager;->rootViewChildrenOriginalVisibility:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 279
    :cond_4
    check-cast p1, Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final layoutForPiPExit(Lexpo/modules/video/VideoView;)V
    .locals 5

    .line 283
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->mainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 285
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v2, "getDecorView(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x1020002

    .line 286
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 288
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_2

    .line 289
    invoke-virtual {p1, v1}, Lexpo/modules/video/VideoView;->addView(Landroid/view/View;)V

    .line 291
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_4

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 293
    iget-object v3, p0, Lexpo/modules/video/managers/PictureInPictureManager;->rootViewChildrenOriginalVisibility:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 294
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 297
    :cond_4
    iget-object p1, p0, Lexpo/modules/video/managers/PictureInPictureManager;->rootViewChildrenOriginalVisibility:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private final maybeWarnAboutAutoEnterViews()V
    .locals 4

    .line 248
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->getStrongVideoViews()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 369
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 370
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lexpo/modules/video/VideoView;

    .line 248
    invoke-virtual {v3}, Lexpo/modules/video/VideoView;->getAutoEnterPiP()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 252
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 253
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->appContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/AppContext;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getJsLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 254
    const-string v1, "expo-video: Detected multiple `VideoViews` with `startsPictureInPictureAutomatically` set to `true`while entering picture in picture. To ensure no visual issues when auto-entering PiP, make sure that there is only one active `VideoView` with that property."

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 253
    invoke-static {v0, v1, v3, v2, v3}, Lexpo/modules/core/logging/Logger;->warn$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static final onVideoViewUnregistered$lambda$10(Lexpo/modules/video/VideoView;Ljava/lang/ref/WeakReference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final paramChangeInfluencesAutoEnter(Lexpo/modules/video/records/PiPParams;Lexpo/modules/video/records/PiPParams;)Z
    .locals 2

    .line 301
    invoke-virtual {p1}, Lexpo/modules/video/records/PiPParams;->getAutoEnter()Z

    move-result v0

    invoke-virtual {p2}, Lexpo/modules/video/records/PiPParams;->getAutoEnter()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lexpo/modules/video/records/PiPParams;->getCanEnter()Z

    move-result v0

    invoke-virtual {p2}, Lexpo/modules/video/records/PiPParams;->getCanEnter()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lexpo/modules/video/records/PiPParams;->getBlocksAppFromEntering()Z

    move-result p1

    invoke-virtual {p2}, Lexpo/modules/video/records/PiPParams;->getBlocksAppFromEntering()Z

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final pipParamChangeInfluenceRectHint(Lexpo/modules/video/records/PiPParams;Lexpo/modules/video/records/PiPParams;)Z
    .locals 2

    .line 118
    invoke-virtual {p1}, Lexpo/modules/video/records/PiPParams;->getRectHint()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Lexpo/modules/video/records/PiPParams;->getRectHint()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lexpo/modules/video/records/PiPParams;->getAspectRatio()Landroid/util/Rational;

    move-result-object p1

    invoke-virtual {p2}, Lexpo/modules/video/records/PiPParams;->getAspectRatio()Landroid/util/Rational;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final removePiPHelperFragment()V
    .locals 2

    .line 219
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->pipHelperFragment:Lexpo/modules/video/PictureInPictureHelperFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/video/PictureInPictureHelperFragment;->release()V

    .line 221
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->mainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 222
    iget-object v1, p0, Lexpo/modules/video/managers/PictureInPictureManager;->pipHelperFragment:Lexpo/modules/video/PictureInPictureHelperFragment;

    if-nez v1, :cond_2

    goto :goto_1

    .line 223
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 224
    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    :goto_1
    return-void
.end method

.method private final shouldPauseOnBackground(Lexpo/modules/video/VideoView;)Z
    .locals 5

    .line 305
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->isInFullscreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 309
    :cond_0
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->getStrongVideoViews()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 372
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 373
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/video/VideoView;

    .line 309
    invoke-virtual {v2}, Lexpo/modules/video/VideoView;->isInFullscreen()Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    .line 313
    :cond_3
    :goto_0
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->currentPiPViewCandidate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/VideoView;

    .line 314
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v2

    .line 315
    invoke-virtual {v2}, Lexpo/modules/video/records/PiPParams;->getAutoEnter()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lexpo/modules/video/records/PiPParams;->getWillEnter()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v3

    .line 316
    :goto_2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v0, :cond_7

    .line 319
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getStaysActiveInBackground()Z

    move-result v1

    :cond_6
    xor-int/lit8 p1, v1, 0x1

    return p1

    :cond_7
    if-eqz v2, :cond_8

    if-nez v4, :cond_8

    return v3

    :cond_8
    return v1
.end method


# virtual methods
.method public final enterPictureInPicture(Lexpo/modules/video/VideoView;)V
    .locals 2

    const-string v0, "videoView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->mainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lexpo/modules/video/managers/PictureInPictureManager;->currentPiPViewCandidate:Ljava/lang/ref/WeakReference;

    .line 91
    invoke-direct {p0, p1}, Lexpo/modules/video/managers/PictureInPictureManager;->applyPipParamsForView(Lexpo/modules/video/VideoView;)V

    .line 94
    new-instance p1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {p1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    return-void
.end method

.method public final getAutoEnterPiP()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->autoEnterPiP:Z

    return v0
.end method

.method public final getCurrentPiPViewCandidate()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/VideoView;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->currentPiPViewCandidate:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final isInPiP()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->isInPiP:Z

    return v0
.end method

.method public onAppBackgrounded()V
    .locals 9

    .line 175
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->getStrongVideoViews()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 354
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lexpo/modules/video/VideoView;

    .line 175
    invoke-virtual {v3}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/video/records/PiPParams;->getWillEnter()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lexpo/modules/video/VideoView;

    if-nez v1, :cond_2

    .line 178
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->getStrongVideoViews()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/video/managers/PictureInPictureManager;->findAutoPiPViewCandidate(Ljava/util/List;)Lexpo/modules/video/VideoView;

    move-result-object v1

    .line 179
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->currentPiPViewCandidate:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    .line 182
    invoke-direct {p0, v1}, Lexpo/modules/video/managers/PictureInPictureManager;->applyPipParamsForView(Lexpo/modules/video/VideoView;)V

    .line 188
    :cond_3
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->appContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/AppContext;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v0, Lexpo/modules/video/managers/PictureInPictureManager$onAppBackgrounded$2;

    invoke-direct {v0, p0, v2}, Lexpo/modules/video/managers/PictureInPictureManager$onAppBackgrounded$2;-><init>(Lexpo/modules/video/managers/PictureInPictureManager;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_4
    return-void
.end method

.method public onAppForegrounded()V
    .locals 7

    .line 201
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->appContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/AppContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lexpo/modules/video/managers/PictureInPictureManager$onAppForegrounded$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lexpo/modules/video/managers/PictureInPictureManager$onAppForegrounded$1;-><init>(Lexpo/modules/video/managers/PictureInPictureManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public onPiPParamsChanged(Lexpo/modules/video/VideoView;Lexpo/modules/video/records/PiPParams;Lexpo/modules/video/records/PiPParams;)V
    .locals 1

    const-string v0, "videoView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldPiPParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPiPParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p2, p3}, Lexpo/modules/video/managers/PictureInPictureManager;->pipParamChangeInfluenceRectHint(Lexpo/modules/video/records/PiPParams;Lexpo/modules/video/records/PiPParams;)Z

    move-result v0

    .line 110
    invoke-direct {p0, p2, p3}, Lexpo/modules/video/managers/PictureInPictureManager;->paramChangeInfluencesAutoEnter(Lexpo/modules/video/records/PiPParams;Lexpo/modules/video/records/PiPParams;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 111
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->findAndSetupPipCandidate()V

    return-void

    .line 112
    :cond_0
    iget-object p2, p0, Lexpo/modules/video/managers/PictureInPictureManager;->currentPiPViewCandidate:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0, p1}, Lexpo/modules/video/managers/PictureInPictureManager;->applyPipParamsForView(Lexpo/modules/video/VideoView;)V

    :cond_1
    return-void
.end method

.method public onPictureInPictureStart()V
    .locals 3

    .line 122
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->maybeWarnAboutAutoEnterViews()V

    .line 124
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->currentPiPViewCandidate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/VideoView;

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, v0}, Lexpo/modules/video/managers/PictureInPictureManager;->layoutForPiPEnter(Lexpo/modules/video/VideoView;)V

    .line 129
    :cond_0
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->getStrongVideoViews()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 350
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/video/VideoView;

    .line 130
    invoke-virtual {v2, v0}, Lexpo/modules/video/VideoView;->onStartPictureInPicture(Lexpo/modules/video/VideoView;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->isInPiP:Z

    return-void
.end method

.method public onPictureInPictureStop()V
    .locals 3

    .line 137
    iget-boolean v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->isInPiP:Z

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->currentPiPViewCandidate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/VideoView;

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0, v0}, Lexpo/modules/video/managers/PictureInPictureManager;->layoutForPiPExit(Lexpo/modules/video/VideoView;)V

    .line 144
    :cond_1
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->getStrongVideoViews()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 352
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/video/VideoView;

    .line 145
    iget-object v2, p0, Lexpo/modules/video/managers/PictureInPictureManager;->currentPiPViewCandidate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/video/VideoView;

    invoke-virtual {v1, v2}, Lexpo/modules/video/VideoView;->onStopPictureInPicture(Lexpo/modules/video/VideoView;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->isInPiP:Z

    return-void
.end method

.method public onVideoViewRegistered(Lexpo/modules/video/VideoView;Ljava/util/Collection;)V
    .locals 1
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

    const-string v0, "videoView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allVideoViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lexpo/modules/video/managers/PictureInPictureManager;->videoViews:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object p2, p0, Lexpo/modules/video/managers/PictureInPictureManager;->videoViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 155
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->addPiPHelperFragment()V

    .line 157
    :cond_0
    move-object p2, p0

    check-cast p2, Lexpo/modules/video/listeners/VideoViewListener;

    invoke-virtual {p1, p2}, Lexpo/modules/video/VideoView;->addVideoViewListener(Lexpo/modules/video/listeners/VideoViewListener;)V

    .line 159
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->electAutoPipViewCandidate()V

    return-void
.end method

.method public onVideoViewUnregistered(Lexpo/modules/video/VideoView;Ljava/util/Collection;)V
    .locals 1
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

    const-string v0, "videoView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allVideoViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lexpo/modules/video/managers/PictureInPictureManager;->videoViews:Ljava/util/List;

    new-instance v0, Lexpo/modules/video/managers/PictureInPictureManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lexpo/modules/video/managers/PictureInPictureManager$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/video/VideoView;)V

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->retainAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 165
    iget-object p2, p0, Lexpo/modules/video/managers/PictureInPictureManager;->videoViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 166
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->removePiPHelperFragment()V

    .line 168
    :cond_0
    move-object p2, p0

    check-cast p2, Lexpo/modules/video/listeners/VideoViewListener;

    invoke-virtual {p1, p2}, Lexpo/modules/video/VideoView;->removeVideoViewListener(Lexpo/modules/video/listeners/VideoViewListener;)V

    .line 169
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->findAndSetupPipCandidate()V

    return-void
.end method

.method public final release()V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->isInPiP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lexpo/modules/video/managers/PictureInPictureManager;->layoutForPiPExit(Lexpo/modules/video/VideoView;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->videoViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    invoke-direct {p0}, Lexpo/modules/video/managers/PictureInPictureManager;->removePiPHelperFragment()V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lexpo/modules/video/managers/PictureInPictureManager;->isReleased:Z

    return-void
.end method
