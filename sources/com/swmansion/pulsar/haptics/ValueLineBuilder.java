package com.swmansion.pulsar.haptics;

import com.swmansion.pulsar.types.ValuePoint;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: ValueLineBuilder.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0000R*\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00040\bj\b\u0012\u0004\u0012\u00020\u0004`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/swmansion/pulsar/haptics/ValueLineBuilder;", "", "initialList", "", "Lcom/swmansion/pulsar/types/ValuePoint;", "<init>", "(Ljava/util/List;)V", "points", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getPoints", "()Ljava/util/ArrayList;", "setPoints", "(Ljava/util/ArrayList;)V", "pushPoint", "", "point", "valueForX", "", "x", "", "mergeLine", "linePattern", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ValueLineBuilder {
    private ArrayList<ValuePoint> points;

    /* JADX WARN: Multi-variable type inference failed */
    public ValueLineBuilder() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public ValueLineBuilder(List<ValuePoint> list) {
        this.points = new ArrayList<>();
        if (list != null) {
            for (ValuePoint valuePoint : list) {
                pushPoint(new ValuePoint(valuePoint.getTime(), valuePoint.getValue()));
            }
        }
    }

    public /* synthetic */ ValueLineBuilder(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list);
    }

    public final ArrayList<ValuePoint> getPoints() {
        return this.points;
    }

    public final void setPoints(ArrayList<ValuePoint> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.points = arrayList;
    }

    public final void pushPoint(ValuePoint point) {
        Intrinsics.checkNotNullParameter(point, "point");
        if (this.points.isEmpty() || point.getTime() >= ((ValuePoint) CollectionsKt.last((List) this.points)).getTime()) {
            this.points.add(point);
            return;
        }
        Iterator<ValuePoint> it = this.points.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().getTime() > point.getTime()) {
                this.points.add(i, point);
            }
            i++;
        }
        i = -1;
        this.points.add(i, point);
    }

    public final float valueForX(long x) {
        if (this.points.isEmpty()) {
            return 0.0f;
        }
        ArrayList<ValuePoint> arrayList = this.points;
        if (!(arrayList instanceof Collection) || !arrayList.isEmpty()) {
            Iterator<T> it = arrayList.iterator();
            while (it.hasNext()) {
                if (((ValuePoint) it.next()).getTime() == x) {
                    for (ValuePoint valuePoint : this.points) {
                        if (valuePoint.getTime() == x) {
                            return valuePoint.getValue();
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
            }
        }
        int i = 0;
        if (this.points.size() == 1) {
            return this.points.get(0).getValue();
        }
        if (x <= ((ValuePoint) CollectionsKt.first((List) this.points)).getTime() || x >= ((ValuePoint) CollectionsKt.last((List) this.points)).getTime()) {
            return 0.0f;
        }
        Iterator<ValuePoint> it2 = this.points.iterator();
        while (it2.hasNext()) {
            if (it2.next().getTime() > x) {
                ValuePoint valuePoint2 = this.points.get(i - 1);
                Intrinsics.checkNotNullExpressionValue(valuePoint2, "get(...)");
                ValuePoint valuePoint3 = valuePoint2;
                ValuePoint valuePoint4 = this.points.get(i);
                Intrinsics.checkNotNullExpressionValue(valuePoint4, "get(...)");
                ValuePoint valuePoint5 = valuePoint4;
                return valuePoint3.getValue() + ((valuePoint5.getValue() - valuePoint3.getValue()) * ((x - valuePoint3.getTime()) / (valuePoint5.getTime() - valuePoint3.getTime())));
            }
            i++;
        }
        i = -1;
        ValuePoint valuePoint6 = this.points.get(i - 1);
        Intrinsics.checkNotNullExpressionValue(valuePoint6, "get(...)");
        ValuePoint valuePoint7 = valuePoint6;
        ValuePoint valuePoint8 = this.points.get(i);
        Intrinsics.checkNotNullExpressionValue(valuePoint8, "get(...)");
        ValuePoint valuePoint9 = valuePoint8;
        return valuePoint7.getValue() + ((valuePoint9.getValue() - valuePoint7.getValue()) * ((x - valuePoint7.getTime()) / (valuePoint9.getTime() - valuePoint7.getTime())));
    }

    public final void mergeLine(ValueLineBuilder linePattern) {
        Intrinsics.checkNotNullParameter(linePattern, "linePattern");
        IntProgression intProgressionStep = RangesKt.step(RangesKt.until(0, linePattern.points.size()), 4);
        int first = intProgressionStep.getFirst();
        int last = intProgressionStep.getLast();
        int step = intProgressionStep.getStep();
        if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
            return;
        }
        while (true) {
            final long time = linePattern.points.get(first).getTime();
            int i = first + 3;
            final long time2 = linePattern.points.get(i).getTime();
            CollectionsKt.removeAll((List) this.points, new Function1() { // from class: com.swmansion.pulsar.haptics.ValueLineBuilder$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(ValueLineBuilder.mergeLine$lambda$5(time, time2, (ValuePoint) obj));
                }
            });
            ValuePoint valuePoint = linePattern.points.get(first);
            Intrinsics.checkNotNullExpressionValue(valuePoint, "get(...)");
            pushPoint(valuePoint);
            ValuePoint valuePoint2 = linePattern.points.get(first + 1);
            Intrinsics.checkNotNullExpressionValue(valuePoint2, "get(...)");
            pushPoint(valuePoint2);
            ValuePoint valuePoint3 = linePattern.points.get(first + 2);
            Intrinsics.checkNotNullExpressionValue(valuePoint3, "get(...)");
            pushPoint(valuePoint3);
            ValuePoint valuePoint4 = linePattern.points.get(i);
            Intrinsics.checkNotNullExpressionValue(valuePoint4, "get(...)");
            pushPoint(valuePoint4);
            if (first == last) {
                return;
            } else {
                first += step;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean mergeLine$lambda$5(long j, long j2, ValuePoint point) {
        Intrinsics.checkNotNullParameter(point, "point");
        long time = point.getTime();
        return j <= time && time <= j2;
    }
}
