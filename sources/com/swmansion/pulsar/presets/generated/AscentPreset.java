package com.swmansion.pulsar.presets.generated;

import com.swmansion.pulsar.Pulsar;
import com.swmansion.pulsar.presets.Player;
import com.swmansion.pulsar.types.PatternData;
import com.swmansion.pulsar.types.Preset;
import com.swmansion.pulsar.types.PresetWithName;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AscentPreset.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00072\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/AscentPreset;", "Lcom/swmansion/pulsar/types/Preset;", "Lcom/swmansion/pulsar/presets/Player;", "haptics", "Lcom/swmansion/pulsar/Pulsar;", "<init>", "(Lcom/swmansion/pulsar/Pulsar;)V", "Companion", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AscentPreset extends Player implements Preset {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String name = "Ascent";

    /* JADX WARN: Illegal instructions before constructor call */
    public AscentPreset(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(0.55f);
        Float[] fArr = {Float.valueOf(5.0f), fValueOf2};
        Float[] fArr2 = {Float.valueOf(155.0f), fValueOf};
        Float fValueOf3 = Float.valueOf(0.65f);
        Float[] fArr3 = {Float.valueOf(205.0f), fValueOf3};
        Float[] fArr4 = {Float.valueOf(335.0f), fValueOf};
        Float fValueOf4 = Float.valueOf(0.75f);
        Float[] fArr5 = {Float.valueOf(385.0f), fValueOf4};
        Float[] fArr6 = {Float.valueOf(495.0f), fValueOf};
        Float fValueOf5 = Float.valueOf(0.85f);
        Float[] fArr7 = {Float.valueOf(545.0f), fValueOf5};
        Float[] fArr8 = {Float.valueOf(635.0f), fValueOf};
        Float fValueOf6 = Float.valueOf(0.92f);
        Float[] fArr9 = {Float.valueOf(685.0f), fValueOf6};
        Float[] fArr10 = {Float.valueOf(755.0f), fValueOf};
        Float fValueOf7 = Float.valueOf(0.97f);
        Float[] fArr11 = {Float.valueOf(805.0f), fValueOf7};
        Float[] fArr12 = {Float.valueOf(860.0f), fValueOf};
        Float fValueOf8 = Float.valueOf(1.0f);
        Float[] fArr13 = {Float.valueOf(905.0f), fValueOf8};
        Float[] fArr14 = {Float.valueOf(1700.0f), fValueOf3};
        Float[] fArr15 = {Float.valueOf(2100.0f), Float.valueOf(0.25f)};
        Float fValueOf9 = Float.valueOf(2400.0f);
        List[] listArr = {CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf}), CollectionsKt.listOf((Object[]) fArr), CollectionsKt.listOf((Object[]) fArr2), CollectionsKt.listOf((Object[]) fArr3), CollectionsKt.listOf((Object[]) fArr4), CollectionsKt.listOf((Object[]) fArr5), CollectionsKt.listOf((Object[]) fArr6), CollectionsKt.listOf((Object[]) fArr7), CollectionsKt.listOf((Object[]) fArr8), CollectionsKt.listOf((Object[]) fArr9), CollectionsKt.listOf((Object[]) fArr10), CollectionsKt.listOf((Object[]) fArr11), CollectionsKt.listOf((Object[]) fArr12), CollectionsKt.listOf((Object[]) fArr13), CollectionsKt.listOf((Object[]) fArr14), CollectionsKt.listOf((Object[]) fArr15), CollectionsKt.listOf((Object[]) new Float[]{fValueOf9, fValueOf})};
        Float fValueOf10 = Float.valueOf(0.3f);
        Float fValueOf11 = Float.valueOf(200.0f);
        Float fValueOf12 = Float.valueOf(0.37f);
        Float[] fArr16 = {Float.valueOf(380.0f), Float.valueOf(0.42f)};
        Float[] fArr17 = {Float.valueOf(540.0f), fValueOf2};
        Float[] fArr18 = {Float.valueOf(680.0f), fValueOf3};
        Float[] fArr19 = {Float.valueOf(800.0f), Float.valueOf(0.73f)};
        Float fValueOf13 = Float.valueOf(0.87f);
        super(haptics, new PatternData((List<? extends List<? extends List<Float>>>) CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) listArr), CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf10}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf11, fValueOf12}), CollectionsKt.listOf((Object[]) fArr16), CollectionsKt.listOf((Object[]) fArr17), CollectionsKt.listOf((Object[]) fArr18), CollectionsKt.listOf((Object[]) fArr19), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(900.0f), fValueOf13}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf9, fValueOf13})})}), (List<? extends List<Float>>) CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf2, fValueOf10}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf11, fValueOf3, fValueOf12}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(380.0f), fValueOf4, Float.valueOf(0.42f)}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(540.0f), fValueOf5, fValueOf2}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(680.0f), fValueOf6, fValueOf3}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(800.0f), fValueOf7, Float.valueOf(0.73f)}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(900.0f), fValueOf8, fValueOf13})})), false, 4, null);
    }

    /* JADX INFO: compiled from: AscentPreset.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/AscentPreset$Companion;", "Lcom/swmansion/pulsar/types/PresetWithName;", "<init>", "()V", "name", "", "getName", "()Ljava/lang/String;", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion implements PresetWithName {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Override // com.swmansion.pulsar.types.PresetWithName
        public String getName() {
            return AscentPreset.name;
        }
    }
}
