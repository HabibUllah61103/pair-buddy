.class public final Lexpo/modules/video/player/VideoPlayer;
.super Lexpo/modules/kotlin/sharedobjects/SharedObject;
.source "VideoPlayer.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lexpo/modules/video/IntervalUpdateEmitter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoPlayer.kt\nexpo/modules/video/player/VideoPlayer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,596:1\n1740#2,3:597\n1617#2,9:600\n1869#2:609\n1870#2:611\n1626#2:612\n1#3:610\n*S KotlinDebug\n*F\n+ 1 VideoPlayer.kt\nexpo/modules/video/player/VideoPlayer\n*L\n509#1:597,3\n523#1:600,9\n523#1:609\n523#1:611\n523#1:612\n523#1:610\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0004\u00ba\u0001\u00bd\u0001\u0008\u0007\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u00032\u00020\u0004B-\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\n\u0010\u00bf\u0001\u001a\u00030\u00c0\u0001H\u0016J\n\u0010\u00c1\u0001\u001a\u00030\u00c0\u0001H\u0016J\u0008\u0010\u00c2\u0001\u001a\u00030\u00c0\u0001J\u0013\u0010\u00c3\u0001\u001a\u00030\u00c0\u00012\t\u0010\u00c4\u0001\u001a\u0004\u0018\u00010\u0019J\u0008\u0010\u00c5\u0001\u001a\u00030\u00c0\u0001J\u0012\u0010\u00c6\u0001\u001a\u00020\u007f2\u0007\u0010\u0080\u0001\u001a\u00020\u007fH\u0002J\u0013\u0010\u00c7\u0001\u001a\u00020`2\u0008\u0010\u00c8\u0001\u001a\u00030\u00c9\u0001H\u0002J\u001d\u0010c\u001a\u00030\u00c0\u00012\u0006\u0010_\u001a\u00020`2\n\u0010\u00ca\u0001\u001a\u0005\u0018\u00010\u00cb\u0001H\u0002J\n\u0010\u00cc\u0001\u001a\u00030\u00c0\u0001H\u0002J\n\u0010\u00cd\u0001\u001a\u00030\u00c0\u0001H\u0002J\t\u0010\u00ce\u0001\u001a\u00020HH\u0002J\u0013\u0010\u00cf\u0001\u001a\u00030\u00c0\u00012\u0007\u0010\u00d0\u0001\u001a\u00020HH\u0002J\u0011\u0010\u00d1\u0001\u001a\u00030\u00c0\u00012\u0007\u0010\u00d2\u0001\u001a\u00020\u0016J\u0011\u0010\u00d3\u0001\u001a\u00030\u00c0\u00012\u0007\u0010\u00d2\u0001\u001a\u00020\u0016J\u0014\u0010\u00d4\u0001\u001a\u00030\u00c0\u00012\u0008\u0010\u00d5\u0001\u001a\u00030\u00d6\u0001H\u0002J\t\u0010\u00d7\u0001\u001a\u000207H\u0002J\n\u0010\u00d8\u0001\u001a\u00030\u00c0\u0001H\u0016J\u0008\u0010\u00d9\u0001\u001a\u00030\u00da\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\u001b\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!*\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\"\u001a\u00020#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010&\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0011\u0010*\u001a\u00020+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0011\u0010.\u001a\u00020/\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u0011\u00102\u001a\u000203\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R\u0014\u00106\u001a\u000207X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00109R\u0011\u0010:\u001a\u00020;\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010=R\u001a\u0010>\u001a\u00020?X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u0011\u0010D\u001a\u00020E\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR+\u0010I\u001a\u00020H2\u0006\u0010\u001a\u001a\u00020H8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008N\u0010O\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u001c\u0010P\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR/\u0010U\u001a\u0004\u0018\u00010\n2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\n8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008X\u0010O\u001a\u0004\u0008V\u0010R\"\u0004\u0008W\u0010TR\u001a\u0010Y\u001a\u00020ZX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R\u001a\u0010_\u001a\u00020`X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR\u001a\u0010e\u001a\u00020HX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010K\"\u0004\u0008g\u0010MR$\u0010i\u001a\u00020H2\u0006\u0010h\u001a\u00020H@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008j\u0010K\"\u0004\u0008k\u0010MR$\u0010l\u001a\u00020H2\u0006\u0010l\u001a\u00020H@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008m\u0010K\"\u0004\u0008n\u0010MR$\u0010o\u001a\u00020H2\u0006\u0010h\u001a\u00020H@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008p\u0010K\"\u0004\u0008q\u0010MR\u001a\u0010r\u001a\u00020ZX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008s\u0010\\\"\u0004\u0008t\u0010^R\u001a\u0010u\u001a\u00020HX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008u\u0010K\"\u0004\u0008v\u0010MR+\u0010w\u001a\u00020Z2\u0006\u0010\u001a\u001a\u00020Z8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008z\u0010O\u001a\u0004\u0008x\u0010\\\"\u0004\u0008y\u0010^R+\u0010{\u001a\u00020H2\u0006\u0010\u001a\u001a\u00020H8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008~\u0010O\u001a\u0004\u0008|\u0010K\"\u0004\u0008}\u0010MR1\u0010\u0080\u0001\u001a\u00020\u007f2\u0006\u0010\u001a\u001a\u00020\u007f8F@FX\u0086\u008e\u0002\u00a2\u0006\u0017\n\u0005\u0008\u0085\u0001\u0010O\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001\"\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u0016\u0010\u0086\u0001\u001a\u0004\u0018\u00010Z8F\u00a2\u0006\u0008\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u0017\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008a\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001R+\u0010\u008e\u0001\u001a\u00030\u008d\u00012\u0007\u0010h\u001a\u00030\u008d\u0001@FX\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u008f\u0001\u0010\u0090\u0001\"\u0006\u0008\u0091\u0001\u0010\u0092\u0001R\u0015\u0010\u0093\u0001\u001a\u00030\u0094\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0095\u0001\u0010\u0096\u0001R+\u0010\u0098\u0001\u001a\u00030\u0097\u00012\u0007\u0010h\u001a\u00030\u0097\u0001@FX\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001\"\u0006\u0008\u009b\u0001\u0010\u009c\u0001R \u0010\u009d\u0001\u001a\u00020H2\u0006\u0010h\u001a\u00020H@BX\u0086\u000e\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u009d\u0001\u0010KR/\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009e\u00012\t\u0010h\u001a\u0005\u0018\u00010\u009e\u0001@BX\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001\"\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R+\u0010\u00a5\u0001\u001a\u00030\u00a4\u00012\u0007\u0010h\u001a\u00030\u00a4\u0001@FX\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001\"\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R+\u0010\u00ab\u0001\u001a\u00030\u00aa\u00012\u0007\u0010h\u001a\u00030\u00aa\u0001@FX\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001\"\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R1\u0010\u00b1\u0001\u001a\n\u0012\u0005\u0012\u00030\u009e\u00010\u00b0\u00012\u000e\u0010h\u001a\n\u0012\u0005\u0012\u00030\u009e\u00010\u00b0\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R0\u0010\u00b4\u0001\u001a\u00020H2\u0006\u0010\u001a\u001a\u00020H8F@FX\u0086\u008e\u0002\u00a2\u0006\u0016\n\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001\u001a\u0005\u0008\u00b5\u0001\u0010K\"\u0005\u0008\u00b6\u0001\u0010MR\u0013\u0010\u00b9\u0001\u001a\u00030\u00ba\u0001X\u0082\u0004\u00a2\u0006\u0005\n\u0003\u0010\u00bb\u0001R\u0013\u0010\u00bc\u0001\u001a\u00030\u00bd\u0001X\u0082\u0004\u00a2\u0006\u0005\n\u0003\u0010\u00be\u0001\u00a8\u0006\u00db\u0001"
    }
    d2 = {
        "Lexpo/modules/video/player/VideoPlayer;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "Lexpo/modules/kotlin/sharedobjects/SharedObject;",
        "Lexpo/modules/video/IntervalUpdateEmitter;",
        "context",
        "Landroid/content/Context;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "source",
        "Lexpo/modules/video/records/VideoSource;",
        "playerBuilderOptions",
        "Lexpo/modules/video/records/PlayerBuilderOptions;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/PlayerBuilderOptions;)V",
        "getContext",
        "()Landroid/content/Context;",
        "renderersFactory",
        "Landroidx/media3/exoplayer/DefaultRenderersFactory;",
        "listeners",
        "",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/video/listeners/VideoPlayerListener;",
        "currentVideoViewRef",
        "Lexpo/modules/video/utils/MutableWeakReference;",
        "Lexpo/modules/video/VideoView;",
        "<set-?>",
        "currentVideoView",
        "getCurrentVideoView$delegate",
        "(Lexpo/modules/video/player/VideoPlayer;)Ljava/lang/Object;",
        "getCurrentVideoView",
        "()Lexpo/modules/video/VideoView;",
        "setCurrentVideoView",
        "(Lexpo/modules/video/VideoView;)V",
        "loadControl",
        "Lexpo/modules/video/player/VideoPlayerLoadControl;",
        "getLoadControl",
        "()Lexpo/modules/video/player/VideoPlayerLoadControl;",
        "subtitles",
        "Lexpo/modules/video/player/VideoPlayerSubtitles;",
        "getSubtitles",
        "()Lexpo/modules/video/player/VideoPlayerSubtitles;",
        "audioTracks",
        "Lexpo/modules/video/player/VideoPlayerAudioTracks;",
        "getAudioTracks",
        "()Lexpo/modules/video/player/VideoPlayerAudioTracks;",
        "trackSelector",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;",
        "getTrackSelector",
        "()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;",
        "player",
        "Landroidx/media3/exoplayer/ExoPlayer;",
        "getPlayer",
        "()Landroidx/media3/exoplayer/ExoPlayer;",
        "firstFrameEventGenerator",
        "Lexpo/modules/video/player/FirstFrameEventGenerator;",
        "getFirstFrameEventGenerator$expo_video_release",
        "()Lexpo/modules/video/player/FirstFrameEventGenerator;",
        "serviceConnection",
        "Lexpo/modules/video/playbackService/PlaybackServiceConnection;",
        "getServiceConnection",
        "()Lexpo/modules/video/playbackService/PlaybackServiceConnection;",
        "mediaSession",
        "Landroidx/media3/session/MediaSession;",
        "getMediaSession",
        "()Landroidx/media3/session/MediaSession;",
        "setMediaSession",
        "(Landroidx/media3/session/MediaSession;)V",
        "intervalUpdateClock",
        "Lexpo/modules/video/IntervalUpdateClock;",
        "getIntervalUpdateClock",
        "()Lexpo/modules/video/IntervalUpdateClock;",
        "",
        "playing",
        "getPlaying",
        "()Z",
        "setPlaying",
        "(Z)V",
        "playing$delegate",
        "Lexpo/modules/video/delegates/IgnoreSameSet;",
        "uncommittedSource",
        "getUncommittedSource",
        "()Lexpo/modules/video/records/VideoSource;",
        "setUncommittedSource",
        "(Lexpo/modules/video/records/VideoSource;)V",
        "commitedSource",
        "getCommitedSource",
        "setCommitedSource",
        "commitedSource$delegate",
        "userVolume",
        "",
        "getUserVolume",
        "()F",
        "setUserVolume",
        "(F)V",
        "status",
        "Lexpo/modules/video/enums/PlayerStatus;",
        "getStatus",
        "()Lexpo/modules/video/enums/PlayerStatus;",
        "setStatus",
        "(Lexpo/modules/video/enums/PlayerStatus;)V",
        "requiresLinearPlayback",
        "getRequiresLinearPlayback",
        "setRequiresLinearPlayback",
        "value",
        "staysActiveInBackground",
        "getStaysActiveInBackground",
        "setStaysActiveInBackground",
        "preservesPitch",
        "getPreservesPitch",
        "setPreservesPitch",
        "showNowPlayingNotification",
        "getShowNowPlayingNotification",
        "setShowNowPlayingNotification",
        "duration",
        "getDuration",
        "setDuration",
        "isLive",
        "setLive",
        "volume",
        "getVolume",
        "setVolume",
        "volume$delegate",
        "muted",
        "getMuted",
        "setMuted",
        "muted$delegate",
        "Landroidx/media3/common/PlaybackParameters;",
        "playbackParameters",
        "getPlaybackParameters",
        "()Landroidx/media3/common/PlaybackParameters;",
        "setPlaybackParameters",
        "(Landroidx/media3/common/PlaybackParameters;)V",
        "playbackParameters$delegate",
        "currentOffsetFromLive",
        "getCurrentOffsetFromLive",
        "()Ljava/lang/Float;",
        "currentLiveTimestamp",
        "",
        "getCurrentLiveTimestamp",
        "()Ljava/lang/Long;",
        "Lexpo/modules/video/records/BufferOptions;",
        "bufferOptions",
        "getBufferOptions",
        "()Lexpo/modules/video/records/BufferOptions;",
        "setBufferOptions",
        "(Lexpo/modules/video/records/BufferOptions;)V",
        "bufferedPosition",
        "",
        "getBufferedPosition",
        "()D",
        "Lexpo/modules/video/enums/AudioMixingMode;",
        "audioMixingMode",
        "getAudioMixingMode",
        "()Lexpo/modules/video/enums/AudioMixingMode;",
        "setAudioMixingMode",
        "(Lexpo/modules/video/enums/AudioMixingMode;)V",
        "isLoadingNewSource",
        "Lexpo/modules/video/records/VideoTrack;",
        "currentVideoTrack",
        "getCurrentVideoTrack",
        "()Lexpo/modules/video/records/VideoTrack;",
        "setCurrentVideoTrack",
        "(Lexpo/modules/video/records/VideoTrack;)V",
        "Lexpo/modules/video/records/SeekTolerance;",
        "seekTolerance",
        "getSeekTolerance",
        "()Lexpo/modules/video/records/SeekTolerance;",
        "setSeekTolerance",
        "(Lexpo/modules/video/records/SeekTolerance;)V",
        "Lexpo/modules/video/records/ScrubbingModeOptions;",
        "scrubbingModeOptions",
        "getScrubbingModeOptions",
        "()Lexpo/modules/video/records/ScrubbingModeOptions;",
        "setScrubbingModeOptions",
        "(Lexpo/modules/video/records/ScrubbingModeOptions;)V",
        "",
        "availableVideoTracks",
        "getAvailableVideoTracks",
        "()Ljava/util/List;",
        "keepScreenOnWhilePlaying",
        "getKeepScreenOnWhilePlaying",
        "setKeepScreenOnWhilePlaying",
        "keepScreenOnWhilePlaying$delegate",
        "Lexpo/modules/video/player/VideoPlayerKeepAwake;",
        "playerListener",
        "expo/modules/video/player/VideoPlayer$playerListener$1",
        "Lexpo/modules/video/player/VideoPlayer$playerListener$1;",
        "analyticsListener",
        "expo/modules/video/player/VideoPlayer$analyticsListener$1",
        "Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;",
        "close",
        "",
        "sharedObjectDidRelease",
        "hasBeenDisconnectedFromVideoView",
        "changeVideoView",
        "videoView",
        "prepare",
        "applyPitchCorrection",
        "playerStateToPlayerStatus",
        "state",
        "",
        "error",
        "Landroidx/media3/common/PlaybackException;",
        "refreshPlaybackInfo",
        "resetPlaybackInfo",
        "startPlaybackService",
        "serviceSetShowNotification",
        "showNotification",
        "addListener",
        "videoPlayerListener",
        "removeListener",
        "sendEvent",
        "event",
        "Lexpo/modules/video/player/PlayerEvent;",
        "createFirstFrameEventGenerator",
        "emitTimeUpdate",
        "toMetadataRetriever",
        "Landroid/media/MediaMetadataRetriever;",
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


# instance fields
.field private final analyticsListener:Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;

.field private audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

.field private final audioTracks:Lexpo/modules/video/player/VideoPlayerAudioTracks;

.field private availableVideoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/video/records/VideoTrack;",
            ">;"
        }
    .end annotation
