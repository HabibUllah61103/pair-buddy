package expo.modules.ui;

import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SegmentedButtonView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J%\u0010\u001d\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0003JW\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0001J\u0013\u0010\u001f\u001a\u00020\u00032\b\u0010 \u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u000bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R-\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006$"}, d2 = {"Lexpo/modules/ui/SegmentedButtonProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "selected", "", "checked", ViewProps.ENABLED, "colors", "Lexpo/modules/ui/SegmentedButtonColors;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(ZZZLexpo/modules/ui/SegmentedButtonColors;Ljava/util/List;)V", "getSelected", "()Z", "getChecked", "getEnabled", "getColors", "()Lexpo/modules/ui/SegmentedButtonColors;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SegmentedButtonProps implements ComposeProps {
    public static final int $stable = 8;
    private final boolean checked;
    private final SegmentedButtonColors colors;
    private final boolean enabled;
    private final List<Map<String, Object>> modifiers;
    private final boolean selected;

    public SegmentedButtonProps() {
        this(false, false, false, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SegmentedButtonProps copy$default(SegmentedButtonProps segmentedButtonProps, boolean z, boolean z2, boolean z3, SegmentedButtonColors segmentedButtonColors, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = segmentedButtonProps.selected;
        }
        if ((i & 2) != 0) {
            z2 = segmentedButtonProps.checked;
        }
        if ((i & 4) != 0) {
            z3 = segmentedButtonProps.enabled;
        }
        if ((i & 8) != 0) {
            segmentedButtonColors = segmentedButtonProps.colors;
        }
        if ((i & 16) != 0) {
            list = segmentedButtonProps.modifiers;
        }
        List list2 = list;
        boolean z4 = z3;
        return segmentedButtonProps.copy(z, z2, z4, segmentedButtonColors, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getSelected() {
        return this.selected;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getChecked() {
        return this.checked;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final SegmentedButtonColors getColors() {
        return this.colors;
    }

    public final List<Map<String, Object>> component5() {
        return this.modifiers;
    }

    public final SegmentedButtonProps copy(boolean selected, boolean checked, boolean enabled, SegmentedButtonColors colors, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new SegmentedButtonProps(selected, checked, enabled, colors, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SegmentedButtonProps)) {
            return false;
        }
        SegmentedButtonProps segmentedButtonProps = (SegmentedButtonProps) other;
        return this.selected == segmentedButtonProps.selected && this.checked == segmentedButtonProps.checked && this.enabled == segmentedButtonProps.enabled && Intrinsics.areEqual(this.colors, segmentedButtonProps.colors) && Intrinsics.areEqual(this.modifiers, segmentedButtonProps.modifiers);
    }

    public int hashCode() {
        return (((((((Boolean.hashCode(this.selected) * 31) + Boolean.hashCode(this.checked)) * 31) + Boolean.hashCode(this.enabled)) * 31) + this.colors.hashCode()) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "SegmentedButtonProps(selected=" + this.selected + ", checked=" + this.checked + ", enabled=" + this.enabled + ", colors=" + this.colors + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SegmentedButtonProps(boolean z, boolean z2, boolean z3, SegmentedButtonColors colors, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.selected = z;
        this.checked = z2;
        this.enabled = z3;
        this.colors = colors;
        this.modifiers = modifiers;
    }

    public final boolean getSelected() {
        return this.selected;
    }

    public final boolean getChecked() {
        return this.checked;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public /* synthetic */ SegmentedButtonProps(boolean z, boolean z2, boolean z3, SegmentedButtonColors segmentedButtonColors, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) == 0 ? z2 : false, (i & 4) != 0 ? true : z3, (i & 8) != 0 ? new SegmentedButtonColors(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null) : segmentedButtonColors, (i & 16) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final SegmentedButtonColors getColors() {
        return this.colors;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
