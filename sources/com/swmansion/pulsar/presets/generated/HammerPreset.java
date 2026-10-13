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

/* JADX INFO: compiled from: HammerPreset.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00072\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/HammerPreset;", "Lcom/swmansion/pulsar/types/Preset;", "Lcom/swmansion/pulsar/presets/Player;", "haptics", "Lcom/swmansion/pulsar/Pulsar;", "<init>", "(Lcom/swmansion/pulsar/Pulsar;)V", "Companion", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class HammerPreset extends Player implements Preset {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String name = "Hammer";

    /* JADX WARN: Illegal instructions before constructor call */
    public HammerPreset(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(0.75f);
        Float[] fArr = {Float.valueOf(8.0f), fValueOf2};
        Float fValueOf3 = Float.valueOf(0.05f);
        Float[] fArr2 = {Float.valueOf(90.0f), fValueOf3};
        Float[] fArr3 = {Float.valueOf(180.0f), fValueOf};
        Float fValueOf4 = Float.valueOf(220.0f);
        Float fValueOf5 = Float.valueOf(0.8f);
        Float[] fArr4 = {Float.valueOf(310.0f), fValueOf3};
        Float[] fArr5 = {Float.valueOf(380.0f), fValueOf};
        Float fValueOf6 = Float.valueOf(420.0f);
        Float fValueOf7 = Float.valueOf(0.88f);
        Float[] fArr6 = {Float.valueOf(508.0f), fValueOf3};
        Float[] fArr7 = {Float.valueOf(550.0f), fValueOf};
        Float fValueOf8 = Float.valueOf(590.0f);
        Float fValueOf9 = Float.valueOf(0.92f);
        Float[] fArr8 = {Float.valueOf(678.0f), fValueOf3};
        Float[] fArr9 = {Float.valueOf(710.0f), fValueOf};
        Float fValueOf10 = Float.valueOf(740.0f);
        Float fValueOf11 = Float.valueOf(1.0f);
        Float[] fArr10 = {Float.valueOf(816.0f), fValueOf3};
        Float[] fArr11 = {Float.valueOf(840.0f), fValueOf};
        Float fValueOf12 = Float.valueOf(870.0f);
        Float[] fArr12 = {Float.valueOf(950.0f), fValueOf3};
        Float fValueOf13 = Float.valueOf(1050.0f);
        List[] listArr = {CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf}), CollectionsKt.listOf((Object[]) fArr), CollectionsKt.listOf((Object[]) fArr2), CollectionsKt.listOf((Object[]) fArr3), CollectionsKt.listOf((Object[]) new Float[]{fValueOf4, fValueOf5}), CollectionsKt.listOf((Object[]) fArr4), CollectionsKt.listOf((Object[]) fArr5), CollectionsKt.listOf((Object[]) new Float[]{fValueOf6, fValueOf7}), CollectionsKt.listOf((Object[]) fArr6), CollectionsKt.listOf((Object[]) fArr7), CollectionsKt.listOf((Object[]) new Float[]{fValueOf8, fValueOf9}), CollectionsKt.listOf((Object[]) fArr8), CollectionsKt.listOf((Object[]) fArr9), CollectionsKt.listOf((Object[]) new Float[]{fValueOf10, fValueOf11}), CollectionsKt.listOf((Object[]) fArr10), CollectionsKt.listOf((Object[]) fArr11), CollectionsKt.listOf((Object[]) new Float[]{fValueOf12, fValueOf11}), CollectionsKt.listOf((Object[]) fArr12), CollectionsKt.listOf((Object[]) new Float[]{fValueOf13, fValueOf})};
        Float fValueOf14 = Float.valueOf(0.28f);
        List listListOf = CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) listArr), CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf14}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf13, fValueOf14})})});
        Float fValueOf15 = Float.valueOf(0.3f);
        super(haptics, new PatternData((List<? extends List<? extends List<Float>>>) listListOf, (List<? extends List<Float>>) CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf2, fValueOf15}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf4, fValueOf5, Float.valueOf(0.32f)}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf6, fValueOf7, fValueOf15}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf8, fValueOf9, Float.valueOf(0.32f)}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf10, fValueOf11, fValueOf15}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf12, fValueOf11, fValueOf15})})), false, 4, null);
    }

    /* JADX INFO: compiled from: HammerPreset.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/HammerPreset$Companion;", "Lcom/swmansion/pulsar/types/PresetWithName;", "<init>", "()V", "name", "", "getName", "()Ljava/lang/String;", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion implements PresetWithName {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Override // com.swmansion.pulsar.types.PresetWithName
        public String getName() {
            return HammerPreset.name;
        }
    }
}
