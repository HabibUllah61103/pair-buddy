package expo.modules.ui.menu;

import android.graphics.Color;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DropdownMenuRecords.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0007HÆ\u0003J%\u0010\u001c\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0003JO\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u000bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R-\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006#"}, d2 = {"Lexpo/modules/ui/menu/DropdownMenuProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "activationMethod", "Lexpo/modules/ui/menu/ActivationMethod;", "expanded", "", "color", "Landroid/graphics/Color;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Lexpo/modules/ui/menu/ActivationMethod;ZLandroid/graphics/Color;Ljava/util/List;)V", "getActivationMethod", "()Lexpo/modules/ui/menu/ActivationMethod;", "getExpanded", "()Z", "getColor", "()Landroid/graphics/Color;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DropdownMenuProps implements ComposeProps {
    public static final int $stable = 8;
    private final ActivationMethod activationMethod;
    private final Color color;
    private final boolean expanded;
    private final List<Map<String, Object>> modifiers;

    public DropdownMenuProps() {
        this(null, false, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DropdownMenuProps copy$default(DropdownMenuProps dropdownMenuProps, ActivationMethod activationMethod, boolean z, Color color, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            activationMethod = dropdownMenuProps.activationMethod;
        }
        if ((i & 2) != 0) {
            z = dropdownMenuProps.expanded;
        }
        if ((i & 4) != 0) {
            color = dropdownMenuProps.color;
        }
        if ((i & 8) != 0) {
            list = dropdownMenuProps.modifiers;
        }
        return dropdownMenuProps.copy(activationMethod, z, color, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ActivationMethod getActivationMethod() {
        return this.activationMethod;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getExpanded() {
        return this.expanded;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Color getColor() {
        return this.color;
    }

    public final List<Map<String, Object>> component4() {
        return this.modifiers;
    }

    public final DropdownMenuProps copy(ActivationMethod activationMethod, boolean expanded, Color color, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(activationMethod, "activationMethod");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new DropdownMenuProps(activationMethod, expanded, color, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DropdownMenuProps)) {
            return false;
        }
        DropdownMenuProps dropdownMenuProps = (DropdownMenuProps) other;
        return this.activationMethod == dropdownMenuProps.activationMethod && this.expanded == dropdownMenuProps.expanded && Intrinsics.areEqual(this.color, dropdownMenuProps.color) && Intrinsics.areEqual(this.modifiers, dropdownMenuProps.modifiers);
    }

    public int hashCode() {
        int iHashCode = ((this.activationMethod.hashCode() * 31) + Boolean.hashCode(this.expanded)) * 31;
        Color color = this.color;
        return ((iHashCode + (color == null ? 0 : color.hashCode())) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "DropdownMenuProps(activationMethod=" + this.activationMethod + ", expanded=" + this.expanded + ", color=" + this.color + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DropdownMenuProps(ActivationMethod activationMethod, boolean z, Color color, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(activationMethod, "activationMethod");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.activationMethod = activationMethod;
        this.expanded = z;
        this.color = color;
        this.modifiers = modifiers;
    }

    public /* synthetic */ DropdownMenuProps(ActivationMethod activationMethod, boolean z, Color color, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ActivationMethod.SINGLE_PRESS : activationMethod, (i & 2) != 0 ? false : z, (i & 4) != 0 ? null : color, (i & 8) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final ActivationMethod getActivationMethod() {
        return this.activationMethod;
    }

    public final boolean getExpanded() {
        return this.expanded;
    }

    public final Color getColor() {
        return this.color;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
