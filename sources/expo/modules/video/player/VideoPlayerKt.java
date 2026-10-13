package expo.modules.video.player;

import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.Tracks;
import androidx.media3.exoplayer.hls.HlsManifest;
import androidx.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist;
import com.google.common.collect.UnmodifiableIterator;
import expo.modules.video.records.VideoTrack;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VideoPlayer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0003¨\u0006\u0006"}, d2 = {"toVideoTracks", "", "Lexpo/modules/video/records/VideoTrack;", "Landroidx/media3/common/Tracks;", "sourceManifest", "Landroidx/media3/exoplayer/hls/HlsManifest;", "expo-video_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class VideoPlayerKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final List<VideoTrack> toVideoTracks(Tracks tracks, HlsManifest hlsManifest) {
        HlsMultivariantPlaylist.Variant variant;
        HlsMultivariantPlaylist hlsMultivariantPlaylist;
        List<HlsMultivariantPlaylist.Variant> list;
        Object next;
        ArrayList arrayList = new ArrayList();
        UnmodifiableIterator<Tracks.Group> it = tracks.getGroups().iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            Tracks.Group next2 = it.next();
            int i = next2.length;
            for (int i2 = 0; i2 < i; i2++) {
                Format trackFormat = next2.getTrackFormat(i2);
                Intrinsics.checkNotNullExpressionValue(trackFormat, "getTrackFormat(...)");
                boolean zIsTrackSupported = next2.isTrackSupported(i2);
                if (hlsManifest == null || (hlsMultivariantPlaylist = hlsManifest.multivariantPlaylist) == null || (list = hlsMultivariantPlaylist.variants) == null) {
                    variant = null;
                } else {
                    Iterator<T> it2 = list.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                    } while (!Intrinsics.areEqual(((HlsMultivariantPlaylist.Variant) next).format.id, trackFormat.id));
                    variant = (HlsMultivariantPlaylist.Variant) next;
                }
                Uri uri = variant != null ? variant.url : null;
                if (MimeTypes.isVideo(trackFormat.sampleMimeType)) {
                    arrayList.add(VideoTrack.INSTANCE.fromFormat(trackFormat, zIsTrackSupported, uri));
                }
            }
        }
        return CollectionsKt.filterNotNull(arrayList);
    }
}
