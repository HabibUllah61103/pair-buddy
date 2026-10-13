package com.swmansion.pulsar.types;

import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Metadata;

/* JADX INFO: compiled from: Points.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/swmansion/pulsar/types/ValuePoint;", "", "time", "", RNConstants.ARG_VALUE, "", "<init>", "(JF)V", "getTime", "()J", "getValue", "()F", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ValuePoint {
    private final long time;
    private final float value;

    public static /* synthetic */ ValuePoint copy$default(ValuePoint valuePoint, long j, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            j = valuePoint.time;
        }
        if ((i & 2) != 0) {
            f = valuePoint.value;
        }
        return valuePoint.copy(j, f);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getTime() {
        return this.time;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final float getValue() {
        return this.value;
    }

    public final ValuePoint copy(long time, float value) {
        return new ValuePoint(time, value);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ValuePoint)) {
            return false;
        }
        ValuePoint valuePoint = (ValuePoint) other;
        return this.time == valuePoint.time && Float.compare(this.value, valuePoint.value) == 0;
    }

    public int hashCode() {
        return (Long.hashCode(this.time) * 31) + Float.hashCode(this.value);
    }

    public String toString() {
        return "ValuePoint(time=" + this.time + ", value=" + this.value + ")";
    }

    public ValuePoint(long j, float f) {
        this.time = j;
        this.value = f;
    }

    public final long getTime() {
        return this.time;
    }

    public final float getValue() {
        return this.value;
    }
}
