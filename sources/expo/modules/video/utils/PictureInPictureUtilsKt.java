package expo.modules.video.utils;

import android.app.Activity;
import android.app.PictureInPictureParams;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.util.Rational;
import android.view.View;
import androidx.media3.common.VideoSize;
import androidx.media3.ui.PlayerView;
import com.facebook.react.uimanager.ViewProps;
import expo.modules.video.PictureInPictureConfigurationException;
import expo.modules.video.VideoView;
import expo.modules.video.enums.ContentFit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PictureInPictureUtils.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u001a(\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0000\u001a\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0001H\u0000\u001a\"\u0010\u0012\u001a\u00020\u000e2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\u000e\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016H\u0000\u001a$\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00142\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0000¨\u0006\u001b"}, d2 = {"calculateRectHint", "Landroid/graphics/Rect;", "playerView", "Landroidx/media3/ui/PlayerView;", "calculatePiPAspectRatio", "Landroid/util/Rational;", "videoSize", "Landroidx/media3/common/VideoSize;", "viewWidth", "", "viewHeight", "contentFit", "Lexpo/modules/video/enums/ContentFit;", "applyRectHint", "", "activity", "Landroid/app/Activity;", "rectHint", "runWithPiPMisconfigurationSoftHandling", "shouldThrow", "", "block", "Lkotlin/Function0;", "", "applyPiPParams", "autoEnterPiP", ViewProps.ASPECT_RATIO, "expo-video_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class PictureInPictureUtilsKt {
    public static final Rect calculateRectHint(PlayerView playerView) {
        Intrinsics.checkNotNullParameter(playerView, "playerView");
        Rect rect = new Rect();
        View videoSurfaceView = playerView.getVideoSurfaceView();
        if (videoSurfaceView != null) {
            videoSurfaceView.getGlobalVisibleRect(rect);
        }
        int[] iArr = new int[2];
        View videoSurfaceView2 = playerView.getVideoSurfaceView();
        if (videoSurfaceView2 != null) {
            videoSurfaceView2.getLocationOnScreen(iArr);
        }
        int i = rect.bottom - rect.top;
        rect.top = iArr[1];
        rect.bottom = rect.top + i;
        return rect;
    }

    public static final Rational calculatePiPAspectRatio(VideoSize videoSize, int i, int i2, ContentFit contentFit) {
        Rational rational;
        Intrinsics.checkNotNullParameter(videoSize, "videoSize");
        Intrinsics.checkNotNullParameter(contentFit, "contentFit");
        if (contentFit == ContentFit.CONTAIN) {
            rational = new Rational(videoSize.width, videoSize.height);
        } else {
            rational = new Rational(i, i2);
        }
        Rational rational2 = new Rational(239, 100);
        Rational rational3 = new Rational(100, 239);
        if (rational.floatValue() > rational2.floatValue()) {
            return rational2;
        }
        return rational.floatValue() < rational3.floatValue() ? rational3 : rational;
    }

    public static final void applyRectHint(final Activity activity, final Rect rectHint) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(rectHint, "rectHint");
        if (VideoView.INSTANCE.isPictureInPictureSupported(activity)) {
            runWithPiPMisconfigurationSoftHandling$default(false, new Function0() { // from class: expo.modules.video.utils.PictureInPictureUtilsKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PictureInPictureUtilsKt.applyRectHint$lambda$0(activity, rectHint);
                }
            }, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit applyRectHint$lambda$0(Activity activity, Rect rect) {
        activity.setPictureInPictureParams(new PictureInPictureParams.Builder().setSourceRectHint(rect).build());
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void runWithPiPMisconfigurationSoftHandling$default(boolean z, Function0 function0, int i, Object obj) throws PictureInPictureConfigurationException {
        if ((i & 1) != 0) {
            z = false;
        }
        runWithPiPMisconfigurationSoftHandling(z, function0);
    }

    public static final void runWithPiPMisconfigurationSoftHandling(boolean z, Function0<? extends Object> block) throws PictureInPictureConfigurationException {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            block.invoke();
        } catch (IllegalStateException unused) {
            Log.e("ExpoVideo", "Current activity does not support picture-in-picture. Make sure you have configured the `expo-video` config plugin correctly.");
            if (z) {
                throw new PictureInPictureConfigurationException();
            }
        }
    }

    public static /* synthetic */ void applyPiPParams$default(Activity activity, boolean z, Rational rational, int i, Object obj) {
        if ((i & 4) != 0) {
            rational = null;
        }
        applyPiPParams(activity, z, rational);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0020  */
    public static final void applyPiPParams(final Activity activity, boolean z, Rational rational) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (rational != null) {
            double dFloatValue = rational.floatValue();
            if (0.41841d > dFloatValue || dFloatValue > 2.39d) {
                rational = null;
            }
        } else {
            rational = null;
        }
        if (VideoView.INSTANCE.isPictureInPictureSupported(activity)) {
            final PictureInPictureParams.Builder builder = new PictureInPictureParams.Builder();
            if (rational != null) {
                builder.setAspectRatio(rational);
            }
            if (Build.VERSION.SDK_INT >= 31) {
                builder.setAutoEnterEnabled(z);
            }
            runWithPiPMisconfigurationSoftHandling$default(false, new Function0() { // from class: expo.modules.video.utils.PictureInPictureUtilsKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PictureInPictureUtilsKt.applyPiPParams$lambda$3(activity, builder);
                }
            }, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit applyPiPParams$lambda$3(Activity activity, PictureInPictureParams.Builder builder) {
        activity.setPictureInPictureParams(builder.build());
        return Unit.INSTANCE;
    }
}
