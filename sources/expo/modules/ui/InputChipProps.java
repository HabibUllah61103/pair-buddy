package expo.modules.ui;

import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChipView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bc\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012$\b\u0002\u0010\u000b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\rj\u0002`\u00100\fj\u0002`\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0006HÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u0010$\u001a\u0004\u0018\u00010\nHÆ\u0003J%\u0010%\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\rj\u0002`\u00100\fj\u0002`\u0011HÆ\u0003Jj\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2$\b\u0002\u0010\u000b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\rj\u0002`\u00100\fj\u0002`\u0011HÆ\u0001¢\u0006\u0002\u0010'J\u0013\u0010(\u001a\u00020\u00032\b\u0010)\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010*\u001a\u00020+HÖ\u0001J\t\u0010,\u001a\u00020\u000eHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR-\u0010\u000b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\rj\u0002`\u00100\fj\u0002`\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f¨\u0006-"}, d2 = {"Lexpo/modules/ui/InputChipProps;", "Lexpo/modules/kotlin/views/ComposeProps;", ViewProps.ENABLED, "", "selected", "colors", "Lexpo/modules/ui/InputChipColors;", "elevation", "", "border", "Lexpo/modules/ui/ChipBorder;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(ZZLexpo/modules/ui/InputChipColors;Ljava/lang/Float;Lexpo/modules/ui/ChipBorder;Ljava/util/List;)V", "getEnabled", "()Z", "getSelected", "getColors", "()Lexpo/modules/ui/InputChipColors;", "getElevation", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getBorder", "()Lexpo/modules/ui/ChipBorder;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(ZZLexpo/modules/ui/InputChipColors;Ljava/lang/Float;Lexpo/modules/ui/ChipBorder;Ljava/util/List;)Lexpo/modules/ui/InputChipProps;", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class InputChipProps implements ComposeProps {
    public static final int $stable = 8;
    private final ChipBorder border;
    private final InputChipColors colors;
    private final Float elevation;
    private final boolean enabled;
    private final List<Map<String, Object>> modifiers;
    private final boolean selected;

    public InputChipProps() {
        this(false, false, null, null, null, null, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ InputChipProps copy$default(InputChipProps inputChipProps, boolean z, boolean z2, InputChipColors inputChipColors, Float f, ChipBorder chipBorder, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = inputChipProps.enabled;
        }
        if ((i & 2) != 0) {
            z2 = inputChipProps.selected;
        }
        if ((i & 4) != 0) {
            inputChipColors = inputChipProps.colors;
        }
        if ((i & 8) != 0) {
            f = inputChipProps.elevation;
        }
        if ((i & 16) != 0) {
            chipBorder = inputChipProps.border;
        }
        if ((i & 32) != 0) {
            list = inputChipProps.modifiers;
        }
        ChipBorder chipBorder2 = chipBorder;
        List list2 = list;
        return inputChipProps.copy(z, z2, inputChipColors, f, chipBorder2, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getSelected() {
        return this.selected;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final InputChipColors getColors() {
        return this.colors;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Float getElevation() {
        return this.elevation;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final ChipBorder getBorder() {
        return this.border;
    }

    public final List<Map<String, Object>> component6() {
        return this.modifiers;
    }

    public final InputChipProps copy(boolean enabled, boolean selected, InputChipColors colors, Float elevation, ChipBorder border, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new InputChipProps(enabled, selected, colors, elevation, border, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InputChipProps)) {
            return false;
        }
        InputChipProps inputChipProps = (InputChipProps) other;
        return this.enabled == inputChipProps.enabled && this.selected == inputChipProps.selected && Intrinsics.areEqual(this.colors, inputChipProps.colors) && Intrinsics.areEqual((Object) this.elevation, (Object) inputChipProps.elevation) && Intrinsics.areEqual(this.border, inputChipProps.border) && Intrinsics.areEqual(this.modifiers, inputChipProps.modifiers);
    }

    public int hashCode() {
        int iHashCode = ((((Boolean.hashCode(this.enabled) * 31) + Boolean.hashCode(this.selected)) * 31) + this.colors.hashCode()) * 31;
        Float f = this.elevation;
        int iHashCode2 = (iHashCode + (f == null ? 0 : f.hashCode())) * 31;
        ChipBorder chipBorder = this.border;
        return ((iHashCode2 + (chipBorder != null ? chipBorder.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "InputChipProps(enabled=" + this.enabled + ", selected=" + this.selected + ", colors=" + this.colors + ", elevation=" + this.elevation + ", border=" + this.border + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public InputChipProps(boolean z, boolean z2, InputChipColors colors, Float f, ChipBorder chipBorder, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.enabled = z;
        this.selected = z2;
        this.colors = colors;
        this.elevation = f;
        this.border = chipBorder;
        this.modifiers = modifiers;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final boolean getSelected() {
        return this.selected;
    }

    public /* synthetic */ InputChipProps(boolean z, boolean z2, InputChipColors inputChipColors, Float f, ChipBorder chipBorder, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? new InputChipColors() : inputChipColors, (i & 8) != 0 ? null : f, (i & 16) != 0 ? null : chipBorder, (i & 32) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final InputChipColors getColors() {
        return this.colors;
    }

    public final Float getElevation() {
        return this.elevation;
    }

    public final ChipBorder getBorder() {
        return this.border;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
