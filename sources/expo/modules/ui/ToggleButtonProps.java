package expo.modules.ui;

import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ToggleButtonView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012$\b\u0002\u0010\u0007\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\f0\bj\u0002`\r¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J%\u0010\u001a\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\f0\bj\u0002`\rHÆ\u0003JM\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062$\b\u0002\u0010\u0007\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\f0\bj\u0002`\rHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u00032\b\u0010\u001d\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\nHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R-\u0010\u0007\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\f0\bj\u0002`\r¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006!"}, d2 = {"Lexpo/modules/ui/ToggleButtonProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "checked", "", ViewProps.ENABLED, "colors", "Lexpo/modules/ui/ToggleButtonColors;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(ZZLexpo/modules/ui/ToggleButtonColors;Ljava/util/List;)V", "getChecked", "()Z", "getEnabled", "getColors", "()Lexpo/modules/ui/ToggleButtonColors;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ToggleButtonProps implements ComposeProps {
    public static final int $stable = 8;
    private final boolean checked;
    private final ToggleButtonColors colors;
    private final boolean enabled;
    private final List<Map<String, Object>> modifiers;

    public ToggleButtonProps() {
        this(false, false, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ToggleButtonProps copy$default(ToggleButtonProps toggleButtonProps, boolean z, boolean z2, ToggleButtonColors toggleButtonColors, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = toggleButtonProps.checked;
        }
        if ((i & 2) != 0) {
            z2 = toggleButtonProps.enabled;
        }
        if ((i & 4) != 0) {
            toggleButtonColors = toggleButtonProps.colors;
        }
        if ((i & 8) != 0) {
            list = toggleButtonProps.modifiers;
        }
        return toggleButtonProps.copy(z, z2, toggleButtonColors, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getChecked() {
        return this.checked;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ToggleButtonColors getColors() {
        return this.colors;
    }

    public final List<Map<String, Object>> component4() {
        return this.modifiers;
    }

    public final ToggleButtonProps copy(boolean checked, boolean enabled, ToggleButtonColors colors, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new ToggleButtonProps(checked, enabled, colors, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ToggleButtonProps)) {
            return false;
        }
        ToggleButtonProps toggleButtonProps = (ToggleButtonProps) other;
        return this.checked == toggleButtonProps.checked && this.enabled == toggleButtonProps.enabled && Intrinsics.areEqual(this.colors, toggleButtonProps.colors) && Intrinsics.areEqual(this.modifiers, toggleButtonProps.modifiers);
    }

    public int hashCode() {
        return (((((Boolean.hashCode(this.checked) * 31) + Boolean.hashCode(this.enabled)) * 31) + this.colors.hashCode()) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "ToggleButtonProps(checked=" + this.checked + ", enabled=" + this.enabled + ", colors=" + this.colors + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ToggleButtonProps(boolean z, boolean z2, ToggleButtonColors colors, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.checked = z;
        this.enabled = z2;
        this.colors = colors;
        this.modifiers = modifiers;
    }

    public final boolean getChecked() {
        return this.checked;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public /* synthetic */ ToggleButtonProps(boolean z, boolean z2, ToggleButtonColors toggleButtonColors, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? true : z2, (i & 4) != 0 ? new ToggleButtonColors(null, null, null, null, null, null, 63, null) : toggleButtonColors, (i & 8) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final ToggleButtonColors getColors() {
        return this.colors;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
