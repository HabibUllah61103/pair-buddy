package expo.modules.ui;

import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CardView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012$\b\u0002\u0010\u0006\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\f¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0012J%\u0010\u0018\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\fHÆ\u0003JJ\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052$\b\u0002\u0010\u0006\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\fHÆ\u0001¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R-\u0010\u0006\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\f¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006!"}, d2 = {"Lexpo/modules/ui/ElevatedCardProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "colors", "Lexpo/modules/ui/CardColors;", "elevation", "", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Lexpo/modules/ui/CardColors;Ljava/lang/Float;Ljava/util/List;)V", "getColors", "()Lexpo/modules/ui/CardColors;", "getElevation", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "(Lexpo/modules/ui/CardColors;Ljava/lang/Float;Ljava/util/List;)Lexpo/modules/ui/ElevatedCardProps;", "equals", "", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ElevatedCardProps implements ComposeProps {
    public static final int $stable = 8;
    private final CardColors colors;
    private final Float elevation;
    private final List<Map<String, Object>> modifiers;

    public ElevatedCardProps() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ElevatedCardProps copy$default(ElevatedCardProps elevatedCardProps, CardColors cardColors, Float f, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            cardColors = elevatedCardProps.colors;
        }
        if ((i & 2) != 0) {
            f = elevatedCardProps.elevation;
        }
        if ((i & 4) != 0) {
            list = elevatedCardProps.modifiers;
        }
        return elevatedCardProps.copy(cardColors, f, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final CardColors getColors() {
        return this.colors;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Float getElevation() {
        return this.elevation;
    }

    public final List<Map<String, Object>> component3() {
        return this.modifiers;
    }

    public final ElevatedCardProps copy(CardColors colors, Float elevation, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new ElevatedCardProps(colors, elevation, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ElevatedCardProps)) {
            return false;
        }
        ElevatedCardProps elevatedCardProps = (ElevatedCardProps) other;
        return Intrinsics.areEqual(this.colors, elevatedCardProps.colors) && Intrinsics.areEqual((Object) this.elevation, (Object) elevatedCardProps.elevation) && Intrinsics.areEqual(this.modifiers, elevatedCardProps.modifiers);
    }

    public int hashCode() {
        int iHashCode = this.colors.hashCode() * 31;
        Float f = this.elevation;
        return ((iHashCode + (f == null ? 0 : f.hashCode())) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "ElevatedCardProps(colors=" + this.colors + ", elevation=" + this.elevation + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ElevatedCardProps(CardColors colors, Float f, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.colors = colors;
        this.elevation = f;
        this.modifiers = modifiers;
    }

    public /* synthetic */ ElevatedCardProps(CardColors cardColors, Float f, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new CardColors(null, null, 3, null) : cardColors, (i & 2) != 0 ? null : f, (i & 4) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final CardColors getColors() {
        return this.colors;
    }

    public final Float getElevation() {
        return this.elevation;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
