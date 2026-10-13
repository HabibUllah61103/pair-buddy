package expo.modules.video.utils;

import android.content.Context;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.session.MediaSession;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MediaSessionUtils.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000¨\u0006\u0006"}, d2 = {"buildBasicMediaSession", "Landroidx/media3/session/MediaSession;", "context", "Landroid/content/Context;", "player", "Landroidx/media3/exoplayer/ExoPlayer;", "expo-video_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class MediaSessionUtilsKt {
    public static final MediaSession buildBasicMediaSession(Context context, ExoPlayer player) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(player, "player");
        MediaSession mediaSessionBuild = new MediaSession.Builder(context, player).setId("ExpoVideoBasicMediaSession_" + player.hashCode()).build();
        Intrinsics.checkNotNullExpressionValue(mediaSessionBuild, "build(...)");
        return mediaSessionBuild;
    }
}
