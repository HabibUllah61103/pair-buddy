package expo.modules.video.managers;

import android.content.Context;
import androidx.media3.exoplayer.ExoPlayer;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.exception.Exceptions;
import expo.modules.video.FullscreenPlayerActivity;
import expo.modules.video.VideoCache;
import expo.modules.video.VideoView;
import expo.modules.video.VideoViewNotFoundException;
import expo.modules.video.listeners.VideoManagerListener;
import expo.modules.video.playbackService.ExpoVideoPlaybackService;
import expo.modules.video.playbackService.PlaybackServiceBinder;
import expo.modules.video.player.VideoPlayer;
import expo.modules.video.utils.WeakMutableSet;
import expo.modules.video.utils.WeakMutableSetKt;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VideoManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010#\u001a\u00020$2\u0006\u0010\u0006\u001a\u00020\bJ\u000e\u0010%\u001a\u00020$2\u0006\u0010\u0006\u001a\u00020\bJ\u000e\u0010&\u001a\u00020$2\u0006\u0010'\u001a\u00020\"J\u000e\u0010(\u001a\u00020$2\u0006\u0010'\u001a\u00020\"J\u000e\u0010)\u001a\u00020$2\u0006\u0010*\u001a\u00020\u0011J\u000e\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u0005J\u000e\u0010-\u001a\u00020$2\u0006\u0010*\u001a\u00020\u0011J\u000e\u0010.\u001a\u00020$2\u0006\u0010/\u001a\u00020\u0015J\u000e\u00100\u001a\u00020$2\u0006\u0010/\u001a\u00020\u0015J\u0016\u00101\u001a\u00020$2\u0006\u0010,\u001a\u00020\u00052\u0006\u00102\u001a\u00020\u0013J\u000e\u00103\u001a\u00020$2\u0006\u0010,\u001a\u00020\u0005J\u0016\u00104\u001a\u00020$2\u0006\u0010/\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u0011J\u0016\u00105\u001a\u00020$2\u0006\u0010/\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u0011J\u000e\u00106\u001a\u00020$2\u0006\u00107\u001a\u00020\u0015J\u000e\u00108\u001a\u00020$2\u0006\u00107\u001a\u00020\u0015J\u000e\u00109\u001a\u00020:2\u0006\u0010/\u001a\u00020\u0015J\u0006\u0010;\u001a\u00020:J\u0006\u0010<\u001a\u00020$J\u0006\u0010=\u001a\u00020$J\b\u0010>\u001a\u00020$H\u0002J\u0010\u0010?\u001a\u00020:2\u0006\u0010*\u001a\u00020\u0011H\u0002J\u0010\u0010@\u001a\u00020$2\u0006\u0010*\u001a\u00020\u0011H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R \u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00070\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R \u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00160\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00150\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0\u00070\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006A"}, d2 = {"Lexpo/modules/video/managers/VideoManager;", "", "<init>", "()V", "INTENT_PLAYER_KEY", "", "appContext", "Ljava/lang/ref/WeakReference;", "Lexpo/modules/kotlin/AppContext;", "pictureInPicture", "Lexpo/modules/video/managers/PictureInPictureManager;", "getPictureInPicture", "()Lexpo/modules/video/managers/PictureInPictureManager;", "setPictureInPicture", "(Lexpo/modules/video/managers/PictureInPictureManager;)V", "videoViews", "", "Lexpo/modules/video/VideoView;", "fullscreenPlayerActivities", "Lexpo/modules/video/FullscreenPlayerActivity;", "videoPlayersToVideoViews", "Lexpo/modules/video/player/VideoPlayer;", "", "playersRequestingKeepAwake", "Lexpo/modules/video/utils/WeakMutableSet;", "audioFocusManager", "Lexpo/modules/video/managers/AudioFocusManager;", "cache", "Lexpo/modules/video/VideoCache;", "getCache", "()Lexpo/modules/video/VideoCache;", "setCache", "(Lexpo/modules/video/VideoCache;)V", "listeners", "Lexpo/modules/video/listeners/VideoManagerListener;", "onModuleCreated", "", "onModuleDestroyed", "registerListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "unregisterListener", "registerVideoView", "videoView", "getVideoView", "id", "unregisterVideoView", "registerVideoPlayer", "videoPlayer", "unregisterVideoPlayer", "registerFullscreenPlayerActivity", "fullscreenActivity", "unregisterFullscreenPlayerActivity", "onVideoPlayerAttachedToView", "onVideoPlayerDetachedFromView", "requestKeepAwake", "player", "releaseKeepAwake", "isVideoPlayerAttachedToView", "", "hasRegisteredPlayers", "onAppForegrounded", "onAppBackgrounded", "applyKeepAwake", "shouldPauseVideo", "handleVideoPause", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VideoManager {
    public static final String INTENT_PLAYER_KEY = "player_uuid";
    private static AudioFocusManager audioFocusManager;
    public static VideoCache cache;
    public static PictureInPictureManager pictureInPicture;
    public static final VideoManager INSTANCE = new VideoManager();
    private static WeakReference<AppContext> appContext = new WeakReference<>(null);
    private static Map<String, VideoView> videoViews = new LinkedHashMap();
    private static Map<String, WeakReference<FullscreenPlayerActivity>> fullscreenPlayerActivities = new LinkedHashMap();
    private static Map<VideoPlayer, List<VideoView>> videoPlayersToVideoViews = new LinkedHashMap();
    private static WeakMutableSet<VideoPlayer> playersRequestingKeepAwake = WeakMutableSetKt.weakMutableHashSetOf();
    private static List<WeakReference<VideoManagerListener>> listeners = new ArrayList();

    private VideoManager() {
    }

    public final PictureInPictureManager getPictureInPicture() {
        PictureInPictureManager pictureInPictureManager = pictureInPicture;
        if (pictureInPictureManager != null) {
            return pictureInPictureManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("pictureInPicture");
        return null;
    }

    public final void setPictureInPicture(PictureInPictureManager pictureInPictureManager) {
        Intrinsics.checkNotNullParameter(pictureInPictureManager, "<set-?>");
        pictureInPicture = pictureInPictureManager;
    }

    public final VideoCache getCache() {
        VideoCache videoCache = cache;
        if (videoCache != null) {
            return videoCache;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cache");
        return null;
    }

    public final void setCache(VideoCache videoCache) {
        Intrinsics.checkNotNullParameter(videoCache, "<set-?>");
        cache = videoCache;
    }

    public final void onModuleCreated(AppContext appContext2) {
        Intrinsics.checkNotNullParameter(appContext2, "appContext");
        synchronized (this) {
            Context reactContext = appContext2.getReactContext();
            if (reactContext == null) {
                throw new Exceptions.ReactContextLost();
            }
            VideoManager videoManager = INSTANCE;
            videoManager.setPictureInPicture(new PictureInPictureManager(appContext2));
            if (audioFocusManager == null) {
                audioFocusManager = new AudioFocusManager(appContext2);
            }
            if (cache == null) {
                videoManager.setCache(new VideoCache(reactContext));
            } else {
                AppContext appContext3 = appContext.get();
                if (!Intrinsics.areEqual(appContext3 != null ? appContext3.getReactContext() : null, appContext2.getReactContext())) {
                    videoManager.getCache().release();
                    videoManager.setCache(new VideoCache(reactContext));
                }
            }
            appContext = new WeakReference<>(appContext2);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void onModuleDestroyed(AppContext appContext2) {
        Intrinsics.checkNotNullParameter(appContext2, "appContext");
        getPictureInPicture().release();
        listeners.clear();
    }

    public final void registerListener(VideoManagerListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        listeners.add(new WeakReference<>(listener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean unregisterListener$lambda$1(VideoManagerListener videoManagerListener, WeakReference it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return !Intrinsics.areEqual(it.get(), videoManagerListener);
    }

    public final void unregisterListener(final VideoManagerListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        CollectionsKt.retainAll((List) listeners, new Function1() { // from class: expo.modules.video.managers.VideoManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(VideoManager.unregisterListener$lambda$1(listener, (WeakReference) obj));
            }
        });
    }

    public final void registerVideoView(VideoView videoView) {
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        videoViews.put(videoView.getVideoViewId(), videoView);
        Iterator<T> it = listeners.iterator();
        while (it.hasNext()) {
            VideoManagerListener videoManagerListener = (VideoManagerListener) ((WeakReference) it.next()).get();
            if (videoManagerListener != null) {
                videoManagerListener.onVideoViewRegistered(videoView, videoViews.values());
            }
        }
    }

    public final VideoView getVideoView(String id) throws VideoViewNotFoundException {
        Intrinsics.checkNotNullParameter(id, "id");
        VideoView videoView = videoViews.get(id);
        if (videoView != null) {
            return videoView;
        }
        throw new VideoViewNotFoundException(id);
    }

    public final void unregisterVideoView(VideoView videoView) {
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        videoViews.remove(videoView.getVideoViewId());
        Iterator<T> it = listeners.iterator();
        while (it.hasNext()) {
            VideoManagerListener videoManagerListener = (VideoManagerListener) ((WeakReference) it.next()).get();
            if (videoManagerListener != null) {
                videoManagerListener.onVideoViewUnregistered(videoView, videoViews.values());
            }
        }
    }

    public final void registerVideoPlayer(VideoPlayer videoPlayer) {
        Intrinsics.checkNotNullParameter(videoPlayer, "videoPlayer");
        Map<VideoPlayer, List<VideoView>> map = videoPlayersToVideoViews;
        ArrayList arrayList = map.get(videoPlayer);
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        map.put(videoPlayer, arrayList);
        AudioFocusManager audioFocusManager2 = audioFocusManager;
        if (audioFocusManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("audioFocusManager");
            audioFocusManager2 = null;
        }
        audioFocusManager2.registerPlayer(videoPlayer);
    }

    public final void unregisterVideoPlayer(VideoPlayer videoPlayer) {
        Intrinsics.checkNotNullParameter(videoPlayer, "videoPlayer");
        videoPlayersToVideoViews.remove(videoPlayer);
        AudioFocusManager audioFocusManager2 = audioFocusManager;
        if (audioFocusManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("audioFocusManager");
            audioFocusManager2 = null;
        }
        audioFocusManager2.unregisterPlayer(videoPlayer);
    }

    public final void registerFullscreenPlayerActivity(String id, FullscreenPlayerActivity fullscreenActivity) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(fullscreenActivity, "fullscreenActivity");
        fullscreenPlayerActivities.put(id, new WeakReference<>(fullscreenActivity));
    }

    public final void unregisterFullscreenPlayerActivity(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        fullscreenPlayerActivities.remove(id);
    }

    public final void onVideoPlayerAttachedToView(VideoPlayer videoPlayer, VideoView videoView) {
        PlaybackServiceBinder playbackServiceBinder;
        ExpoVideoPlaybackService service;
        Intrinsics.checkNotNullParameter(videoPlayer, "videoPlayer");
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        List<VideoView> list = videoPlayersToVideoViews.get(videoPlayer);
        if (list == null || !list.contains(videoView)) {
            List<VideoView> list2 = videoPlayersToVideoViews.get(videoPlayer);
            if (list2 != null) {
                list2.add(videoView);
            } else {
                videoPlayersToVideoViews.put(videoPlayer, CollectionsKt.arrayListOf(videoView));
            }
            List<VideoView> list3 = videoPlayersToVideoViews.get(videoPlayer);
            if (list3 == null || list3.size() != 1 || (playbackServiceBinder = videoPlayer.getServiceConnection().getPlaybackServiceBinder()) == null || (service = playbackServiceBinder.getService()) == null) {
                return;
            }
            service.registerPlayer(videoPlayer);
        }
    }

    public final void onVideoPlayerDetachedFromView(VideoPlayer videoPlayer, VideoView videoView) {
        PlaybackServiceBinder playbackServiceBinder;
        ExpoVideoPlaybackService service;
        List<VideoView> list;
        Intrinsics.checkNotNullParameter(videoPlayer, "videoPlayer");
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        List<VideoView> list2 = videoPlayersToVideoViews.get(videoPlayer);
        if (list2 != null) {
            list2.remove(videoView);
        }
        if ((videoPlayersToVideoViews.get(videoPlayer) != null && ((list = videoPlayersToVideoViews.get(videoPlayer)) == null || list.size() != 0)) || (playbackServiceBinder = videoPlayer.getServiceConnection().getPlaybackServiceBinder()) == null || (service = playbackServiceBinder.getService()) == null) {
            return;
        }
        service.unregisterPlayer(videoPlayer.getPlayer());
    }

    public final void requestKeepAwake(VideoPlayer player) {
        Intrinsics.checkNotNullParameter(player, "player");
        playersRequestingKeepAwake.add(player);
        applyKeepAwake();
    }

    public final void releaseKeepAwake(VideoPlayer player) {
        Intrinsics.checkNotNullParameter(player, "player");
        playersRequestingKeepAwake.remove(player);
        applyKeepAwake();
    }

    public final boolean isVideoPlayerAttachedToView(VideoPlayer videoPlayer) {
        Intrinsics.checkNotNullParameter(videoPlayer, "videoPlayer");
        List<VideoView> list = videoPlayersToVideoViews.get(videoPlayer);
        if (list != null) {
            return !list.isEmpty();
        }
        return false;
    }

    public final boolean hasRegisteredPlayers() {
        return !videoPlayersToVideoViews.isEmpty();
    }

    public final void onAppForegrounded() {
        Iterator<T> it = listeners.iterator();
        while (it.hasNext()) {
            VideoManagerListener videoManagerListener = (VideoManagerListener) ((WeakReference) it.next()).get();
            if (videoManagerListener != null) {
                videoManagerListener.onAppForegrounded();
            }
        }
    }

    public final void onAppBackgrounded() {
        for (VideoView videoView : videoViews.values()) {
            if (shouldPauseVideo(videoView)) {
                handleVideoPause(videoView);
            } else {
                videoView.setWasAutoPaused(false);
            }
        }
        Iterator<T> it = listeners.iterator();
        while (it.hasNext()) {
            VideoManagerListener videoManagerListener = (VideoManagerListener) ((WeakReference) it.next()).get();
            if (videoManagerListener != null) {
                videoManagerListener.onAppBackgrounded();
            }
        }
    }

    private final void applyKeepAwake() {
        Iterator<VideoView> it = videoViews.values().iterator();
        while (it.hasNext()) {
            it.next().setKeepScreenOn(!playersRequestingKeepAwake.isEmpty());
        }
    }

    private final boolean shouldPauseVideo(VideoView videoView) {
        VideoPlayer videoPlayer = videoView.getVideoPlayer();
        return (videoPlayer == null || videoPlayer.getStaysActiveInBackground() || videoView.getPipParams().getAutoEnter() || videoView.getPipParams().getWillEnter() || videoView.getIsInFullscreen()) ? false : true;
    }

    private final void handleVideoPause(VideoView videoView) {
        ExoPlayer player;
        VideoPlayer videoPlayer = videoView.getVideoPlayer();
        if (videoPlayer == null || (player = videoPlayer.getPlayer()) == null || !player.isPlaying()) {
            return;
        }
        player.pause();
        videoView.setWasAutoPaused(true);
    }
}
