package expo.modules.ui;

import android.graphics.Color;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DividerView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012$\b\u0002\u0010\u0006\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\f¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J%\u0010\u0018\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\fHÆ\u0003JL\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052$\b\u0002\u0010\u0006\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\fHÆ\u0001¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\tHÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R-\u0010\u0006\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\f¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006!"}, d2 = {"Lexpo/modules/ui/DividerProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "thickness", "", "color", "Landroid/graphics/Color;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Ljava/lang/Float;Landroid/graphics/Color;Ljava/util/List;)V", "getThickness", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getColor", "()Landroid/graphics/Color;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "(Ljava/lang/Float;Landroid/graphics/Color;Ljava/util/List;)Lexpo/modules/ui/DividerProps;", "equals", "", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DividerProps implements ComposeProps {
    public static final int $stable = 8;
    private final Color color;
    private final List<Map<String, Object>> modifiers;
    private final Float thickness;

    public DividerProps() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DividerProps copy$default(DividerProps dividerProps, Float f, Color color, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            f = dividerProps.thickness;
        }
        if ((i & 2) != 0) {
            color = dividerProps.color;
        }
        if ((i & 4) != 0) {
            list = dividerProps.modifiers;
        }
        return dividerProps.copy(f, color, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Float getThickness() {
        return this.thickness;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Color getColor() {
        return this.color;
    }

    public final List<Map<String, Object>> component3() {
        return this.modifiers;
    }

    public final DividerProps copy(Float thickness, Color color, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new DividerProps(thickness, color, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DividerProps)) {
            return false;
        }
        DividerProps dividerProps = (DividerProps) other;
        return Intrinsics.areEqual((Object) this.thickness, (Object) dividerProps.thickness) && Intrinsics.areEqual(this.color, dividerProps.color) && Intrinsics.areEqual(this.modifiers, dividerProps.modifiers);
    }

    public int hashCode() {
        Float f = this.thickness;
        int iHashCode = (f == null ? 0 : f.hashCode()) * 31;
        Color color = this.color;
        return ((iHashCode + (color != null ? color.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "DividerProps(thickness=" + this.thickness + ", color=" + this.color + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DividerProps(Float f, Color color, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.thickness = f;
        this.color = color;
        this.modifiers = modifiers;
    }

    public final Float getThickness() {
        return this.thickness;
    }

    public final Color getColor() {
        return this.color;
    }

    public /* synthetic */ DividerProps(Float f, Color color, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : f, (i & 2) != 0 ? null : color, (i & 4) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
