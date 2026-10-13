.class public Lexpo/modules/video/VideoView;
.super Lexpo/modules/kotlin/views/ExpoView;
.source "VideoView.kt"

# interfaces
.implements Lexpo/modules/video/listeners/VideoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/VideoView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoView.kt\nexpo/modules/video/VideoView\n+ 2 ViewEventDelegate.kt\nexpo/modules/kotlin/viewevent/ViewEventDelegateKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,440:1\n34#2,3:441\n34#2,3:444\n34#2,3:447\n34#2,3:450\n34#2,3:453\n1761#3,3:456\n1869#3,2:459\n*S KotlinDebug\n*F\n+ 1 VideoView.kt\nexpo/modules/video/VideoView\n*L\n50#1:441,3\n51#1:444,3\n52#1:447,3\n53#1:450,3\n54#1:453,3\n281#1:456,3\n95#1:459,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00dc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u0000 \u00b0\u00012\u00020\u00012\u00020\u0002:\u0002\u00b0\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010{\u001a\u00020\u0015J\u0006\u0010|\u001a\u00020\u0015J\u0006\u0010}\u001a\u00020\u0015J\u0006\u0010~\u001a\u00020\u0015J\u0006\u0010\u007f\u001a\u00020\u0015J\u0012\u0010\u0080\u0001\u001a\u00020\u00152\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0000J\u0012\u0010\u0082\u0001\u001a\u00020\u00152\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0000J\u0010\u0010\u0083\u0001\u001a\u00020\u00152\u0007\u0010\u0084\u0001\u001a\u00020=J\u0010\u0010\u0085\u0001\u001a\u00020\u00152\u0007\u0010\u0084\u0001\u001a\u00020=Jc\u0010\u0086\u0001\u001a\u00020\u00152\u0007\u0010\u0087\u0001\u001a\u00020g2\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0089\u00012\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00012\u000f\u0010\u008c\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010\u008d\u00012\u000f\u0010\u008f\u0001\u001a\n\u0012\u0005\u0012\u00030\u0090\u00010\u008d\u00012\u000f\u0010\u0091\u0001\u001a\n\u0012\u0005\u0012\u00030\u0092\u00010\u008d\u0001H\u0016\u00a2\u0006\u0003\u0010\u0093\u0001J,\u0010\u0094\u0001\u001a\u00020\u00152\u0007\u0010\u0087\u0001\u001a\u00020g2\u0007\u0010\u0095\u0001\u001a\u00020\u00082\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0003\u0010\u0097\u0001J\u001c\u0010\u0098\u0001\u001a\u00020\u00152\u0007\u0010\u0087\u0001\u001a\u00020g2\u0008\u0010\u0099\u0001\u001a\u00030\u009a\u0001H\u0016J\u0012\u0010\u009b\u0001\u001a\u00020\u00152\u0007\u0010\u0087\u0001\u001a\u00020gH\u0016J\t\u0010\u009c\u0001\u001a\u00020\u0015H\u0016J:\u0010\u009d\u0001\u001a\u00020\u00152\u0007\u0010\u009e\u0001\u001a\u00020\u00082\u0008\u0010\u009f\u0001\u001a\u00030\u00a0\u00012\u0008\u0010\u00a1\u0001\u001a\u00030\u00a0\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a0\u00012\u0008\u0010\u00a3\u0001\u001a\u00030\u00a0\u0001H\u0014J\t\u0010\u00a4\u0001\u001a\u00020\u0015H\u0014J\u001c\u0010\u00a5\u0001\u001a\u00020\u00152\u0007\u0010\u00a6\u0001\u001a\u00020A2\u0008\u0010\u00a7\u0001\u001a\u00030\u00a0\u0001H\u0014J\t\u0010\u00a8\u0001\u001a\u00020\u0015H\u0014J\u0015\u0010\u00a9\u0001\u001a\u00020\u00082\n\u0010\u00aa\u0001\u001a\u0005\u0018\u00010\u00ab\u0001H\u0016J\u0015\u0010\u00ac\u0001\u001a\u00020\u00082\n\u0010\u00aa\u0001\u001a\u0005\u0018\u00010\u00ab\u0001H\u0016J\u0012\u0010\u00ad\u0001\u001a\u00030\u00a0\u00012\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\t\u0010\u00ae\u0001\u001a\u00020\u0015H\u0002J\t\u0010\u00af\u0001\u001a\u00020\u0015H\u0002R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R!\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0016\u0010\u0017R!\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0019\u001a\u0004\u0008\u001b\u0010\u0017R!\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u0017R!\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0019\u001a\u0004\u0008!\u0010\u0017R!\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u0019\u001a\u0004\u0008$\u0010\u0017R\u001a\u0010&\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001e\u0010,\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010(R\u001e\u0010-\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010(R\u001e\u0010/\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010(R$\u00101\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010(\"\u0004\u00083\u0010*R$\u00105\u001a\u0002042\u0006\u0010+\u001a\u000204@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001a\u0010:\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020=0<0;X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020?X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020AX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020CX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010D\u001a\u0004\u0018\u00010EX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010F\u001a\u0004\u0018\u00010GX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020IX\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010L\u001a\u00020K2\u0006\u0010J\u001a\u00020K8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008Q\u0010R\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u001a\u0010S\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010(\"\u0004\u0008U\u0010*R*\u0010V\u001a\u0004\u0018\u00010\u00082\u0008\u0010+\u001a\u0004\u0018\u00010\u0008@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010[\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR+\u0010\\\u001a\u00020\u00082\u0006\u0010J\u001a\u00020\u00088F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008_\u0010R\u001a\u0004\u0008]\u0010(\"\u0004\u0008^\u0010*R$\u0010a\u001a\u00020`2\u0006\u0010+\u001a\u00020`@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR(\u0010h\u001a\u0004\u0018\u00010g2\u0008\u0010f\u001a\u0004\u0018\u00010g@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010lR$\u0010m\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010(\"\u0004\u0008o\u0010*R$\u0010p\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008q\u0010(\"\u0004\u0008r\u0010*R$\u0010t\u001a\u00020s2\u0006\u0010+\u001a\u00020s@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010xR\u000e\u0010y\u001a\u00020zX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00b1\u0001"
    }
    d2 = {
        "Lexpo/modules/video/VideoView;",
        "Lexpo/modules/kotlin/views/ExpoView;",
        "Lexpo/modules/video/listeners/VideoPlayerListener;",
        "context",
        "Landroid/content/Context;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "useTextureView",
        "",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Z)V",
        "videoViewId",
        "",
        "getVideoViewId",
        "()Ljava/lang/String;",
        "playerView",
        "Landroidx/media3/ui/PlayerView;",
        "getPlayerView",
        "()Landroidx/media3/ui/PlayerView;",
        "onPictureInPictureStart",
        "Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "",
        "getOnPictureInPictureStart",
        "()Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "onPictureInPictureStart$delegate",
        "Lexpo/modules/kotlin/viewevent/ViewEventDelegate;",
        "onPictureInPictureStop",
        "getOnPictureInPictureStop",
        "onPictureInPictureStop$delegate",
        "onFullscreenEnter",
        "getOnFullscreenEnter",
        "onFullscreenEnter$delegate",
        "onFullscreenExit",
        "getOnFullscreenExit",
        "onFullscreenExit$delegate",
        "onFirstFrameRender",
        "getOnFirstFrameRender",
        "onFirstFrameRender$delegate",
        "wasAutoPaused",
        "getWasAutoPaused",
        "()Z",
        "setWasAutoPaused",
        "(Z)V",
        "value",
        "isInFullscreen",
        "currentTrackHasSubtitles",
        "getCurrentTrackHasSubtitles",
        "showsAudioTracksButton",
        "getShowsAudioTracksButton",
        "requiresLinearPlayback",
        "getRequiresLinearPlayback",
        "setRequiresLinearPlayback",
        "Lexpo/modules/video/records/ButtonOptions;",
        "buttonOptions",
        "getButtonOptions",
        "()Lexpo/modules/video/records/ButtonOptions;",
        "setButtonOptions",
        "(Lexpo/modules/video/records/ButtonOptions;)V",
        "listeners",
        "",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/video/listeners/VideoViewListener;",
        "currentActivity",
        "Landroid/app/Activity;",
        "decorView",
        "Landroid/view/View;",
        "touchEventCoalescingKeyHelper",
        "Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;",
        "reactNativeEventDispatcher",
        "Lcom/facebook/react/uimanager/events/EventDispatcher;",
        "captioningChangeListener",
        "Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;",
        "windowFocusChangeListener",
        "Landroid/view/View$OnFocusChangeListener;",
        "<set-?>",
        "Lexpo/modules/video/records/PiPParams;",
        "pipParams",
        "getPipParams",
        "()Lexpo/modules/video/records/PiPParams;",
        "setPipParams",
        "(Lexpo/modules/video/records/PiPParams;)V",
        "pipParams$delegate",
        "Lexpo/modules/video/delegates/IgnoreSameSet;",
        "shouldHideSurfaceView",
        "getShouldHideSurfaceView",
        "setShouldHideSurfaceView",
        "useExoShutter",
        "getUseExoShutter",
        "()Ljava/lang/Boolean;",
        "setUseExoShutter",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "autoEnterPiP",
        "getAutoEnterPiP",
        "setAutoEnterPiP",
        "autoEnterPiP$delegate",
        "Lexpo/modules/video/enums/ContentFit;",
        "contentFit",
        "getContentFit",
        "()Lexpo/modules/video/enums/ContentFit;",
        "setContentFit",
        "(Lexpo/modules/video/enums/ContentFit;)V",
        "newPlayer",
        "Lexpo/modules/video/player/VideoPlayer;",
        "videoPlayer",
        "getVideoPlayer",
        "()Lexpo/modules/video/player/VideoPlayer;",
        "setVideoPlayer",
        "(Lexpo/modules/video/player/VideoPlayer;)V",
        "useNativeControls",
        "getUseNativeControls",
        "setUseNativeControls",
        "allowsFullscreen",
        "getAllowsFullscreen",
        "setAllowsFullscreen",
        "Lexpo/modules/video/records/FullscreenOptions;",
        "fullscreenOptions",
        "getFullscreenOptions",
        "()Lexpo/modules/video/records/FullscreenOptions;",
        "setFullscreenOptions",
        "(Lexpo/modules/video/records/FullscreenOptions;)V",
        "mLayoutRunnable",
        "Ljava/lang/Runnable;",
        "applySurfaceViewVisibility",
        "enterFullscreen",
        "attachPlayer",
        "exitFullscreen",
        "enterPictureInPicture",
        "onStartPictureInPicture",
        "pipCandidate",
        "onStopPictureInPicture",
        "addVideoViewListener",
        "listener",
        "removeVideoViewListener",
        "onVideoSourceLoaded",
        "player",
        "videoSource",
        "Lexpo/modules/video/records/VideoSource;",
        "duration",
        "",
        "availableVideoTracks",
        "",
        "Lexpo/modules/video/records/VideoTrack;",
        "availableSubtitleTracks",
        "Lexpo/modules/video/records/SubtitleTrack;",
        "availableAudioTracks",
        "Lexpo/modules/video/records/AudioTrack;",
        "(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "onIsPlayingChanged",
        "isPlaying",
        "oldIsPlaying",
        "(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V",
        "onTracksChanged",
        "tracks",
        "Landroidx/media3/common/Tracks;",
        "onRenderedFirstFrame",
        "requestLayout",
        "onLayout",
        "changed",
        "l",
        "",
        "t",
        "r",
        "b",
        "onAttachedToWindow",
        "onVisibilityChanged",
        "changedView",
        "visibility",
        "onDetachedFromWindow",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "onInterceptTouchEvent",
        "getPlayerViewLayoutId",
        "setupCaptioningChangeListener",
        "applyButtonSettings",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lexpo/modules/video/VideoView$Companion;


