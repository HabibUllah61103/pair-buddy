package com.swmansion.pulsar.haptics;

import com.swmansion.pulsar.types.ConfigPoint;
import com.swmansion.pulsar.types.ValuePoint;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PeakLineBuilder.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u0007J\u001c\u0010\f\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u0007J&\u0010\r\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u0011\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/swmansion/pulsar/haptics/PeakLineBuilder;", "", "minTransitionDuration", "", "<init>", "(J)V", "convertToContinuousPatternOfAmplitude", "Lcom/swmansion/pulsar/haptics/ValueLineBuilder;", "pattern", "", "Lcom/swmansion/pulsar/types/ConfigPoint;", "baseline", "convertToContinuousPatternOfFrequency", "convertToContinuousPattern", "useAmplitude", "", "peakTiming", "time", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PeakLineBuilder {
    private final long minTransitionDuration;

    public PeakLineBuilder() {
        this(0L, 1, null);
    }

    public PeakLineBuilder(long j) {
        this.minTransitionDuration = j;
    }

    public /* synthetic */ PeakLineBuilder(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 15L : j);
    }

    public final ValueLineBuilder convertToContinuousPatternOfAmplitude(List<ConfigPoint> pattern, ValueLineBuilder baseline) {
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        Intrinsics.checkNotNullParameter(baseline, "baseline");
        return convertToContinuousPattern(pattern, baseline, true);
    }

    public final ValueLineBuilder convertToContinuousPatternOfFrequency(List<ConfigPoint> pattern, ValueLineBuilder baseline) {
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        Intrinsics.checkNotNullParameter(baseline, "baseline");
        return convertToContinuousPattern(pattern, baseline, false);
    }

    private final ValueLineBuilder convertToContinuousPattern(List<ConfigPoint> pattern, ValueLineBuilder baseline, boolean useAmplitude) {
        ValueLineBuilder valueLineBuilder = new ValueLineBuilder(null, 1, null);
        for (ConfigPoint configPoint : pattern) {
            float amplitude = useAmplitude ? configPoint.getAmplitude() : configPoint.getFrequency();
            List<Long> listPeakTiming = peakTiming(configPoint.getTime());
            ValuePoint valuePoint = new ValuePoint(listPeakTiming.get(0).longValue(), baseline.valueForX(listPeakTiming.get(0).longValue()));
            ValuePoint valuePoint2 = new ValuePoint(listPeakTiming.get(1).longValue(), amplitude);
            ValuePoint valuePoint3 = new ValuePoint(listPeakTiming.get(2).longValue(), amplitude);
            ValuePoint valuePoint4 = new ValuePoint(listPeakTiming.get(3).longValue(), baseline.valueForX(listPeakTiming.get(3).longValue()));
            valueLineBuilder.pushPoint(valuePoint);
            valueLineBuilder.pushPoint(valuePoint2);
            valueLineBuilder.pushPoint(valuePoint3);
            valueLineBuilder.pushPoint(valuePoint4);
        }
        return valueLineBuilder;
    }

    private final List<Long> peakTiming(long time) {
        long j = this.minTransitionDuration;
        long j2 = (long) (j * 0.75d);
        long j3 = ((long) (j * 0.25d)) / ((long) 2);
        long j4 = time + j3;
        return CollectionsKt.listOf((Object[]) new Long[]{Long.valueOf((time - j2) - j3), Long.valueOf(time - j3), Long.valueOf(j4), Long.valueOf(j4 + 1)});
    }
}
