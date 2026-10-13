package expo.modules.ui;

import android.graphics.Color;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProgressView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bu\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012$\b\u0002\u0010\u000b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rj\u0002`\u000f0\fj\u0002`\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010#\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J%\u0010%\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rj\u0002`\u000f0\fj\u0002`\u0010HÆ\u0003J|\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032$\b\u0002\u0010\u000b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rj\u0002`\u000f0\fj\u0002`\u0010HÆ\u0001¢\u0006\u0002\u0010'J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010+\u001a\u00020,HÖ\u0001J\t\u0010-\u001a\u00020\tHÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0019\u0010\u0014R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0015\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u001c\u0010\u0014R-\u0010\u000b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rj\u0002`\u000f0\fj\u0002`\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001e¨\u0006."}, d2 = {"Lexpo/modules/ui/CircularProgressIndicatorProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "progress", "", "color", "Landroid/graphics/Color;", "trackColor", "strokeWidth", "strokeCap", "", "gapSize", "modifiers", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Ljava/lang/Float;Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Float;Ljava/util/List;)V", "getProgress", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getColor", "()Landroid/graphics/Color;", "getTrackColor", "getStrokeWidth", "getStrokeCap", "()Ljava/lang/String;", "getGapSize", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/Float;Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Float;Ljava/util/List;)Lexpo/modules/ui/CircularProgressIndicatorProps;", "equals", "", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CircularProgressIndicatorProps implements ComposeProps {
    public static final int $stable = 8;
    private final Color color;
    private final Float gapSize;
    private final List<Map<String, Object>> modifiers;
    private final Float progress;
    private final String strokeCap;
    private final Float strokeWidth;
    private final Color trackColor;

    public CircularProgressIndicatorProps() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CircularProgressIndicatorProps copy$default(CircularProgressIndicatorProps circularProgressIndicatorProps, Float f, Color color, Color color2, Float f2, String str, Float f3, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            f = circularProgressIndicatorProps.progress;
        }
        if ((i & 2) != 0) {
            color = circularProgressIndicatorProps.color;
        }
        if ((i & 4) != 0) {
            color2 = circularProgressIndicatorProps.trackColor;
        }
        if ((i & 8) != 0) {
            f2 = circularProgressIndicatorProps.strokeWidth;
        }
        if ((i & 16) != 0) {
            str = circularProgressIndicatorProps.strokeCap;
        }
        if ((i & 32) != 0) {
            f3 = circularProgressIndicatorProps.gapSize;
        }
        if ((i & 64) != 0) {
            list = circularProgressIndicatorProps.modifiers;
        }
        Float f4 = f3;
        List list2 = list;
        String str2 = str;
        Color color3 = color2;
        return circularProgressIndicatorProps.copy(f, color, color3, f2, str2, f4, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Float getProgress() {
        return this.progress;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Color getColor() {
        return this.color;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Color getTrackColor() {
        return this.trackColor;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Float getStrokeWidth() {
        return this.strokeWidth;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getStrokeCap() {
        return this.strokeCap;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Float getGapSize() {
        return this.gapSize;
    }

    public final List<Map<String, Object>> component7() {
        return this.modifiers;
    }

    public final CircularProgressIndicatorProps copy(Float progress, Color color, Color trackColor, Float strokeWidth, String strokeCap, Float gapSize, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new CircularProgressIndicatorProps(progress, color, trackColor, strokeWidth, strokeCap, gapSize, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CircularProgressIndicatorProps)) {
            return false;
        }
        CircularProgressIndicatorProps circularProgressIndicatorProps = (CircularProgressIndicatorProps) other;
        return Intrinsics.areEqual((Object) this.progress, (Object) circularProgressIndicatorProps.progress) && Intrinsics.areEqual(this.color, circularProgressIndicatorProps.color) && Intrinsics.areEqual(this.trackColor, circularProgressIndicatorProps.trackColor) && Intrinsics.areEqual((Object) this.strokeWidth, (Object) circularProgressIndicatorProps.strokeWidth) && Intrinsics.areEqual(this.strokeCap, circularProgressIndicatorProps.strokeCap) && Intrinsics.areEqual((Object) this.gapSize, (Object) circularProgressIndicatorProps.gapSize) && Intrinsics.areEqual(this.modifiers, circularProgressIndicatorProps.modifiers);
    }

    public int hashCode() {
        Float f = this.progress;
        int iHashCode = (f == null ? 0 : f.hashCode()) * 31;
        Color color = this.color;
        int iHashCode2 = (iHashCode + (color == null ? 0 : color.hashCode())) * 31;
        Color color2 = this.trackColor;
        int iHashCode3 = (iHashCode2 + (color2 == null ? 0 : color2.hashCode())) * 31;
        Float f2 = this.strokeWidth;
        int iHashCode4 = (iHashCode3 + (f2 == null ? 0 : f2.hashCode())) * 31;
        String str = this.strokeCap;
        int iHashCode5 = (iHashCode4 + (str == null ? 0 : str.hashCode())) * 31;
        Float f3 = this.gapSize;
        return ((iHashCode5 + (f3 != null ? f3.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "CircularProgressIndicatorProps(progress=" + this.progress + ", color=" + this.color + ", trackColor=" + this.trackColor + ", strokeWidth=" + this.strokeWidth + ", strokeCap=" + this.strokeCap + ", gapSize=" + this.gapSize + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CircularProgressIndicatorProps(Float f, Color color, Color color2, Float f2, String str, Float f3, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.progress = f;
        this.color = color;
        this.trackColor = color2;
        this.strokeWidth = f2;
        this.strokeCap = str;
        this.gapSize = f3;
        this.modifiers = modifiers;
    }

    public final Float getProgress() {
        return this.progress;
    }

    public final Color getColor() {
        return this.color;
    }

    public final Color getTrackColor() {
        return this.trackColor;
    }

    public final Float getStrokeWidth() {
        return this.strokeWidth;
    }

    public final String getStrokeCap() {
        return this.strokeCap;
    }

    public final Float getGapSize() {
        return this.gapSize;
    }

    public /* synthetic */ CircularProgressIndicatorProps(Float f, Color color, Color color2, Float f2, String str, Float f3, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : f, (i & 2) != 0 ? null : color, (i & 4) != 0 ? null : color2, (i & 8) != 0 ? null : f2, (i & 16) != 0 ? null : str, (i & 32) != 0 ? null : f3, (i & 64) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