# instance fields
.field private allowsFullscreen:Z

.field private final autoEnterPiP$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

.field private buttonOptions:Lexpo/modules/video/records/ButtonOptions;

.field private captioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private contentFit:Lexpo/modules/video/enums/ContentFit;

.field private final currentActivity:Landroid/app/Activity;

.field private currentTrackHasSubtitles:Z

.field private final decorView:Landroid/view/View;

.field private fullscreenOptions:Lexpo/modules/video/records/FullscreenOptions;

.field private isInFullscreen:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/listeners/VideoViewListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLayoutRunnable:Ljava/lang/Runnable;

.field private final onFirstFrameRender$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final onFullscreenEnter$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final onFullscreenExit$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final onPictureInPictureStart$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final onPictureInPictureStop$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final pipParams$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

.field private final playerView:Landroidx/media3/ui/PlayerView;

.field private reactNativeEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private requiresLinearPlayback:Z

.field private shouldHideSurfaceView:Z

.field private showsAudioTracksButton:Z

.field private final touchEventCoalescingKeyHelper:Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

.field private useExoShutter:Ljava/lang/Boolean;

.field private useNativeControls:Z

.field private videoPlayer:Lexpo/modules/video/player/VideoPlayer;

.field private final videoViewId:Ljava/lang/String;

