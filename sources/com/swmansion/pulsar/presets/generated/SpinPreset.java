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

/* JADX INFO: compiled from: SpinPreset.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00072\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/SpinPreset;", "Lcom/swmansion/pulsar/types/Preset;", "Lcom/swmansion/pulsar/presets/Player;", "haptics", "Lcom/swmansion/pulsar/Pulsar;", "<init>", "(Lcom/swmansion/pulsar/Pulsar;)V", "Companion", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SpinPreset extends Player implements Preset {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String name = "Spin";

    /* JADX WARN: Illegal instructions before constructor call */
    public SpinPreset(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(0.38f);
        Float[] fArr = {Float.valueOf(8.0f), fValueOf2};
        Float[] fArr2 = {Float.valueOf(60.0f), fValueOf};
        Float fValueOf3 = Float.valueOf(250.0f);
        Float[] fArr3 = {fValueOf3, fValueOf2};
        Float[] fArr4 = {Float.valueOf(308.0f), fValueOf};
        Float fValueOf4 = Float.valueOf(500.0f);
        Float[] fArr5 = {fValueOf4, fValueOf2};
        Float[] fArr6 = {Float.valueOf(558.0f), fValueOf};
        Float fValueOf5 = Float.valueOf(750.0f);
        Float[] fArr7 = {fValueOf5, fValueOf2};
        Float[] fArr8 = {Float.valueOf(808.0f), fValueOf};
        Float fValueOf6 = Float.valueOf(1000.0f);
        Float[] fArr9 = {fValueOf6, fValueOf2};
        Float[] fArr10 = {Float.valueOf(1058.0f), fValueOf};
        Float fValueOf7 = Float.valueOf(1250.0f);
        Float[] fArr11 = {fValueOf7, fValueOf2};
        Float[] fArr12 = {Float.valueOf(1308.0f), fValueOf};
        Float fValueOf8 = Float.valueOf(1500.0f);
        Float[] fArr13 = {fValueOf8, fValueOf2};
        Float[] fArr14 = {Float.valueOf(1558.0f), fValueOf};
        Float fValueOf9 = Float.valueOf(1750.0f);
        Float[] fArr15 = {fValueOf9, fValueOf2};
        Float fValueOf10 = Float.valueOf(1808.0f);
        List[] listArr = {CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf}), CollectionsKt.listOf((Object[]) fArr), CollectionsKt.listOf((Object[]) fArr2), CollectionsKt.listOf((Object[]) fArr3), CollectionsKt.listOf((Object[]) fArr4), CollectionsKt.listOf((Object[]) fArr5), CollectionsKt.listOf((Object[]) fArr6), CollectionsKt.listOf((Object[]) fArr7), CollectionsKt.listOf((Object[]) fArr8), CollectionsKt.listOf((Object[]) fArr9), CollectionsKt.listOf((Object[]) fArr10), CollectionsKt.listOf((Object[]) fArr11), CollectionsKt.listOf((Object[]) fArr12), CollectionsKt.listOf((Object[]) fArr13), CollectionsKt.listOf((Object[]) fArr14), CollectionsKt.listOf((Object[]) fArr15), CollectionsKt.listOf((Object[]) new Float[]{fValueOf10, fValueOf})};
        Float fValueOf11 = Float.valueOf(0.55f);
        List listListOf = CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) listArr), CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf11}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf10, fValueOf11})})});
        Float fValueOf12 = Float.valueOf(0.4f);
        super(haptics, new PatternData((List<? extends List<? extends List<Float>>>) listListOf, (List<? extends List<Float>>) CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf12, fValueOf11}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf3, fValueOf12, fValueOf11}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf4, fValueOf12, fValueOf11}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf5, fValueOf12, fValueOf11}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf6, fValueOf12, fValueOf11}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf7, fValueOf12, fValueOf11}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf8, fValueOf12, fValueOf11}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf9, fValueOf12, fValueOf11})})), false, 4, null);
    }

    /* JADX INFO: compiled from: SpinPreset.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/SpinPreset$Companion;", "Lcom/swmansion/pulsar/types/PresetWithName;", "<init>", "()V", "name", "", "getName", "()Ljava/lang/String;", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion implements PresetWithName {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Override // com.swmansion.pulsar.types.PresetWithName
        public String getName() {
            return SpinPreset.name;
        }
    }
}
