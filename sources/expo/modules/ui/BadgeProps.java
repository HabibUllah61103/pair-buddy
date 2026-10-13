package expo.modules.ui;

import android.graphics.Color;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BadgeView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012$\b\u0002\u0010\u0005\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007j\u0002`\n0\u0006j\u0002`\u000b¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J%\u0010\u0015\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007j\u0002`\n0\u0006j\u0002`\u000bHÆ\u0003JG\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032$\b\u0002\u0010\u0005\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007j\u0002`\n0\u0006j\u0002`\u000bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\tHÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\bHÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR-\u0010\u0005\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007j\u0002`\n0\u0006j\u0002`\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lexpo/modules/ui/BadgeProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "containerColor", "Landroid/graphics/Color;", "contentColor", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/util/List;)V", "getContainerColor", "()Landroid/graphics/Color;", "getContentColor", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BadgeProps implements ComposeProps {
    public static final int $stable = 8;
    private final Color containerColor;
    private final Color contentColor;
    private final List<Map<String, Object>> modifiers;

    public BadgeProps() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BadgeProps copy$default(BadgeProps badgeProps, Color color, Color color2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            color = badgeProps.containerColor;
        }
        if ((i & 2) != 0) {
            color2 = badgeProps.contentColor;
        }
        if ((i & 4) != 0) {
            list = badgeProps.modifiers;
        }
        return badgeProps.copy(color, color2, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Color getContainerColor() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Color getContentColor() {
        return this.contentColor;
    }

    public final List<Map<String, Object>> component3() {
        return this.modifiers;
    }

    public final BadgeProps copy(Color containerColor, Color contentColor, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new BadgeProps(containerColor, contentColor, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BadgeProps)) {
            return false;
        }
        BadgeProps badgeProps = (BadgeProps) other;
        return Intrinsics.areEqual(this.containerColor, badgeProps.containerColor) && Intrinsics.areEqual(this.contentColor, badgeProps.contentColor) && Intrinsics.areEqual(this.modifiers, badgeProps.modifiers);
    }

    public int hashCode() {
        Color color = this.containerColor;
        int iHashCode = (color == null ? 0 : color.hashCode()) * 31;
        Color color2 = this.contentColor;
        return ((iHashCode + (color2 != null ? color2.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "BadgeProps(containerColor=" + this.containerColor + ", contentColor=" + this.contentColor + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BadgeProps(Color color, Color color2, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.containerColor = color;
        this.contentColor = color2;
        this.modifiers = modifiers;
    }

    public final Color getContainerColor() {
        return this.containerColor;
    }

    public final Color getContentColor() {
        return this.contentColor;
    }

    public /* synthetic */ BadgeProps(Color color, Color color2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : color, (i & 2) != 0 ? null : color2, (i & 4) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