.end field

.field private bufferOptions:Lexpo/modules/video/records/BufferOptions;

.field private final commitedSource$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

.field private final context:Landroid/content/Context;

.field private currentVideoTrack:Lexpo/modules/video/records/VideoTrack;

.field private final currentVideoViewRef:Lexpo/modules/video/utils/MutableWeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/video/utils/MutableWeakReference<",
            "Lexpo/modules/video/VideoView;",
            ">;"
        }
    .end annotation
.end field

.field private duration:F

.field private final firstFrameEventGenerator:Lexpo/modules/video/player/FirstFrameEventGenerator;

.field private final intervalUpdateClock:Lexpo/modules/video/IntervalUpdateClock;

.field private isLive:Z

.field private isLoadingNewSource:Z

.field private final keepScreenOnWhilePlaying$delegate:Lexpo/modules/video/player/VideoPlayerKeepAwake;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/listeners/VideoPlayerListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final loadControl:Lexpo/modules/video/player/VideoPlayerLoadControl;

.field private mediaSession:Landroidx/media3/session/MediaSession;

.field private final muted$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

.field private final playbackParameters$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

.field private final player:Landroidx/media3/exoplayer/ExoPlayer;

.field private final playerListener:Lexpo/modules/video/player/VideoPlayer$playerListener$1;

