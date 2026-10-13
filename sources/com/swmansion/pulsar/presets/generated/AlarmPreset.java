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

/* JADX INFO: compiled from: AlarmPreset.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00072\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/AlarmPreset;", "Lcom/swmansion/pulsar/types/Preset;", "Lcom/swmansion/pulsar/presets/Player;", "haptics", "Lcom/swmansion/pulsar/Pulsar;", "<init>", "(Lcom/swmansion/pulsar/Pulsar;)V", "Companion", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AlarmPreset extends Player implements Preset {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String name = "Alarm";

    /* JADX WARN: Illegal instructions before constructor call */
    public AlarmPreset(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(0.9f);
        Float[] fArr = {Float.valueOf(10.0f), fValueOf2};
        Float fValueOf3 = Float.valueOf(130.0f);
        Float fValueOf4 = Float.valueOf(200.0f);
        Float fValueOf5 = Float.valueOf(330.0f);
        Float fValueOf6 = Float.valueOf(400.0f);
        Float fValueOf7 = Float.valueOf(530.0f);
        Float fValueOf8 = Float.valueOf(600.0f);
        Float[] fArr2 = {Float.valueOf(730.0f), fValueOf};
        Float fValueOf9 = Float.valueOf(800.0f);
        Float[] fArr3 = {Float.valueOf(930.0f), fValueOf};
        Float fValueOf10 = Float.valueOf(1000.0f);
        List[] listArr = {CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf}), CollectionsKt.listOf((Object[]) fArr), CollectionsKt.listOf((Object[]) new Float[]{fValueOf3, fValueOf}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf4, fValueOf2}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf5, fValueOf}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf6, fValueOf2}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf7, fValueOf}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf8, fValueOf2}), CollectionsKt.listOf((Object[]) fArr2), CollectionsKt.listOf((Object[]) new Float[]{fValueOf9, fValueOf2}), CollectionsKt.listOf((Object[]) fArr3), CollectionsKt.listOf((Object[]) new Float[]{fValueOf10, fValueOf2}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(1130.0f), fValueOf})};
        Float fValueOf11 = Float.valueOf(0.82f);
        Float[] fArr4 = {fValueOf3, fValueOf11};
        Float fValueOf12 = Float.valueOf(0.48f);
        List listListOf = CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) listArr), CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf11}), CollectionsKt.listOf((Object[]) fArr4), CollectionsKt.listOf((Object[]) new Float[]{fValueOf4, fValueOf12}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf5, fValueOf12}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf6, fValueOf11}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf7, fValueOf11}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf8, fValueOf12}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(730.0f), fValueOf12}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf9, fValueOf11}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(930.0f), fValueOf11}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf10, fValueOf12}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(1130.0f), fValueOf12})})});
        Float fValueOf13 = Float.valueOf(0.8f);
        Float fValueOf14 = Float.valueOf(0.5f);
        super(haptics, new PatternData((List<? extends List<? extends List<Float>>>) listListOf, (List<? extends List<Float>>) CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf2, fValueOf13}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf4, fValueOf2, fValueOf14}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf6, fValueOf2, fValueOf13}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf8, fValueOf2, fValueOf14}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf9, fValueOf2, fValueOf13}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf10, fValueOf2, fValueOf14})})), false, 4, null);
    }

    /* JADX INFO: compiled from: AlarmPreset.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/AlarmPreset$Companion;", "Lcom/swmansion/pulsar/types/PresetWithName;", "<init>", "()V", "name", "", "getName", "()Ljava/lang/String;", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion implements PresetWithName {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Override // com.swmansion.pulsar.types.PresetWithName
        public String getName() {
            return AlarmPreset.name;
        }
    }
}
