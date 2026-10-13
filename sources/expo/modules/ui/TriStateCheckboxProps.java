package expo.modules.ui;

import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CheckboxView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012$\b\u0002\u0010\t\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000bj\u0002`\u000e0\nj\u0002`\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\bHÆ\u0003J%\u0010\u001f\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000bj\u0002`\u000e0\nj\u0002`\u000fHÆ\u0003JW\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2$\b\u0002\u0010\t\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000bj\u0002`\u000e0\nj\u0002`\u000fHÆ\u0001J\u0013\u0010!\u001a\u00020\u00052\b\u0010\"\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010#\u001a\u00020$HÖ\u0001J\t\u0010%\u001a\u00020\fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R-\u0010\t\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000bj\u0002`\u000e0\nj\u0002`\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006&"}, d2 = {"Lexpo/modules/ui/TriStateCheckboxProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "state", "Lexpo/modules/ui/ToggleableStateValue;", ViewProps.ENABLED, "", "nativeClickable", "colors", "Lexpo/modules/ui/CheckboxColors;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Lexpo/modules/ui/ToggleableStateValue;ZZLexpo/modules/ui/CheckboxColors;Ljava/util/List;)V", "getState", "()Lexpo/modules/ui/ToggleableStateValue;", "getEnabled", "()Z", "getNativeClickable", "getColors", "()Lexpo/modules/ui/CheckboxColors;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TriStateCheckboxProps implements ComposeProps {
    public static final int $stable = 8;
    private final CheckboxColors colors;
    private final boolean enabled;
    private final List<Map<String, Object>> modifiers;
    private final boolean nativeClickable;
    private final ToggleableStateValue state;

    public TriStateCheckboxProps() {
        this(null, false, false, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TriStateCheckboxProps copy$default(TriStateCheckboxProps triStateCheckboxProps, ToggleableStateValue toggleableStateValue, boolean z, boolean z2, CheckboxColors checkboxColors, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            toggleableStateValue = triStateCheckboxProps.state;
        }
        if ((i & 2) != 0) {
            z = triStateCheckboxProps.enabled;
        }
        if ((i & 4) != 0) {
            z2 = triStateCheckboxProps.nativeClickable;
        }
        if ((i & 8) != 0) {
            checkboxColors = triStateCheckboxProps.colors;
        }
        if ((i & 16) != 0) {
            list = triStateCheckboxProps.modifiers;
        }
        List list2 = list;
        boolean z3 = z2;
        return triStateCheckboxProps.copy(toggleableStateValue, z, z3, checkboxColors, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ToggleableStateValue getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getNativeClickable() {
        return this.nativeClickable;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final CheckboxColors getColors() {
        return this.colors;
    }

    public final List<Map<String, Object>> component5() {
        return this.modifiers;
    }

    public final TriStateCheckboxProps copy(ToggleableStateValue state, boolean enabled, boolean nativeClickable, CheckboxColors colors, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new TriStateCheckboxProps(state, enabled, nativeClickable, colors, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TriStateCheckboxProps)) {
            return false;
        }
        TriStateCheckboxProps triStateCheckboxProps = (TriStateCheckboxProps) other;
        return this.state == triStateCheckboxProps.state && this.enabled == triStateCheckboxProps.enabled && this.nativeClickable == triStateCheckboxProps.nativeClickable && Intrinsics.areEqual(this.colors, triStateCheckboxProps.colors) && Intrinsics.areEqual(this.modifiers, triStateCheckboxProps.modifiers);
    }

    public int hashCode() {
        return (((((((this.state.hashCode() * 31) + Boolean.hashCode(this.enabled)) * 31) + Boolean.hashCode(this.nativeClickable)) * 31) + this.colors.hashCode()) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "TriStateCheckboxProps(state=" + this.state + ", enabled=" + this.enabled + ", nativeClickable=" + this.nativeClickable + ", colors=" + this.colors + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TriStateCheckboxProps(ToggleableStateValue state, boolean z, boolean z2, CheckboxColors colors, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.state = state;
        this.enabled = z;
        this.nativeClickable = z2;
        this.colors = colors;
        this.modifiers = modifiers;
    }

    public /* synthetic */ TriStateCheckboxProps(ToggleableStateValue toggleableStateValue, boolean z, boolean z2, CheckboxColors checkboxColors, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ToggleableStateValue.OFF : toggleableStateValue, (i & 2) != 0 ? true : z, (i & 4) == 0 ? z2 : true, (i & 8) != 0 ? new CheckboxColors(null, null, null, null, null, null, 63, null) : checkboxColors, (i & 16) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final ToggleableStateValue getState() {
        return this.state;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final boolean getNativeClickable() {
        return this.nativeClickable;
    }

    public final CheckboxColors getColors() {
        return this.colors;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
