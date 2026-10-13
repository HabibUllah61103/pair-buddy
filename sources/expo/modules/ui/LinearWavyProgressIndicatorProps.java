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
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B]\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J%\u0010\u001e\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0003Jd\u0010\u001f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0001¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\u000bHÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0017\u0010\u0012R-\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006'"}, d2 = {"Lexpo/modules/ui/LinearWavyProgressIndicatorProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "progress", "", "color", "Landroid/graphics/Color;", "trackColor", "stopSize", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Ljava/lang/Float;Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/util/List;)V", "getProgress", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getColor", "()Landroid/graphics/Color;", "getTrackColor", "getStopSize", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Float;Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/util/List;)Lexpo/modules/ui/LinearWavyProgressIndicatorProps;", "equals", "", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class LinearWavyProgressIndicatorProps implements ComposeProps {
    public static final int $stable = 8;
    private final Color color;
    private final List<Map<String, Object>> modifiers;
    private final Float progress;
    private final Float stopSize;
    private final Color trackColor;

    public LinearWavyProgressIndicatorProps() {
        this(null, null, null, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LinearWavyProgressIndicatorProps copy$default(LinearWavyProgressIndicatorProps linearWavyProgressIndicatorProps, Float f, Color color, Color color2, Float f2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            f = linearWavyProgressIndicatorProps.progress;
        }
        if ((i & 2) != 0) {
            color = linearWavyProgressIndicatorProps.color;
        }
        if ((i & 4) != 0) {
            color2 = linearWavyProgressIndicatorProps.trackColor;
        }
        if ((i & 8) != 0) {
            f2 = linearWavyProgressIndicatorProps.stopSize;
        }
        if ((i & 16) != 0) {
            list = linearWavyProgressIndicatorProps.modifiers;
        }
        List list2 = list;
        Color color3 = color2;
        return linearWavyProgressIndicatorProps.copy(f, color, color3, f2, list2);
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
    public final Float getStopSize() {
        return this.stopSize;
    }

    public final List<Map<String, Object>> component5() {
        return this.modifiers;
    }

    public final LinearWavyProgressIndicatorProps copy(Float progress, Color color, Color trackColor, Float stopSize, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new LinearWavyProgressIndicatorProps(progress, color, trackColor, stopSize, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LinearWavyProgressIndicatorProps)) {
            return false;
        }
        LinearWavyProgressIndicatorProps linearWavyProgressIndicatorProps = (LinearWavyProgressIndicatorProps) other;
        return Intrinsics.areEqual((Object) this.progress, (Object) linearWavyProgressIndicatorProps.progress) && Intrinsics.areEqual(this.color, linearWavyProgressIndicatorProps.color) && Intrinsics.areEqual(this.trackColor, linearWavyProgressIndicatorProps.trackColor) && Intrinsics.areEqual((Object) this.stopSize, (Object) linearWavyProgressIndicatorProps.stopSize) && Intrinsics.areEqual(this.modifiers, linearWavyProgressIndicatorProps.modifiers);
    }

    public int hashCode() {
        Float f = this.progress;
        int iHashCode = (f == null ? 0 : f.hashCode()) * 31;
        Color color = this.color;
        int iHashCode2 = (iHashCode + (color == null ? 0 : color.hashCode())) * 31;
        Color color2 = this.trackColor;
        int iHashCode3 = (iHashCode2 + (color2 == null ? 0 : color2.hashCode())) * 31;
        Float f2 = this.stopSize;
        return ((iHashCode3 + (f2 != null ? f2.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "LinearWavyProgressIndicatorProps(progress=" + this.progress + ", color=" + this.color + ", trackColor=" + this.trackColor + ", stopSize=" + this.stopSize + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LinearWavyProgressIndicatorProps(Float f, Color color, Color color2, Float f2, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.progress = f;
        this.color = color;
        this.trackColor = color2;
        this.stopSize = f2;
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

    public final Float getStopSize() {
        return this.stopSize;
    }

    public /* synthetic */ LinearWavyProgressIndicatorProps(Float f, Color color, Color color2, Float f2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : f, (i & 2) != 0 ? null : color, (i & 4) != 0 ? null : color2, (i & 8) != 0 ? null : f2, (i & 16) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
