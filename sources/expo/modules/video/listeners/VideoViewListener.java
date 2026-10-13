package expo.modules.video.listeners;

import expo.modules.video.VideoView;
import expo.modules.video.records.PiPParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VideoViewListener.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\t"}, d2 = {"Lexpo/modules/video/listeners/VideoViewListener;", "", "onPiPParamsChanged", "", "videoView", "Lexpo/modules/video/VideoView;", "oldPiPParams", "Lexpo/modules/video/records/PiPParams;", "newPiPParams", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface VideoViewListener {

    /* JADX INFO: compiled from: VideoViewListener.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void onPiPParamsChanged(VideoViewListener videoViewListener, VideoView videoView, PiPParams oldPiPParams, PiPParams newPiPParams) {
            Intrinsics.checkNotNullParameter(videoView, "videoView");
            Intrinsics.checkNotNullParameter(oldPiPParams, "oldPiPParams");
            Intrinsics.checkNotNullParameter(newPiPParams, "newPiPParams");
        }
    }

    void onPiPParamsChanged(VideoView videoView, PiPParams oldPiPParams, PiPParams newPiPParams);
}
