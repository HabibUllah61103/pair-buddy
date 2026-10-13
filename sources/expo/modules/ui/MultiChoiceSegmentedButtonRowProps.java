package expo.modules.ui;

import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SegmentedControlView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012$\b\u0002\u0010\u0002\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004j\u0002`\u00070\u0003j\u0002`\b¢\u0006\u0004\b\t\u0010\nJ%\u0010\r\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004j\u0002`\u00070\u0003j\u0002`\bHÆ\u0003J/\u0010\u000e\u001a\u00020\u00002$\b\u0002\u0010\u0002\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004j\u0002`\u00070\u0003j\u0002`\bHÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R-\u0010\u0002\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004j\u0002`\u00070\u0003j\u0002`\b¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lexpo/modules/ui/MultiChoiceSegmentedButtonRowProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Ljava/util/List;)V", "getModifiers", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class MultiChoiceSegmentedButtonRowProps implements ComposeProps {
    public static final int $stable = 8;
    private final List<Map<String, Object>> modifiers;

    /* JADX WARN: Multi-variable type inference failed */
    public MultiChoiceSegmentedButtonRowProps() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MultiChoiceSegmentedButtonRowProps copy$default(MultiChoiceSegmentedButtonRowProps multiChoiceSegmentedButtonRowProps, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = multiChoiceSegmentedButtonRowProps.modifiers;
        }
        return multiChoiceSegmentedButtonRowProps.copy(list);
    }

    public final List<Map<String, Object>> component1() {
        return this.modifiers;
    }

    public final MultiChoiceSegmentedButtonRowProps copy(List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new MultiChoiceSegmentedButtonRowProps(modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof MultiChoiceSegmentedButtonRowProps) && Intrinsics.areEqual(this.modifiers, ((MultiChoiceSegmentedButtonRowProps) other).modifiers);
    }

    public int hashCode() {
        return this.modifiers.hashCode();
    }

    public String toString() {
        return "MultiChoiceSegmentedButtonRowProps(modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MultiChoiceSegmentedButtonRowProps(List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.modifiers = modifiers;
    }

    public /* synthetic */ MultiChoiceSegmentedButtonRowProps(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
