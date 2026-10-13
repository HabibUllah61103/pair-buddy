package com.swmansion.pulsar.haptics;

import com.swmansion.pulsar.types.ConfigPoint;
import com.swmansion.pulsar.types.ControlPoint;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ControlLineBuilder.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bJ\u0016\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bJ4\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0016"}, d2 = {"Lcom/swmansion/pulsar/haptics/ControlLineBuilder;", "", "configLine", "Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;", "<init>", "(Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;)V", "getConfigLine", "()Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;", "getStepsPoints", "Ljava/util/ArrayList;", "Lcom/swmansion/pulsar/types/ControlPoint;", "Lkotlin/collections/ArrayList;", "getLinearPoints", "averageValuesInSegment", "Lkotlin/Pair;", "", "startTime", "", "endTime", "startPoint", "Lcom/swmansion/pulsar/types/ConfigPoint;", "endPoint", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ControlLineBuilder {
    private final ConfigLineBuilder configLine;

    public ControlLineBuilder(ConfigLineBuilder configLine) {
        Intrinsics.checkNotNullParameter(configLine, "configLine");
        this.configLine = configLine;
    }

    public final ConfigLineBuilder getConfigLine() {
        return this.configLine;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x009b  */
    /* JADX WARN: Code duplicated, block: B:30:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:33:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:39:0x0099 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x0095 A[SYNTHETIC] */
    public final ArrayList<ControlPoint> getStepsPoints() {
        int i;
        long jMin;
        long j;
        ArrayList<ConfigPoint> arrayList;
        long j2;
        Pair<Float, Float> pairAverageValuesInSegment;
        ArrayList<ControlPoint> arrayList2 = new ArrayList<>();
        ArrayList<ConfigPoint> points = this.configLine.getPoints();
        long time = points.isEmpty() ? 0L : ((ConfigPoint) CollectionsKt.last((List) points)).getTime();
        int i2 = -1;
        long j3 = 0;
        while (j3 < time) {
            long jMin2 = Math.min(76 + j3, time);
            long j4 = 0;
            long jMax = Math.max(1L, jMin2 - j3);
            float f = 0.0f;
            float f2 = 0.0f;
            while (j3 < jMin2) {
                while (true) {
                    i = i2 + 1;
                    if (i >= points.size() || points.get(i).getTime() > j3) {
                        break;
                    }
                    i2 = i;
                }
                if (i2 < 0) {
                    jMin = Math.min(jMin2, ((ConfigPoint) CollectionsKt.first((List) points)).getTime());
                } else {
                    if (i2 >= CollectionsKt.getLastIndex(points)) {
                        jMin = jMin2;
                    } else {
                        jMin = Math.min(jMin2, points.get(i).getTime());
                    }
                    j = jMin - j3;
                    if (j <= j4) {
                        j3 = jMin;
                    } else {
                        if (i2 < 0) {
                            ConfigPoint configPoint = (ConfigPoint) CollectionsKt.first((List) points);
                            pairAverageValuesInSegment = TuplesKt.to(Float.valueOf(configPoint.getAmplitude()), Float.valueOf(configPoint.getFrequency()));
                        } else {
                            arrayList = points;
                            if (i2 >= CollectionsKt.getLastIndex(arrayList)) {
                                ConfigPoint configPoint2 = (ConfigPoint) CollectionsKt.last((List) arrayList);
                                pairAverageValuesInSegment = TuplesKt.to(Float.valueOf(configPoint2.getAmplitude()), Float.valueOf(configPoint2.getFrequency()));
                            } else {
                                ConfigPoint configPoint3 = points.get(i2);
                                Intrinsics.checkNotNullExpressionValue(configPoint3, "get(...)");
                                ConfigPoint configPoint4 = points.get(i);
                                Intrinsics.checkNotNullExpressionValue(configPoint4, "get(...)");
                                j2 = jMin;
                                pairAverageValuesInSegment = averageValuesInSegment(j3, j2, configPoint3, configPoint4);
                            }
                            float fFloatValue = pairAverageValuesInSegment.component1().floatValue();
                            float fFloatValue2 = pairAverageValuesInSegment.component2().floatValue();
                            float f3 = j;
                            f += fFloatValue * f3;
                            f2 += fFloatValue2 * f3;
                            j3 = j2;
                            i2 = i2;
                            j4 = 0;
                        }
                        j2 = jMin;
                        float fFloatValue3 = pairAverageValuesInSegment.component1().floatValue();
                        float fFloatValue4 = pairAverageValuesInSegment.component2().floatValue();
                        float f4 = j;
                        f += fFloatValue3 * f4;
                        f2 += fFloatValue4 * f4;
                        j3 = j2;
                        i2 = i2;
                        j4 = 0;
                    }
                }
                j = jMin - j3;
                if (j <= j4) {
                    j3 = jMin;
                } else {
                    if (i2 < 0) {
                        ConfigPoint configPoint5 = (ConfigPoint) CollectionsKt.first((List) points);
                        pairAverageValuesInSegment = TuplesKt.to(Float.valueOf(configPoint5.getAmplitude()), Float.valueOf(configPoint5.getFrequency()));
                    } else {
                        arrayList = points;
                        if (i2 >= CollectionsKt.getLastIndex(arrayList)) {
                            ConfigPoint configPoint6 = (ConfigPoint) CollectionsKt.last((List) arrayList);
                            pairAverageValuesInSegment = TuplesKt.to(Float.valueOf(configPoint6.getAmplitude()), Float.valueOf(configPoint6.getFrequency()));
                        } else {
                            ConfigPoint configPoint7 = points.get(i2);
                            Intrinsics.checkNotNullExpressionValue(configPoint7, "get(...)");
                            ConfigPoint configPoint8 = points.get(i);
                            Intrinsics.checkNotNullExpressionValue(configPoint8, "get(...)");
                            j2 = jMin;
                            pairAverageValuesInSegment = averageValuesInSegment(j3, j2, configPoint7, configPoint8);
                        }
                        float fFloatValue5 = pairAverageValuesInSegment.component1().floatValue();
                        float fFloatValue6 = pairAverageValuesInSegment.component2().floatValue();
                        float f5 = j;
                        f += fFloatValue5 * f5;
                        f2 += fFloatValue6 * f5;
                        j3 = j2;
                        i2 = i2;
                        j4 = 0;
                    }
                    j2 = jMin;
                    float fFloatValue7 = pairAverageValuesInSegment.component1().floatValue();
                    float fFloatValue8 = pairAverageValuesInSegment.component2().floatValue();
                    float f6 = j;
                    f += fFloatValue7 * f6;
                    f2 += fFloatValue8 * f6;
                    j3 = j2;
                    i2 = i2;
                    j4 = 0;
                }
            }
            float f7 = jMax;
            arrayList2.add(new ControlPoint(f / f7, f2 / f7, jMax));
            j3 = jMin2;
        }
        return arrayList2;
    }

    public final ArrayList<ControlPoint> getLinearPoints() {
        ArrayList<ControlPoint> arrayList = new ArrayList<>();
        int size = this.configLine.getPoints().size();
        for (int i = 0; i < size; i++) {
            ConfigPoint configPoint = this.configLine.getPoints().get(i);
            Intrinsics.checkNotNullExpressionValue(configPoint, "get(...)");
            ConfigPoint configPoint2 = configPoint;
            long jMax = Math.max(1L, configPoint2.getTime());
            if (i > 0) {
                jMax = configPoint2.getTime() - this.configLine.getPoints().get(i - 1).getTime();
            }
            arrayList.add(new ControlPoint(configPoint2.getAmplitude(), configPoint2.getFrequency(), jMax));
        }
        return arrayList;
    }

    private final Pair<Float, Float> averageValuesInSegment(long startTime, long endTime, ConfigPoint startPoint, ConfigPoint endPoint) {
        long time = endPoint.getTime() - startPoint.getTime();
        if (time <= 0) {
            return TuplesKt.to(Float.valueOf(startPoint.getAmplitude()), Float.valueOf(startPoint.getFrequency()));
        }
        float f = time;
        float time2 = (startTime - startPoint.getTime()) / f;
        float time3 = (endTime - startPoint.getTime()) / f;
        return TuplesKt.to(Float.valueOf(((startPoint.getAmplitude() + ((endPoint.getAmplitude() - startPoint.getAmplitude()) * time2)) + (startPoint.getAmplitude() + ((endPoint.getAmplitude() - startPoint.getAmplitude()) * time3))) / 2.0f), Float.valueOf(((startPoint.getFrequency() + ((endPoint.getFrequency() - startPoint.getFrequency()) * time2)) + (startPoint.getFrequency() + ((endPoint.getFrequency() - startPoint.getFrequency()) * time3))) / 2.0f));
    }
}
