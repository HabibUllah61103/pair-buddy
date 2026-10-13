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

/* JADX INFO: compiled from: TideSwellPreset.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00072\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/TideSwellPreset;", "Lcom/swmansion/pulsar/types/Preset;", "Lcom/swmansion/pulsar/presets/Player;", "haptics", "Lcom/swmansion/pulsar/Pulsar;", "<init>", "(Lcom/swmansion/pulsar/Pulsar;)V", "Companion", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TideSwellPreset extends Player implements Preset {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String name = "TideSwell";

    /* JADX WARN: Illegal instructions before constructor call */
    public TideSwellPreset(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        List listListOf = CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.emptyList(), CollectionsKt.emptyList()});
        Float fValueOf = Float.valueOf(1.0f);
        Float fValueOf2 = Float.valueOf(0.775f);
        Float[] fArr = {fValueOf, fValueOf2, Float.valueOf(0.053f)};
        Float[] fArr2 = {Float.valueOf(51.0f), Float.valueOf(0.722f), Float.valueOf(0.122f)};
        Float[] fArr3 = {Float.valueOf(100.0f), Float.valueOf(0.7f), Float.valueOf(0.228f)};
        Float fValueOf3 = Float.valueOf(0.394f);
        Float[] fArr4 = {Float.valueOf(156.0f), Float.valueOf(0.653f), fValueOf3};
        Float[] fArr5 = {Float.valueOf(208.0f), Float.valueOf(0.638f), Float.valueOf(0.613f)};
        Float[] fArr6 = {Float.valueOf(260.0f), Float.valueOf(0.622f), Float.valueOf(0.803f)};
        Float fValueOf4 = Float.valueOf(0.606f);
        super(haptics, new PatternData((List<? extends List<? extends List<Float>>>) listListOf, (List<? extends List<Float>>) CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) fArr), CollectionsKt.listOf((Object[]) fArr2), CollectionsKt.listOf((Object[]) fArr3), CollectionsKt.listOf((Object[]) fArr4), CollectionsKt.listOf((Object[]) fArr5), CollectionsKt.listOf((Object[]) fArr6), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(309.0f), fValueOf4, fValueOf}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(368.0f), Float.valueOf(0.6f), fValueOf}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(420.0f), fValueOf4, Float.valueOf(0.8f)}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(482.0f), Float.valueOf(0.609f), fValueOf4}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(549.0f), Float.valueOf(0.647f), fValueOf3}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(605.0f), Float.valueOf(0.684f), Float.valueOf(0.181f)}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(670.0f), Float.valueOf(0.728f), Float.valueOf(0.075f)}), CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(727.0f), fValueOf2, Float.valueOf(0.034f)})})), false, 4, null);
    }

    /* JADX INFO: compiled from: TideSwellPreset.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/generated/TideSwellPreset$Companion;", "Lcom/swmansion/pulsar/types/PresetWithName;", "<init>", "()V", "name", "", "getName", "()Ljava/lang/String;", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion implements PresetWithName {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Override // com.swmansion.pulsar.types.PresetWithName
        public String getName() {
            return TideSwellPreset.name;
        }
    }
}
