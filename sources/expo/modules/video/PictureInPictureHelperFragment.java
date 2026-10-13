package expo.modules.video;

import androidx.fragment.app.Fragment;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.lang.ref.WeakReference;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PictureInPictureHelperFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0002\u001a\u0010\u0012\f\u0012\n \u000b*\u0004\u0018\u00010\u00030\u00030\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lexpo/modules/video/PictureInPictureHelperFragment;", "Landroidx/fragment/app/Fragment;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lexpo/modules/video/PictureInPictureFragmentListener;", "<init>", "(Lexpo/modules/video/PictureInPictureFragmentListener;)V", "id", "", "getId", "()Ljava/lang/String;", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "release", "", "onPictureInPictureModeChanged", "isInPictureInPictureMode", "", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PictureInPictureHelperFragment extends Fragment {
    private final String id;
    private final WeakReference<PictureInPictureFragmentListener> listener;

    public PictureInPictureHelperFragment(PictureInPictureFragmentListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.id = "PictureInPictureHelperFragment_" + UUID.randomUUID();
        this.listener = new WeakReference<>(listener);
    }

    public final String getId() {
        return this.id;
    }

    public final void release() {
        this.listener.clear();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        super.onPictureInPictureModeChanged(isInPictureInPictureMode);
        if (isInPictureInPictureMode) {
            PictureInPictureFragmentListener pictureInPictureFragmentListener = this.listener.get();
            if (pictureInPictureFragmentListener != null) {
                pictureInPictureFragmentListener.onPictureInPictureStart();
                return;
            }
            return;
        }
        PictureInPictureFragmentListener pictureInPictureFragmentListener2 = this.listener.get();
        if (pictureInPictureFragmentListener2 != null) {
            pictureInPictureFragmentListener2.onPictureInPictureStop();
        }
    }
}
