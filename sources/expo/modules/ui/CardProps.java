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
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0007HÆ\u0003J%\u0010\u001d\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0003JV\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010#\u001a\u00020$HÖ\u0001J\t\u0010%\u001a\u00020\u000bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R-\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006&"}, d2 = {"Lexpo/modules/ui/CardProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "colors", "Lexpo/modules/ui/CardColors;", "elevation", "", "border", "Lexpo/modules/ui/CardBorder;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Lexpo/modules/ui/CardColors;Ljava/lang/Float;Lexpo/modules/ui/CardBorder;Ljava/util/List;)V", "getColors", "()Lexpo/modules/ui/CardColors;", "getElevation", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getBorder", "()Lexpo/modules/ui/CardBorder;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "(Lexpo/modules/ui/CardColors;Ljava/lang/Float;Lexpo/modules/ui/CardBorder;Ljava/util/List;)Lexpo/modules/ui/CardProps;", "equals", "", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CardProps implements ComposeProps {
    public static final int $stable = 8;
    private final CardBorder border;
    private final CardColors colors;
    private final Float elevation;
    private final List<Map<String, Object>> modifiers;

    public CardProps() {
        this(null, null, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CardProps copy$default(CardProps cardProps, CardColors cardColors, Float f, CardBorder cardBorder, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            cardColors = cardProps.colors;
        }
        if ((i & 2) != 0) {
            f = cardProps.elevation;
        }
        if ((i & 4) != 0) {
            cardBorder = cardProps.border;
        }
        if ((i & 8) != 0) {
            list = cardProps.modifiers;
        }
        return cardProps.copy(cardColors, f, cardBorder, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final CardColors getColors() {
        return this.colors;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Float getElevation() {
        return this.elevation;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final CardBorder getBorder() {
        return this.border;
    }

    public final List<Map<String, Object>> component4() {
        return this.modifiers;
    }

    public final CardProps copy(CardColors colors, Float elevation, CardBorder border, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new CardProps(colors, elevation, border, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CardProps)) {
            return false;
        }
        CardProps cardProps = (CardProps) other;
        return Intrinsics.areEqual(this.colors, cardProps.colors) && Intrinsics.areEqual((Object) this.elevation, (Object) cardProps.elevation) && Intrinsics.areEqual(this.border, cardProps.border) && Intrinsics.areEqual(this.modifiers, cardProps.modifiers);
    }

    public int hashCode() {
        int iHashCode = this.colors.hashCode() * 31;
        Float f = this.elevation;
        int iHashCode2 = (iHashCode + (f == null ? 0 : f.hashCode())) * 31;
        CardBorder cardBorder = this.border;
        return ((iHashCode2 + (cardBorder != null ? cardBorder.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "CardProps(colors=" + this.colors + ", elevation=" + this.elevation + ", border=" + this.border + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CardProps(CardColors colors, Float f, CardBorder cardBorder, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.colors = colors;
        this.elevation = f;
        this.border = cardBorder;
        this.modifiers = modifiers;
    }

    public /* synthetic */ CardProps(CardColors cardColors, Float f, CardBorder cardBorder, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new CardColors(null, null, 3, null) : cardColors, (i & 2) != 0 ? null : f, (i & 4) != 0 ? null : cardBorder, (i & 8) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final CardColors getColors() {
        return this.colors;
    }

    public final Float getElevation() {
        return this.elevation;
    }

    public final CardBorder getBorder() {
        return this.border;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
