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

/* JADX INFO: compiled from: ApplausePreset.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00072\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/ApplausePreset;", "Lcom/swmansion/pulsar/types/Preset;", "Lcom/swmansion/pulsar/presets/Player;", "haptics", "Lcom/swmansion/pulsar/Pulsar;", "<init>", "(Lcom/swmansion/pulsar/Pulsar;)V", "Companion", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ApplausePreset extends Player implements Preset {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String name = "Applause";

    /* JADX WARN: Illegal instructions before constructor call */
    public ApplausePreset(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(0.2f);
        List[] listArr = {CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(10.0f), fValueOf2}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(1482.0f), Float.valueOf(0.266f)}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(1564.0f), fValueOf})};
        Float fValueOf3 = Float.valueOf(0.5f);
        List listListOf = CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) listArr), CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf3}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(990.0f), Float.valueOf(0.72f)}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(1250.0f), Float.valueOf(0.7f)})})});
        Float[] fArr = {fValueOf, fValueOf2, fValueOf3};
        Float[] fArr2 = {Float.valueOf(150.0f), Float.valueOf(0.25f), Float.valueOf(0.52f)};
        Float[] fArr3 = {Float.valueOf(290.0f), Float.valueOf(0.3f), Float.valueOf(0.54f)};
        Float[] fArr4 = {Float.valueOf(420.0f), Float.valueOf(0.4f), Float.valueOf(0.56f)};
        Float[] fArr5 = {Float.valueOf(540.0f), fValueOf3, Float.valueOf(0.58f)};
        Float[] fArr6 = {Float.valueOf(650.0f), Float.valueOf(0.484f), Float.valueOf(0.6f)};
        Float[] fArr7 = {Float.valueOf(750.0f), Float.valueOf(0.509f), Float.valueOf(0.62f)};
        Float[] fArr8 = {Float.valueOf(868.0f), Float.valueOf(0.503f), Float.valueOf(0.65f)};
        Float[] fArr9 = {Float.valueOf(968.0f), Float.valueOf(0.45f), Float.valueOf(0.716f)};
        Float[] fArr10 = {Float.valueOf(1063.0f), Float.valueOf(0.434f), Float.valueOf(0.725f)};
        Float[] fArr11 = {Float.valueOf(1159.0f), Float.valueOf(0.488f), Float.valueOf(0.759f)};
        Float fValueOf4 = Float.valueOf(1.0f);
        Float[] fArr12 = {Float.valueOf(1256.0f), Float.valueOf(0.506f), fValueOf4};
        Float fValueOf5 = Float.valueOf(0.528f);
        super(haptics, new PatternData((List<? extends List<? extends List<Float>>>) listListOf, (List<? extends List<Float>>) CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) fArr), CollectionsKt.listOf((Object[]) fArr2), CollectionsKt.listOf((Object[]) fArr3), CollectionsKt.listOf((Object[]) fArr4), CollectionsKt.listOf((Object[]) fArr5), CollectionsKt.listOf((Object[]) fArr6), CollectionsKt.listOf((Object[]) fArr7), CollectionsKt.listOf((Object[]) fArr8), CollectionsKt.listOf((Object[]) fArr9), CollectionsKt.listOf((Object[]) fArr10), CollectionsKt.listOf((Object[]) fArr11), CollectionsKt.listOf((Object[]) fArr12), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(1349.0f), fValueOf5, fValueOf4}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(1432.0f), Float.valueOf(0.519f), fValueOf4}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(1530.0f), fValueOf5, fValueOf4})})), false, 4, null);
    }

    /* JADX INFO: compiled from: ApplausePreset.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/ApplausePreset$Companion;", "Lcom/swmansion/pulsar/types/PresetWithName;", "<init>", "()V", "name", "", "getName", "()Ljava/lang/String;", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion implements PresetWithName {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Override // com.swmansion.pulsar.types.PresetWithName
        public String getName() {
            return ApplausePreset.name;
        }
    }
}
