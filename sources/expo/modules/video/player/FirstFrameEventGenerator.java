package expo.modules.video.player;

import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.exoplayer.ExoPlayer;
import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.kotlin.AppContext;
import expo.modules.video.VideoView;
import expo.modules.video.enums.AudioMixingMode;
import expo.modules.video.enums.ContentFit;
import expo.modules.video.enums.PlayerStatus;
import expo.modules.video.listeners.VideoPlayerListener;
import expo.modules.video.records.AudioTrack;
import expo.modules.video.records.PlaybackError;
import expo.modules.video.records.SubtitleTrack;
import expo.modules.video.records.TimeUpdate;
import expo.modules.video.records.VideoSource;
import expo.modules.video.records.VideoTrack;
import expo.modules.video.utils.MutableWeakReference;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: FirstFrameEventGenerator.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B7\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u001a\u001a\u00020\fH\u0007J\b\u0010\u001b\u001a\u00020\fH\u0016J\u001a\u0010\u001c\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010!\u001a\u00020\f2\u0006\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020 H\u0016J$\u0010$\u001a\u00020\f2\u0006\u0010%\u001a\u00020\u00062\b\u0010&\u001a\u0004\u0018\u00010\t2\b\u0010'\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010(\u001a\u00020\fH\u0002J\b\u0010)\u001a\u00020\u0013H\u0002R\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0010\u0012\f\u0012\n \u0011*\u0004\u0018\u00010\u00060\u00060\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017¨\u0006*"}, d2 = {"Lexpo/modules/video/player/FirstFrameEventGenerator;", "Landroidx/media3/common/Player$Listener;", "Lexpo/modules/video/listeners/VideoPlayerListener;", "appContext", "Lexpo/modules/kotlin/AppContext;", "videoPlayer", "Lexpo/modules/video/player/VideoPlayer;", "currentViewReference", "Lexpo/modules/video/utils/MutableWeakReference;", "Lexpo/modules/video/VideoView;", "onFirstFrameRendered", "Lkotlin/Function0;", "", "<init>", "(Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/utils/MutableWeakReference;Lkotlin/jvm/functions/Function0;)V", "videoPlayerReference", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "hasPendingOnFirstFrame", "", RNConstants.ARG_VALUE, "hasSentFirstFrameForCurrentMediaItem", "getHasSentFirstFrameForCurrentMediaItem$expo_video_release", "()Z", "hasSentFirstFrameForCurrentVideoView", "getHasSentFirstFrameForCurrentVideoView$expo_video_release", "release", "onRenderedFirstFrame", "onMediaItemTransition", "mediaItem", "Landroidx/media3/common/MediaItem;", "reason", "", "onSurfaceSizeChanged", "width", "height", "onTargetViewChanged", "player", "newTargetView", "oldTargetView", "maybeCallOnFirstFrameRendered", "isPlayerSurfaceLayoutValid", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FirstFrameEventGenerator implements Player.Listener, VideoPlayerListener {
    private final MutableWeakReference<VideoView> currentViewReference;
    private boolean hasPendingOnFirstFrame;
    private boolean hasSentFirstFrameForCurrentMediaItem;
    private boolean hasSentFirstFrameForCurrentVideoView;
    private Function0<Unit> onFirstFrameRendered;
    private final WeakReference<VideoPlayer> videoPlayerReference;

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onAudioMixingModeChanged(VideoPlayer videoPlayer, AudioMixingMode audioMixingMode, AudioMixingMode audioMixingMode2) {
        VideoPlayerListener.DefaultImpls.onAudioMixingModeChanged(this, videoPlayer, audioMixingMode, audioMixingMode2);
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onIsPlayingChanged(VideoPlayer videoPlayer, boolean z, Boolean bool) {
        VideoPlayerListener.DefaultImpls.onIsPlayingChanged(this, videoPlayer, z, bool);
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onMutedChanged(VideoPlayer videoPlayer, boolean z, Boolean bool) {
        VideoPlayerListener.DefaultImpls.onMutedChanged(this, videoPlayer, z, bool);
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onPlaybackRateChanged(VideoPlayer videoPlayer, float f, Float f2) {
        VideoPlayerListener.DefaultImpls.onPlaybackRateChanged(this, videoPlayer, f, f2);
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onPlayedToEnd(VideoPlayer videoPlayer) {
        VideoPlayerListener.DefaultImpls.onPlayedToEnd(this, videoPlayer);
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onRenderedFirstFrame(VideoPlayer videoPlayer) {
        VideoPlayerListener.DefaultImpls.onRenderedFirstFrame(this, videoPlayer);
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onSourceChanged(VideoPlayer videoPlayer, VideoSource videoSource, VideoSource videoSource2) {
        VideoPlayerListener.DefaultImpls.onSourceChanged(this, videoPlayer, videoSource, videoSource2);
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onStatusChanged(VideoPlayer videoPlayer, PlayerStatus playerStatus, PlayerStatus playerStatus2, PlaybackError playbackError) {
        VideoPlayerListener.DefaultImpls.onStatusChanged(this, videoPlayer, playerStatus, playerStatus2, playbackError);
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onTimeUpdate(VideoPlayer videoPlayer, TimeUpdate timeUpdate) {
        VideoPlayerListener.DefaultImpls.onTimeUpdate(this, videoPlayer, timeUpdate);
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onTrackSelectionParametersChanged(VideoPlayer videoPlayer, TrackSelectionParameters trackSelectionParameters) {
        VideoPlayerListener.DefaultImpls.onTrackSelectionParametersChanged(this, videoPlayer, trackSelectionParameters);
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onTracksChanged(VideoPlayer videoPlayer, Tracks tracks) {
        VideoPlayerListener.DefaultImpls.onTracksChanged(this, videoPlayer, tracks);
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onVideoSourceLoaded(VideoPlayer videoPlayer, VideoSource videoSource, Double d, List<VideoTrack> list, List<SubtitleTrack> list2, List<AudioTrack> list3) {
        VideoPlayerListener.DefaultImpls.onVideoSourceLoaded(this, videoPlayer, videoSource, d, list, list2, list3);
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onVideoTrackChanged(VideoPlayer videoPlayer, VideoTrack videoTrack, VideoTrack videoTrack2) {
        VideoPlayerListener.DefaultImpls.onVideoTrackChanged(this, videoPlayer, videoTrack, videoTrack2);
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onVolumeChanged(VideoPlayer videoPlayer, float f, Float f2) {
        VideoPlayerListener.DefaultImpls.onVolumeChanged(this, videoPlayer, f, f2);
    }

    public FirstFrameEventGenerator(AppContext appContext, VideoPlayer videoPlayer, MutableWeakReference<VideoView> currentViewReference, Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(videoPlayer, "videoPlayer");
        Intrinsics.checkNotNullParameter(currentViewReference, "currentViewReference");
        this.currentViewReference = currentViewReference;
        this.onFirstFrameRendered = function0;
        this.videoPlayerReference = new WeakReference<>(videoPlayer);
        videoPlayer.addListener(this);
        BuildersKt__Builders_commonKt.launch$default(appContext.getMainQueue(), null, null, new AnonymousClass1(videoPlayer, this, null), 3, null);
    }

    /* JADX INFO: renamed from: getHasSentFirstFrameForCurrentMediaItem$expo_video_release, reason: from getter */
    public final boolean getHasSentFirstFrameForCurrentMediaItem() {
        return this.hasSentFirstFrameForCurrentMediaItem;
    }

    /* JADX INFO: renamed from: getHasSentFirstFrameForCurrentVideoView$expo_video_release, reason: from getter */
    public final boolean getHasSentFirstFrameForCurrentVideoView() {
        return this.hasSentFirstFrameForCurrentVideoView;
    }

    /* JADX INFO: renamed from: expo.modules.video.player.FirstFrameEventGenerator$1, reason: invalid class name */
    /* JADX INFO: compiled from: FirstFrameEventGenerator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.player.FirstFrameEventGenerator$1", f = "FirstFrameEventGenerator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ VideoPlayer $videoPlayer;
        int label;
        final /* synthetic */ FirstFrameEventGenerator this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(VideoPlayer videoPlayer, FirstFrameEventGenerator firstFrameEventGenerator, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$videoPlayer = videoPlayer;
            this.this$0 = firstFrameEventGenerator;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$videoPlayer, this.this$0, continuation);
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
            this.$videoPlayer.getPlayer().addListener(this.this$0);
            return Unit.INSTANCE;
        }
    }

    public final void release() {
        ExoPlayer player;
        VideoPlayer videoPlayer = this.videoPlayerReference.get();
        if (videoPlayer != null) {
            videoPlayer.removeListener(this);
        }
        VideoPlayer videoPlayer2 = this.videoPlayerReference.get();
        if (videoPlayer2 != null && (player = videoPlayer2.getPlayer()) != null) {
            player.removeListener(this);
        }
        this.onFirstFrameRendered = null;
    }

    @Override // androidx.media3.common.Player.Listener
    public void onRenderedFirstFrame() {
        if (isPlayerSurfaceLayoutValid()) {
            maybeCallOnFirstFrameRendered();
        } else {
            this.hasPendingOnFirstFrame = true;
        }
    }

    @Override // androidx.media3.common.Player.Listener
    public void onMediaItemTransition(MediaItem mediaItem, int reason) {
        this.hasSentFirstFrameForCurrentMediaItem = false;
        super.onMediaItemTransition(mediaItem, reason);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onSurfaceSizeChanged(int width, int height) {
        if (isPlayerSurfaceLayoutValid() && this.hasPendingOnFirstFrame) {
            maybeCallOnFirstFrameRendered();
        }
    }

    @Override // expo.modules.video.listeners.VideoPlayerListener
    public void onTargetViewChanged(VideoPlayer player, VideoView newTargetView, VideoView oldTargetView) {
        Intrinsics.checkNotNullParameter(player, "player");
        this.hasSentFirstFrameForCurrentVideoView = false;
    }

    private final void maybeCallOnFirstFrameRendered() {
        Function0<Unit> function0;
        if ((!this.hasSentFirstFrameForCurrentMediaItem || !this.hasSentFirstFrameForCurrentVideoView) && (function0 = this.onFirstFrameRendered) != null) {
            function0.invoke();
        }
        this.hasPendingOnFirstFrame = false;
        this.hasSentFirstFrameForCurrentMediaItem = true;
        this.hasSentFirstFrameForCurrentVideoView = true;
    }

    private final boolean isPlayerSurfaceLayoutValid() {
        ExoPlayer player;
        VideoPlayer videoPlayer = this.videoPlayerReference.get();
        if (videoPlayer == null || (player = videoPlayer.getPlayer()) == null) {
            return false;
        }
        VideoView videoView = this.currentViewReference.get();
        if (videoView == null) {
            return false;
        }
        int width = player.getSurfaceSize().getWidth();
        int height = player.getSurfaceSize().getHeight();
        int i = player.getVideoSize().width;
        int i2 = player.getVideoSize().height;
        float f = player.getVideoSize().pixelWidthHeightRatio;
        if (width == 0 || height == 0) {
            return false;
        }
        return ((double) Math.abs(((((float) i) / ((float) i2)) * f) - (width / height))) < 0.05d || (videoView.getPlayerView().getResizeMode() == ContentFit.FILL.toResizeMode()) || (i == 0 || i2 == 0);
    }
}