.field private wasAutoPaused:Z

.field private final windowFocusChangeListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public static synthetic $r8$lambda$6gWN_MRYsw4jGeoAsFBRJSeg6ps(Lexpo/modules/video/VideoView;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/video/VideoView;->mLayoutRunnable$lambda$8(Lexpo/modules/video/VideoView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CBPOh63Lq0tUX75Fk7nj_bcTexY(Lexpo/modules/video/VideoView;Lexpo/modules/video/records/PiPParams;Lexpo/modules/video/records/PiPParams;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/video/VideoView;->pipParams_delegate$lambda$2(Lexpo/modules/video/VideoView;Lexpo/modules/video/records/PiPParams;Lexpo/modules/video/records/PiPParams;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GQsiXL9JusHeGjLOK6A0mV09iO4(Lexpo/modules/video/listeners/VideoViewListener;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/VideoView;->removeVideoViewListener$lambda$11(Lexpo/modules/video/listeners/VideoViewListener;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GZJGhd2f-Hw0SEfmwFVDnL8V9ss(Lexpo/modules/video/VideoView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/VideoView;->_init_$lambda$9(Lexpo/modules/video/VideoView;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$LSxYzaVQR3EWD8wEp1L_5eJalIw(Lexpo/modules/video/VideoView;Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/VideoView;->windowFocusChangeListener$lambda$0(Lexpo/modules/video/VideoView;Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mbej-5WXjJ4WU5KrDOv1ybJY9j0(Lexpo/modules/video/VideoView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/VideoView;->_set_allowsFullscreen_$lambda$6(Lexpo/modules/video/VideoView;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$P0xhpIb4ChkeRWRDBfQRQaWJcP0(Lexpo/modules/video/VideoView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/VideoView;->_set_fullscreenOptions_$lambda$7(Lexpo/modules/video/VideoView;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$VR9tHZ7qHy1wbKl_4qaQ7qhfk-o(Lexpo/modules/video/VideoView;ZZ)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/video/VideoView;->autoEnterPiP_delegate$lambda$3(Lexpo/modules/video/VideoView;ZZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 50
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onPictureInPictureStart"

    const-string v3, "getOnPictureInPictureStart()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    const-class v4, Lexpo/modules/video/VideoView;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 51
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onPictureInPictureStop"

    const-string v3, "getOnPictureInPictureStop()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 52
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onFullscreenEnter"

    const-string v3, "getOnFullscreenEnter()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 53
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onFullscreenExit"

    const-string v3, "getOnFullscreenExit()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 54
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onFirstFrameRender"

    const-string v3, "getOnFirstFrameRender()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 94
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "pipParams"

    const-string v3, "getPipParams()Lexpo/modules/video/records/PiPParams;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 115
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "autoEnterPiP"

    const-string v3, "getAutoEnterPiP()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lexpo/modules/video/VideoView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/video/VideoView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/video/VideoView;->Companion:Lexpo/modules/video/VideoView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "appContext"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct/range {p0 .. p2}, Lexpo/modules/kotlin/views/ExpoView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "toString(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lexpo/modules/video/VideoView;->videoViewId:Ljava/lang/String;

    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    move/from16 v4, p3

    invoke-direct {v0, v4}, Lexpo/modules/video/VideoView;->getPlayerViewLayoutId(Z)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type androidx.media3.ui.PlayerView"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/media3/ui/PlayerView;

    iput-object v2, v0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    .line 50
    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 443
    new-instance v6, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v6, v4, v5}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 50
    iput-object v6, v0, Lexpo/modules/video/VideoView;->onPictureInPictureStart$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 446
    new-instance v6, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v6, v4, v5}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 51
    iput-object v6, v0, Lexpo/modules/video/VideoView;->onPictureInPictureStop$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 449
    new-instance v6, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v6, v4, v5}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 52
    iput-object v6, v0, Lexpo/modules/video/VideoView;->onFullscreenEnter$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 452
    new-instance v6, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v6, v4, v5}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 53
    iput-object v6, v0, Lexpo/modules/video/VideoView;->onFullscreenExit$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 455
    new-instance v6, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v6, v4, v5}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 54
    iput-object v6, v0, Lexpo/modules/video/VideoView;->onFirstFrameRender$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 74
    new-instance v7, Lexpo/modules/video/records/ButtonOptions;

    const/16 v16, 0xff

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v7 .. v17}, Lexpo/modules/video/records/ButtonOptions;-><init>(ZZZZLjava/lang/Boolean;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, v0, Lexpo/modules/video/VideoView;->buttonOptions:Lexpo/modules/video/records/ButtonOptions;

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    iput-object v4, v0, Lexpo/modules/video/VideoView;->listeners:Ljava/util/List;

    .line 81
    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    .line 82
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const-string v5, "getDecorView(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lexpo/modules/video/VideoView;->decorView:Landroid/view/View;

    .line 83
    new-instance v4, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    invoke-direct {v4}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;-><init>()V

    iput-object v4, v0, Lexpo/modules/video/VideoView;->touchEventCoalescingKeyHelper:Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    .line 87
    new-instance v4, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v1}, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/video/VideoView;Landroid/content/Context;)V

    iput-object v4, v0, Lexpo/modules/video/VideoView;->windowFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 94
    new-instance v5, Lexpo/modules/video/delegates/IgnoreSameSet;

    new-instance v6, Lexpo/modules/video/records/PiPParams;

    const/16 v13, 0x3f

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v14}, Lexpo/modules/video/records/PiPParams;-><init>(ZZZZLandroid/util/Rational;Landroid/graphics/Rect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/video/VideoView;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v5, v0, Lexpo/modules/video/VideoView;->pipParams$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    const/4 v4, 0x1

    .line 102
    iput-boolean v4, v0, Lexpo/modules/video/VideoView;->shouldHideSurfaceView:Z

    .line 115
    new-instance v5, Lexpo/modules/video/delegates/IgnoreSameSet;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v8, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0}, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda4;-><init>(Lexpo/modules/video/VideoView;)V

    invoke-direct/range {v5 .. v10}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v5, v0, Lexpo/modules/video/VideoView;->autoEnterPiP$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    .line 119
    sget-object v5, Lexpo/modules/video/enums/ContentFit;->CONTAIN:Lexpo/modules/video/enums/ContentFit;

    iput-object v5, v0, Lexpo/modules/video/VideoView;->contentFit:Lexpo/modules/video/enums/ContentFit;

    .line 147
    iput-boolean v4, v0, Lexpo/modules/video/VideoView;->useNativeControls:Z

    .line 155
    iput-boolean v4, v0, Lexpo/modules/video/VideoView;->allowsFullscreen:Z

    .line 168
    new-instance v12, Lexpo/modules/video/records/FullscreenOptions;

    const/16 v16, 0x7

    const/4 v13, 0x0

    invoke-direct/range {v12 .. v17}, Lexpo/modules/video/records/FullscreenOptions;-><init>(ZLexpo/modules/video/enums/FullscreenOrientation;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v12, v0, Lexpo/modules/video/VideoView;->fullscreenOptions:Lexpo/modules/video/records/FullscreenOptions;

    .line 179
    new-instance v4, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda5;-><init>(Lexpo/modules/video/VideoView;)V

    iput-object v4, v0, Lexpo/modules/video/VideoView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 188
    sget-object v4, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {v4, v0}, Lexpo/modules/video/managers/VideoManager;->registerVideoView(Lexpo/modules/video/VideoView;)V

    .line 189
    new-instance v4, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda6;-><init>(Lexpo/modules/video/VideoView;)V

    invoke-virtual {v2, v4}, Landroidx/media3/ui/PlayerView;->setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V

    .line 192
    invoke-virtual {v2, v11}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 195
    invoke-virtual {v2, v11}, Landroidx/media3/ui/PlayerView;->setShutterBackgroundColor(I)V

    .line 196
    invoke-virtual {v2}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 199
    :cond_0
    sget-object v4, Lexpo/modules/video/utils/SubtitleUtils;->INSTANCE:Lexpo/modules/video/utils/SubtitleUtils;

    invoke-virtual {v4, v2, v1}, Lexpo/modules/video/utils/SubtitleUtils;->configureSubtitleView(Landroidx/media3/ui/PlayerView;Landroid/content/Context;)V

    .line 201
    check-cast v2, Landroid/view/View;

    .line 202
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 200
    invoke-virtual {v0, v2, v1}, Lexpo/modules/video/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lexpo/modules/video/VideoView;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    iput-object v1, v0, Lexpo/modules/video/VideoView;->reactNativeEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 47
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/video/VideoView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Z)V

    return-void
.end method

.method private static final _init_$lambda$9(Lexpo/modules/video/VideoView;Z)V
    .locals 0

    .line 189
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->enterFullscreen()V

    return-void
.end method

.method private static final _set_allowsFullscreen_$lambda$6(Lexpo/modules/video/VideoView;Z)V
    .locals 0

    .line 158
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->enterFullscreen()V

    return-void
.end method

.method private static final _set_fullscreenOptions_$lambda$7(Lexpo/modules/video/VideoView;Z)V
    .locals 0

    .line 172
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->enterFullscreen()V

    return-void
.end method

.method private final applyButtonSettings()V
    .locals 4

    .line 427
    iget-object v0, p0, Lexpo/modules/video/VideoView;->buttonOptions:Lexpo/modules/video/records/ButtonOptions;

    invoke-virtual {v0}, Lexpo/modules/video/records/ButtonOptions;->getShowSubtitles()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->currentTrackHasSubtitles:Z

    .line 428
    :goto_0
    iget-object v1, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    iget-object v2, p0, Lexpo/modules/video/VideoView;->buttonOptions:Lexpo/modules/video/records/ButtonOptions;

    iget-boolean v3, p0, Lexpo/modules/video/VideoView;->requiresLinearPlayback:Z

    invoke-static {v1, v2, v3}, Lexpo/modules/video/PlayerViewExtensionKt;->applyButtonOptions(Landroidx/media3/ui/PlayerView;Lexpo/modules/video/records/ButtonOptions;Z)V

    .line 429
    iget-object v1, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->setShowSubtitleButton(Z)V

    return-void
.end method

.method private static final autoEnterPiP_delegate$lambda$3(Lexpo/modules/video/VideoView;ZZ)Lkotlin/Unit;
    .locals 9

    .line 116
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    invoke-static/range {v0 .. v8}, Lexpo/modules/video/records/PiPParams;->copy$default(Lexpo/modules/video/records/PiPParams;ZZZZLandroid/util/Rational;Landroid/graphics/Rect;ILjava/lang/Object;)Lexpo/modules/video/records/PiPParams;

    move-result-object p1

    invoke-direct {p0, p1}, Lexpo/modules/video/VideoView;->setPipParams(Lexpo/modules/video/records/PiPParams;)V

    .line 117
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getPlayerViewLayoutId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 410
    sget p1, Lexpo/modules/video/R$layout;->texture_player_view:I

    return p1

    .line 412
    :cond_0
    sget p1, Lexpo/modules/video/R$layout;->surface_player_view:I

    return p1
.end method

.method private static final mLayoutRunnable$lambda$8(Lexpo/modules/video/VideoView;)V
    .locals 4

    .line 181
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 182
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 180
    invoke-virtual {p0, v0, v1}, Lexpo/modules/video/VideoView;->measure(II)V

    .line 184
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lexpo/modules/video/VideoView;->layout(IIII)V

    return-void
.end method

.method private static final pipParams_delegate$lambda$2(Lexpo/modules/video/VideoView;Lexpo/modules/video/records/PiPParams;Lexpo/modules/video/records/PiPParams;)Lkotlin/Unit;
    .locals 2

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lexpo/modules/video/VideoView;->listeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 459
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 96
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/video/listeners/VideoViewListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p2, p1}, Lexpo/modules/video/listeners/VideoViewListener;->onPiPParamsChanged(Lexpo/modules/video/VideoView;Lexpo/modules/video/records/PiPParams;Lexpo/modules/video/records/PiPParams;)V

    goto :goto_0

    .line 98
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final removeVideoViewListener$lambda$11(Lexpo/modules/video/listeners/VideoViewListener;Ljava/lang/ref/WeakReference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final setPipParams(Lexpo/modules/video/records/PiPParams;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lexpo/modules/video/VideoView;->pipParams$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/delegates/IgnoreSameSet;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setupCaptioningChangeListener()V
    .locals 5

    .line 417
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    sget-object v1, Lexpo/modules/video/utils/SubtitleUtils;->INSTANCE:Lexpo/modules/video/utils/SubtitleUtils;

    iget-object v2, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lexpo/modules/video/utils/SubtitleUtils;->createCaptioningChangeListener(Landroidx/media3/ui/PlayerView;Landroid/content/Context;)Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    move-result-object v1

    iput-object v1, p0, Lexpo/modules/video/VideoView;->captioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    :cond_1
    return-void
.end method

.method private static final windowFocusChangeListener$lambda$0(Lexpo/modules/video/VideoView;Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 90
    sget-object p2, Lexpo/modules/video/utils/SubtitleUtils;->INSTANCE:Lexpo/modules/video/utils/SubtitleUtils;

    iget-object p0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p2, p0, p1}, Lexpo/modules/video/utils/SubtitleUtils;->configureSubtitleView(Landroidx/media3/ui/PlayerView;Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addVideoViewListener(Lexpo/modules/video/listeners/VideoViewListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lexpo/modules/video/VideoView;->listeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 456
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 281
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 284
    :cond_2
    :goto_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->listeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final applySurfaceViewVisibility()V
    .locals 2

    .line 212
    iget-object v0, p0, Lexpo/modules/video/VideoView;->useExoShutter:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->shouldHideSurfaceView:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final attachPlayer()V
    .locals 1

    .line 239
    iget-object v0, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lexpo/modules/video/player/VideoPlayer;->changeVideoView(Lexpo/modules/video/VideoView;)V

    :cond_0
    return-void
.end method

.method public final enterFullscreen()V
    .locals 11

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lexpo/modules/video/FullscreenPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    const-string v1, "player_uuid"

    iget-object v2, p0, Lexpo/modules/video/VideoView;->videoViewId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lexpo/modules/video/VideoView;->fullscreenOptions:Lexpo/modules/video/records/FullscreenOptions;

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "fullscreen_options"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 224
    iput-boolean v1, p0, Lexpo/modules/video/VideoView;->isInFullscreen:Z

    .line 225
    iget-object v1, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2, v2, v2}, Landroid/app/Activity;->overrideActivityTransition(III)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 234
    :goto_0
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getOnFullscreenEnter()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v2

    const/16 v9, 0x37

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lexpo/modules/video/records/PiPParams;->copy$default(Lexpo/modules/video/records/PiPParams;ZZZZLandroid/util/Rational;Landroid/graphics/Rect;ILjava/lang/Object;)Lexpo/modules/video/records/PiPParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/video/VideoView;->setPipParams(Lexpo/modules/video/records/PiPParams;)V

    return-void
.end method

.method public final enterPictureInPicture()V
    .locals 10

    .line 253
    sget-object v0, Lexpo/modules/video/VideoView;->Companion:Lexpo/modules/video/VideoView$Companion;

    iget-object v1, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lexpo/modules/video/VideoView$Companion;->isPictureInPictureSupported(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v1

    const/16 v8, 0x3b

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lexpo/modules/video/records/PiPParams;->copy$default(Lexpo/modules/video/records/PiPParams;ZZZZLandroid/util/Rational;Landroid/graphics/Rect;ILjava/lang/Object;)Lexpo/modules/video/records/PiPParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/video/VideoView;->setPipParams(Lexpo/modules/video/records/PiPParams;)V

    .line 262
    sget-object v0, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {v0}, Lexpo/modules/video/managers/VideoManager;->getPictureInPicture()Lexpo/modules/video/managers/PictureInPictureManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lexpo/modules/video/managers/PictureInPictureManager;->enterPictureInPicture(Lexpo/modules/video/VideoView;)V

    return-void

    .line 258
    :cond_0
    new-instance v0, Lexpo/modules/video/PictureInPictureEnterException;

    const-string v1, "No player attached to the VideoView"

    invoke-direct {v0, v1}, Lexpo/modules/video/PictureInPictureEnterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    new-instance v0, Lexpo/modules/video/PictureInPictureUnsupportedException;

    invoke-direct {v0}, Lexpo/modules/video/PictureInPictureUnsupportedException;-><init>()V

    throw v0
.end method

.method public final exitFullscreen()V
    .locals 10

    .line 244
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    sget v1, Landroidx/media3/ui/R$id;->exo_fullscreen:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    .line 245
    sget v1, Landroidx/media3/ui/R$drawable;->exo_icon_fullscreen_enter:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 246
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->attachPlayer()V

    .line 247
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getOnFullscreenExit()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lexpo/modules/video/VideoView;->isInFullscreen:Z

    .line 249
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v1

    const/16 v8, 0x37

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lexpo/modules/video/records/PiPParams;->copy$default(Lexpo/modules/video/records/PiPParams;ZZZZLandroid/util/Rational;Landroid/graphics/Rect;ILjava/lang/Object;)Lexpo/modules/video/records/PiPParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/video/VideoView;->setPipParams(Lexpo/modules/video/records/PiPParams;)V

    return-void
.end method

.method public final getAllowsFullscreen()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->allowsFullscreen:Z

    return v0
.end method

.method public final getAutoEnterPiP()Z
    .locals 3

    .line 115
    iget-object v0, p0, Lexpo/modules/video/VideoView;->autoEnterPiP$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/delegates/IgnoreSameSet;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getButtonOptions()Lexpo/modules/video/records/ButtonOptions;
    .locals 1

    .line 74
    iget-object v0, p0, Lexpo/modules/video/VideoView;->buttonOptions:Lexpo/modules/video/records/ButtonOptions;

    return-object v0
.end method

.method public final getContentFit()Lexpo/modules/video/enums/ContentFit;
    .locals 1

    .line 119
    iget-object v0, p0, Lexpo/modules/video/VideoView;->contentFit:Lexpo/modules/video/enums/ContentFit;

    return-object v0
.end method

.method public final getCurrentTrackHasSubtitles()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->currentTrackHasSubtitles:Z

    return v0
.end method

.method public final getFullscreenOptions()Lexpo/modules/video/records/FullscreenOptions;
    .locals 1

    .line 168
    iget-object v0, p0, Lexpo/modules/video/VideoView;->fullscreenOptions:Lexpo/modules/video/records/FullscreenOptions;

    return-object v0
.end method

.method public final getOnFirstFrameRender()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lexpo/modules/video/VideoView;->onFirstFrameRender$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getOnFullscreenEnter()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lexpo/modules/video/VideoView;->onFullscreenEnter$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getOnFullscreenExit()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lexpo/modules/video/VideoView;->onFullscreenExit$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getOnPictureInPictureStart()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lexpo/modules/video/VideoView;->onPictureInPictureStart$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getOnPictureInPictureStop()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lexpo/modules/video/VideoView;->onPictureInPictureStop$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getPipParams()Lexpo/modules/video/records/PiPParams;
    .locals 3

    .line 94
    iget-object v0, p0, Lexpo/modules/video/VideoView;->pipParams$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/delegates/IgnoreSameSet;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/records/PiPParams;

    return-object v0
.end method

.method public final getPlayerView()Landroidx/media3/ui/PlayerView;
    .locals 1

    .line 49
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    return-object v0
.end method

.method public final getRequiresLinearPlayback()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->requiresLinearPlayback:Z

    return v0
.end method

.method public final getShouldHideSurfaceView()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->shouldHideSurfaceView:Z

    return v0
.end method

.method public final getShowsAudioTracksButton()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->showsAudioTracksButton:Z

    return v0
.end method

.method public final getUseExoShutter()Ljava/lang/Boolean;
    .locals 1

    .line 104
    iget-object v0, p0, Lexpo/modules/video/VideoView;->useExoShutter:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUseNativeControls()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->useNativeControls:Z

    return v0
.end method

.method public final getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;
    .locals 1

    .line 125
    iget-object v0, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    return-object v0
.end method

.method public final getVideoViewId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lexpo/modules/video/VideoView;->videoViewId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWasAutoPaused()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->wasAutoPaused:Z

    return v0
.end method

.method public final isInFullscreen()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->isInFullscreen:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 11

    .line 343
    invoke-super {p0}, Lexpo/modules/kotlin/views/ExpoView;->onAttachedToWindow()V

    .line 346
    invoke-direct {p0}, Lexpo/modules/video/VideoView;->setupCaptioningChangeListener()V

    .line 348
    sget-object v0, Lexpo/modules/video/utils/SubtitleUtils;->INSTANCE:Lexpo/modules/video/utils/SubtitleUtils;

    iget-object v1, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lexpo/modules/video/utils/SubtitleUtils;->configureSubtitleView(Landroidx/media3/ui/PlayerView;Landroid/content/Context;)V

    .line 351
    iget-object v0, p0, Lexpo/modules/video/VideoView;->decorView:Landroid/view/View;

    iget-object v1, p0, Lexpo/modules/video/VideoView;->windowFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 353
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v2

    const/16 v9, 0x3d

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lexpo/modules/video/records/PiPParams;->copy$default(Lexpo/modules/video/records/PiPParams;ZZZZLandroid/util/Rational;Landroid/graphics/Rect;ILjava/lang/Object;)Lexpo/modules/video/records/PiPParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/video/VideoView;->setPipParams(Lexpo/modules/video/records/PiPParams;)V

    return-void
.end method

.method public onAudioMixingModeChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/listeners/VideoPlayerListener$DefaultImpls;->onAudioMixingModeChanged(Lexpo/modules/video/listeners/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 11

    .line 365
    invoke-super {p0}, Lexpo/modules/kotlin/views/ExpoView;->onDetachedFromWindow()V

    .line 368
    iget-object v0, p0, Lexpo/modules/video/VideoView;->captioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "captioning"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/view/accessibility/CaptioningManager;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/accessibility/CaptioningManager;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 370
    invoke-virtual {v2, v0}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 371
    :cond_1
    iput-object v1, p0, Lexpo/modules/video/VideoView;->captioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 375
    :cond_2
    iget-object v0, p0, Lexpo/modules/video/VideoView;->decorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 377
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v2

    const/16 v9, 0x3d

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lexpo/modules/video/records/PiPParams;->copy$default(Lexpo/modules/video/records/PiPParams;ZZZZLandroid/util/Rational;Landroid/graphics/Rect;ILjava/lang/Object;)Lexpo/modules/video/records/PiPParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/video/VideoView;->setPipParams(Lexpo/modules/video/records/PiPParams;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 398
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->useNativeControls:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 400
    iget-object v2, p0, Lexpo/modules/video/VideoView;->touchEventCoalescingKeyHelper:Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->addCoalescingKey(J)V

    .line 401
    iget-object v0, p0, Lexpo/modules/video/VideoView;->reactNativeEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v2, p0, Lexpo/modules/video/VideoView;->touchEventCoalescingKeyHelper:Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    invoke-static {v0, v1, p1, v2}, Lexpo/modules/video/utils/EventDispatcherUtilsKt;->dispatchMotionEvent(Lcom/facebook/react/uimanager/events/EventDispatcher;Landroid/view/View;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onIsPlayingChanged(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V
    .locals 0

    const-string p3, "player"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object p3, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 305
    iput-boolean p1, p0, Lexpo/modules/video/VideoView;->wasAutoPaused:Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 334
    invoke-super/range {p0 .. p5}, Lexpo/modules/kotlin/views/ExpoView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 338
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v0

    iget-object p2, p1, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-static {p2}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->calculateRectHint(Landroidx/media3/ui/PlayerView;)Landroid/graphics/Rect;

    move-result-object v6

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lexpo/modules/video/records/PiPParams;->copy$default(Lexpo/modules/video/records/PiPParams;ZZZZLandroid/util/Rational;Landroid/graphics/Rect;ILjava/lang/Object;)Lexpo/modules/video/records/PiPParams;

    move-result-object p2

    invoke-direct {p0, p2}, Lexpo/modules/video/VideoView;->setPipParams(Lexpo/modules/video/records/PiPParams;)V

    .line 339
    iget-object p2, p1, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    iget-object p3, p1, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lexpo/modules/video/player/VideoPlayer;->getRequiresLinearPlayback()Z

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    invoke-static {p2, p3}, Lexpo/modules/video/PlayerViewExtensionKt;->setTimeBarInteractive(Landroidx/media3/ui/PlayerView;Z)V

    return-void
.end method

.method public onMutedChanged(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/listeners/VideoPlayerListener$DefaultImpls;->onMutedChanged(Lexpo/modules/video/listeners/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public onPlaybackRateChanged(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/listeners/VideoPlayerListener$DefaultImpls;->onPlaybackRateChanged(Lexpo/modules/video/listeners/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V

    return-void
.end method

.method public onPlayedToEnd(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lexpo/modules/video/listeners/VideoPlayerListener$DefaultImpls;->onPlayedToEnd(Lexpo/modules/video/listeners/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;)V

    return-void
.end method

.method public onRenderedFirstFrame(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getCurrentVideoView()Lexpo/modules/video/VideoView;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 318
    iput-boolean p1, p0, Lexpo/modules/video/VideoView;->shouldHideSurfaceView:Z

    .line 319
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->applySurfaceViewVisibility()V

    .line 320
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getOnFirstFrameRender()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSourceChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/listeners/VideoPlayerListener$DefaultImpls;->onSourceChanged(Lexpo/modules/video/listeners/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V

    return-void
.end method

.method public final onStartPictureInPicture(Lexpo/modules/video/VideoView;)V
    .locals 1

    .line 269
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getOnPictureInPictureStart()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public onStatusChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/video/listeners/VideoPlayerListener$DefaultImpls;->onStatusChanged(Lexpo/modules/video/listeners/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V

    return-void
.end method

.method public final onStopPictureInPicture(Lexpo/modules/video/VideoView;)V
    .locals 9

    .line 276
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v0

    const/16 v7, 0x3b

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lexpo/modules/video/records/PiPParams;->copy$default(Lexpo/modules/video/records/PiPParams;ZZZZLandroid/util/Rational;Landroid/graphics/Rect;ILjava/lang/Object;)Lexpo/modules/video/records/PiPParams;

    move-result-object p1

    invoke-direct {p0, p1}, Lexpo/modules/video/VideoView;->setPipParams(Lexpo/modules/video/records/PiPParams;)V

    .line 277
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getOnPictureInPictureStop()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public onTargetViewChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/VideoView;Lexpo/modules/video/VideoView;)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/listeners/VideoPlayerListener$DefaultImpls;->onTargetViewChanged(Lexpo/modules/video/listeners/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/VideoView;Lexpo/modules/video/VideoView;)V

    return-void
.end method

.method public onTimeUpdate(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/TimeUpdate;)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lexpo/modules/video/listeners/VideoPlayerListener$DefaultImpls;->onTimeUpdate(Lexpo/modules/video/listeners/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/TimeUpdate;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 384
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->useNativeControls:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 386
    iget-object v2, p0, Lexpo/modules/video/VideoView;->touchEventCoalescingKeyHelper:Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->addCoalescingKey(J)V

    .line 387
    iget-object v0, p0, Lexpo/modules/video/VideoView;->reactNativeEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lexpo/modules/video/VideoView;->touchEventCoalescingKeyHelper:Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    invoke-static {v0, v1, p1, v2}, Lexpo/modules/video/utils/EventDispatcherUtilsKt;->dispatchMotionEvent(Lcom/facebook/react/uimanager/events/EventDispatcher;Landroid/view/View;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)V

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 391
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->performClick()Z

    :cond_1
    return v0
.end method

.method public onTrackSelectionParametersChanged(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lexpo/modules/video/listeners/VideoPlayerListener$DefaultImpls;->onTrackSelectionParametersChanged(Lexpo/modules/video/listeners/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public onTracksChanged(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/Tracks;)V
    .locals 2

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getSubtitles()Lexpo/modules/video/player/VideoPlayerSubtitles;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayerSubtitles;->getAvailableSubtitleTracks()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lexpo/modules/video/VideoView;->currentTrackHasSubtitles:Z

    .line 311
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getAudioTracks()Lexpo/modules/video/player/VideoPlayerAudioTracks;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->getAvailableAudioTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lexpo/modules/video/VideoView;->showsAudioTracksButton:Z

    .line 312
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    iget-object v1, p0, Lexpo/modules/video/VideoView;->buttonOptions:Lexpo/modules/video/records/ButtonOptions;

    invoke-virtual {v1}, Lexpo/modules/video/records/ButtonOptions;->getShowSubtitles()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lexpo/modules/video/VideoView;->currentTrackHasSubtitles:Z

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setShowSubtitleButton(Z)V

    .line 313
    invoke-static {p0, p1, p2}, Lexpo/modules/video/listeners/VideoPlayerListener$DefaultImpls;->onTracksChanged(Lexpo/modules/video/listeners/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public onVideoSourceLoaded(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/player/VideoPlayer;",
            "Lexpo/modules/video/records/VideoSource;",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/VideoTrack;",
            ">;",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/SubtitleTrack;",
            ">;",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/AudioTrack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableVideoTracks"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableSubtitleTracks"

    move-object/from16 v2, p5

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableAudioTracks"

    move-object/from16 v3, p6

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getPipParams()Lexpo/modules/video/records/PiPParams;

    move-result-object v4

    invoke-static {p0}, Lexpo/modules/video/managers/PictureInPictureManagerKt;->calculateCurrentPipAspectRatio(Lexpo/modules/video/VideoView;)Landroid/util/Rational;

    move-result-object v9

    const/16 v11, 0x2f

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lexpo/modules/video/records/PiPParams;->copy$default(Lexpo/modules/video/records/PiPParams;ZZZZLandroid/util/Rational;Landroid/graphics/Rect;ILjava/lang/Object;)Lexpo/modules/video/records/PiPParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/video/VideoView;->setPipParams(Lexpo/modules/video/records/PiPParams;)V

    .line 300
    invoke-static/range {p0 .. p6}, Lexpo/modules/video/listeners/VideoPlayerListener$DefaultImpls;->onVideoSourceLoaded(Lexpo/modules/video/listeners/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onVideoTrackChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoTrack;Lexpo/modules/video/records/VideoTrack;)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/listeners/VideoPlayerListener$DefaultImpls;->onVideoTrackChanged(Lexpo/modules/video/listeners/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoTrack;Lexpo/modules/video/records/VideoTrack;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-super {p0, p1, p2}, Lexpo/modules/kotlin/views/ExpoView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 360
    sget-object p1, Lexpo/modules/video/utils/SubtitleUtils;->INSTANCE:Lexpo/modules/video/utils/SubtitleUtils;

    iget-object p2, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lexpo/modules/video/utils/SubtitleUtils;->configureSubtitleView(Landroidx/media3/ui/PlayerView;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onVolumeChanged(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/listeners/VideoPlayerListener$DefaultImpls;->onVolumeChanged(Lexpo/modules/video/listeners/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V

    return-void
.end method

.method public final removeVideoViewListener(Lexpo/modules/video/listeners/VideoViewListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lexpo/modules/video/VideoView;->listeners:Ljava/util/List;

    new-instance v1, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/video/listeners/VideoViewListener;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->retainAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 325
    invoke-super {p0}, Lexpo/modules/kotlin/views/ExpoView;->requestLayout()V

    .line 330
    iget-object v0, p0, Lexpo/modules/video/VideoView;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lexpo/modules/video/VideoView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAllowsFullscreen(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    new-instance v1, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/video/VideoView;)V

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V

    .line 163
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lexpo/modules/video/PlayerViewExtensionKt;->setFullscreenButtonVisibility(Landroidx/media3/ui/PlayerView;Z)V

    .line 165
    :goto_0
    iput-boolean p1, p0, Lexpo/modules/video/VideoView;->allowsFullscreen:Z

    return-void
.end method

.method public final setAutoEnterPiP(Z)V
    .locals 3

    .line 115
    iget-object v0, p0, Lexpo/modules/video/VideoView;->autoEnterPiP$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/delegates/IgnoreSameSet;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setButtonOptions(Lexpo/modules/video/records/ButtonOptions;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lexpo/modules/video/VideoView;->buttonOptions:Lexpo/modules/video/records/ButtonOptions;

    .line 77
    invoke-direct {p0}, Lexpo/modules/video/VideoView;->applyButtonSettings()V

    return-void
.end method

.method public final setContentFit(Lexpo/modules/video/enums/ContentFit;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Lexpo/modules/video/enums/ContentFit;->toResizeMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 122
    iput-object p1, p0, Lexpo/modules/video/VideoView;->contentFit:Lexpo/modules/video/enums/ContentFit;

    return-void
.end method

.method public final setFullscreenOptions(Lexpo/modules/video/records/FullscreenOptions;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lexpo/modules/video/VideoView;->fullscreenOptions:Lexpo/modules/video/records/FullscreenOptions;

    .line 171
    invoke-virtual {p1}, Lexpo/modules/video/records/FullscreenOptions;->getEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    new-instance v0, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda7;-><init>(Lexpo/modules/video/VideoView;)V

    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V

    return-void

    .line 174
    :cond_0
    iget-object p1, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V

    .line 175
    iget-object p1, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lexpo/modules/video/PlayerViewExtensionKt;->setFullscreenButtonVisibility(Landroidx/media3/ui/PlayerView;Z)V

    return-void
.end method

.method public final setRequiresLinearPlayback(Z)V
    .locals 1

    .line 68
    iput-boolean p1, p0, Lexpo/modules/video/VideoView;->requiresLinearPlayback:Z

    .line 69
    iget-object v0, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lexpo/modules/video/player/VideoPlayer;->setRequiresLinearPlayback(Z)V

    .line 70
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-static {v0, p1}, Lexpo/modules/video/PlayerViewExtensionKt;->applyRequiresLinearPlayback(Landroidx/media3/ui/PlayerView;Z)V

    .line 71
    invoke-direct {p0}, Lexpo/modules/video/VideoView;->applyButtonSettings()V

    return-void
.end method

.method public final setShouldHideSurfaceView(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lexpo/modules/video/VideoView;->shouldHideSurfaceView:Z

    return-void
.end method

.method public final setUseExoShutter(Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x1

    .line 106
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setShutterBackgroundColor(I)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setShutterBackgroundColor(I)V

    .line 111
    :goto_0
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->applySurfaceViewVisibility()V

    .line 112
    iput-object p1, p0, Lexpo/modules/video/VideoView;->useExoShutter:Ljava/lang/Boolean;

    return-void
.end method

.method public final setUseNativeControls(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 149
    iget-object v0, p0, Lexpo/modules/video/VideoView;->buttonOptions:Lexpo/modules/video/records/ButtonOptions;

    invoke-virtual {v0}, Lexpo/modules/video/records/ButtonOptions;->getShowSubtitles()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->currentTrackHasSubtitles:Z

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 150
    :goto_1
    iget-object v1, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1, p1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 151
    iget-object v1, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->setShowSubtitleButton(Z)V

    .line 152
    iput-boolean p1, p0, Lexpo/modules/video/VideoView;->useNativeControls:Z

    return-void
.end method

.method public final setVideoPlayer(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 3

    .line 127
    iget-object v0, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz v0, :cond_0

    .line 128
    sget-object v1, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {v1, v0, p0}, Lexpo/modules/video/managers/VideoManager;->onVideoPlayerDetachedFromView(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/VideoView;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getFirstFrameEventGenerator$expo_video_release()Lexpo/modules/video/player/FirstFrameEventGenerator;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lexpo/modules/video/player/FirstFrameEventGenerator;->getHasSentFirstFrameForCurrentMediaItem$expo_video_release()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 133
    move-object v2, p0

    check-cast v2, Lexpo/modules/video/listeners/VideoPlayerListener;

    invoke-virtual {v0, v2}, Lexpo/modules/video/player/VideoPlayer;->removeListener(Lexpo/modules/video/listeners/VideoPlayerListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 134
    move-object v2, p0

    check-cast v2, Lexpo/modules/video/listeners/VideoPlayerListener;

    invoke-virtual {p1, v2}, Lexpo/modules/video/player/VideoPlayer;->addListener(Lexpo/modules/video/listeners/VideoPlayerListener;)V

    .line 135
    :cond_3
    iput-object p1, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    xor-int/lit8 v1, v1, 0x1

    .line 136
    iput-boolean v1, p0, Lexpo/modules/video/VideoView;->shouldHideSurfaceView:Z

    .line 137
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->applySurfaceViewVisibility()V

    .line 138
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->attachPlayer()V

    if-eqz p1, :cond_4

    .line 140
    sget-object v1, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {v1, p1, p0}, Lexpo/modules/video/managers/VideoManager;->onVideoPlayerAttachedToView(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/VideoView;)V

    .line 142
    :cond_4
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    .line 143
    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->hasBeenDisconnectedFromVideoView()V

    :cond_5
    return-void
.end method

.method public final setWasAutoPaused(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lexpo/modules/video/VideoView;->wasAutoPaused:Z

    return-void
.end method
