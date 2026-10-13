package expo.modules.ui.convertibles;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: AnimationSpecParams.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\u0016"}, d2 = {"Lexpo/modules/ui/convertibles/SnapSpecParams;", "Lexpo/modules/kotlin/records/Record;", "delayMillis", "", "<init>", "(I)V", "getDelayMillis$annotations", "()V", "getDelayMillis", "()I", "toAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SnapSpecParams implements Record {
    public static final int $stable = 0;
    private final int delayMillis;

    public SnapSpecParams() {
        this(0, 1, null);
    }

    public static /* synthetic */ SnapSpecParams copy$default(SnapSpecParams snapSpecParams, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = snapSpecParams.delayMillis;
        }
        return snapSpecParams.copy(i);
    }

    @Field
    public static /* synthetic */ void getDelayMillis$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getDelayMillis() {
        return this.delayMillis;
    }

    public final SnapSpecParams copy(int delayMillis) {
        return new SnapSpecParams(delayMillis);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SnapSpecParams) && this.delayMillis == ((SnapSpecParams) other).delayMillis;
    }

    public int hashCode() {
        return Integer.hashCode(this.delayMillis);
    }

    public String toString() {
        return "SnapSpecParams(delayMillis=" + this.delayMillis + ")";
    }

    public SnapSpecParams(int i) {
        this.delayMillis = i;
    }

    public /* synthetic */ SnapSpecParams(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    public final int getDelayMillis() {
        return this.delayMillis;
    }

    public final AnimationSpec<Float> toAnimationSpec() {
        return AnimationSpecKt.snap(this.delayMillis);
    }
}
