package expo.modules.video.listeners;

import expo.modules.video.VideoView;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VideoManagerListener.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0016J\u001e\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0016J\b\u0010\t\u001a\u00020\u0003H\u0016J\b\u0010\n\u001a\u00020\u0003H\u0016¨\u0006\u000b"}, d2 = {"Lexpo/modules/video/listeners/VideoManagerListener;", "", "onVideoViewRegistered", "", "videoView", "Lexpo/modules/video/VideoView;", "allVideoViews", "", "onVideoViewUnregistered", "onAppBackgrounded", "onAppForegrounded", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface VideoManagerListener {

    /* JADX INFO: compiled from: VideoManagerListener.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void onAppBackgrounded(VideoManagerListener videoManagerListener) {
        }

        public static void onAppForegrounded(VideoManagerListener videoManagerListener) {
        }

        public static void onVideoViewRegistered(VideoManagerListener videoManagerListener, VideoView videoView, Collection<? extends VideoView> allVideoViews) {
            Intrinsics.checkNotNullParameter(videoView, "videoView");
            Intrinsics.checkNotNullParameter(allVideoViews, "allVideoViews");
        }

        public static void onVideoViewUnregistered(VideoManagerListener videoManagerListener, VideoView videoView, Collection<? extends VideoView> allVideoViews) {
            Intrinsics.checkNotNullParameter(videoView, "videoView");
            Intrinsics.checkNotNullParameter(allVideoViews, "allVideoViews");
        }
    }

    void onAppBackgrounded();

    void onAppForegrounded();

    void onVideoViewRegistered(VideoView videoView, Collection<? extends VideoView> allVideoViews);

    void onVideoViewUnregistered(VideoView videoView, Collection<? extends VideoView> allVideoViews);
}
