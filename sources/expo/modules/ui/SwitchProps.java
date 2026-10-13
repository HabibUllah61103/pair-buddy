package expo.modules.ui;

import com.facebook.react.uimanager.ViewProps;
import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SwitchView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012$\b\u0002\u0010\u0007\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\f0\bj\u0002`\r¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J%\u0010\u001a\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\f0\bj\u0002`\rHÆ\u0003JM\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062$\b\u0002\u0010\u0007\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\f0\bj\u0002`\rHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u00032\b\u0010\u001d\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\nHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R-\u0010\u0007\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\f0\bj\u0002`\r¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006!"}, d2 = {"Lexpo/modules/ui/SwitchProps;", "Lexpo/modules/kotlin/views/ComposeProps;", RNConstants.ARG_VALUE, "", ViewProps.ENABLED, "colors", "Lexpo/modules/ui/SwitchColors;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(ZZLexpo/modules/ui/SwitchColors;Ljava/util/List;)V", "getValue", "()Z", "getEnabled", "getColors", "()Lexpo/modules/ui/SwitchColors;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SwitchProps implements ComposeProps {
    public static final int $stable = 8;
    private final SwitchColors colors;
    private final boolean enabled;
    private final List<Map<String, Object>> modifiers;
    private final boolean value;

    public SwitchProps() {
        this(false, false, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SwitchProps copy$default(SwitchProps switchProps, boolean z, boolean z2, SwitchColors switchColors, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = switchProps.value;
        }
        if ((i & 2) != 0) {
            z2 = switchProps.enabled;
        }
        if ((i & 4) != 0) {
            switchColors = switchProps.colors;
        }
        if ((i & 8) != 0) {
            list = switchProps.modifiers;
        }
        return switchProps.copy(z, z2, switchColors, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getValue() {
        return this.value;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final SwitchColors getColors() {
        return this.colors;
    }

    public final List<Map<String, Object>> component4() {
        return this.modifiers;
    }

    public final SwitchProps copy(boolean value, boolean enabled, SwitchColors colors, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new SwitchProps(value, enabled, colors, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SwitchProps)) {
            return false;
        }
        SwitchProps switchProps = (SwitchProps) other;
        return this.value == switchProps.value && this.enabled == switchProps.enabled && Intrinsics.areEqual(this.colors, switchProps.colors) && Intrinsics.areEqual(this.modifiers, switchProps.modifiers);
    }

    public int hashCode() {
        return (((((Boolean.hashCode(this.value) * 31) + Boolean.hashCode(this.enabled)) * 31) + this.colors.hashCode()) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "SwitchProps(value=" + this.value + ", enabled=" + this.enabled + ", colors=" + this.colors + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SwitchProps(boolean z, boolean z2, SwitchColors colors, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.value = z;
        this.enabled = z2;
        this.colors = colors;
        this.modifiers = modifiers;
    }

    public final boolean getValue() {
        return this.value;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public /* synthetic */ SwitchProps(boolean z, boolean z2, SwitchColors switchColors, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? true : z2, (i & 4) != 0 ? new SwitchColors(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null) : switchColors, (i & 8) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final SwitchColors getColors() {
        return this.colors;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
