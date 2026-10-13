package expo.modules.ui.convertibles;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.Easing;
import androidx.compose.animation.core.EasingKt;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: AnimationSpecParams.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0006HÆ\u0003J)\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\fR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\n\u001a\u0004\b\u0010\u0010\u0011¨\u0006 "}, d2 = {"Lexpo/modules/ui/convertibles/TweenSpecParams;", "Lexpo/modules/kotlin/records/Record;", "durationMillis", "", "delayMillis", "easing", "Lexpo/modules/ui/convertibles/EasingType;", "<init>", "(IILexpo/modules/ui/convertibles/EasingType;)V", "getDurationMillis$annotations", "()V", "getDurationMillis", "()I", "getDelayMillis$annotations", "getDelayMillis", "getEasing$annotations", "getEasing", "()Lexpo/modules/ui/convertibles/EasingType;", "toAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TweenSpecParams implements Record {
    public static final int $stable = 0;
    private final int delayMillis;
    private final int durationMillis;
    private final EasingType easing;

    public TweenSpecParams() {
        this(0, 0, null, 7, null);
    }

    public static /* synthetic */ TweenSpecParams copy$default(TweenSpecParams tweenSpecParams, int i, int i2, EasingType easingType, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = tweenSpecParams.durationMillis;
        }
        if ((i3 & 2) != 0) {
            i2 = tweenSpecParams.delayMillis;
        }
        if ((i3 & 4) != 0) {
            easingType = tweenSpecParams.easing;
        }
        return tweenSpecParams.copy(i, i2, easingType);
    }

    @Field
    public static /* synthetic */ void getDelayMillis$annotations() {
    }

    @Field
    public static /* synthetic */ void getDurationMillis$annotations() {
    }

    @Field
    public static /* synthetic */ void getEasing$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getDurationMillis() {
        return this.durationMillis;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getDelayMillis() {
        return this.delayMillis;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final EasingType getEasing() {
        return this.easing;
    }

    public final TweenSpecParams copy(int durationMillis, int delayMillis, EasingType easing) {
        return new TweenSpecParams(durationMillis, delayMillis, easing);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TweenSpecParams)) {
            return false;
        }
        TweenSpecParams tweenSpecParams = (TweenSpecParams) other;
        return this.durationMillis == tweenSpecParams.durationMillis && this.delayMillis == tweenSpecParams.delayMillis && this.easing == tweenSpecParams.easing;
    }

    public int hashCode() {
        int iHashCode = ((Integer.hashCode(this.durationMillis) * 31) + Integer.hashCode(this.delayMillis)) * 31;
        EasingType easingType = this.easing;
        return iHashCode + (easingType == null ? 0 : easingType.hashCode());
    }

    public String toString() {
        return "TweenSpecParams(durationMillis=" + this.durationMillis + ", delayMillis=" + this.delayMillis + ", easing=" + this.easing + ")";
    }

    public TweenSpecParams(int i, int i2, EasingType easingType) {
        this.durationMillis = i;
        this.delayMillis = i2;
        this.easing = easingType;
    }

    public /* synthetic */ TweenSpecParams(int i, int i2, EasingType easingType, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 300 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? null : easingType);
    }

    public final int getDurationMillis() {
        return this.durationMillis;
    }

    public final int getDelayMillis() {
        return this.delayMillis;
    }

    public final EasingType getEasing() {
        return this.easing;
    }

    public final AnimationSpec<Float> toAnimationSpec() {
        Easing fastOutSlowInEasing;
        int i = this.durationMillis;
        int i2 = this.delayMillis;
        EasingType easingType = this.easing;
        if (easingType == null || (fastOutSlowInEasing = easingType.toEasing()) == null) {
            fastOutSlowInEasing = EasingKt.getFastOutSlowInEasing();
        }
        return AnimationSpecKt.tween(i, i2, fastOutSlowInEasing);
    }
}
