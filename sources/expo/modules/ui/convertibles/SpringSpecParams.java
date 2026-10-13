package expo.modules.ui.convertibles;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnimationSpecParams.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u0013J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J.\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000bR \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0011\u0012\u0004\b\u000e\u0010\t\u001a\u0004\b\u000f\u0010\u0010¨\u0006!"}, d2 = {"Lexpo/modules/ui/convertibles/SpringSpecParams;", "Lexpo/modules/kotlin/records/Record;", "dampingRatio", "", "stiffness", "visibilityThreshold", "<init>", "(FFLjava/lang/Float;)V", "getDampingRatio$annotations", "()V", "getDampingRatio", "()F", "getStiffness$annotations", "getStiffness", "getVisibilityThreshold$annotations", "getVisibilityThreshold", "()Ljava/lang/Float;", "Ljava/lang/Float;", "toAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "component1", "component2", "component3", "copy", "(FFLjava/lang/Float;)Lexpo/modules/ui/convertibles/SpringSpecParams;", "equals", "", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SpringSpecParams implements Record {
    public static final int $stable = 0;
    private final float dampingRatio;
    private final float stiffness;
    private final Float visibilityThreshold;

    public SpringSpecParams() {
        this(0.0f, 0.0f, null, 7, null);
    }

    public static /* synthetic */ SpringSpecParams copy$default(SpringSpecParams springSpecParams, float f, float f2, Float f3, int i, Object obj) {
        if ((i & 1) != 0) {
            f = springSpecParams.dampingRatio;
        }
        if ((i & 2) != 0) {
            f2 = springSpecParams.stiffness;
        }
        if ((i & 4) != 0) {
            f3 = springSpecParams.visibilityThreshold;
        }
        return springSpecParams.copy(f, f2, f3);
    }

    @Field
    public static /* synthetic */ void getDampingRatio$annotations() {
    }

    @Field
    public static /* synthetic */ void getStiffness$annotations() {
    }

    @Field
    public static /* synthetic */ void getVisibilityThreshold$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final float getDampingRatio() {
        return this.dampingRatio;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final float getStiffness() {
        return this.stiffness;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Float getVisibilityThreshold() {
        return this.visibilityThreshold;
    }

    public final SpringSpecParams copy(float dampingRatio, float stiffness, Float visibilityThreshold) {
        return new SpringSpecParams(dampingRatio, stiffness, visibilityThreshold);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SpringSpecParams)) {
            return false;
        }
        SpringSpecParams springSpecParams = (SpringSpecParams) other;
        return Float.compare(this.dampingRatio, springSpecParams.dampingRatio) == 0 && Float.compare(this.stiffness, springSpecParams.stiffness) == 0 && Intrinsics.areEqual((Object) this.visibilityThreshold, (Object) springSpecParams.visibilityThreshold);
    }

    public int hashCode() {
        int iHashCode = ((Float.hashCode(this.dampingRatio) * 31) + Float.hashCode(this.stiffness)) * 31;
        Float f = this.visibilityThreshold;
        return iHashCode + (f == null ? 0 : f.hashCode());
    }

    public String toString() {
        return "SpringSpecParams(dampingRatio=" + this.dampingRatio + ", stiffness=" + this.stiffness + ", visibilityThreshold=" + this.visibilityThreshold + ")";
    }

    public SpringSpecParams(float f, float f2, Float f3) {
        this.dampingRatio = f;
        this.stiffness = f2;
        this.visibilityThreshold = f3;
    }

    public /* synthetic */ SpringSpecParams(float f, float f2, Float f3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 1.0f : f, (i & 2) != 0 ? 1500.0f : f2, (i & 4) != 0 ? null : f3);
    }

    public final float getDampingRatio() {
        return this.dampingRatio;
    }

    public final float getStiffness() {
        return this.stiffness;
    }

    public final Float getVisibilityThreshold() {
        return this.visibilityThreshold;
    }

    public final AnimationSpec<Float> toAnimationSpec() {
        return AnimationSpecKt.spring(this.dampingRatio, this.stiffness, this.visibilityThreshold);
    }
}
