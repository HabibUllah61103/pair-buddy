package expo.modules.ui;

import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ListItemView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BQ\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012$\b\u0002\u0010\u0007\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\f0\bj\u0002`\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0006HÆ\u0003J%\u0010\u001b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\f0\bj\u0002`\rHÆ\u0003JX\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062$\b\u0002\u0010\u0007\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\f0\bj\u0002`\rHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\nHÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0013\u0010\u0011R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R-\u0010\u0007\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\f0\bj\u0002`\r¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006$"}, d2 = {"Lexpo/modules/ui/ListItemProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "tonalElevation", "", "shadowElevation", "colors", "Lexpo/modules/ui/ListItemColors;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ListItemColors;Ljava/util/List;)V", "getTonalElevation", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getShadowElevation", "getColors", "()Lexpo/modules/ui/ListItemColors;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ListItemColors;Ljava/util/List;)Lexpo/modules/ui/ListItemProps;", "equals", "", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ListItemProps implements ComposeProps {
    public static final int $stable = 8;
    private final ListItemColors colors;
    private final List<Map<String, Object>> modifiers;
    private final Float shadowElevation;
    private final Float tonalElevation;

    public ListItemProps() {
        this(null, null, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ListItemProps copy$default(ListItemProps listItemProps, Float f, Float f2, ListItemColors listItemColors, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            f = listItemProps.tonalElevation;
        }
        if ((i & 2) != 0) {
            f2 = listItemProps.shadowElevation;
        }
        if ((i & 4) != 0) {
            listItemColors = listItemProps.colors;
        }
        if ((i & 8) != 0) {
            list = listItemProps.modifiers;
        }
        return listItemProps.copy(f, f2, listItemColors, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Float getTonalElevation() {
        return this.tonalElevation;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Float getShadowElevation() {
        return this.shadowElevation;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ListItemColors getColors() {
        return this.colors;
    }

    public final List<Map<String, Object>> component4() {
        return this.modifiers;
    }

    public final ListItemProps copy(Float tonalElevation, Float shadowElevation, ListItemColors colors, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new ListItemProps(tonalElevation, shadowElevation, colors, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ListItemProps)) {
            return false;
        }
        ListItemProps listItemProps = (ListItemProps) other;
        return Intrinsics.areEqual((Object) this.tonalElevation, (Object) listItemProps.tonalElevation) && Intrinsics.areEqual((Object) this.shadowElevation, (Object) listItemProps.shadowElevation) && Intrinsics.areEqual(this.colors, listItemProps.colors) && Intrinsics.areEqual(this.modifiers, listItemProps.modifiers);
    }

    public int hashCode() {
        Float f = this.tonalElevation;
        int iHashCode = (f == null ? 0 : f.hashCode()) * 31;
        Float f2 = this.shadowElevation;
        int iHashCode2 = (iHashCode + (f2 == null ? 0 : f2.hashCode())) * 31;
        ListItemColors listItemColors = this.colors;
        return ((iHashCode2 + (listItemColors != null ? listItemColors.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "ListItemProps(tonalElevation=" + this.tonalElevation + ", shadowElevation=" + this.shadowElevation + ", colors=" + this.colors + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ListItemProps(Float f, Float f2, ListItemColors listItemColors, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.tonalElevation = f;
        this.shadowElevation = f2;
        this.colors = listItemColors;
        this.modifiers = modifiers;
    }

    public final Float getTonalElevation() {
        return this.tonalElevation;
    }

    public final Float getShadowElevation() {
        return this.shadowElevation;
    }

    public final ListItemColors getColors() {
        return this.colors;
    }

    public /* synthetic */ ListItemProps(Float f, Float f2, ListItemColors listItemColors, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : f, (i & 2) != 0 ? null : f2, (i & 4) != 0 ? null : listItemColors, (i & 8) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
