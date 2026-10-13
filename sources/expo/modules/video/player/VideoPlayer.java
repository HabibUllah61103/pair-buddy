package expo.modules.video.player;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.webkit.URLUtil;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.hls.HlsManifest;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.session.MediaSession;
import androidx.media3.ui.PlayerView;
import com.google.firebase.messaging.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.core.logging.Logger;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.exception.Exceptions;
import expo.modules.kotlin.sharedobjects.SharedObject;
import expo.modules.video.IntervalUpdateClock;
import expo.modules.video.IntervalUpdateEmitter;
import expo.modules.video.VideoExceptionsKt;
import expo.modules.video.VideoView;
import expo.modules.video.delegates.IgnoreSameSet;
import expo.modules.video.enums.AudioMixingMode;
import expo.modules.video.enums.PlayerStatus;
import expo.modules.video.listeners.VideoPlayerListener;
import expo.modules.video.managers.VideoManager;
import expo.modules.video.playbackService.ExpoVideoPlaybackService;
import expo.modules.video.playbackService.PlaybackServiceBinder;
import expo.modules.video.playbackService.PlaybackServiceConnection;
import expo.modules.video.records.AudioTrack;
import expo.modules.video.records.BufferOptions;
import expo.modules.video.records.PlaybackError;
import expo.modules.video.records.PlayerBuilderOptions;
import expo.modules.video.records.ScrubbingModeOptions;
import expo.modules.video.records.SeekTolerance;
import expo.modules.video.records.SubtitleTrack;
import expo.modules.video.records.TimeUpdate;
import expo.modules.video.records.VideoSource;
import expo.modules.video.records.VideoTrack;
import expo.modules.video.utils.MediaSessionUtilsKt;
import expo.modules.video.utils.MutableWeakReference;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;

