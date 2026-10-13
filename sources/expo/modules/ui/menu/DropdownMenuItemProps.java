package expo.modules.ui.menu;

import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DropdownMenuItem.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012$\b\u0002\u0010\u0006\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\f¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J%\u0010\u0017\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\fHÆ\u0003JC\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052$\b\u0002\u0010\u0006\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\fHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R-\u0010\u0006\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\f¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001e"}, d2 = {"Lexpo/modules/ui/menu/DropdownMenuItemProps;", "Lexpo/modules/kotlin/views/ComposeProps;", ViewProps.ENABLED, "", "elementColors", "Lexpo/modules/ui/menu/DropdownMenuItemColors;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(ZLexpo/modules/ui/menu/DropdownMenuItemColors;Ljava/util/List;)V", "getEnabled", "()Z", "getElementColors", "()Lexpo/modules/ui/menu/DropdownMenuItemColors;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DropdownMenuItemProps implements ComposeProps {
    public static final int $stable = 8;
    private final DropdownMenuItemColors elementColors;
    private final boolean enabled;
    private final List<Map<String, Object>> modifiers;

    public DropdownMenuItemProps() {
        this(false, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DropdownMenuItemProps copy$default(DropdownMenuItemProps dropdownMenuItemProps, boolean z, DropdownMenuItemColors dropdownMenuItemColors, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = dropdownMenuItemProps.enabled;
        }
        if ((i & 2) != 0) {
            dropdownMenuItemColors = dropdownMenuItemProps.elementColors;
        }
        if ((i & 4) != 0) {
            list = dropdownMenuItemProps.modifiers;
        }
        return dropdownMenuItemProps.copy(z, dropdownMenuItemColors, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final DropdownMenuItemColors getElementColors() {
        return this.elementColors;
    }

    public final List<Map<String, Object>> component3() {
        return this.modifiers;
    }

    public final DropdownMenuItemProps copy(boolean enabled, DropdownMenuItemColors elementColors, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(elementColors, "elementColors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new DropdownMenuItemProps(enabled, elementColors, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DropdownMenuItemProps)) {
            return false;
        }
        DropdownMenuItemProps dropdownMenuItemProps = (DropdownMenuItemProps) other;
        return this.enabled == dropdownMenuItemProps.enabled && Intrinsics.areEqual(this.elementColors, dropdownMenuItemProps.elementColors) && Intrinsics.areEqual(this.modifiers, dropdownMenuItemProps.modifiers);
    }

    public int hashCode() {
        return (((Boolean.hashCode(this.enabled) * 31) + this.elementColors.hashCode()) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "DropdownMenuItemProps(enabled=" + this.enabled + ", elementColors=" + this.elementColors + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DropdownMenuItemProps(boolean z, DropdownMenuItemColors elementColors, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(elementColors, "elementColors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.enabled = z;
        this.elementColors = elementColors;
        this.modifiers = modifiers;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public /* synthetic */ DropdownMenuItemProps(boolean z, DropdownMenuItemColors dropdownMenuItemColors, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? new DropdownMenuItemColors() : dropdownMenuItemColors, (i & 4) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final DropdownMenuItemColors getElementColors() {
        return this.elementColors;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
