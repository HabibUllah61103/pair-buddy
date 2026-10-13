package com.swmansion.pulsar.haptics;

import android.os.Build;
import android.os.VibrationEffect;
import com.swmansion.pulsar.types.ConfigPoint;
import com.swmansion.pulsar.types.PatternData;
import com.swmansion.pulsar.types.ValuePoint;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: ImpulseCompositionHapticBuilder.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0003¨\u0006\u000f"}, d2 = {"Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;", "", "<init>", "()V", "createCompositionEffect", "Landroid/os/VibrationEffect;", "preset", "Lcom/swmansion/pulsar/types/PatternData;", "engine", "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "selectPrimitive", "", "frequency", "", "Companion", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ImpulseCompositionHapticBuilder {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: ImpulseCompositionHapticBuilder.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$Companion;", "", "<init>", "()V", "isImpulsesOnly", "", "preset", "Lcom/swmansion/pulsar/types/PatternData;", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isImpulsesOnly(PatternData preset) {
            Intrinsics.checkNotNullParameter(preset, "preset");
            if (preset.getDiscretePattern().isEmpty()) {
                return false;
            }
            List<ValuePoint> amplitude = preset.getContinuousPattern().getAmplitude();
            if ((amplitude instanceof Collection) && amplitude.isEmpty()) {
                return true;
            }
            Iterator<T> it = amplitude.iterator();
            while (it.hasNext()) {
                if (((ValuePoint) it.next()).getValue() > 0.0f) {
                    return false;
                }
            }
            return true;
        }
    }

    public final VibrationEffect createCompositionEffect(PatternData preset, HapticEngineWrapper engine) {
        Intrinsics.checkNotNullParameter(preset, "preset");
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (Build.VERSION.SDK_INT < 30) {
            return null;
        }
        List<ConfigPoint> listSortedWith = CollectionsKt.sortedWith(preset.getDiscretePattern(), new Comparator() { // from class: com.swmansion.pulsar.haptics.ImpulseCompositionHapticBuilder$createCompositionEffect$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Long.valueOf(((ConfigPoint) t).getTime()), Long.valueOf(((ConfigPoint) t2).getTime()));
            }
        });
        if (listSortedWith.isEmpty()) {
            return null;
        }
        List list = listSortedWith;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(selectPrimitive(((ConfigPoint) it.next()).getFrequency())));
        }
        Iterator it2 = CollectionsKt.distinct(arrayList).iterator();
        while (it2.hasNext()) {
            if (!engine.isPrimitiveSupported(((Number) it2.next()).intValue())) {
                return null;
            }
        }
        VibrationEffect.Composition compositionStartComposition = VibrationEffect.startComposition();
        Intrinsics.checkNotNullExpressionValue(compositionStartComposition, "startComposition(...)");
        long time = 0;
        for (ConfigPoint configPoint : listSortedWith) {
            compositionStartComposition.addPrimitive(selectPrimitive(configPoint.getFrequency()), RangesKt.coerceIn(configPoint.getAmplitude(), 0.0f, 1.0f), RangesKt.coerceAtLeast((int) (configPoint.getTime() - time), 0));
            time = configPoint.getTime();
        }
        return compositionStartComposition.compose();
    }

    private final int selectPrimitive(float frequency) {
        if (frequency > 0.66f) {
            return 1;
        }
        return (frequency <= 0.33f && Build.VERSION.SDK_INT >= 33) ? 8 : 7;
    }
}
