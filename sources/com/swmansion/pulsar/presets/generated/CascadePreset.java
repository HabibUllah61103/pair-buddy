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

/* JADX INFO: compiled from: CascadePreset.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00072\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/CascadePreset;", "Lcom/swmansion/pulsar/types/Preset;", "Lcom/swmansion/pulsar/presets/Player;", "haptics", "Lcom/swmansion/pulsar/Pulsar;", "<init>", "(Lcom/swmansion/pulsar/Pulsar;)V", "Companion", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CascadePreset extends Player implements Preset {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String name = "Cascade";

    /* JADX WARN: Illegal instructions before constructor call */
    public CascadePreset(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        List listListOf = CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.emptyList(), CollectionsKt.emptyList()});
        Float fValueOf = Float.valueOf(0.994f);
        Float[] fArr = {Float.valueOf(1.0f), fValueOf, fValueOf};
        Float fValueOf2 = Float.valueOf(0.997f);
        Float[] fArr2 = {Float.valueOf(99.0f), fValueOf2, fValueOf2};
        Float[] fArr3 = {Float.valueOf(199.0f), fValueOf2, fValueOf2};
        Float fValueOf3 = Float.valueOf(0.8f);
        Float[] fArr4 = {Float.valueOf(551.0f), fValueOf3, fValueOf3};
        Float fValueOf4 = Float.valueOf(0.803f);
        Float[] fArr5 = {Float.valueOf(649.0f), fValueOf4, fValueOf4};
        Float fValueOf5 = Float.valueOf(0.797f);
        Float[] fArr6 = {Float.valueOf(751.0f), fValueOf5, fValueOf5};
        Float fValueOf6 = Float.valueOf(0.5f);
        Float[] fArr7 = {Float.valueOf(1118.0f), fValueOf6, fValueOf6};
        Float fValueOf7 = Float.valueOf(0.491f);
        Float[] fArr8 = {Float.valueOf(1219.0f), fValueOf7, fValueOf7};
        Float fValueOf8 = Float.valueOf(0.494f);
        Float[] fArr9 = {Float.valueOf(1318.0f), fValueOf8, fValueOf8};
        Float fValueOf9 = Float.valueOf(0.213f);
        super(haptics, new PatternData((List<? extends List<? extends List<Float>>>) listListOf, (List<? extends List<Float>>) CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) fArr), CollectionsKt.listOf((Object[]) fArr2), CollectionsKt.listOf((Object[]) fArr3), CollectionsKt.listOf((Object[]) fArr4), CollectionsKt.listOf((Object[]) fArr5), CollectionsKt.listOf((Object[]) fArr6), CollectionsKt.listOf((Object[]) fArr7), CollectionsKt.listOf((Object[]) fArr8), CollectionsKt.listOf((Object[]) fArr9), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(1660.0f), Float.valueOf(0.497f), fValueOf9}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(1762.0f), Float.valueOf(0.506f), Float.valueOf(0.209f)}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(1863.0f), Float.valueOf(0.488f), fValueOf9})})), false, 4, null);
    }

    /* JADX INFO: compiled from: CascadePreset.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/CascadePreset$Companion;", "Lcom/swmansion/pulsar/types/PresetWithName;", "<init>", "()V", "name", "", "getName", "()Ljava/lang/String;", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion implements PresetWithName {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Override // com.swmansion.pulsar.types.PresetWithName
        public String getName() {
            return CascadePreset.name;
        }
    }
}
