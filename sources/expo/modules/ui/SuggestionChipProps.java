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
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BY\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012$\b\u0002\u0010\n\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fj\u0002`\u000f0\u000bj\u0002`\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010!\u001a\u0004\u0018\u00010\tHÆ\u0003J%\u0010\"\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fj\u0002`\u000f0\u000bj\u0002`\u0010HÆ\u0003J`\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2$\b\u0002\u0010\n\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fj\u0002`\u000f0\u000bj\u0002`\u0010HÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\u00032\b\u0010&\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010'\u001a\u00020(HÖ\u0001J\t\u0010)\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR-\u0010\n\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fj\u0002`\u000f0\u000bj\u0002`\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006*"}, d2 = {"Lexpo/modules/ui/SuggestionChipProps;", "Lexpo/modules/kotlin/views/ComposeProps;", ViewProps.ENABLED, "", "colors", "Lexpo/modules/ui/SuggestionChipColors;", "elevation", "", "border", "Lexpo/modules/ui/ChipBorder;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(ZLexpo/modules/ui/SuggestionChipColors;Ljava/lang/Float;Lexpo/modules/ui/ChipBorder;Ljava/util/List;)V", "getEnabled", "()Z", "getColors", "()Lexpo/modules/ui/SuggestionChipColors;", "getElevation", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getBorder", "()Lexpo/modules/ui/ChipBorder;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "copy", "(ZLexpo/modules/ui/SuggestionChipColors;Ljava/lang/Float;Lexpo/modules/ui/ChipBorder;Ljava/util/List;)Lexpo/modules/ui/SuggestionChipProps;", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SuggestionChipProps implements ComposeProps {
    public static final int $stable = 8;
    private final ChipBorder border;
    private final SuggestionChipColors colors;
    private final Float elevation;
    private final boolean enabled;
    private final List<Map<String, Object>> modifiers;

    public SuggestionChipProps() {
        this(false, null, null, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SuggestionChipProps copy$default(SuggestionChipProps suggestionChipProps, boolean z, SuggestionChipColors suggestionChipColors, Float f, ChipBorder chipBorder, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = suggestionChipProps.enabled;
        }
        if ((i & 2) != 0) {
            suggestionChipColors = suggestionChipProps.colors;
        }
        if ((i & 4) != 0) {
            f = suggestionChipProps.elevation;
        }
        if ((i & 8) != 0) {
            chipBorder = suggestionChipProps.border;
        }
        if ((i & 16) != 0) {
            list = suggestionChipProps.modifiers;
        }
        List list2 = list;
        Float f2 = f;
        return suggestionChipProps.copy(z, suggestionChipColors, f2, chipBorder, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final SuggestionChipColors getColors() {
        return this.colors;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Float getElevation() {
        return this.elevation;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final ChipBorder getBorder() {
        return this.border;
    }

    public final List<Map<String, Object>> component5() {
        return this.modifiers;
    }

    public final SuggestionChipProps copy(boolean enabled, SuggestionChipColors colors, Float elevation, ChipBorder border, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new SuggestionChipProps(enabled, colors, elevation, border, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SuggestionChipProps)) {
            return false;
        }
        SuggestionChipProps suggestionChipProps = (SuggestionChipProps) other;
        return this.enabled == suggestionChipProps.enabled && Intrinsics.areEqual(this.colors, suggestionChipProps.colors) && Intrinsics.areEqual((Object) this.elevation, (Object) suggestionChipProps.elevation) && Intrinsics.areEqual(this.border, suggestionChipProps.border) && Intrinsics.areEqual(this.modifiers, suggestionChipProps.modifiers);
    }

    public int hashCode() {
        int iHashCode = ((Boolean.hashCode(this.enabled) * 31) + this.colors.hashCode()) * 31;
        Float f = this.elevation;
        int iHashCode2 = (iHashCode + (f == null ? 0 : f.hashCode())) * 31;
        ChipBorder chipBorder = this.border;
        return ((iHashCode2 + (chipBorder != null ? chipBorder.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "SuggestionChipProps(enabled=" + this.enabled + ", colors=" + this.colors + ", elevation=" + this.elevation + ", border=" + this.border + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SuggestionChipProps(boolean z, SuggestionChipColors colors, Float f, ChipBorder chipBorder, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.enabled = z;
        this.colors = colors;
        this.elevation = f;
        this.border = chipBorder;
        this.modifiers = modifiers;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public /* synthetic */ SuggestionChipProps(boolean z, SuggestionChipColors suggestionChipColors, Float f, ChipBorder chipBorder, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? new SuggestionChipColors() : suggestionChipColors, (i & 4) != 0 ? null : f, (i & 8) != 0 ? null : chipBorder, (i & 16) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final SuggestionChipColors getColors() {
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
