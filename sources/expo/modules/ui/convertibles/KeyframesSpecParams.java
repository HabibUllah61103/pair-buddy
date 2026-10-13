package expo.modules.ui.convertibles;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.KeyframesSpec;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnimationSpecParams.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u000e\u0010\u0010\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0011J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\b\u001a\u0004\b\f\u0010\n¨\u0006\u001c"}, d2 = {"Lexpo/modules/ui/convertibles/KeyframesSpecParams;", "Lexpo/modules/kotlin/records/Record;", "durationMillis", "", "delayMillis", "<init>", "(II)V", "getDurationMillis$annotations", "()V", "getDurationMillis", "()I", "getDelayMillis$annotations", "getDelayMillis", "toAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "", "raw", "", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class KeyframesSpecParams implements Record {
    public static final int $stable = 0;
    private final int delayMillis;
    private final int durationMillis;

    /* JADX WARN: Illegal instructions before constructor call */
    public KeyframesSpecParams() {
        int i = 0;
        this(i, i, 3, null);
    }

    public static /* synthetic */ KeyframesSpecParams copy$default(KeyframesSpecParams keyframesSpecParams, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = keyframesSpecParams.durationMillis;
        }
        if ((i3 & 2) != 0) {
            i2 = keyframesSpecParams.delayMillis;
        }
        return keyframesSpecParams.copy(i, i2);
    }

    @Field
    public static /* synthetic */ void getDelayMillis$annotations() {
    }

    @Field
    public static /* synthetic */ void getDurationMillis$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getDurationMillis() {
        return this.durationMillis;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getDelayMillis() {
        return this.delayMillis;
    }

    public final KeyframesSpecParams copy(int durationMillis, int delayMillis) {
        return new KeyframesSpecParams(durationMillis, delayMillis);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof KeyframesSpecParams)) {
            return false;
        }
        KeyframesSpecParams keyframesSpecParams = (KeyframesSpecParams) other;
        return this.durationMillis == keyframesSpecParams.durationMillis && this.delayMillis == keyframesSpecParams.delayMillis;
    }

    public int hashCode() {
        return (Integer.hashCode(this.durationMillis) * 31) + Integer.hashCode(this.delayMillis);
    }

    public String toString() {
        return "KeyframesSpecParams(durationMillis=" + this.durationMillis + ", delayMillis=" + this.delayMillis + ")";
    }

    public KeyframesSpecParams(int i, int i2) {
        this.durationMillis = i;
        this.delayMillis = i2;
    }

    public /* synthetic */ KeyframesSpecParams(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 300 : i, (i3 & 2) != 0 ? 0 : i2);
    }

    public final int getDurationMillis() {
        return this.durationMillis;
    }

    public final int getDelayMillis() {
        return this.delayMillis;
    }

    public final AnimationSpec<Float> toAnimationSpec(Map<?, ?> raw) {
        Intrinsics.checkNotNullParameter(raw, "raw");
        Object obj = raw.get("keyframes");
        final Map mapEmptyMap = obj instanceof Map ? (Map) obj : null;
        if (mapEmptyMap == null) {
            mapEmptyMap = MapsKt.emptyMap();
        }
        return AnimationSpecKt.keyframes(new Function1() { // from class: expo.modules.ui.convertibles.KeyframesSpecParams$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return KeyframesSpecParams.toAnimationSpec$lambda$0(this.f$0, mapEmptyMap, (KeyframesSpec.KeyframesSpecConfig) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit toAnimationSpec$lambda$0(KeyframesSpecParams keyframesSpecParams, Map map, KeyframesSpec.KeyframesSpecConfig keyframes) {
        Intrinsics.checkNotNullParameter(keyframes, "$this$keyframes");
        keyframes.setDurationMillis(keyframesSpecParams.durationMillis);
        keyframes.setDelayMillis(keyframesSpecParams.delayMillis);
        for (Map.Entry entry : map.entrySet()) {
            keyframes.at(Float.valueOf(((Number) entry.getValue()).floatValue()), Integer.parseInt((String) entry.getKey()));
        }
        return Unit.INSTANCE;
    }
}
