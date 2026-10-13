package expo.modules.video.managers;

import android.util.Rational;
import androidx.media3.common.VideoSize;
import androidx.media3.exoplayer.ExoPlayer;
import expo.modules.video.VideoView;
import expo.modules.video.player.VideoPlayer;
import expo.modules.video.utils.PictureInPictureUtilsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PictureInPictureManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"calculateCurrentPipAspectRatio", "Landroid/util/Rational;", "Lexpo/modules/video/VideoView;", "expo-video_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class PictureInPictureManagerKt {
    public static final Rational calculateCurrentPipAspectRatio(VideoView videoView) {
        ExoPlayer player;
        Intrinsics.checkNotNullParameter(videoView, "<this>");
        VideoPlayer videoPlayer = videoView.getVideoPlayer();
        if (videoPlayer == null || (player = videoPlayer.getPlayer()) == null) {
            return null;
        }
        VideoSize videoSize = player.getVideoSize();
        Intrinsics.checkNotNullExpressionValue(videoSize, "getVideoSize(...)");
        return PictureInPictureUtilsKt.calculatePiPAspectRatio(videoSize, videoView.getWidth(), videoView.getHeight(), videoView.getContentFit());
    }
}
