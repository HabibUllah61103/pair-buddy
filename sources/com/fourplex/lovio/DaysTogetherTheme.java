package com.fourplex.lovio;

import kotlin.Metadata;

/* JADX INFO: compiled from: WidgetSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/fourplex/lovio/DaysTogetherTheme;", "", "heartResId", "", "countColor", "labelColor", "<init>", "(III)V", "getHeartResId", "()I", "getCountColor", "getLabelColor", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DaysTogetherTheme {
    private final int countColor;
    private final int heartResId;
    private final int labelColor;

    public static /* synthetic */ DaysTogetherTheme copy$default(DaysTogetherTheme daysTogetherTheme, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = daysTogetherTheme.heartResId;
        }
        if ((i4 & 2) != 0) {
            i2 = daysTogetherTheme.countColor;
        }
        if ((i4 & 4) != 0) {
            i3 = daysTogetherTheme.labelColor;
        }
        return daysTogetherTheme.copy(i, i2, i3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getHeartResId() {
        return this.heartResId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getCountColor() {
        return this.countColor;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getLabelColor() {
        return this.labelColor;
    }

    public final DaysTogetherTheme copy(int heartResId, int countColor, int labelColor) {
        return new DaysTogetherTheme(heartResId, countColor, labelColor);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DaysTogetherTheme)) {
            return false;
        }
        DaysTogetherTheme daysTogetherTheme = (DaysTogetherTheme) other;
        return this.heartResId == daysTogetherTheme.heartResId && this.countColor == daysTogetherTheme.countColor && this.labelColor == daysTogetherTheme.labelColor;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.heartResId) * 31) + Integer.hashCode(this.countColor)) * 31) + Integer.hashCode(this.labelColor);
    }

    public String toString() {
        return "DaysTogetherTheme(heartResId=" + this.heartResId + ", countColor=" + this.countColor + ", labelColor=" + this.labelColor + ")";
    }

    public DaysTogetherTheme(int i, int i2, int i3) {
        this.heartResId = i;
        this.countColor = i2;
        this.labelColor = i3;
    }

    public final int getHeartResId() {
        return this.heartResId;
    }

    public final int getCountColor() {
        return this.countColor;
    }

    public final int getLabelColor() {
        return this.labelColor;
    }
}
