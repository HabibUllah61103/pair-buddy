package expo.modules.video.utils;

import android.content.Context;
import android.content.res.Configuration;
import android.provider.Settings;
import android.view.OrientationEventListener;
import expo.modules.video.enums.FullscreenOrientation;
import expo.modules.video.records.FullscreenOptions;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FullscreenActivityOrientationHelper.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u001a\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u001f\u001a\u00020\b2\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020\bJ\u0006\u0010#\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001b\u0010\u001c¨\u0006$"}, d2 = {"Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;", "", "context", "Landroid/content/Context;", "options", "Lexpo/modules/video/records/FullscreenOptions;", "onShouldAutoExit", "Lkotlin/Function0;", "", "onShouldReleaseOrientation", "<init>", "(Landroid/content/Context;Lexpo/modules/video/records/FullscreenOptions;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "getContext", "()Landroid/content/Context;", "getOptions", "()Lexpo/modules/video/records/FullscreenOptions;", "getOnShouldAutoExit", "()Lkotlin/jvm/functions/Function0;", "getOnShouldReleaseOrientation", "userHasRotatedToVideoOrientation", "", "isLockedToLandscape", "isLockedToPortrait", "isAutoRotationEnabled", "()Z", "orientationEventListener", "expo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1", "getOrientationEventListener", "()Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;", "orientationEventListener$delegate", "Lkotlin/Lazy;", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "startOrientationEventListener", "stopOrientationEventListener", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FullscreenActivityOrientationHelper {
    private final Context context;
    private final boolean isLockedToLandscape;
    private final boolean isLockedToPortrait;
    private final Function0<Unit> onShouldAutoExit;
    private final Function0<Unit> onShouldReleaseOrientation;
    private final FullscreenOptions options;

    /* JADX INFO: renamed from: orientationEventListener$delegate, reason: from kotlin metadata */
    private final Lazy orientationEventListener;
    private boolean userHasRotatedToVideoOrientation;

    public FullscreenActivityOrientationHelper(Context context, FullscreenOptions options, Function0<Unit> onShouldAutoExit, Function0<Unit> onShouldReleaseOrientation) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(onShouldAutoExit, "onShouldAutoExit");
        Intrinsics.checkNotNullParameter(onShouldReleaseOrientation, "onShouldReleaseOrientation");
        this.context = context;
        this.options = options;
        this.onShouldAutoExit = onShouldAutoExit;
        this.onShouldReleaseOrientation = onShouldReleaseOrientation;
        this.isLockedToLandscape = options.getOrientation() == FullscreenOrientation.LANDSCAPE || options.getOrientation() == FullscreenOrientation.LANDSCAPE_LEFT || options.getOrientation() == FullscreenOrientation.LANDSCAPE_RIGHT;
        this.isLockedToPortrait = options.getOrientation() == FullscreenOrientation.PORTRAIT || options.getOrientation() == FullscreenOrientation.PORTRAIT_UP || options.getOrientation() == FullscreenOrientation.PORTRAIT_DOWN;
        this.orientationEventListener = LazyKt.lazy(new Function0() { // from class: expo.modules.video.utils.FullscreenActivityOrientationHelper$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FullscreenActivityOrientationHelper.orientationEventListener_delegate$lambda$0(this.f$0);
            }
        });
    }

    public final Context getContext() {
        return this.context;
    }

    public final Function0<Unit> getOnShouldAutoExit() {
        return this.onShouldAutoExit;
    }

    public final Function0<Unit> getOnShouldReleaseOrientation() {
        return this.onShouldReleaseOrientation;
    }

    public final FullscreenOptions getOptions() {
        return this.options;
    }

    public final boolean isAutoRotationEnabled() {
        try {
            return Settings.System.getInt(this.context.getContentResolver(), "accelerometer_rotation", 0) == 1;
        } catch (Exception unused) {
        }
    }

    private final FullscreenActivityOrientationHelper$orientationEventListener$2$1 getOrientationEventListener() {
        return (FullscreenActivityOrientationHelper$orientationEventListener$2$1) this.orientationEventListener.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [expo.modules.video.utils.FullscreenActivityOrientationHelper$orientationEventListener$2$1] */
    public static final FullscreenActivityOrientationHelper$orientationEventListener$2$1 orientationEventListener_delegate$lambda$0(final FullscreenActivityOrientationHelper fullscreenActivityOrientationHelper) {
        final Context context = fullscreenActivityOrientationHelper.context;
        return new OrientationEventListener(context) { // from class: expo.modules.video.utils.FullscreenActivityOrientationHelper$orientationEventListener$2$1
            /* JADX WARN: Code duplicated, block: B:10:0x0011  */
            /* JADX WARN: Code duplicated, block: B:15:0x001b  */
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int orientation) {
                char c;
                boolean z = false;
                if ((orientation >= 0 && orientation <= 10) || (orientation >= 350 && orientation < 360)) {
                    c = 1;
                } else if (orientation >= 80 && orientation <= 100) {
                    c = 2;
                } else if (orientation >= 170 && orientation <= 190) {
                    c = 1;
                } else if (orientation < 260 || orientation > 280) {
                    c = 0;
                } else {
                    c = 2;
                }
                if (this.this$0.getOptions().getAutoExitOnRotate()) {
                    boolean z2 = c == 1 && this.this$0.isLockedToLandscape && this.this$0.userHasRotatedToVideoOrientation;
                    if ((c == 2 && this.this$0.isLockedToPortrait && this.this$0.userHasRotatedToVideoOrientation) || z2) {
                        if (!this.this$0.isAutoRotationEnabled()) {
                            return;
                        }
                        this.this$0.getOnShouldReleaseOrientation().invoke();
                        this.this$0.stopOrientationEventListener();
                    }
                    boolean z3 = c == 1 && this.this$0.isLockedToPortrait && !this.this$0.userHasRotatedToVideoOrientation;
                    if (c == 2 && this.this$0.isLockedToLandscape && !this.this$0.userHasRotatedToVideoOrientation) {
                        z = true;
                    }
                    if (z3 || z) {
                        this.this$0.userHasRotatedToVideoOrientation = true;
                    }
                }
            }
        };
    }

    public final void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        int i = newConfig.orientation;
        if (this.options.getAutoExitOnRotate()) {
            if (this.isLockedToPortrait && i == 2) {
                this.onShouldAutoExit.invoke();
            } else if (this.isLockedToLandscape && i == 1) {
                this.onShouldAutoExit.invoke();
            }
        }
    }

    public final void startOrientationEventListener() {
        if (getOrientationEventListener().canDetectOrientation()) {
            getOrientationEventListener().enable();
        }
    }

    public final void stopOrientationEventListener() {
        getOrientationEventListener().disable();
    }
}