.field private final playing$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

.field private preservesPitch:Z

.field private renderersFactory:Landroidx/media3/exoplayer/DefaultRenderersFactory;

.field private requiresLinearPlayback:Z

.field private scrubbingModeOptions:Lexpo/modules/video/records/ScrubbingModeOptions;

.field private seekTolerance:Lexpo/modules/video/records/SeekTolerance;

.field private final serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

.field private showNowPlayingNotification:Z

.field private status:Lexpo/modules/video/enums/PlayerStatus;

.field private staysActiveInBackground:Z

.field private final subtitles:Lexpo/modules/video/player/VideoPlayerSubtitles;

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

.field private uncommittedSource:Lexpo/modules/video/records/VideoSource;

.field private userVolume:F

.field private final volume$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;


# direct methods
.method public static synthetic $r8$lambda$Csh3xSXKonPo3VmPJUt4MgN6QXU(Lexpo/modules/video/player/VideoPlayer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/video/player/VideoPlayer;->createFirstFrameEventGenerator$lambda$20(Lexpo/modules/video/player/VideoPlayer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ELOPvjDp7XtfVYFRpMSHk3hyHVI(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;FF)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayer;->volume_delegate$lambda$6(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;FF)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FTYWWhxzNNhLtPyOrIFWqPGNzbU(Lexpo/modules/video/listeners/VideoPlayerListener;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->removeListener$lambda$17$lambda$16(Lexpo/modules/video/listeners/VideoPlayerListener;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HttaCFZBhYskEy_JSB3P89KzQnM(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayer;->commitedSource_delegate$lambda$5(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VZS54P8VRHp1RSD_H4M69vNMJKU(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;ZZ)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayer;->muted_delegate$lambda$7(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;ZZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ecxbHIPpZB4J5tj8cdM_H8iP4I8(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/VideoView;Lexpo/modules/video/VideoView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayer;->currentVideoViewRef$lambda$0(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/VideoView;Lexpo/modules/video/VideoView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hIy_uAW9QI7wAwP8NDCjcygWNFo(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;Landroidx/media3/common/PlaybackParameters;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayer;->playbackParameters_delegate$lambda$9(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;Landroidx/media3/common/PlaybackParameters;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tNAGo_h7WkQbdX_Agmbn_WnQev4(Lexpo/modules/video/player/VideoPlayer;ZZ)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayer;->playing_delegate$lambda$4(Lexpo/modules/video/player/VideoPlayer;ZZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z9j3h2DFVS5HEP-3lUxOEtbtlAY(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->playbackParameters_delegate$lambda$8(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 70
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "currentVideoView"

    const-string v3, "getCurrentVideoView()Lexpo/modules/video/VideoView;"

    const-class v4, Lexpo/modules/video/player/VideoPlayer;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 94
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "playing"

    const-string v3, "getPlaying()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 99
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "commitedSource"

    const-string v3, "getCommitedSource()Lexpo/modules/video/records/VideoSource;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 131
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "volume"

    const-string v3, "getVolume()F"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 139
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "muted"

    const-string v3, "getMuted()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 146
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "playbackParameters"

    const-string v3, "getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 233
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "keepScreenOnWhilePlaying"

    const-string v3, "getKeepScreenOnWhilePlaying()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/PlayerBuilderOptions;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "appContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {v1, v2}, Lexpo/modules/kotlin/sharedobjects/SharedObject;-><init>(Lexpo/modules/kotlin/AppContext;)V

    iput-object v0, v1, Lexpo/modules/video/player/VideoPlayer;->context:Landroid/content/Context;

    .line 63
    new-instance v3, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v3}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->forceEnableMediaCodecAsynchronousQueueing()Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v3

    const/4 v4, 0x1

    .line 65
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->setEnableDecoderFallback(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v3

    const-string v4, "setEnableDecoderFallback(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v1, Lexpo/modules/video/player/VideoPlayer;->renderersFactory:Landroidx/media3/exoplayer/DefaultRenderersFactory;

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    iput-object v3, v1, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    .line 67
    new-instance v3, Lexpo/modules/video/utils/MutableWeakReference;

    new-instance v4, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4}, Lexpo/modules/video/utils/MutableWeakReference;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iput-object v3, v1, Lexpo/modules/video/player/VideoPlayer;->currentVideoViewRef:Lexpo/modules/video/utils/MutableWeakReference;

    .line 71
    new-instance v3, Lexpo/modules/video/player/VideoPlayerLoadControl;

    invoke-direct {v3}, Lexpo/modules/video/player/VideoPlayerLoadControl;-><init>()V

    iput-object v3, v1, Lexpo/modules/video/player/VideoPlayer;->loadControl:Lexpo/modules/video/player/VideoPlayerLoadControl;

    .line 72
    new-instance v4, Lexpo/modules/video/player/VideoPlayerSubtitles;

    invoke-direct {v4, v1}, Lexpo/modules/video/player/VideoPlayerSubtitles;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    iput-object v4, v1, Lexpo/modules/video/player/VideoPlayer;->subtitles:Lexpo/modules/video/player/VideoPlayerSubtitles;

    .line 73
    new-instance v4, Lexpo/modules/video/player/VideoPlayerAudioTracks;

    invoke-direct {v4, v1}, Lexpo/modules/video/player/VideoPlayerAudioTracks;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    iput-object v4, v1, Lexpo/modules/video/player/VideoPlayer;->audioTracks:Lexpo/modules/video/player/VideoPlayerAudioTracks;

    .line 74
    new-instance v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-direct {v4, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lexpo/modules/video/player/VideoPlayer;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 77
    new-instance v4, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    iget-object v5, v1, Lexpo/modules/video/player/VideoPlayer;->renderersFactory:Landroidx/media3/exoplayer/DefaultRenderersFactory;

    check-cast v5, Landroidx/media3/exoplayer/RenderersFactory;

    invoke-direct {v4, v0, v5}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;)V

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 80
    check-cast v3, Landroidx/media3/exoplayer/LoadControl;

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    if-eqz p4, :cond_0

    .line 81
    invoke-virtual/range {p4 .. p4}, Lexpo/modules/video/records/PlayerBuilderOptions;->getSeekBackwardIncrement-FghU774()Lkotlin/time/Duration;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    .line 82
    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v7, v8, v3}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v9

    const-wide/16 v11, 0x1

    const-wide/32 v13, 0xf3e58

    invoke-static/range {v9 .. v14}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setSeekBackIncrementMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    :cond_0
    if-eqz p4, :cond_1

    .line 84
    invoke-virtual/range {p4 .. p4}, Lexpo/modules/video/records/PlayerBuilderOptions;->getSeekForwardIncrement-FghU774()Lkotlin/time/Duration;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    .line 85
    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v7, v8, v3}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v9

    const-wide/16 v11, 0x1

    const-wide/32 v13, 0xf3e58

    invoke-static/range {v9 .. v14}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setSeekForwardIncrementMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 87
    :cond_1
    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v7

    const-string v3, "build(...)"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v1, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 90
    new-instance v3, Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v4, v2}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;-><init>(Ljava/lang/ref/WeakReference;Lexpo/modules/kotlin/AppContext;)V

    iput-object v3, v1, Lexpo/modules/video/player/VideoPlayer;->serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    .line 91
    invoke-static {v0, v7}, Lexpo/modules/video/utils/MediaSessionUtilsKt;->buildBasicMediaSession(Landroid/content/Context;Landroidx/media3/exoplayer/ExoPlayer;)Landroidx/media3/session/MediaSession;

    move-result-object v0

    iput-object v0, v1, Lexpo/modules/video/player/VideoPlayer;->mediaSession:Landroidx/media3/session/MediaSession;

    .line 92
    new-instance v0, Lexpo/modules/video/IntervalUpdateClock;

    move-object v3, v1

    check-cast v3, Lexpo/modules/video/IntervalUpdateEmitter;

    invoke-direct {v0, v3}, Lexpo/modules/video/IntervalUpdateClock;-><init>(Lexpo/modules/video/IntervalUpdateEmitter;)V

    iput-object v0, v1, Lexpo/modules/video/player/VideoPlayer;->intervalUpdateClock:Lexpo/modules/video/IntervalUpdateClock;

    .line 94
    new-instance v8, Lexpo/modules/video/delegates/IgnoreSameSet;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    new-instance v11, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda2;

    invoke-direct {v11, v1}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v8 .. v13}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v1, Lexpo/modules/video/player/VideoPlayer;->playing$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    move-object/from16 v3, p3

    .line 98
    iput-object v3, v1, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    .line 99
    new-instance v8, Lexpo/modules/video/delegates/IgnoreSameSet;

    new-instance v11, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda3;

    invoke-direct {v11, v1}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    const/4 v9, 0x0

    invoke-direct/range {v8 .. v13}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v1, Lexpo/modules/video/player/VideoPlayer;->commitedSource$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 104
    iput v3, v1, Lexpo/modules/video/player/VideoPlayer;->userVolume:F

    .line 105
    sget-object v4, Lexpo/modules/video/enums/PlayerStatus;->IDLE:Lexpo/modules/video/enums/PlayerStatus;

    iput-object v4, v1, Lexpo/modules/video/player/VideoPlayer;->status:Lexpo/modules/video/enums/PlayerStatus;

    .line 131
    new-instance v8, Lexpo/modules/video/delegates/IgnoreSameSet;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-instance v11, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda4;

    invoke-direct {v11, v2, v1}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda4;-><init>(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;)V

    invoke-direct/range {v8 .. v13}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v1, Lexpo/modules/video/player/VideoPlayer;->volume$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    .line 139
    new-instance v9, Lexpo/modules/video/delegates/IgnoreSameSet;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    new-instance v12, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda5;

    invoke-direct {v12, v2, v1}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda5;-><init>(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;)V

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v9 .. v14}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v1, Lexpo/modules/video/player/VideoPlayer;->muted$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    .line 146
    new-instance v0, Lexpo/modules/video/delegates/IgnoreSameSet;

    .line 147
    sget-object v3, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    .line 148
    new-instance v4, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda6;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    .line 149
    new-instance v5, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda7;

    invoke-direct {v5, v2, v1}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda7;-><init>(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;)V

    .line 146
    invoke-direct {v0, v3, v4, v5}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    iput-object v0, v1, Lexpo/modules/video/player/VideoPlayer;->playbackParameters$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    .line 180
    new-instance v8, Lexpo/modules/video/records/BufferOptions;

    const/16 v15, 0xf

    const/16 v16, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    invoke-direct/range {v8 .. v16}, Lexpo/modules/video/records/BufferOptions;-><init>(Ljava/lang/Double;JZDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v1, Lexpo/modules/video/player/VideoPlayer;->bufferOptions:Lexpo/modules/video/records/BufferOptions;

    .line 197
    sget-object v0, Lexpo/modules/video/enums/AudioMixingMode;->AUTO:Lexpo/modules/video/enums/AudioMixingMode;

    iput-object v0, v1, Lexpo/modules/video/player/VideoPlayer;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    .line 214
    new-instance v8, Lexpo/modules/video/records/SeekTolerance;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-direct/range {v8 .. v14}, Lexpo/modules/video/records/SeekTolerance;-><init>(DDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v1, Lexpo/modules/video/player/VideoPlayer;->seekTolerance:Lexpo/modules/video/records/SeekTolerance;

    .line 222
    new-instance v9, Lexpo/modules/video/records/ScrubbingModeOptions;

    const/16 v15, 0x1f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Lexpo/modules/video/records/ScrubbingModeOptions;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v1, Lexpo/modules/video/player/VideoPlayer;->scrubbingModeOptions:Lexpo/modules/video/records/ScrubbingModeOptions;

    .line 230
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lexpo/modules/video/player/VideoPlayer;->availableVideoTracks:Ljava/util/List;

    .line 233
    new-instance v0, Lexpo/modules/video/player/VideoPlayerKeepAwake;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lexpo/modules/video/player/VideoPlayerKeepAwake;-><init>(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/kotlin/AppContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v1, Lexpo/modules/video/player/VideoPlayer;->keepScreenOnWhilePlaying$delegate:Lexpo/modules/video/player/VideoPlayerKeepAwake;

    .line 235
    new-instance v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;

    invoke-direct {v0, v1}, Lexpo/modules/video/player/VideoPlayer$playerListener$1;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    iput-object v0, v1, Lexpo/modules/video/player/VideoPlayer;->playerListener:Lexpo/modules/video/player/VideoPlayer$playerListener$1;

    .line 344
    new-instance v2, Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;

    invoke-direct {v2, v1}, Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    iput-object v2, v1, Lexpo/modules/video/player/VideoPlayer;->analyticsListener:Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;

    .line 352
    check-cast v0, Landroidx/media3/common/Player$Listener;

    invoke-interface {v7, v0}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 353
    check-cast v2, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-interface {v7, v2}, Landroidx/media3/exoplayer/ExoPlayer;->addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 354
    sget-object v0, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {v0, v1}, Lexpo/modules/video/managers/VideoManager;->registerVideoPlayer(Lexpo/modules/video/player/VideoPlayer;)V

    .line 355
    invoke-direct {v1}, Lexpo/modules/video/player/VideoPlayer;->createFirstFrameEventGenerator()Lexpo/modules/video/player/FirstFrameEventGenerator;

    move-result-object v0

    iput-object v0, v1, Lexpo/modules/video/player/VideoPlayer;->firstFrameEventGenerator:Lexpo/modules/video/player/FirstFrameEventGenerator;

    .line 357
    invoke-virtual/range {p2 .. p2}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    new-instance v0, Lexpo/modules/video/player/VideoPlayer$1;

    invoke-direct {v0, v1, v6}, Lexpo/modules/video/player/VideoPlayer$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/PlayerBuilderOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 61
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/video/player/VideoPlayer;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/PlayerBuilderOptions;)V

    return-void
.end method

.method public static final synthetic access$applyPitchCorrection(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->applyPitchCorrection(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAnalyticsListener$p(Lexpo/modules/video/player/VideoPlayer;)Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;
    .locals 0

    .line 60
    iget-object p0, p0, Lexpo/modules/video/player/VideoPlayer;->analyticsListener:Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;

    return-object p0
.end method

.method public static final synthetic access$getCommitedSource(Lexpo/modules/video/player/VideoPlayer;)Lexpo/modules/video/records/VideoSource;
    .locals 0

    .line 60
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayer;->getCommitedSource()Lexpo/modules/video/records/VideoSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPlayerListener$p(Lexpo/modules/video/player/VideoPlayer;)Lexpo/modules/video/player/VideoPlayer$playerListener$1;
    .locals 0

    .line 60
    iget-object p0, p0, Lexpo/modules/video/player/VideoPlayer;->playerListener:Lexpo/modules/video/player/VideoPlayer$playerListener$1;

    return-object p0
.end method

.method public static final synthetic access$playerStateToPlayerStatus(Lexpo/modules/video/player/VideoPlayer;I)Lexpo/modules/video/enums/PlayerStatus;
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->playerStateToPlayerStatus(I)Lexpo/modules/video/enums/PlayerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$refreshPlaybackInfo(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayer;->refreshPlaybackInfo()V

    return-void
.end method

.method public static final synthetic access$resetPlaybackInfo(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayer;->resetPlaybackInfo()V

    return-void
.end method

.method public static final synthetic access$sendEvent(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/player/PlayerEvent;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    return-void
.end method

.method public static final synthetic access$serviceSetShowNotification(Lexpo/modules/video/player/VideoPlayer;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->serviceSetShowNotification(Z)V

    return-void
.end method

.method public static final synthetic access$setAvailableVideoTracks$p(Lexpo/modules/video/player/VideoPlayer;Ljava/util/List;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->availableVideoTracks:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setCurrentVideoTrack(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoTrack;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->setCurrentVideoTrack(Lexpo/modules/video/records/VideoTrack;)V

    return-void
.end method

.method public static final synthetic access$setLoadingNewSource$p(Lexpo/modules/video/player/VideoPlayer;Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lexpo/modules/video/player/VideoPlayer;->isLoadingNewSource:Z

    return-void
.end method

.method public static final synthetic access$setStatus(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Landroidx/media3/common/PlaybackException;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayer;->setStatus(Lexpo/modules/video/enums/PlayerStatus;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method private final applyPitchCorrection(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;
    .locals 2

    .line 434
    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 435
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->preservesPitch:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v0, p1

    .line 436
    :goto_0
    new-instance v1, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {v1, p1, v0}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    return-object v1
.end method

.method private static final commitedSource_delegate$lambda$5(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)Lkotlin/Unit;
    .locals 1

    .line 100
    new-instance v0, Lexpo/modules/video/player/PlayerEvent$SourceChanged;

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$SourceChanged;-><init>(Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V

    check-cast v0, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 101
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final createFirstFrameEventGenerator()Lexpo/modules/video/player/FirstFrameEventGenerator;
    .locals 4

    .line 535
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    new-instance v1, Lexpo/modules/video/player/FirstFrameEventGenerator;

    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayer;->currentVideoViewRef:Lexpo/modules/video/utils/MutableWeakReference;

    new-instance v3, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda8;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    invoke-direct {v1, v0, p0, v2, v3}, Lexpo/modules/video/player/FirstFrameEventGenerator;-><init>(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/utils/MutableWeakReference;Lkotlin/jvm/functions/Function0;)V

    return-object v1

    .line 536
    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;-><init>()V

    throw v0
.end method

.method private static final createFirstFrameEventGenerator$lambda$20(Lexpo/modules/video/player/VideoPlayer;)Lkotlin/Unit;
    .locals 1

    .line 539
    new-instance v0, Lexpo/modules/video/player/PlayerEvent$RenderedFirstFrame;

    invoke-direct {v0}, Lexpo/modules/video/player/PlayerEvent$RenderedFirstFrame;-><init>()V

    check-cast v0, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 540
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final currentVideoViewRef$lambda$0(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/VideoView;Lexpo/modules/video/VideoView;)Lkotlin/Unit;
    .locals 1

    .line 68
    new-instance v0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;-><init>(Lexpo/modules/video/VideoView;Lexpo/modules/video/VideoView;)V

    check-cast v0, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 69
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getCommitedSource()Lexpo/modules/video/records/VideoSource;
    .locals 3

    .line 99
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->commitedSource$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/delegates/IgnoreSameSet;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/records/VideoSource;

    return-object v0
.end method

.method private static getCurrentVideoView$delegate(Lexpo/modules/video/player/VideoPlayer;)Ljava/lang/Object;
    .locals 0

    .line 70
    iget-object p0, p0, Lexpo/modules/video/player/VideoPlayer;->currentVideoViewRef:Lexpo/modules/video/utils/MutableWeakReference;

    return-object p0
.end method

.method private static final muted_delegate$lambda$7(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;ZZ)Lkotlin/Unit;
    .locals 6

    .line 140
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p0, Lexpo/modules/video/player/VideoPlayer$muted$2$1;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lexpo/modules/video/player/VideoPlayer$muted$2$1;-><init>(Lexpo/modules/video/player/VideoPlayer;ZLkotlin/coroutines/Continuation;)V

    move-object v3, p0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 143
    new-instance p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lexpo/modules/video/player/PlayerEvent$MutedChanged;-><init>(ZLjava/lang/Boolean;)V

    check-cast p0, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p1, p0}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 144
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final playbackParameters_delegate$lambda$8(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->applyPitchCorrection(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    return-object p0
.end method

.method private static final playbackParameters_delegate$lambda$9(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;Landroidx/media3/common/PlaybackParameters;)Lkotlin/Unit;
    .locals 7

    const-string v0, "new"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance p0, Lexpo/modules/video/player/VideoPlayer$playbackParameters$3$1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/video/player/VideoPlayer$playbackParameters$3$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;Lkotlin/coroutines/Continuation;)V

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 154
    iget p0, p3, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget v0, p2, Landroidx/media3/common/PlaybackParameters;->speed:F

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    new-instance p0, Lexpo/modules/video/player/PlayerEvent$PlaybackRateChanged;

    iget p2, p2, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget p3, p3, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lexpo/modules/video/player/PlayerEvent$PlaybackRateChanged;-><init>(FLjava/lang/Float;)V

    check-cast p0, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p1, p0}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 157
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final playerStateToPlayerStatus(I)Lexpo/modules/video/enums/PlayerStatus;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 453
    sget-object p1, Lexpo/modules/video/enums/PlayerStatus;->IDLE:Lexpo/modules/video/enums/PlayerStatus;

    return-object p1

    .line 446
    :cond_0
    iget-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 447
    sget-object p1, Lexpo/modules/video/enums/PlayerStatus;->ERROR:Lexpo/modules/video/enums/PlayerStatus;

    return-object p1

    .line 449
    :cond_1
    sget-object p1, Lexpo/modules/video/enums/PlayerStatus;->IDLE:Lexpo/modules/video/enums/PlayerStatus;

    return-object p1

    .line 443
    :cond_2
    sget-object p1, Lexpo/modules/video/enums/PlayerStatus;->READY_TO_PLAY:Lexpo/modules/video/enums/PlayerStatus;

    return-object p1

    .line 442
    :cond_3
    sget-object p1, Lexpo/modules/video/enums/PlayerStatus;->LOADING:Lexpo/modules/video/enums/PlayerStatus;

    return-object p1

    .line 441
    :cond_4
    sget-object p1, Lexpo/modules/video/enums/PlayerStatus;->IDLE:Lexpo/modules/video/enums/PlayerStatus;

    return-object p1
.end method

.method private static final playing_delegate$lambda$4(Lexpo/modules/video/player/VideoPlayer;ZZ)Lkotlin/Unit;
    .locals 1

    .line 95
    new-instance v0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;-><init>(ZLjava/lang/Boolean;)V

    check-cast v0, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 96
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final refreshPlaybackInfo()V
    .locals 2

    .line 475
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lexpo/modules/video/player/VideoPlayer;->duration:F

    .line 476
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isCurrentMediaItemLive()Z

    move-result v0

    iput-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->isLive:Z

    return-void
.end method

.method private static final removeListener$lambda$17$lambda$16(Lexpo/modules/video/listeners/VideoPlayerListener;Ljava/lang/ref/WeakReference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final resetPlaybackInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 480
    iput v0, p0, Lexpo/modules/video/player/VideoPlayer;->duration:F

    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->isLive:Z

    return-void
.end method

.method private final sendEvent(Lexpo/modules/video/player/PlayerEvent;)V
    .locals 4

    .line 522
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 523
    :try_start_0
    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 600
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 609
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 608
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 523
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/video/listeners/VideoPlayerListener;

    if-eqz v3, :cond_0

    .line 608
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 612
    :cond_1
    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    monitor-exit v0

    .line 526
    invoke-virtual {p1, p0, v2}, Lexpo/modules/video/player/PlayerEvent;->emit(Lexpo/modules/video/player/VideoPlayer;Ljava/util/List;)V

    .line 529
    invoke-virtual {p1}, Lexpo/modules/video/player/PlayerEvent;->getEmitToJS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    invoke-virtual {p1}, Lexpo/modules/video/player/PlayerEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lexpo/modules/video/player/PlayerEvent;->getJsEventPayload()Lexpo/modules/video/records/VideoEventPayload;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lexpo/modules/video/player/VideoPlayer;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 522
    monitor-exit v0

    throw p1
.end method

.method private final serviceSetShowNotification(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 502
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayer;->startPlaybackService()Z

    .line 504
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    invoke-virtual {v0}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->getPlaybackServiceBinder()Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/video/playbackService/PlaybackServiceBinder;->getService()Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, p1, v1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->setShowNotification(ZLandroidx/media3/exoplayer/ExoPlayer;)V

    :cond_1
    return-void
.end method

.method private final setCommitedSource(Lexpo/modules/video/records/VideoSource;)V
    .locals 3

    .line 99
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->commitedSource$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/delegates/IgnoreSameSet;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setCurrentVideoTrack(Lexpo/modules/video/records/VideoTrack;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->currentVideoTrack:Lexpo/modules/video/records/VideoTrack;

    .line 210
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->currentVideoTrack:Lexpo/modules/video/records/VideoTrack;

    .line 211
    new-instance v1, Lexpo/modules/video/player/PlayerEvent$VideoTrackChanged;

    invoke-direct {v1, p1, v0}, Lexpo/modules/video/player/PlayerEvent$VideoTrackChanged;-><init>(Lexpo/modules/video/records/VideoTrack;Lexpo/modules/video/records/VideoTrack;)V

    check-cast v1, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v1}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    return-void
.end method

.method private final setStatus(Lexpo/modules/video/enums/PlayerStatus;Landroidx/media3/common/PlaybackException;)V
    .locals 3

    .line 458
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->status:Lexpo/modules/video/enums/PlayerStatus;

    .line 459
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->status:Lexpo/modules/video/enums/PlayerStatus;

    if-eqz p2, :cond_0

    .line 462
    new-instance v1, Lexpo/modules/video/records/PlaybackError;

    invoke-direct {v1, p2}, Lexpo/modules/video/records/PlaybackError;-><init>(Landroidx/media3/common/PlaybackException;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 465
    iget-object p2, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p2}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result p2

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 466
    new-instance p2, Lexpo/modules/video/player/PlayerEvent$PlayedToEnd;

    invoke-direct {p2}, Lexpo/modules/video/player/PlayerEvent$PlayedToEnd;-><init>()V

    check-cast p2, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, p2}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 469
    :cond_1
    iget-object p2, p0, Lexpo/modules/video/player/VideoPlayer;->status:Lexpo/modules/video/enums/PlayerStatus;

    if-eq p2, v0, :cond_2

    .line 470
    new-instance p2, Lexpo/modules/video/player/PlayerEvent$StatusChanged;

    invoke-direct {p2, p1, v0, v1}, Lexpo/modules/video/player/PlayerEvent$StatusChanged;-><init>(Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V

    check-cast p2, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, p2}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    :cond_2
    return-void
.end method

.method private final startPlaybackService()Z
    .locals 5

    .line 485
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    invoke-virtual {v0}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->getPlaybackServiceBinder()Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/video/playbackService/PlaybackServiceBinder;->getService()Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 489
    :cond_1
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 490
    sget-object v2, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->Companion:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;

    iget-object v3, p0, Lexpo/modules/video/player/VideoPlayer;->context:Landroid/content/Context;

    iget-object v4, p0, Lexpo/modules/video/player/VideoPlayer;->serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    invoke-virtual {v2, v0, v3, v4}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;->startService(Lexpo/modules/kotlin/AppContext;Landroid/content/Context;Lexpo/modules/video/playbackService/PlaybackServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 493
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getJsLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 494
    const-string v3, "Expo-video has failed to bind with the playback service binder"

    const/4 v4, 0x2

    invoke-static {v3, v1, v4, v1}, Lexpo/modules/video/VideoExceptionsKt;->getPlaybackServiceErrorMessage$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 493
    invoke-static {v0, v3, v1, v4, v1}, Lexpo/modules/core/logging/Logger;->error$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_2
    return v2

    .line 489
    :cond_3
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;-><init>()V

    throw v0
.end method

.method private static final volume_delegate$lambda$6(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;FF)Lkotlin/Unit;
    .locals 6

    .line 132
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p0, Lexpo/modules/video/player/VideoPlayer$volume$2$1;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lexpo/modules/video/player/VideoPlayer$volume$2$1;-><init>(Lexpo/modules/video/player/VideoPlayer;FLkotlin/coroutines/Continuation;)V

    move-object v3, p0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 135
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getVolume()F

    move-result p0

    iput p0, p1, Lexpo/modules/video/player/VideoPlayer;->userVolume:F

    .line 136
    new-instance p0, Lexpo/modules/video/player/PlayerEvent$VolumeChanged;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lexpo/modules/video/player/PlayerEvent$VolumeChanged;-><init>(FLjava/lang/Float;)V

    check-cast p0, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p1, p0}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 137
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final addListener(Lexpo/modules/video/listeners/VideoPlayerListener;)V
    .locals 3

    const-string v0, "videoPlayerListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 509
    :try_start_0
    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 597
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 509
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 510
    :cond_2
    :goto_0
    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final changeVideoView(Lexpo/modules/video/VideoView;)V
    .locals 3

    .line 409
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    check-cast v0, Landroidx/media3/common/Player;

    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getCurrentVideoView()Lexpo/modules/video/VideoView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lexpo/modules/video/VideoView;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v2

    :cond_1
    invoke-static {v0, v1, v2}, Landroidx/media3/ui/PlayerView;->switchTargetView(Landroidx/media3/common/Player;Landroidx/media3/ui/PlayerView;Landroidx/media3/ui/PlayerView;)V

    .line 410
    invoke-virtual {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->setCurrentVideoView(Lexpo/modules/video/VideoView;)V

    return-void
.end method

.method public close()V
    .locals 8

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, v0}, Lexpo/modules/video/player/VideoPlayer;->setKeepScreenOnWhilePlaying(Z)V

    .line 367
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->intervalUpdateClock:Lexpo/modules/video/IntervalUpdateClock;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lexpo/modules/video/IntervalUpdateClock;->setInterval(J)V

    .line 369
    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 370
    :try_start_0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 371
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit v1

    .line 373
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    invoke-virtual {v0}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 376
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    invoke-virtual {v0}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->getPlaybackServiceBinder()Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/video/playbackService/PlaybackServiceBinder;->getService()Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->unregisterPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    .line 377
    :cond_1
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->mediaSession:Landroidx/media3/session/MediaSession;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->release()V

    .line 379
    sget-object v0, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {v0, p0}, Lexpo/modules/video/managers/VideoManager;->unregisterVideoPlayer(Lexpo/modules/video/player/VideoPlayer;)V

    .line 383
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lexpo/modules/video/player/VideoPlayer$close$2;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lexpo/modules/video/player/VideoPlayer$close$2;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 389
    iput-object v7, p0, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    .line 390
    invoke-direct {p0, v7}, Lexpo/modules/video/player/VideoPlayer;->setCommitedSource(Lexpo/modules/video/records/VideoSource;)V

    return-void

    :catchall_0
    move-exception v0

    .line 369
    monitor-exit v1

    throw v0
.end method

.method public emitTimeUpdate()V
    .locals 7

    .line 545
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lexpo/modules/video/player/VideoPlayer$emitTimeUpdate$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lexpo/modules/video/player/VideoPlayer$emitTimeUpdate$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final getAudioMixingMode()Lexpo/modules/video/enums/AudioMixingMode;
    .locals 1

    .line 197
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    return-object v0
.end method

.method public final getAudioTracks()Lexpo/modules/video/player/VideoPlayerAudioTracks;
    .locals 1

    .line 73
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->audioTracks:Lexpo/modules/video/player/VideoPlayerAudioTracks;

    return-object v0
.end method

.method public final getAvailableVideoTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/VideoTrack;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->availableVideoTracks:Ljava/util/List;

    return-object v0
.end method

.method public final getBufferOptions()Lexpo/modules/video/records/BufferOptions;
    .locals 1

    .line 180
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->bufferOptions:Lexpo/modules/video/records/BufferOptions;

    return-object v0
.end method

.method public final getBufferedPosition()D
    .locals 4

    .line 188
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 191
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 194
    :cond_1
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 61
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCurrentLiveTimestamp()Ljava/lang/Long;
    .locals 5

    .line 170
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 171
    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 174
    :cond_0
    iget-wide v1, v0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_1
    iget-wide v0, v0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentOffsetFromLive()Ljava/lang/Float;
    .locals 4

    .line 161
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentLiveOffset()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentLiveOffset()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentVideoTrack()Lexpo/modules/video/records/VideoTrack;
    .locals 1

    .line 207
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->currentVideoTrack:Lexpo/modules/video/records/VideoTrack;

    return-object v0
.end method

.method public final getCurrentVideoView()Lexpo/modules/video/VideoView;
    .locals 3

    .line 70
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->currentVideoViewRef:Lexpo/modules/video/utils/MutableWeakReference;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/utils/MutableWeakReference;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/VideoView;

    return-object v0
.end method

.method public final getDuration()F
    .locals 1

    .line 128
    iget v0, p0, Lexpo/modules/video/player/VideoPlayer;->duration:F

    return v0
.end method

.method public final getFirstFrameEventGenerator$expo_video_release()Lexpo/modules/video/player/FirstFrameEventGenerator;
    .locals 1

    .line 89
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->firstFrameEventGenerator:Lexpo/modules/video/player/FirstFrameEventGenerator;

    return-object v0
.end method

.method public final getIntervalUpdateClock()Lexpo/modules/video/IntervalUpdateClock;
    .locals 1

    .line 92
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->intervalUpdateClock:Lexpo/modules/video/IntervalUpdateClock;

    return-object v0
.end method

.method public final getKeepScreenOnWhilePlaying()Z
    .locals 3

    .line 233
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->keepScreenOnWhilePlaying$delegate:Lexpo/modules/video/player/VideoPlayerKeepAwake;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/player/VideoPlayerKeepAwake;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getLoadControl()Lexpo/modules/video/player/VideoPlayerLoadControl;
    .locals 1

    .line 71
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->loadControl:Lexpo/modules/video/player/VideoPlayerLoadControl;

    return-object v0
.end method

.method public final getMediaSession()Landroidx/media3/session/MediaSession;
    .locals 1

    .line 91
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->mediaSession:Landroidx/media3/session/MediaSession;

    return-object v0
.end method

.method public final getMuted()Z
    .locals 3

    .line 139
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->muted$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/delegates/IgnoreSameSet;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 3

    .line 146
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->playbackParameters$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/delegates/IgnoreSameSet;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public final getPlayer()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 1

    .line 76
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    return-object v0
.end method

.method public final getPlaying()Z
    .locals 3

    .line 94
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->playing$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/delegates/IgnoreSameSet;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getPreservesPitch()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->preservesPitch:Z

    return v0
.end method

.method public final getRequiresLinearPlayback()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->requiresLinearPlayback:Z

    return v0
.end method

.method public final getScrubbingModeOptions()Lexpo/modules/video/records/ScrubbingModeOptions;
    .locals 1

    .line 222
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->scrubbingModeOptions:Lexpo/modules/video/records/ScrubbingModeOptions;

    return-object v0
.end method

.method public final getSeekTolerance()Lexpo/modules/video/records/SeekTolerance;
    .locals 1

    .line 214
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->seekTolerance:Lexpo/modules/video/records/SeekTolerance;

    return-object v0
.end method

.method public final getServiceConnection()Lexpo/modules/video/playbackService/PlaybackServiceConnection;
    .locals 1

    .line 90
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    return-object v0
.end method

.method public final getShowNowPlayingNotification()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->showNowPlayingNotification:Z

    return v0
.end method

.method public final getStatus()Lexpo/modules/video/enums/PlayerStatus;
    .locals 1

    .line 105
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->status:Lexpo/modules/video/enums/PlayerStatus;

    return-object v0
.end method

.method public final getStaysActiveInBackground()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->staysActiveInBackground:Z

    return v0
.end method

.method public final getSubtitles()Lexpo/modules/video/player/VideoPlayerSubtitles;
    .locals 1

    .line 72
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->subtitles:Lexpo/modules/video/player/VideoPlayerSubtitles;

    return-object v0
.end method

.method public final getTrackSelector()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
    .locals 1

    .line 74
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    return-object v0
.end method

.method public final getUncommittedSource()Lexpo/modules/video/records/VideoSource;
    .locals 1

    .line 98
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    return-object v0
.end method

.method public final getUserVolume()F
    .locals 1

    .line 104
    iget v0, p0, Lexpo/modules/video/player/VideoPlayer;->userVolume:F

    return v0
.end method

.method public final getVolume()F
    .locals 3

    .line 131
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->volume$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/delegates/IgnoreSameSet;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final hasBeenDisconnectedFromVideoView()V
    .locals 3

    .line 402
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getCurrentVideoView()Lexpo/modules/video/VideoView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/video/VideoView;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    invoke-virtual {p0, v1}, Lexpo/modules/video/player/VideoPlayer;->setCurrentVideoView(Lexpo/modules/video/VideoView;)V

    return-void

    .line 403
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The player has been notified of disconnection from the player view, even though it\'s still connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isLive()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->isLive:Z

    return v0
.end method

.method public final isLoadingNewSource()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->isLoadingNewSource:Z

    return v0
.end method

.method public final prepare()V
    .locals 4

    .line 414
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->availableVideoTracks:Ljava/util/List;

    const/4 v0, 0x0

    .line 415
    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayer;->setCurrentVideoTrack(Lexpo/modules/video/records/VideoTrack;)V

    .line 417
    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    if-eqz v1, :cond_0

    .line 418
    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayer;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lexpo/modules/video/records/VideoSource;->toMediaSource(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 421
    iget-object v3, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 422
    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    .line 423
    invoke-direct {p0, v1}, Lexpo/modules/video/player/VideoPlayer;->setCommitedSource(Lexpo/modules/video/records/VideoSource;)V

    .line 424
    iput-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->isLoadingNewSource:Z

    return-void

    .line 426
    :cond_1
    move-object v0, p0

    check-cast v0, Lexpo/modules/video/player/VideoPlayer;

    .line 427
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->clearMediaItems()V

    .line 428
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    const/4 v0, 0x0

    .line 429
    iput-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->isLoadingNewSource:Z

    return-void
.end method

.method public final removeListener(Lexpo/modules/video/listeners/VideoPlayerListener;)V
    .locals 3

    const-string v0, "videoPlayerListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    new-instance v2, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/video/listeners/VideoPlayerListener;)V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setAudioMixingMode(Lexpo/modules/video/enums/AudioMixingMode;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    .line 200
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    .line 201
    new-instance v1, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;

    invoke-direct {v1, p1, v0}, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;-><init>(Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V

    check-cast v1, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v1}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    return-void
.end method

.method public final setBufferOptions(Lexpo/modules/video/records/BufferOptions;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->bufferOptions:Lexpo/modules/video/records/BufferOptions;

    .line 183
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->loadControl:Lexpo/modules/video/player/VideoPlayerLoadControl;

    invoke-virtual {v0, p1}, Lexpo/modules/video/player/VideoPlayerLoadControl;->applyBufferOptions(Lexpo/modules/video/records/BufferOptions;)V

    return-void
.end method

.method public final setCurrentVideoView(Lexpo/modules/video/VideoView;)V
    .locals 3

    .line 70
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->currentVideoViewRef:Lexpo/modules/video/utils/MutableWeakReference;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/utils/MutableWeakReference;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDuration(F)V
    .locals 0

    .line 128
    iput p1, p0, Lexpo/modules/video/player/VideoPlayer;->duration:F

    return-void
.end method

.method public final setKeepScreenOnWhilePlaying(Z)V
    .locals 3

    .line 233
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->keepScreenOnWhilePlaying$delegate:Lexpo/modules/video/player/VideoPlayerKeepAwake;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/player/VideoPlayerKeepAwake;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Z)V

    return-void
.end method

.method public final setLive(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lexpo/modules/video/player/VideoPlayer;->isLive:Z

    return-void
.end method

.method public final setMediaSession(Landroidx/media3/session/MediaSession;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->mediaSession:Landroidx/media3/session/MediaSession;

    return-void
.end method

.method public final setMuted(Z)V
    .locals 3

    .line 139
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->muted$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/delegates/IgnoreSameSet;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->playbackParameters$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/delegates/IgnoreSameSet;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPlaying(Z)V
    .locals 3

    .line 94
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->playing$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/delegates/IgnoreSameSet;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPreservesPitch(Z)V
    .locals 6

    .line 116
    iput-boolean p1, p0, Lexpo/modules/video/player/VideoPlayer;->preservesPitch:Z

    .line 117
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lexpo/modules/video/player/VideoPlayer$preservesPitch$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lexpo/modules/video/player/VideoPlayer$preservesPitch$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final setRequiresLinearPlayback(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lexpo/modules/video/player/VideoPlayer;->requiresLinearPlayback:Z

    return-void
.end method

.method public final setScrubbingModeOptions(Lexpo/modules/video/records/ScrubbingModeOptions;)V
    .locals 6

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->scrubbingModeOptions:Lexpo/modules/video/records/ScrubbingModeOptions;

    .line 225
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lexpo/modules/video/player/VideoPlayer$scrubbingModeOptions$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lexpo/modules/video/player/VideoPlayer$scrubbingModeOptions$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final setSeekTolerance(Lexpo/modules/video/records/SeekTolerance;)V
    .locals 6

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->seekTolerance:Lexpo/modules/video/records/SeekTolerance;

    .line 217
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lexpo/modules/video/player/VideoPlayer$seekTolerance$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lexpo/modules/video/player/VideoPlayer$seekTolerance$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final setShowNowPlayingNotification(Z)V
    .locals 7

    .line 123
    iput-boolean p1, p0, Lexpo/modules/video/player/VideoPlayer;->showNowPlayingNotification:Z

    .line 124
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lexpo/modules/video/player/VideoPlayer$showNowPlayingNotification$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lexpo/modules/video/player/VideoPlayer$showNowPlayingNotification$1;-><init>(Lexpo/modules/video/player/VideoPlayer;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final setStatus(Lexpo/modules/video/enums/PlayerStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->status:Lexpo/modules/video/enums/PlayerStatus;

    return-void
.end method

.method public final setStaysActiveInBackground(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lexpo/modules/video/player/VideoPlayer;->staysActiveInBackground:Z

    if-eqz p1, :cond_0

    .line 111
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayer;->startPlaybackService()Z

    :cond_0
    return-void
.end method

.method public final setUncommittedSource(Lexpo/modules/video/records/VideoSource;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    return-void
.end method

.method public final setUserVolume(F)V
    .locals 0

    .line 104
    iput p1, p0, Lexpo/modules/video/player/VideoPlayer;->userVolume:F

    return-void
.end method

.method public final setVolume(F)V
    .locals 3

    .line 131
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->volume$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/delegates/IgnoreSameSet;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public sharedObjectDidRelease()V
    .locals 0

    .line 394
    invoke-super {p0}, Lexpo/modules/kotlin/sharedobjects/SharedObject;->sharedObjectDidRelease()V

    .line 395
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->close()V

    return-void
.end method

.method public final toMetadataRetriever()Landroid/media/MediaMetadataRetriever;
    .locals 9

    .line 552
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayer;->getCommitedSource()Lexpo/modules/video/records/VideoSource;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_5

    .line 553
    invoke-virtual {v0}, Lexpo/modules/video/records/VideoSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 554
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 557
    invoke-static {v2}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 558
    const-string v3, "file://"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    return-object v8

    .line 559
    :cond_1
    invoke-static {v2}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 560
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v1

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 561
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    .line 562
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 563
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 561
    :try_start_2
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 564
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 560
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v8

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 561
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 560
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-object v8

    .line 566
    :cond_3
    invoke-virtual {v0}, Lexpo/modules/video/records/VideoSource;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_4
    invoke-virtual {v8, v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-object v8

    .line 553
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Video source is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
