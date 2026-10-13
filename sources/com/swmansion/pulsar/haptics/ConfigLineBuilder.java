package com.swmansion.pulsar.haptics;

import com.swmansion.pulsar.types.ConfigPoint;
import com.swmansion.pulsar.types.ValuePoint;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConfigLineBuilder.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R!\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;", "", "amplitudeLine", "Lcom/swmansion/pulsar/haptics/ValueLineBuilder;", "frequencyLine", "<init>", "(Lcom/swmansion/pulsar/haptics/ValueLineBuilder;Lcom/swmansion/pulsar/haptics/ValueLineBuilder;)V", "points", "Ljava/util/ArrayList;", "Lcom/swmansion/pulsar/types/ConfigPoint;", "Lkotlin/collections/ArrayList;", "getPoints", "()Ljava/util/ArrayList;", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ConfigLineBuilder {
    private final ArrayList<ConfigPoint> points;

    public ConfigLineBuilder(ValueLineBuilder amplitudeLine, ValueLineBuilder frequencyLine) {
        Intrinsics.checkNotNullParameter(amplitudeLine, "amplitudeLine");
        Intrinsics.checkNotNullParameter(frequencyLine, "frequencyLine");
        ArrayList<ConfigPoint> arrayList = new ArrayList<>();
        this.points = arrayList;
        arrayList.clear();
        ArrayList<ValuePoint> points = amplitudeLine.getPoints();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(points, 10));
        Iterator<T> it = points.iterator();
        while (it.hasNext()) {
            arrayList2.add(Long.valueOf(((ValuePoint) it.next()).getTime()));
        }
        ArrayList arrayList3 = arrayList2;
        ArrayList<ValuePoint> points2 = frequencyLine.getPoints();
        ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(points2, 10));
        Iterator<T> it2 = points2.iterator();
        while (it2.hasNext()) {
            arrayList4.add(Long.valueOf(((ValuePoint) it2.next()).getTime()));
        }
        Iterator it3 = CollectionsKt.sorted(CollectionsKt.toList(CollectionsKt.toSet(CollectionsKt.plus((Collection) arrayList3, (Iterable) arrayList4)))).iterator();
        while (it3.hasNext()) {
            long jLongValue = ((Number) it3.next()).longValue();
            this.points.add(new ConfigPoint(jLongValue, amplitudeLine.valueForX(jLongValue), frequencyLine.valueForX(jLongValue)));
        }
    }

    public final ArrayList<ConfigPoint> getPoints() {
        return this.points;
    }
}
