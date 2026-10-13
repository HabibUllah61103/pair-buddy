package expo.modules.video.records;

import android.graphics.Rect;
import android.util.Rational;
import com.facebook.react.uimanager.ViewProps;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PiPParams.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\u0016\u001a\u00020\u00032\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010\u001f\u001a\u00020\nHÆ\u0003JG\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006#"}, d2 = {"Lexpo/modules/video/records/PiPParams;", "", "autoEnter", "", "canEnter", "willEnter", "blocksAppFromEntering", ViewProps.ASPECT_RATIO, "Landroid/util/Rational;", "rectHint", "Landroid/graphics/Rect;", "<init>", "(ZZZZLandroid/util/Rational;Landroid/graphics/Rect;)V", "getAutoEnter", "()Z", "getCanEnter", "getWillEnter", "getBlocksAppFromEntering", "getAspectRatio", "()Landroid/util/Rational;", "getRectHint", "()Landroid/graphics/Rect;", "equals", "other", "hashCode", "", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "toString", "", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class PiPParams {
    private final Rational aspectRatio;
    private final boolean autoEnter;
    private final boolean blocksAppFromEntering;
    private final boolean canEnter;
    private final Rect rectHint;
    private final boolean willEnter;

    public PiPParams() {
        this(false, false, false, false, null, null, 63, null);
    }

    public static /* synthetic */ PiPParams copy$default(PiPParams piPParams, boolean z, boolean z2, boolean z3, boolean z4, Rational rational, Rect rect, int i, Object obj) {
        if ((i & 1) != 0) {
            z = piPParams.autoEnter;
        }
        if ((i & 2) != 0) {
            z2 = piPParams.canEnter;
        }
        if ((i & 4) != 0) {
            z3 = piPParams.willEnter;
        }
        if ((i & 8) != 0) {
            z4 = piPParams.blocksAppFromEntering;
        }
        if ((i & 16) != 0) {
            rational = piPParams.aspectRatio;
        }
        if ((i & 32) != 0) {
            rect = piPParams.rectHint;
        }
        Rational rational2 = rational;
        Rect rect2 = rect;
        return piPParams.copy(z, z2, z3, z4, rational2, rect2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getAutoEnter() {
        return this.autoEnter;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getCanEnter() {
        return this.canEnter;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getWillEnter() {
        return this.willEnter;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getBlocksAppFromEntering() {
        return this.blocksAppFromEntering;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Rational getAspectRatio() {
        return this.aspectRatio;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Rect getRectHint() {
        return this.rectHint;
    }

    public final PiPParams copy(boolean autoEnter, boolean canEnter, boolean willEnter, boolean blocksAppFromEntering, Rational aspectRatio, Rect rectHint) {
        Intrinsics.checkNotNullParameter(rectHint, "rectHint");
        return new PiPParams(autoEnter, canEnter, willEnter, blocksAppFromEntering, aspectRatio, rectHint);
    }

    public String toString() {
        return "PiPParams(autoEnter=" + this.autoEnter + ", canEnter=" + this.canEnter + ", willEnter=" + this.willEnter + ", blocksAppFromEntering=" + this.blocksAppFromEntering + ", aspectRatio=" + this.aspectRatio + ", rectHint=" + this.rectHint + ")";
    }

    public PiPParams(boolean z, boolean z2, boolean z3, boolean z4, Rational rational, Rect rectHint) {
        Intrinsics.checkNotNullParameter(rectHint, "rectHint");
        this.autoEnter = z;
        this.canEnter = z2;
        this.willEnter = z3;
        this.blocksAppFromEntering = z4;
        this.aspectRatio = rational;
        this.rectHint = rectHint;
    }

    public final boolean getAutoEnter() {
        return this.autoEnter;
    }

    public final boolean getCanEnter() {
        return this.canEnter;
    }

    public final boolean getWillEnter() {
        return this.willEnter;
    }

    public final boolean getBlocksAppFromEntering() {
        return this.blocksAppFromEntering;
    }

    public /* synthetic */ PiPParams(boolean z, boolean z2, boolean z3, boolean z4, Rational rational, Rect rect, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3, (i & 8) != 0 ? false : z4, (i & 16) != 0 ? new Rational(16, 9) : rational, (i & 32) != 0 ? new Rect(0, 0, 0, 0) : rect);
    }

    public final Rational getAspectRatio() {
        return this.aspectRatio;
    }

    public final Rect getRectHint() {
        return this.rectHint;
    }

    public boolean equals(Object other) {
        if (other == null || !(other instanceof PiPParams)) {
            return false;
        }
        PiPParams piPParams = (PiPParams) other;
        return this.canEnter == piPParams.canEnter && this.willEnter == piPParams.willEnter && this.autoEnter == piPParams.autoEnter && this.blocksAppFromEntering == piPParams.blocksAppFromEntering && Intrinsics.areEqual(this.aspectRatio, piPParams.aspectRatio) && Intrinsics.areEqual(this.rectHint, piPParams.rectHint);
    }

    public int hashCode() {
        int iHashCode = ((((Boolean.hashCode(this.autoEnter) * 31) + Boolean.hashCode(this.canEnter)) * 31) + Boolean.hashCode(this.blocksAppFromEntering)) * 31;
        Rational rational = this.aspectRatio;
        return iHashCode + (rational != null ? rational.hashCode() : 0);
    }
}
