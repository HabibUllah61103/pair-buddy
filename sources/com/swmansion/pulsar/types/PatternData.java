package com.swmansion.pulsar.types;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Points.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bB;\b\u0016\u0012\u001a\b\u0002\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u00050\u00050\u0005\u0012\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u00050\u0005¢\u0006\u0004\b\u0007\u0010\fJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/swmansion/pulsar/types/PatternData;", "", "continuousPattern", "Lcom/swmansion/pulsar/types/ContinuousPattern;", "discretePattern", "", "Lcom/swmansion/pulsar/types/ConfigPoint;", "<init>", "(Lcom/swmansion/pulsar/types/ContinuousPattern;Ljava/util/List;)V", "rawContinuousPattern", "", "rawDiscretePattern", "(Ljava/util/List;Ljava/util/List;)V", "getContinuousPattern", "()Lcom/swmansion/pulsar/types/ContinuousPattern;", "getDiscretePattern", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class PatternData {
    private final ContinuousPattern continuousPattern;
    private final List<ConfigPoint> discretePattern;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PatternData copy$default(PatternData patternData, ContinuousPattern continuousPattern, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            continuousPattern = patternData.continuousPattern;
        }
        if ((i & 2) != 0) {
            list = patternData.discretePattern;
        }
        return patternData.copy(continuousPattern, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ContinuousPattern getContinuousPattern() {
        return this.continuousPattern;
    }

    public final List<ConfigPoint> component2() {
        return this.discretePattern;
    }

    public final PatternData copy(ContinuousPattern continuousPattern, List<ConfigPoint> discretePattern) {
        Intrinsics.checkNotNullParameter(continuousPattern, "continuousPattern");
        Intrinsics.checkNotNullParameter(discretePattern, "discretePattern");
        return new PatternData(continuousPattern, discretePattern);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PatternData)) {
            return false;
        }
        PatternData patternData = (PatternData) other;
        return Intrinsics.areEqual(this.continuousPattern, patternData.continuousPattern) && Intrinsics.areEqual(this.discretePattern, patternData.discretePattern);
    }

    public int hashCode() {
        return (this.continuousPattern.hashCode() * 31) + this.discretePattern.hashCode();
    }

    public String toString() {
        return "PatternData(continuousPattern=" + this.continuousPattern + ", discretePattern=" + this.discretePattern + ")";
    }

    public PatternData(ContinuousPattern continuousPattern, List<ConfigPoint> discretePattern) {
        Intrinsics.checkNotNullParameter(continuousPattern, "continuousPattern");
        Intrinsics.checkNotNullParameter(discretePattern, "discretePattern");
        this.continuousPattern = continuousPattern;
        this.discretePattern = discretePattern;
    }

    public final ContinuousPattern getContinuousPattern() {
        return this.continuousPattern;
    }

    public final List<ConfigPoint> getDiscretePattern() {
        return this.discretePattern;
    }

    public /* synthetic */ PatternData(List list, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((List<? extends List<? extends List<Float>>>) ((i & 1) != 0 ? CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.emptyList(), CollectionsKt.emptyList()}) : list), (List<? extends List<Float>>) ((i & 2) != 0 ? CollectionsKt.emptyList() : list2));
    }

    public PatternData(List<? extends List<? extends List<Float>>> rawContinuousPattern, List<? extends List<Float>> rawDiscretePattern) {
        Intrinsics.checkNotNullParameter(rawContinuousPattern, "rawContinuousPattern");
        Intrinsics.checkNotNullParameter(rawDiscretePattern, "rawDiscretePattern");
        List<? extends List<Float>> list = rawContinuousPattern.get(0);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            List list2 = (List) it.next();
            arrayList.add(new ValuePoint((long) ((Number) list2.get(0)).floatValue(), ((Number) list2.get(1)).floatValue()));
        }
        ArrayList arrayList2 = arrayList;
        List<? extends List<Float>> list3 = rawContinuousPattern.get(1);
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
        Iterator<T> it2 = list3.iterator();
        while (it2.hasNext()) {
            List list4 = (List) it2.next();
            arrayList3.add(new ValuePoint((long) ((Number) list4.get(0)).floatValue(), ((Number) list4.get(1)).floatValue()));
        }
        ContinuousPattern continuousPattern = new ContinuousPattern(arrayList2, arrayList3);
        List<? extends List<Float>> list5 = rawDiscretePattern;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list5, 10));
        Iterator<T> it3 = list5.iterator();
        while (it3.hasNext()) {
            List list6 = (List) it3.next();
            arrayList4.add(new ConfigPoint((long) ((Number) list6.get(0)).floatValue(), ((Number) list6.get(1)).floatValue(), ((Number) list6.get(2)).floatValue()));
        }
        this(continuousPattern, arrayList4);
    }
}
