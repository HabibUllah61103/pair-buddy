package expo.modules.ui.menu;

import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ExposedDropdownMenuBoxView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012$\b\u0002\u0010\u0004\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006j\u0002`\t0\u0005j\u0002`\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J%\u0010\u0012\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006j\u0002`\t0\u0005j\u0002`\nHÆ\u0003J9\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032$\b\u0002\u0010\u0004\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006j\u0002`\t0\u0005j\u0002`\nHÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\bHÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR-\u0010\u0004\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006j\u0002`\t0\u0005j\u0002`\n¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0019"}, d2 = {"Lexpo/modules/ui/menu/ExposedDropdownMenuBoxProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "expanded", "", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(ZLjava/util/List;)V", "getExpanded", "()Z", "getModifiers", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ExposedDropdownMenuBoxProps implements ComposeProps {
    public static final int $stable = 8;
    private final boolean expanded;
    private final List<Map<String, Object>> modifiers;

    /* JADX WARN: Multi-variable type inference failed */
    public ExposedDropdownMenuBoxProps() {
        this(false, null, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ExposedDropdownMenuBoxProps copy$default(ExposedDropdownMenuBoxProps exposedDropdownMenuBoxProps, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = exposedDropdownMenuBoxProps.expanded;
        }
        if ((i & 2) != 0) {
            list = exposedDropdownMenuBoxProps.modifiers;
        }
        return exposedDropdownMenuBoxProps.copy(z, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getExpanded() {
        return this.expanded;
    }

    public final List<Map<String, Object>> component2() {
        return this.modifiers;
    }

    public final ExposedDropdownMenuBoxProps copy(boolean expanded, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new ExposedDropdownMenuBoxProps(expanded, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ExposedDropdownMenuBoxProps)) {
            return false;
        }
        ExposedDropdownMenuBoxProps exposedDropdownMenuBoxProps = (ExposedDropdownMenuBoxProps) other;
        return this.expanded == exposedDropdownMenuBoxProps.expanded && Intrinsics.areEqual(this.modifiers, exposedDropdownMenuBoxProps.modifiers);
    }

    public int hashCode() {
        return (Boolean.hashCode(this.expanded) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "ExposedDropdownMenuBoxProps(expanded=" + this.expanded + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ExposedDropdownMenuBoxProps(boolean z, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.expanded = z;
        this.modifiers = modifiers;
    }

    public final boolean getExpanded() {
        return this.expanded;
    }

    public /* synthetic */ ExposedDropdownMenuBoxProps(boolean z, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
