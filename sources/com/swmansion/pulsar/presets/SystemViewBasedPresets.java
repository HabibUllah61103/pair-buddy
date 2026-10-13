package com.swmansion.pulsar.presets;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.Window;
import com.swmansion.pulsar.ActivityProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SystemViewBasedPresets.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u001a\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u0007J\u0006\u0010\u000e\u001a\u00020\u0007J\u0006\u0010\u000f\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\u0007J\u0006\u0010\u0013\u001a\u00020\u0007J\u0006\u0010\u0014\u001a\u00020\u0007J\u0006\u0010\u0015\u001a\u00020\u0007J\u0006\u0010\u0016\u001a\u00020\u0007J\u0006\u0010\u0017\u001a\u00020\u0007J\u0006\u0010\u0018\u001a\u00020\u0007J\u0006\u0010\u0019\u001a\u00020\u0007J\u0006\u0010\u001a\u001a\u00020\u0007J\u0006\u0010\u001b\u001a\u00020\u0007J\u0006\u0010\u001c\u001a\u00020\u0007J\u0006\u0010\u001d\u001a\u00020\u0007J\u0006\u0010\u001e\u001a\u00020\u0007J\u0006\u0010\u001f\u001a\u00020\u0007J\u0010\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\"H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;", "", "activityProvider", "Lcom/swmansion/pulsar/ActivityProvider;", "<init>", "(Lcom/swmansion/pulsar/ActivityProvider;)V", "longPress", "", "virtualKey", "keyboardTap", "clockTick", "calendarDate", "contextClick", "keyboardPress", "keyboardRelease", "virtualKeyRelease", "textHandleMove", "dragCrossing", "gestureStart", "gestureEnd", "edgeSqueeze", "edgeRelease", "confirm", "release", "scrollTick", "scrollItemFocus", "scrollLimit", "toggleOn", "toggleOff", "dragStart", "segmentTick", "segmentFrequentTick", "playHaptic", "preset", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SystemViewBasedPresets {
    private final ActivityProvider activityProvider;

    public SystemViewBasedPresets(ActivityProvider activityProvider) {
        Intrinsics.checkNotNullParameter(activityProvider, "activityProvider");
        this.activityProvider = activityProvider;
    }

    public final boolean longPress() {
        return playHaptic(0);
    }

    public final boolean virtualKey() {
        return playHaptic(1);
    }

    public final boolean keyboardTap() {
        return playHaptic(3);
    }

    public final boolean clockTick() {
        return playHaptic(4);
    }

    public final boolean calendarDate() {
        return playHaptic(5);
    }

    public final boolean contextClick() {
        return playHaptic(6);
    }

    public final boolean keyboardPress() {
        if (Build.VERSION.SDK_INT >= 27) {
            return playHaptic(3);
        }
        return false;
    }

    public final boolean keyboardRelease() {
        if (Build.VERSION.SDK_INT >= 27) {
            return playHaptic(7);
        }
        return false;
    }

    public final boolean virtualKeyRelease() {
        if (Build.VERSION.SDK_INT >= 27) {
            return playHaptic(8);
        }
        return false;
    }

    public final boolean textHandleMove() {
        if (Build.VERSION.SDK_INT >= 27) {
            return playHaptic(9);
        }
        return false;
    }

    public final boolean dragCrossing() {
        return playHaptic(11);
    }

    public final boolean gestureStart() {
        if (Build.VERSION.SDK_INT >= 30) {
            return playHaptic(12);
        }
        return false;
    }

    public final boolean gestureEnd() {
        if (Build.VERSION.SDK_INT >= 30) {
            return playHaptic(13);
        }
        return false;
    }

    public final boolean edgeSqueeze() {
        return playHaptic(14);
    }

    public final boolean edgeRelease() {
        return playHaptic(15);
    }

    public final boolean confirm() {
        if (Build.VERSION.SDK_INT >= 30) {
            return playHaptic(16);
        }
        return false;
    }

    public final boolean release() {
        if (Build.VERSION.SDK_INT >= 30) {
            return playHaptic(17);
        }
        return false;
    }

    public final boolean scrollTick() {
        return playHaptic(18);
    }

    public final boolean scrollItemFocus() {
        return playHaptic(19);
    }

    public final boolean scrollLimit() {
        return playHaptic(20);
    }

    public final boolean toggleOn() {
        if (Build.VERSION.SDK_INT >= 34) {
            return playHaptic(21);
        }
        return false;
    }

    public final boolean toggleOff() {
        if (Build.VERSION.SDK_INT >= 34) {
            return playHaptic(22);
        }
        return false;
    }

    public final boolean dragStart() {
        if (Build.VERSION.SDK_INT >= 34) {
            return playHaptic(25);
        }
        return false;
    }

    public final boolean segmentTick() {
        if (Build.VERSION.SDK_INT >= 34) {
            return playHaptic(26);
        }
        return false;
    }

    public final boolean segmentFrequentTick() {
        if (Build.VERSION.SDK_INT >= 34) {
            return playHaptic(27);
        }
        return false;
    }

    private final boolean playHaptic(int preset) {
        Window window;
        View decorView;
        Activity activity = this.activityProvider.getActivity();
        return (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null || !decorView.performHapticFeedback(preset)) ? false : true;
    }
}
