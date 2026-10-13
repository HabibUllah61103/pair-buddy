package expo.modules.ui.button;

import android.graphics.Color;
import com.facebook.hermes.intl.Constants;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FloatingActionButton.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0007HÆ\u0003J%\u0010\u001c\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0003JO\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u000bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R-\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006#"}, d2 = {"Lexpo/modules/ui/button/FloatingActionButtonProps;", "Lexpo/modules/kotlin/views/ComposeProps;", Constants.SENSITIVITY_VARIANT, "Lexpo/modules/ui/button/FloatingActionButtonVariant;", "expanded", "", "containerColor", "Landroid/graphics/Color;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Lexpo/modules/ui/button/FloatingActionButtonVariant;ZLandroid/graphics/Color;Ljava/util/List;)V", "getVariant", "()Lexpo/modules/ui/button/FloatingActionButtonVariant;", "getExpanded", "()Z", "getContainerColor", "()Landroid/graphics/Color;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class FloatingActionButtonProps implements ComposeProps {
    public static final int $stable = 8;
    private final Color containerColor;
    private final boolean expanded;
    private final List<Map<String, Object>> modifiers;
    private final FloatingActionButtonVariant variant;

    public FloatingActionButtonProps() {
        this(null, false, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FloatingActionButtonProps copy$default(FloatingActionButtonProps floatingActionButtonProps, FloatingActionButtonVariant floatingActionButtonVariant, boolean z, Color color, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            floatingActionButtonVariant = floatingActionButtonProps.variant;
        }
        if ((i & 2) != 0) {
            z = floatingActionButtonProps.expanded;
        }
        if ((i & 4) != 0) {
            color = floatingActionButtonProps.containerColor;
        }
        if ((i & 8) != 0) {
            list = floatingActionButtonProps.modifiers;
        }
        return floatingActionButtonProps.copy(floatingActionButtonVariant, z, color, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final FloatingActionButtonVariant getVariant() {
        return this.variant;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getExpanded() {
        return this.expanded;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Color getContainerColor() {
        return this.containerColor;
    }

    public final List<Map<String, Object>> component4() {
        return this.modifiers;
    }

    public final FloatingActionButtonProps copy(FloatingActionButtonVariant variant, boolean expanded, Color containerColor, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(variant, "variant");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new FloatingActionButtonProps(variant, expanded, containerColor, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FloatingActionButtonProps)) {
            return false;
        }
        FloatingActionButtonProps floatingActionButtonProps = (FloatingActionButtonProps) other;
        return this.variant == floatingActionButtonProps.variant && this.expanded == floatingActionButtonProps.expanded && Intrinsics.areEqual(this.containerColor, floatingActionButtonProps.containerColor) && Intrinsics.areEqual(this.modifiers, floatingActionButtonProps.modifiers);
    }

    public int hashCode() {
        int iHashCode = ((this.variant.hashCode() * 31) + Boolean.hashCode(this.expanded)) * 31;
        Color color = this.containerColor;
        return ((iHashCode + (color == null ? 0 : color.hashCode())) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "FloatingActionButtonProps(variant=" + this.variant + ", expanded=" + this.expanded + ", containerColor=" + this.containerColor + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FloatingActionButtonProps(FloatingActionButtonVariant variant, boolean z, Color color, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(variant, "variant");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.variant = variant;
        this.expanded = z;
        this.containerColor = color;
        this.modifiers = modifiers;
    }

    public /* synthetic */ FloatingActionButtonProps(FloatingActionButtonVariant floatingActionButtonVariant, boolean z, Color color, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? FloatingActionButtonVariant.MEDIUM : floatingActionButtonVariant, (i & 2) != 0 ? true : z, (i & 4) != 0 ? null : color, (i & 8) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final FloatingActionButtonVariant getVariant() {
        return this.variant;
    }

    public final boolean getExpanded() {
        return this.expanded;
    }

    public final Color getContainerColor() {
        return this.containerColor;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