/* JADX INFO: compiled from: VideoPlayer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000ª\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\t\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000*\u0004º\u0001½\u0001\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u00032\u00020\u0004B-\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\r\u0010\u000eJ\n\u0010¿\u0001\u001a\u00030À\u0001H\u0016J\n\u0010Á\u0001\u001a\u00030À\u0001H\u0016J\b\u0010Â\u0001\u001a\u00030À\u0001J\u0013\u0010Ã\u0001\u001a\u00030À\u00012\t\u0010Ä\u0001\u001a\u0004\u0018\u00010\u0019J\b\u0010Å\u0001\u001a\u00030À\u0001J\u0012\u0010Æ\u0001\u001a\u00020\u007f2\u0007\u0010\u0080\u0001\u001a\u00020\u007fH\u0002J\u0013\u0010Ç\u0001\u001a\u00020`2\b\u0010È\u0001\u001a\u00030É\u0001H\u0002J\u001d\u0010c\u001a\u00030À\u00012\u0006\u0010_\u001a\u00020`2\n\u0010Ê\u0001\u001a\u0005\u0018\u00010Ë\u0001H\u0002J\n\u0010Ì\u0001\u001a\u00030À\u0001H\u0002J\n\u0010Í\u0001\u001a\u00030À\u0001H\u0002J\t\u0010Î\u0001\u001a\u00020HH\u0002J\u0013\u0010Ï\u0001\u001a\u00030À\u00012\u0007\u0010Ð\u0001\u001a\u00020HH\u0002J\u0011\u0010Ñ\u0001\u001a\u00030À\u00012\u0007\u0010Ò\u0001\u001a\u00020\u0016J\u0011\u0010Ó\u0001\u001a\u00030À\u00012\u0007\u0010Ò\u0001\u001a\u00020\u0016J\u0014\u0010Ô\u0001\u001a\u00030À\u00012\b\u0010Õ\u0001\u001a\u00030Ö\u0001H\u0002J\t\u0010×\u0001\u001a\u000207H\u0002J\n\u0010Ø\u0001\u001a\u00030À\u0001H\u0016J\b\u0010Ù\u0001\u001a\u00030Ú\u0001R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R/\u0010\u001b\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!*\u0004\b\u001c\u0010\u001dR\u0011\u0010\"\u001a\u00020#¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010&\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u0011\u0010*\u001a\u00020+¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u0011\u0010.\u001a\u00020/¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u0011\u00102\u001a\u000203¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u0014\u00106\u001a\u000207X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u00109R\u0011\u0010:\u001a\u00020;¢\u0006\b\n\u0000\u001a\u0004\b<\u0010=R\u001a\u0010>\u001a\u00020?X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u0011\u0010D\u001a\u00020E¢\u0006\b\n\u0000\u001a\u0004\bF\u0010GR+\u0010I\u001a\u00020H2\u0006\u0010\u001a\u001a\u00020H8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\bN\u0010O\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u001c\u0010P\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR/\u0010U\u001a\u0004\u0018\u00010\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\n8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\bX\u0010O\u001a\u0004\bV\u0010R\"\u0004\bW\u0010TR\u001a\u0010Y\u001a\u00020ZX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R\u001a\u0010_\u001a\u00020`X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\ba\u0010b\"\u0004\bc\u0010dR\u001a\u0010e\u001a\u00020HX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u0010K\"\u0004\bg\u0010MR$\u0010i\u001a\u00020H2\u0006\u0010h\u001a\u00020H@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bj\u0010K\"\u0004\bk\u0010MR$\u0010l\u001a\u00020H2\u0006\u0010l\u001a\u00020H@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bm\u0010K\"\u0004\bn\u0010MR$\u0010o\u001a\u00020H2\u0006\u0010h\u001a\u00020H@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bp\u0010K\"\u0004\bq\u0010MR\u001a\u0010r\u001a\u00020ZX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bs\u0010\\\"\u0004\bt\u0010^R\u001a\u0010u\u001a\u00020HX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bu\u0010K\"\u0004\bv\u0010MR+\u0010w\u001a\u00020Z2\u0006\u0010\u001a\u001a\u00020Z8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\bz\u0010O\u001a\u0004\bx\u0010\\\"\u0004\by\u0010^R+\u0010{\u001a\u00020H2\u0006\u0010\u001a\u001a\u00020H8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b~\u0010O\u001a\u0004\b|\u0010K\"\u0004\b}\u0010MR1\u0010\u0080\u0001\u001a\u00020\u007f2\u0006\u0010\u001a\u001a\u00020\u007f8F@FX\u0086\u008e\u0002¢\u0006\u0017\n\u0005\b\u0085\u0001\u0010O\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0016\u0010\u0086\u0001\u001a\u0004\u0018\u00010Z8F¢\u0006\b\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001R\u0017\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008a\u00018F¢\u0006\b\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001R+\u0010\u008e\u0001\u001a\u00030\u008d\u00012\u0007\u0010h\u001a\u00030\u008d\u0001@FX\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001\"\u0006\b\u0091\u0001\u0010\u0092\u0001R\u0015\u0010\u0093\u0001\u001a\u00030\u0094\u00018F¢\u0006\b\u001a\u0006\b\u0095\u0001\u0010\u0096\u0001R+\u0010\u0098\u0001\u001a\u00030\u0097\u00012\u0007\u0010h\u001a\u00030\u0097\u0001@FX\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001\"\u0006\b\u009b\u0001\u0010\u009c\u0001R \u0010\u009d\u0001\u001a\u00020H2\u0006\u0010h\u001a\u00020H@BX\u0086\u000e¢\u0006\t\n\u0000\u001a\u0005\b\u009d\u0001\u0010KR/\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009e\u00012\t\u0010h\u001a\u0005\u0018\u00010\u009e\u0001@BX\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b \u0001\u0010¡\u0001\"\u0006\b¢\u0001\u0010£\u0001R+\u0010¥\u0001\u001a\u00030¤\u00012\u0007\u0010h\u001a\u00030¤\u0001@FX\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b¦\u0001\u0010§\u0001\"\u0006\b¨\u0001\u0010©\u0001R+\u0010«\u0001\u001a\u00030ª\u00012\u0007\u0010h\u001a\u00030ª\u0001@FX\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b¬\u0001\u0010\u00ad\u0001\"\u0006\b®\u0001\u0010¯\u0001R1\u0010±\u0001\u001a\n\u0012\u0005\u0012\u00030\u009e\u00010°\u00012\u000e\u0010h\u001a\n\u0012\u0005\u0012\u00030\u009e\u00010°\u0001@BX\u0086\u000e¢\u0006\n\n\u0000\u001a\u0006\b²\u0001\u0010³\u0001R0\u0010´\u0001\u001a\u00020H2\u0006\u0010\u001a\u001a\u00020H8F@FX\u0086\u008e\u0002¢\u0006\u0016\n\u0006\b·\u0001\u0010¸\u0001\u001a\u0005\bµ\u0001\u0010K\"\u0005\b¶\u0001\u0010MR\u0013\u0010¹\u0001\u001a\u00030º\u0001X\u0082\u0004¢\u0006\u0005\n\u0003\u0010»\u0001R\u0013\u0010¼\u0001\u001a\u00030½\u0001X\u0082\u0004¢\u0006\u0005\n\u0003\u0010¾\u0001¨\u0006Û\u0001"}, d2 = {"Lexpo/modules/video/player/VideoPlayer;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "Lexpo/modules/kotlin/sharedobjects/SharedObject;", "Lexpo/modules/video/IntervalUpdateEmitter;", "context", "Landroid/content/Context;", "appContext", "Lexpo/modules/kotlin/AppContext;", Constants.ScionAnalytics.PARAM_SOURCE, "Lexpo/modules/video/records/VideoSource;", "playerBuilderOptions", "Lexpo/modules/video/records/PlayerBuilderOptions;", "<init>", "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/PlayerBuilderOptions;)V", "getContext", "()Landroid/content/Context;", "renderersFactory", "Landroidx/media3/exoplayer/DefaultRenderersFactory;", "listeners", "", "Ljava/lang/ref/WeakReference;", "Lexpo/modules/video/listeners/VideoPlayerListener;", "currentVideoViewRef", "Lexpo/modules/video/utils/MutableWeakReference;", "Lexpo/modules/video/VideoView;", "<set-?>", "currentVideoView", "getCurrentVideoView$delegate", "(Lexpo/modules/video/player/VideoPlayer;)Ljava/lang/Object;", "getCurrentVideoView", "()Lexpo/modules/video/VideoView;", "setCurrentVideoView", "(Lexpo/modules/video/VideoView;)V", "loadControl", "Lexpo/modules/video/player/VideoPlayerLoadControl;", "getLoadControl", "()Lexpo/modules/video/player/VideoPlayerLoadControl;", "subtitles", "Lexpo/modules/video/player/VideoPlayerSubtitles;", "getSubtitles", "()Lexpo/modules/video/player/VideoPlayerSubtitles;", "audioTracks", "Lexpo/modules/video/player/VideoPlayerAudioTracks;", "getAudioTracks", "()Lexpo/modules/video/player/VideoPlayerAudioTracks;", "trackSelector", "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;", "getTrackSelector", "()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;", "player", "Landroidx/media3/exoplayer/ExoPlayer;", "getPlayer", "()Landroidx/media3/exoplayer/ExoPlayer;", "firstFrameEventGenerator", "Lexpo/modules/video/player/FirstFrameEventGenerator;", "getFirstFrameEventGenerator$expo_video_release", "()Lexpo/modules/video/player/FirstFrameEventGenerator;", "serviceConnection", "Lexpo/modules/video/playbackService/PlaybackServiceConnection;", "getServiceConnection", "()Lexpo/modules/video/playbackService/PlaybackServiceConnection;", "mediaSession", "Landroidx/media3/session/MediaSession;", "getMediaSession", "()Landroidx/media3/session/MediaSession;", "setMediaSession", "(Landroidx/media3/session/MediaSession;)V", "intervalUpdateClock", "Lexpo/modules/video/IntervalUpdateClock;", "getIntervalUpdateClock", "()Lexpo/modules/video/IntervalUpdateClock;", "", "playing", "getPlaying", "()Z", "setPlaying", "(Z)V", "playing$delegate", "Lexpo/modules/video/delegates/IgnoreSameSet;", "uncommittedSource", "getUncommittedSource", "()Lexpo/modules/video/records/VideoSource;", "setUncommittedSource", "(Lexpo/modules/video/records/VideoSource;)V", "commitedSource", "getCommitedSource", "setCommitedSource", "commitedSource$delegate", "userVolume", "", "getUserVolume", "()F", "setUserVolume", "(F)V", "status", "Lexpo/modules/video/enums/PlayerStatus;", "getStatus", "()Lexpo/modules/video/enums/PlayerStatus;", "setStatus", "(Lexpo/modules/video/enums/PlayerStatus;)V", "requiresLinearPlayback", "getRequiresLinearPlayback", "setRequiresLinearPlayback", RNConstants.ARG_VALUE, "staysActiveInBackground", "getStaysActiveInBackground", "setStaysActiveInBackground", "preservesPitch", "getPreservesPitch", "setPreservesPitch", "showNowPlayingNotification", "getShowNowPlayingNotification", "setShowNowPlayingNotification", "duration", "getDuration", "setDuration", "isLive", "setLive", "volume", "getVolume", "setVolume", "volume$delegate", "muted", "getMuted", "setMuted", "muted$delegate", "Landroidx/media3/common/PlaybackParameters;", "playbackParameters", "getPlaybackParameters", "()Landroidx/media3/common/PlaybackParameters;", "setPlaybackParameters", "(Landroidx/media3/common/PlaybackParameters;)V", "playbackParameters$delegate", "currentOffsetFromLive", "getCurrentOffsetFromLive", "()Ljava/lang/Float;", "currentLiveTimestamp", "", "getCurrentLiveTimestamp", "()Ljava/lang/Long;", "Lexpo/modules/video/records/BufferOptions;", "bufferOptions", "getBufferOptions", "()Lexpo/modules/video/records/BufferOptions;", "setBufferOptions", "(Lexpo/modules/video/records/BufferOptions;)V", "bufferedPosition", "", "getBufferedPosition", "()D", "Lexpo/modules/video/enums/AudioMixingMode;", "audioMixingMode", "getAudioMixingMode", "()Lexpo/modules/video/enums/AudioMixingMode;", "setAudioMixingMode", "(Lexpo/modules/video/enums/AudioMixingMode;)V", "isLoadingNewSource", "Lexpo/modules/video/records/VideoTrack;", "currentVideoTrack", "getCurrentVideoTrack", "()Lexpo/modules/video/records/VideoTrack;", "setCurrentVideoTrack", "(Lexpo/modules/video/records/VideoTrack;)V", "Lexpo/modules/video/records/SeekTolerance;", "seekTolerance", "getSeekTolerance", "()Lexpo/modules/video/records/SeekTolerance;", "setSeekTolerance", "(Lexpo/modules/video/records/SeekTolerance;)V", "Lexpo/modules/video/records/ScrubbingModeOptions;", "scrubbingModeOptions", "getScrubbingModeOptions", "()Lexpo/modules/video/records/ScrubbingModeOptions;", "setScrubbingModeOptions", "(Lexpo/modules/video/records/ScrubbingModeOptions;)V", "", "availableVideoTracks", "getAvailableVideoTracks", "()Ljava/util/List;", "keepScreenOnWhilePlaying", "getKeepScreenOnWhilePlaying", "setKeepScreenOnWhilePlaying", "keepScreenOnWhilePlaying$delegate", "Lexpo/modules/video/player/VideoPlayerKeepAwake;", "playerListener", "expo/modules/video/player/VideoPlayer$playerListener$1", "Lexpo/modules/video/player/VideoPlayer$playerListener$1;", "analyticsListener", "expo/modules/video/player/VideoPlayer$analyticsListener$1", "Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;", "close", "", "sharedObjectDidRelease", "hasBeenDisconnectedFromVideoView", "changeVideoView", "videoView", "prepare", "applyPitchCorrection", "playerStateToPlayerStatus", "state", "", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "Landroidx/media3/common/PlaybackException;", "refreshPlaybackInfo", "resetPlaybackInfo", "startPlaybackService", "serviceSetShowNotification", ExpoVideoPlaybackService.SESSION_SHOW_NOTIFICATION, "addListener", "videoPlayerListener", "removeListener", "sendEvent", NotificationCompat.CATEGORY_EVENT, "Lexpo/modules/video/player/PlayerEvent;", "createFirstFrameEventGenerator", "emitTimeUpdate", "toMetadataRetriever", "Landroid/media/MediaMetadataRetriever;", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VideoPlayer extends SharedObject implements AutoCloseable, IntervalUpdateEmitter {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(VideoPlayer.class, "currentVideoView", "getCurrentVideoView()Lexpo/modules/video/VideoView;", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(VideoPlayer.class, "playing", "getPlaying()Z", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(VideoPlayer.class, "commitedSource", "getCommitedSource()Lexpo/modules/video/records/VideoSource;", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(VideoPlayer.class, "volume", "getVolume()F", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(VideoPlayer.class, "muted", "getMuted()Z", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(VideoPlayer.class, "playbackParameters", "getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(VideoPlayer.class, "keepScreenOnWhilePlaying", "getKeepScreenOnWhilePlaying()Z", 0))};
    private final VideoPlayer$analyticsListener$1 analyticsListener;
    private AudioMixingMode audioMixingMode;
    private final VideoPlayerAudioTracks audioTracks;
    private List<VideoTrack> availableVideoTracks;
    private BufferOptions bufferOptions;

    /* JADX INFO: renamed from: commitedSource$delegate, reason: from kotlin metadata */
    private final IgnoreSameSet commitedSource;
    private final Context context;
    private VideoTrack currentVideoTrack;
    private final MutableWeakReference<VideoView> currentVideoViewRef;
    private float duration;
    private final FirstFrameEventGenerator firstFrameEventGenerator;
    private final IntervalUpdateClock intervalUpdateClock;
    private boolean isLive;
    private boolean isLoadingNewSource;

    /* JADX INFO: renamed from: keepScreenOnWhilePlaying$delegate, reason: from kotlin metadata */
    private final VideoPlayerKeepAwake keepScreenOnWhilePlaying;
    private final List<WeakReference<VideoPlayerListener>> listeners;
    private final VideoPlayerLoadControl loadControl;
    private MediaSession mediaSession;

    /* JADX INFO: renamed from: muted$delegate, reason: from kotlin metadata */
    private final IgnoreSameSet muted;

    /* JADX INFO: renamed from: playbackParameters$delegate, reason: from kotlin metadata */
    private final IgnoreSameSet playbackParameters;
    private final ExoPlayer player;
    private final VideoPlayer$playerListener$1 playerListener;

    /* JADX INFO: renamed from: playing$delegate, reason: from kotlin metadata */
    private final IgnoreSameSet playing;
    private boolean preservesPitch;
    private DefaultRenderersFactory renderersFactory;
    private boolean requiresLinearPlayback;
    private ScrubbingModeOptions scrubbingModeOptions;
    private SeekTolerance seekTolerance;
    private final PlaybackServiceConnection serviceConnection;
    private boolean showNowPlayingNotification;
    private PlayerStatus status;
    private boolean staysActiveInBackground;
    private final VideoPlayerSubtitles subtitles;
    private final DefaultTrackSelector trackSelector;
    private VideoSource uncommittedSource;
    private float userVolume;

    /* JADX INFO: renamed from: volume$delegate, reason: from kotlin metadata */
    private final IgnoreSameSet volume;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v8, types: [expo.modules.video.player.VideoPlayer$playerListener$1] */
    /* JADX WARN: Type inference failed for: r2v1, types: [expo.modules.video.player.VideoPlayer$analyticsListener$1] */
    public VideoPlayer(Context context, final AppContext appContext, VideoSource videoSource, PlayerBuilderOptions playerBuilderOptions) {
        Duration seekForwardIncrement;
        Duration seekBackwardIncrement;
        super(appContext);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.context = context;
        DefaultRenderersFactory enableDecoderFallback = new DefaultRenderersFactory(context).forceEnableMediaCodecAsynchronousQueueing().setEnableDecoderFallback(true);
        Intrinsics.checkNotNullExpressionValue(enableDecoderFallback, "setEnableDecoderFallback(...)");
        this.renderersFactory = enableDecoderFallback;
        this.listeners = new ArrayList();
        this.currentVideoViewRef = new MutableWeakReference<>(null, new Function2() { // from class: expo.modules.video.player.VideoPlayer$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return VideoPlayer.currentVideoViewRef$lambda$0(this.f$0, (VideoView) obj, (VideoView) obj2);
            }
        });
        VideoPlayerLoadControl videoPlayerLoadControl = new VideoPlayerLoadControl();
        this.loadControl = videoPlayerLoadControl;
        this.subtitles = new VideoPlayerSubtitles(this);
        this.audioTracks = new VideoPlayerAudioTracks(this);
        this.trackSelector = new DefaultTrackSelector(context);
        ExoPlayer.Builder builder = new ExoPlayer.Builder(context, this.renderersFactory);
        builder.setLooper(context.getMainLooper());
        builder.setLoadControl(videoPlayerLoadControl);
        if (playerBuilderOptions != null && (seekBackwardIncrement = playerBuilderOptions.getSeekBackwardIncrement()) != null) {
            builder.setSeekBackIncrementMs(RangesKt.coerceIn(Duration.m12640toLongimpl(seekBackwardIncrement.getRawValue(), DurationUnit.MILLISECONDS), 1L, 999000L));
        }
        if (playerBuilderOptions != null && (seekForwardIncrement = playerBuilderOptions.getSeekForwardIncrement()) != null) {
            builder.setSeekForwardIncrementMs(RangesKt.coerceIn(Duration.m12640toLongimpl(seekForwardIncrement.getRawValue(), DurationUnit.MILLISECONDS), 1L, 999000L));
        }
        ExoPlayer exoPlayerBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(exoPlayerBuild, "build(...)");
        this.player = exoPlayerBuild;
        this.serviceConnection = new PlaybackServiceConnection(new WeakReference(this), appContext);
        this.mediaSession = MediaSessionUtilsKt.buildBasicMediaSession(context, exoPlayerBuild);
        this.intervalUpdateClock = new IntervalUpdateClock(this);
        this.playing = new IgnoreSameSet(false, null, new Function2() { // from class: expo.modules.video.player.VideoPlayer$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return VideoPlayer.playing_delegate$lambda$4(this.f$0, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue());
            }
        }, 2, null);
        this.uncommittedSource = videoSource;
        this.commitedSource = new IgnoreSameSet(null, null, new Function2() { // from class: expo.modules.video.player.VideoPlayer$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return VideoPlayer.commitedSource_delegate$lambda$5(this.f$0, (VideoSource) obj, (VideoSource) obj2);
            }
        }, 2, null);
        this.userVolume = 1.0f;
        this.status = PlayerStatus.IDLE;
        this.volume = new IgnoreSameSet(Float.valueOf(1.0f), null, new Function2() { // from class: expo.modules.video.player.VideoPlayer$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return VideoPlayer.volume_delegate$lambda$6(appContext, this, ((Float) obj).floatValue(), ((Float) obj2).floatValue());
            }
        }, 2, null);
        this.muted = new IgnoreSameSet(false, null, new Function2() { // from class: expo.modules.video.player.VideoPlayer$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return VideoPlayer.muted_delegate$lambda$7(appContext, this, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue());
            }
        }, 2, null);
        this.playbackParameters = new IgnoreSameSet(PlaybackParameters.DEFAULT, new Function1() { // from class: expo.modules.video.player.VideoPlayer$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VideoPlayer.playbackParameters_delegate$lambda$8(this.f$0, (PlaybackParameters) obj);
            }
        }, new Function2() { // from class: expo.modules.video.player.VideoPlayer$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return VideoPlayer.playbackParameters_delegate$lambda$9(appContext, this, (PlaybackParameters) obj, (PlaybackParameters) obj2);
            }
        });
        this.bufferOptions = new BufferOptions(null, 0L, false, 0.0d, 15, null);
        this.audioMixingMode = AudioMixingMode.AUTO;
        this.seekTolerance = new SeekTolerance(0.0d, 0.0d, 3, null);
        this.scrubbingModeOptions = new ScrubbingModeOptions(false, false, false, false, false, 31, null);
        this.availableVideoTracks = CollectionsKt.emptyList();
        this.keepScreenOnWhilePlaying = new VideoPlayerKeepAwake(this, appContext, false, 4, null);
        ?? r0 = new Player.Listener() { // from class: expo.modules.video.player.VideoPlayer$playerListener$1
            @Override // androidx.media3.common.Player.Listener
            public void onIsPlayingChanged(boolean isPlaying) {
                this.this$0.setPlaying(isPlaying);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onTracksChanged(Tracks tracks) {
                Intrinsics.checkNotNullParameter(tracks, "tracks");
                ArrayList arrayList = new ArrayList(this.this$0.getSubtitles().getAvailableSubtitleTracks());
                ArrayList arrayList2 = new ArrayList(this.this$0.getAudioTracks().getAvailableAudioTracks());
                SubtitleTrack currentSubtitleTrack = this.this$0.getSubtitles().getCurrentSubtitleTrack();
                AudioTrack currentAudioTrack = this.this$0.getAudioTracks().getCurrentAudioTrack();
                this.this$0.sendEvent(new PlayerEvent.TracksChanged(tracks));
                ArrayList<SubtitleTrack> availableSubtitleTracks = this.this$0.getSubtitles().getAvailableSubtitleTracks();
                ArrayList<AudioTrack> availableAudioTracks = this.this$0.getAudioTracks().getAvailableAudioTracks();
                SubtitleTrack currentSubtitleTrack2 = this.this$0.getSubtitles().getCurrentSubtitleTrack();
                AudioTrack currentAudioTrack2 = this.this$0.getAudioTracks().getCurrentAudioTrack();
                Object currentManifest = this.this$0.getPlayer().getCurrentManifest();
                this.this$0.availableVideoTracks = VideoPlayerKt.toVideoTracks(tracks, currentManifest instanceof HlsManifest ? (HlsManifest) currentManifest : null);
                this.this$0.refreshPlaybackInfo();
                if (this.this$0.getIsLoadingNewSource()) {
                    this.this$0.sendEvent(new PlayerEvent.VideoSourceLoaded(this.this$0.getCommitedSource(), this.this$0.getDuration(), this.this$0.getAvailableVideoTracks(), availableSubtitleTracks, availableAudioTracks));
                    this.this$0.isLoadingNewSource = false;
                }
                if (!Arrays.equals(arrayList.toArray(), availableSubtitleTracks.toArray())) {
                    this.this$0.sendEvent(new PlayerEvent.AvailableSubtitleTracksChanged(availableSubtitleTracks, arrayList));
                }
                if (!Arrays.equals(arrayList2.toArray(), availableAudioTracks.toArray())) {
                    this.this$0.sendEvent(new PlayerEvent.AvailableAudioTracksChanged(availableAudioTracks, arrayList2));
                }
                if (!Intrinsics.areEqual(currentSubtitleTrack, currentSubtitleTrack2)) {
                    this.this$0.sendEvent(new PlayerEvent.SubtitleTrackChanged(currentSubtitleTrack2, currentSubtitleTrack));
                }
                if (!Intrinsics.areEqual(currentAudioTrack, currentAudioTrack2)) {
                    this.this$0.sendEvent(new PlayerEvent.AudioTrackChanged(currentAudioTrack2, currentAudioTrack));
                }
                super.onTracksChanged(tracks);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onTrackSelectionParametersChanged(TrackSelectionParameters parameters) {
                Intrinsics.checkNotNullParameter(parameters, "parameters");
                SubtitleTrack currentSubtitleTrack = this.this$0.getSubtitles().getCurrentSubtitleTrack();
                AudioTrack currentAudioTrack = this.this$0.getAudioTracks().getCurrentAudioTrack();
                this.this$0.sendEvent(new PlayerEvent.TrackSelectionParametersChanged(parameters));
                SubtitleTrack currentSubtitleTrack2 = this.this$0.getSubtitles().getCurrentSubtitleTrack();
                AudioTrack currentAudioTrack2 = this.this$0.getAudioTracks().getCurrentAudioTrack();
                this.this$0.sendEvent(new PlayerEvent.SubtitleTrackChanged(currentSubtitleTrack2, currentSubtitleTrack));
                this.this$0.sendEvent(new PlayerEvent.AudioTrackChanged(currentAudioTrack2, currentAudioTrack));
                super.onTrackSelectionParametersChanged(parameters);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onMediaItemTransition(MediaItem mediaItem, int reason) {
                if (reason == 0) {
                    this.this$0.sendEvent(new PlayerEvent.PlayedToEnd());
                } else {
                    this.this$0.resetPlaybackInfo();
                }
                this.this$0.getSubtitles().setSubtitlesEnabled(false);
                super.onMediaItemTransition(mediaItem, reason);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlaybackStateChanged(int playbackState) {
                if (playbackState != 1 || this.this$0.getPlayer().getPlayerError() == null) {
                    if (playbackState == 3) {
                        this.this$0.refreshPlaybackInfo();
                    }
                    VideoPlayer videoPlayer = this.this$0;
                    videoPlayer.setStatus(videoPlayer.playerStateToPlayerStatus(playbackState), null);
                    super.onPlaybackStateChanged(playbackState);
                }
            }

            @Override // androidx.media3.common.Player.Listener
            public void onVolumeChanged(float volume) {
                if (this.this$0.getMuted()) {
                    return;
                }
                this.this$0.setVolume(volume);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
                Intrinsics.checkNotNullParameter(playbackParameters, "playbackParameters");
                this.this$0.setPlaybackParameters(playbackParameters);
                super.onPlaybackParametersChanged(playbackParameters);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlayerErrorChanged(PlaybackException error) {
                if (error != null) {
                    VideoPlayer videoPlayer = this.this$0;
                    videoPlayer.resetPlaybackInfo();
                    videoPlayer.setStatus(PlayerStatus.ERROR, error);
                } else {
                    VideoPlayer videoPlayer2 = this.this$0;
                    videoPlayer2.setStatus(videoPlayer2.playerStateToPlayerStatus(videoPlayer2.getPlayer().getPlaybackState()), null);
                }
                super.onPlayerErrorChanged(error);
            }
        };
        this.playerListener = r0;
        ?? r2 = new AnalyticsListener() { // from class: expo.modules.video.player.VideoPlayer$analyticsListener$1
            @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
            public void onVideoInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
                Object obj;
                Object next;
                Format format2;
                Intrinsics.checkNotNullParameter(eventTime, "eventTime");
                Intrinsics.checkNotNullParameter(format, "format");
                VideoPlayer videoPlayer = this.this$0;
                Iterator<T> it = videoPlayer.getAvailableVideoTracks().iterator();
                do {
                    obj = null;
                    if (it.hasNext()) {
                        next = it.next();
                        format2 = ((VideoTrack) next).getFormat();
                    }
                    videoPlayer.setCurrentVideoTrack((VideoTrack) obj);
                    super.onVideoInputFormatChanged(eventTime, format, decoderReuseEvaluation);
                } while (!Intrinsics.areEqual(format2 != null ? format2.id : null, format.id));
                obj = next;
                videoPlayer.setCurrentVideoTrack((VideoTrack) obj);
                super.onVideoInputFormatChanged(eventTime, format, decoderReuseEvaluation);
            }
        };
        this.analyticsListener = r2;
        exoPlayerBuild.addListener((Player.Listener) r0);
        exoPlayerBuild.addAnalyticsListener((AnalyticsListener) r2);
        VideoManager.INSTANCE.registerVideoPlayer(this);
        this.firstFrameEventGenerator = createFirstFrameEventGenerator();
        BuildersKt__Builders_commonKt.launch$default(appContext.getMainQueue(), null, null, new AnonymousClass1(null), 3, null);
    }

    public /* synthetic */ VideoPlayer(Context context, AppContext appContext, VideoSource videoSource, PlayerBuilderOptions playerBuilderOptions, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, appContext, videoSource, (i & 8) != 0 ? null : playerBuilderOptions);
    }

    public final Context getContext() {
        return this.context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit currentVideoViewRef$lambda$0(VideoPlayer videoPlayer, VideoView videoView, VideoView videoView2) {
        videoPlayer.sendEvent(new PlayerEvent.TargetViewChanged(videoView, videoView2));
        return Unit.INSTANCE;
    }

    public final VideoView getCurrentVideoView() {
        return this.currentVideoViewRef.getValue(this, $$delegatedProperties[0]);
    }

    public final void setCurrentVideoView(VideoView videoView) {
        this.currentVideoViewRef.setValue(this, $$delegatedProperties[0], videoView);
    }

    public final VideoPlayerLoadControl getLoadControl() {
        return this.loadControl;
    }

    public final VideoPlayerSubtitles getSubtitles() {
        return this.subtitles;
    }

    public final VideoPlayerAudioTracks getAudioTracks() {
        return this.audioTracks;
    }

    public final DefaultTrackSelector getTrackSelector() {
        return this.trackSelector;
    }

    public final ExoPlayer getPlayer() {
        return this.player;
    }

    /* JADX INFO: renamed from: getFirstFrameEventGenerator$expo_video_release, reason: from getter */
    public final FirstFrameEventGenerator getFirstFrameEventGenerator() {
        return this.firstFrameEventGenerator;
    }

    public final PlaybackServiceConnection getServiceConnection() {
        return this.serviceConnection;
    }

    public final MediaSession getMediaSession() {
        return this.mediaSession;
    }

    public final void setMediaSession(MediaSession mediaSession) {
        Intrinsics.checkNotNullParameter(mediaSession, "<set-?>");
        this.mediaSession = mediaSession;
    }

    public final IntervalUpdateClock getIntervalUpdateClock() {
        return this.intervalUpdateClock;
    }

    public final boolean getPlaying() {
        return ((Boolean) this.playing.getValue(this, $$delegatedProperties[1])).booleanValue();
    }

    public final void setPlaying(boolean z) {
        this.playing.setValue(this, $$delegatedProperties[1], Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit playing_delegate$lambda$4(VideoPlayer videoPlayer, boolean z, boolean z2) {
        videoPlayer.sendEvent(new PlayerEvent.IsPlayingChanged(z, Boolean.valueOf(z2)));
        return Unit.INSTANCE;
    }

    public final VideoSource getUncommittedSource() {
        return this.uncommittedSource;
    }

    public final void setUncommittedSource(VideoSource videoSource) {
        this.uncommittedSource = videoSource;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoSource getCommitedSource() {
        return (VideoSource) this.commitedSource.getValue(this, $$delegatedProperties[2]);
    }

    private final void setCommitedSource(VideoSource videoSource) {
        this.commitedSource.setValue(this, $$delegatedProperties[2], videoSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit commitedSource_delegate$lambda$5(VideoPlayer videoPlayer, VideoSource videoSource, VideoSource videoSource2) {
        videoPlayer.sendEvent(new PlayerEvent.SourceChanged(videoSource, videoSource2));
        return Unit.INSTANCE;
    }

    public final float getUserVolume() {
        return this.userVolume;
    }

    public final void setUserVolume(float f) {
        this.userVolume = f;
    }

    public final PlayerStatus getStatus() {
        return this.status;
    }

    public final void setStatus(PlayerStatus playerStatus) {
        Intrinsics.checkNotNullParameter(playerStatus, "<set-?>");
        this.status = playerStatus;
    }

    public final boolean getRequiresLinearPlayback() {
        return this.requiresLinearPlayback;
    }

    public final void setRequiresLinearPlayback(boolean z) {
        this.requiresLinearPlayback = z;
    }

    public final boolean getStaysActiveInBackground() {
        return this.staysActiveInBackground;
    }

    public final void setStaysActiveInBackground(boolean z) throws Exceptions.AppContextLost {
        this.staysActiveInBackground = z;
        if (z) {
            startPlaybackService();
        }
    }

    public final boolean getPreservesPitch() {
        return this.preservesPitch;
    }

    public final void setPreservesPitch(boolean z) {
        CoroutineScope mainQueue;
        this.preservesPitch = z;
        AppContext appContext = getAppContext();
        if (appContext == null || (mainQueue = appContext.getMainQueue()) == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(mainQueue, null, null, new VideoPlayer$preservesPitch$1(this, null), 3, null);
    }

    public final boolean getShowNowPlayingNotification() {
        return this.showNowPlayingNotification;
    }

    public final void setShowNowPlayingNotification(boolean z) {
        CoroutineScope mainQueue;
        this.showNowPlayingNotification = z;
        AppContext appContext = getAppContext();
        if (appContext == null || (mainQueue = appContext.getMainQueue()) == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(mainQueue, null, null, new VideoPlayer$showNowPlayingNotification$1(this, z, null), 3, null);
    }

    public final float getDuration() {
        return this.duration;
    }

    public final void setDuration(float f) {
        this.duration = f;
    }

    /* JADX INFO: renamed from: isLive, reason: from getter */
    public final boolean getIsLive() {
        return this.isLive;
    }

    public final void setLive(boolean z) {
        this.isLive = z;
    }

    public final float getVolume() {
        return ((Number) this.volume.getValue(this, $$delegatedProperties[3])).floatValue();
    }

    public final void setVolume(float f) {
        this.volume.setValue(this, $$delegatedProperties[3], Float.valueOf(f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit volume_delegate$lambda$6(AppContext appContext, VideoPlayer videoPlayer, float f, float f2) {
        BuildersKt__Builders_commonKt.launch$default(appContext.getMainQueue(), null, null, new VideoPlayer$volume$2$1(videoPlayer, f, null), 3, null);
        videoPlayer.userVolume = videoPlayer.getVolume();
        videoPlayer.sendEvent(new PlayerEvent.VolumeChanged(f, Float.valueOf(f2)));
        return Unit.INSTANCE;
    }

    public final boolean getMuted() {
        return ((Boolean) this.muted.getValue(this, $$delegatedProperties[4])).booleanValue();
    }

    public final void setMuted(boolean z) {
        this.muted.setValue(this, $$delegatedProperties[4], Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit muted_delegate$lambda$7(AppContext appContext, VideoPlayer videoPlayer, boolean z, boolean z2) {
        BuildersKt__Builders_commonKt.launch$default(appContext.getMainQueue(), null, null, new VideoPlayer$muted$2$1(videoPlayer, z, null), 3, null);
        videoPlayer.sendEvent(new PlayerEvent.MutedChanged(z, Boolean.valueOf(z2)));
        return Unit.INSTANCE;
    }

    public final PlaybackParameters getPlaybackParameters() {
        return (PlaybackParameters) this.playbackParameters.getValue(this, $$delegatedProperties[5]);
    }

    public final void setPlaybackParameters(PlaybackParameters playbackParameters) {
        Intrinsics.checkNotNullParameter(playbackParameters, "<set-?>");
        this.playbackParameters.setValue(this, $$delegatedProperties[5], playbackParameters);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlaybackParameters playbackParameters_delegate$lambda$8(VideoPlayer videoPlayer, PlaybackParameters it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return videoPlayer.applyPitchCorrection(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit playbackParameters_delegate$lambda$9(AppContext appContext, VideoPlayer videoPlayer, PlaybackParameters playbackParameters, PlaybackParameters old) {
        Intrinsics.checkNotNullParameter(playbackParameters, "new");
        Intrinsics.checkNotNullParameter(old, "old");
        BuildersKt__Builders_commonKt.launch$default(appContext.getMainQueue(), null, null, new VideoPlayer$playbackParameters$3$1(videoPlayer, playbackParameters, null), 3, null);
        if (old.speed != playbackParameters.speed) {
            videoPlayer.sendEvent(new PlayerEvent.PlaybackRateChanged(playbackParameters.speed, Float.valueOf(old.speed)));
        }
        return Unit.INSTANCE;
    }

    public final Float getCurrentOffsetFromLive() {
        if (this.player.getCurrentLiveOffset() == C.TIME_UNSET) {
            return null;
        }
        return Float.valueOf(this.player.getCurrentLiveOffset() / 1000.0f);
    }

    public final Long getCurrentLiveTimestamp() {
        Timeline.Window window = new Timeline.Window();
        if (!this.player.getCurrentTimeline().isEmpty()) {
            this.player.getCurrentTimeline().getWindow(this.player.getCurrentMediaItemIndex(), window);
        }
        if (window.windowStartTimeMs == C.TIME_UNSET) {
            return null;
        }
        return Long.valueOf(window.windowStartTimeMs + this.player.getCurrentPosition());
    }

    public final BufferOptions getBufferOptions() {
        return this.bufferOptions;
    }

    public final void setBufferOptions(BufferOptions value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.bufferOptions = value;
        this.loadControl.applyBufferOptions(value);
    }

    public final double getBufferedPosition() {
        if (this.player.getCurrentMediaItem() == null) {
            return -1.0d;
        }
        if (this.player.getPlaybackState() == 2) {
            return 0.0d;
        }
        return this.player.getBufferedPosition() / 1000.0d;
    }

    public final AudioMixingMode getAudioMixingMode() {
        return this.audioMixingMode;
    }

    public final void setAudioMixingMode(AudioMixingMode value) {
        Intrinsics.checkNotNullParameter(value, "value");
        AudioMixingMode audioMixingMode = this.audioMixingMode;
        this.audioMixingMode = value;
        sendEvent(new PlayerEvent.AudioMixingModeChanged(value, audioMixingMode));
    }

    /* JADX INFO: renamed from: isLoadingNewSource, reason: from getter */
    public final boolean getIsLoadingNewSource() {
        return this.isLoadingNewSource;
    }

    public final VideoTrack getCurrentVideoTrack() {
        return this.currentVideoTrack;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCurrentVideoTrack(VideoTrack videoTrack) {
        VideoTrack videoTrack2 = this.currentVideoTrack;
        this.currentVideoTrack = videoTrack;
        sendEvent(new PlayerEvent.VideoTrackChanged(videoTrack, videoTrack2));
    }

    public final SeekTolerance getSeekTolerance() {
        return this.seekTolerance;
    }

    public final void setSeekTolerance(SeekTolerance value) {
        CoroutineScope mainQueue;
        Intrinsics.checkNotNullParameter(value, "value");
        this.seekTolerance = value;
        AppContext appContext = getAppContext();
        if (appContext == null || (mainQueue = appContext.getMainQueue()) == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(mainQueue, null, null, new VideoPlayer$seekTolerance$1(this, null), 3, null);
    }

    public final ScrubbingModeOptions getScrubbingModeOptions() {
        return this.scrubbingModeOptions;
    }

    public final void setScrubbingModeOptions(ScrubbingModeOptions value) {
        CoroutineScope mainQueue;
        Intrinsics.checkNotNullParameter(value, "value");
        this.scrubbingModeOptions = value;
        AppContext appContext = getAppContext();
        if (appContext == null || (mainQueue = appContext.getMainQueue()) == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(mainQueue, null, null, new VideoPlayer$scrubbingModeOptions$1(this, null), 3, null);
    }

    public final List<VideoTrack> getAvailableVideoTracks() {
        return this.availableVideoTracks;
    }

    public final boolean getKeepScreenOnWhilePlaying() {
        return this.keepScreenOnWhilePlaying.getValue((Object) this, $$delegatedProperties[6]).booleanValue();
    }

    public final void setKeepScreenOnWhilePlaying(boolean z) {
        this.keepScreenOnWhilePlaying.setValue(this, $$delegatedProperties[6], z);
    }

    /* JADX INFO: renamed from: expo.modules.video.player.VideoPlayer$1, reason: invalid class name */
    /* JADX INFO: compiled from: VideoPlayer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.player.VideoPlayer$1", f = "VideoPlayer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return VideoPlayer.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            VideoPlayer.this.getSubtitles().setSubtitlesEnabled(false);
            return Unit.INSTANCE;
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        ExpoVideoPlaybackService service;
        AppContext appContext;
        Context reactContext;
        setKeepScreenOnWhilePlaying(false);
        this.intervalUpdateClock.setInterval(0L);
        synchronized (this.listeners) {
            this.listeners.clear();
            Unit unit = Unit.INSTANCE;
        }
        if (this.serviceConnection.getIsConnected() && (appContext = getAppContext()) != null && (reactContext = appContext.getReactContext()) != null) {
            reactContext.unbindService(this.serviceConnection);
        }
        PlaybackServiceBinder playbackServiceBinder = this.serviceConnection.getPlaybackServiceBinder();
        if (playbackServiceBinder != null && (service = playbackServiceBinder.getService()) != null) {
            service.unregisterPlayer(this.player);
        }
        this.mediaSession.release();
        VideoManager.INSTANCE.unregisterVideoPlayer(this);
        BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new AnonymousClass2(null), 2, null);
        this.uncommittedSource = null;
        setCommitedSource(null);
    }

    /* JADX INFO: renamed from: expo.modules.video.player.VideoPlayer$close$2, reason: invalid class name */
    /* JADX INFO: compiled from: VideoPlayer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.player.VideoPlayer$close$2", f = "VideoPlayer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return VideoPlayer.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            VideoPlayer.this.getFirstFrameEventGenerator().release();
            VideoPlayer.this.getPlayer().removeListener(VideoPlayer.this.playerListener);
            VideoPlayer.this.getPlayer().removeAnalyticsListener(VideoPlayer.this.analyticsListener);
            VideoPlayer.this.getPlayer().release();
            return Unit.INSTANCE;
        }
    }

    @Override // expo.modules.kotlin.sharedobjects.SharedObject
    public void sharedObjectDidRelease() {
        super.sharedObjectDidRelease();
        close();
    }

    public final void hasBeenDisconnectedFromVideoView() {
        PlayerView playerView;
        VideoView currentVideoView = getCurrentVideoView();
        if (Intrinsics.areEqual((currentVideoView == null || (playerView = currentVideoView.getPlayerView()) == null) ? null : playerView.getPlayer(), this.player)) {
            throw new IllegalStateException("The player has been notified of disconnection from the player view, even though it's still connected.");
        }
        setCurrentVideoView(null);
    }

    public final void changeVideoView(VideoView videoView) {
        ExoPlayer exoPlayer = this.player;
        VideoView currentVideoView = getCurrentVideoView();
        PlayerView.switchTargetView(exoPlayer, currentVideoView != null ? currentVideoView.getPlayerView() : null, videoView != null ? videoView.getPlayerView() : null);
        setCurrentVideoView(videoView);
    }

    public final void prepare() {
        this.availableVideoTracks = CollectionsKt.emptyList();
        setCurrentVideoTrack(null);
        VideoSource videoSource = this.uncommittedSource;
        MediaSource mediaSource = videoSource != null ? videoSource.toMediaSource(this.context) : null;
        if (mediaSource != null) {
            this.player.setMediaSource(mediaSource);
            this.player.prepare();
            setCommitedSource(videoSource);
            this.uncommittedSource = null;
            this.isLoadingNewSource = true;
            return;
        }
        this.player.clearMediaItems();
        this.player.prepare();
        this.isLoadingNewSource = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PlaybackParameters applyPitchCorrection(PlaybackParameters playbackParameters) {
        float f = playbackParameters.speed;
        return new PlaybackParameters(f, this.preservesPitch ? 1.0f : f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PlayerStatus playerStateToPlayerStatus(int state) {
        if (state == 1) {
            return PlayerStatus.IDLE;
        }
        if (state == 2) {
            return PlayerStatus.LOADING;
        }
        if (state == 3) {
            return PlayerStatus.READY_TO_PLAY;
        }
        if (state == 4) {
            if (this.player.getPlayerError() != null) {
                return PlayerStatus.ERROR;
            }
            return PlayerStatus.IDLE;
        }
        return PlayerStatus.IDLE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setStatus(PlayerStatus status, PlaybackException error) {
        PlayerStatus playerStatus = this.status;
        this.status = status;
        PlaybackError playbackError = error != null ? new PlaybackError(error) : null;
        if (playbackError == null && this.player.getPlaybackState() == 4) {
            sendEvent(new PlayerEvent.PlayedToEnd());
        }
        if (this.status != playerStatus) {
            sendEvent(new PlayerEvent.StatusChanged(status, playerStatus, playbackError));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshPlaybackInfo() {
        this.duration = this.player.getDuration() / 1000.0f;
        this.isLive = this.player.isCurrentMediaItemLive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetPlaybackInfo() {
        this.duration = 0.0f;
        this.isLive = false;
    }

    private final boolean startPlaybackService() throws Exceptions.AppContextLost {
        Logger jsLogger;
        PlaybackServiceBinder playbackServiceBinder = this.serviceConnection.getPlaybackServiceBinder();
        if ((playbackServiceBinder != null ? playbackServiceBinder.getService() : null) != null) {
            return true;
        }
        AppContext appContext = getAppContext();
        if (appContext == null) {
            throw new Exceptions.AppContextLost();
        }
        boolean zStartService = ExpoVideoPlaybackService.INSTANCE.startService(appContext, this.context, this.serviceConnection);
        if (!zStartService && (jsLogger = appContext.getJsLogger()) != null) {
            Logger.error$default(jsLogger, VideoExceptionsKt.getPlaybackServiceErrorMessage$default("Expo-video has failed to bind with the playback service binder", null, 2, null), null, 2, null);
        }
        return zStartService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void serviceSetShowNotification(boolean showNotification) throws Exceptions.AppContextLost {
        ExpoVideoPlaybackService service;
        if (showNotification) {
            startPlaybackService();
        }
        PlaybackServiceBinder playbackServiceBinder = this.serviceConnection.getPlaybackServiceBinder();
        if (playbackServiceBinder == null || (service = playbackServiceBinder.getService()) == null) {
            return;
        }
        service.setShowNotification(showNotification, this.player);
    }

    public final void addListener(VideoPlayerListener videoPlayerListener) {
        Intrinsics.checkNotNullParameter(videoPlayerListener, "videoPlayerListener");
        synchronized (this.listeners) {
            List<WeakReference<VideoPlayerListener>> list = this.listeners;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                do {
                    if (it.hasNext()) {
                    }
                } while (!Intrinsics.areEqual(((WeakReference) it.next()).get(), videoPlayerListener));
                Unit unit = Unit.INSTANCE;
            }
            this.listeners.add(new WeakReference<>(videoPlayerListener));
            Unit unit2 = Unit.INSTANCE;
        }
    }

    public final void removeListener(final VideoPlayerListener videoPlayerListener) {
        Intrinsics.checkNotNullParameter(videoPlayerListener, "videoPlayerListener");
        synchronized (this.listeners) {
            CollectionsKt.removeAll((List) this.listeners, new Function1() { // from class: expo.modules.video.player.VideoPlayer$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(VideoPlayer.removeListener$lambda$17$lambda$16(videoPlayerListener, (WeakReference) obj));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removeListener$lambda$17$lambda$16(VideoPlayerListener videoPlayerListener, WeakReference it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it.get(), videoPlayerListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendEvent(PlayerEvent event) {
        ArrayList arrayList;
        synchronized (this.listeners) {
            List<WeakReference<VideoPlayerListener>> list = this.listeners;
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                VideoPlayerListener videoPlayerListener = (VideoPlayerListener) ((WeakReference) it.next()).get();
                if (videoPlayerListener != null) {
                    arrayList2.add(videoPlayerListener);
                }
            }
            arrayList = arrayList2;
        }
        event.emit(this, arrayList);
        if (event.getEmitToJS()) {
            emit(event.getName(), event.getJsEventPayload());
        }
    }

    private final FirstFrameEventGenerator createFirstFrameEventGenerator() throws Exceptions.AppContextLost {
        AppContext appContext = getAppContext();
        if (appContext == null) {
            throw new Exceptions.AppContextLost();
        }
        return new FirstFrameEventGenerator(appContext, this, this.currentVideoViewRef, new Function0() { // from class: expo.modules.video.player.VideoPlayer$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoPlayer.createFirstFrameEventGenerator$lambda$20(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createFirstFrameEventGenerator$lambda$20(VideoPlayer videoPlayer) {
        videoPlayer.sendEvent(new PlayerEvent.RenderedFirstFrame());
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: expo.modules.video.player.VideoPlayer$emitTimeUpdate$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: VideoPlayer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.player.VideoPlayer$emitTimeUpdate$1", f = "VideoPlayer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C07281(Continuation<? super C07281> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return VideoPlayer.this.new C07281(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C07281) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            VideoPlayer.this.sendEvent(new PlayerEvent.TimeUpdated(new TimeUpdate(VideoPlayer.this.getPlayer().getCurrentPosition() / 1000.0d, VideoPlayer.this.getCurrentOffsetFromLive(), VideoPlayer.this.getCurrentLiveTimestamp(), VideoPlayer.this.getBufferedPosition())));
            return Unit.INSTANCE;
        }
    }

    @Override // expo.modules.video.IntervalUpdateEmitter
    public void emitTimeUpdate() {
        CoroutineScope mainQueue;
        AppContext appContext = getAppContext();
        if (appContext == null || (mainQueue = appContext.getMainQueue()) == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(mainQueue, null, null, new C07281(null), 3, null);
    }

    public final MediaMetadataRetriever toMetadataRetriever() throws FileNotFoundException {
        Uri uri;
        VideoSource commitedSource = this.uncommittedSource;
        if (commitedSource == null) {
            commitedSource = getCommitedSource();
        }
        if (commitedSource == null || (uri = commitedSource.getUri()) == null) {
            throw new IllegalStateException("Video source is not set");
        }
        String string = uri.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        if (URLUtil.isFileUrl(string)) {
            mediaMetadataRetriever.setDataSource(StringsKt.replace$default(string, "file://", "", false, 4, (Object) null));
            return mediaMetadataRetriever;
        }
        if (URLUtil.isContentUrl(string)) {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = this.context.getContentResolver().openFileDescriptor(uri, "r");
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                return mediaMetadataRetriever;
            }
            ParcelFileDescriptor parcelFileDescriptor = parcelFileDescriptorOpenFileDescriptor;
            try {
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptor.getFileDescriptor());
                try {
                    mediaMetadataRetriever.setDataSource(fileInputStream.getFD());
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(fileInputStream, null);
                    Unit unit2 = Unit.INSTANCE;
                    CloseableKt.closeFinally(parcelFileDescriptor, null);
                    return mediaMetadataRetriever;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(fileInputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.closeFinally(parcelFileDescriptor, th3);
                    throw th4;
                }
            }
        }
        Map<String, String> headers = commitedSource.getHeaders();
        if (headers == null) {
            headers = MapsKt.emptyMap();
        }
        mediaMetadataRetriever.setDataSource(string, headers);
        return mediaMetadataRetriever;
    }
}
