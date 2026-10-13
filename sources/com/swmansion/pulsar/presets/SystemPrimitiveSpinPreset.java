package com.swmansion.pulsar.presets;

import com.swmansion.pulsar.Pulsar;
import com.swmansion.pulsar.types.PatternData;
import com.swmansion.pulsar.types.Preset;
import com.swmansion.pulsar.types.PresetWithName;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SystemPrimitivePresets.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u000b2\u00020\u00012\u00020\u0002:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset;", "Lcom/swmansion/pulsar/types/Preset;", "Lcom/swmansion/pulsar/presets/Player;", "haptics", "Lcom/swmansion/pulsar/Pulsar;", "systemPresets", "Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;", "<init>", "(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;)V", "play", "", "Companion", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SystemPrimitiveSpinPreset extends Player implements Preset {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String name = "SystemPrimitiveSpin";
    private final SystemPrimitivePresets systemPresets;

    /* JADX WARN: Illegal instructions before constructor call */
    public SystemPrimitiveSpinPreset(Pulsar haptics, SystemPrimitivePresets systemPresets) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        Intrinsics.checkNotNullParameter(systemPresets, "systemPresets");
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(75.0f);
        Float[] fArr = {fValueOf2, Float.valueOf(0.5f)};
        Float fValueOf3 = Float.valueOf(150.0f);
        super(haptics, new PatternData((List<? extends List<? extends List<Float>>>) CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new Float[]{fValueOf, fValueOf}), CollectionsKt.listOf((Object[]) fArr), CollectionsKt.listOf((Object[]) new Float[]{fValueOf3, fValueOf})}), CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new Float[]{fValueOf, Float.valueOf(0.33f)}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf2, Float.valueOf(0.17f)}), CollectionsKt.listOf((Object[]) new Float[]{fValueOf3, Float.valueOf(0.25f)})})}), (List<? extends List<Float>>) CollectionsKt.emptyList()), true);
        this.systemPresets = systemPresets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean play$lambda$0(SystemPrimitiveSpinPreset systemPrimitiveSpinPreset) {
        return systemPrimitiveSpinPreset.systemPresets.primitiveSpin();
    }

    @Override // com.swmansion.pulsar.presets.Player, com.swmansion.pulsar.types.Preset
    public void play() {
        playSystemOrFallback(new Function0() { // from class: com.swmansion.pulsar.presets.SystemPrimitiveSpinPreset$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(SystemPrimitiveSpinPreset.play$lambda$0(this.f$0));
            }
        });
    }

    /* JADX INFO: compiled from: SystemPrimitivePresets.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/presets/SystemPrimitiveSpinPreset$Companion;", "Lcom/swmansion/pulsar/types/PresetWithName;", "<init>", "()V", "name", "", "getName", "()Ljava/lang/String;", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion implements PresetWithName {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Override // com.swmansion.pulsar.types.PresetWithName
        public String getName() {
            return SystemPrimitiveSpinPreset.name;
        }
    }
}
