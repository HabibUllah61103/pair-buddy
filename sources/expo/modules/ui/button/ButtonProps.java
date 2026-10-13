package expo.modules.ui.button;

import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.views.ComposeProps;
import expo.modules.ui.ShapeRecord;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Button.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BY\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012$\b\u0002\u0010\n\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fj\u0002`\u000f0\u000bj\u0002`\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\tHÆ\u0003J%\u0010!\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fj\u0002`\u000f0\u000bj\u0002`\u0010HÆ\u0003J[\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2$\b\u0002\u0010\n\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fj\u0002`\u000f0\u000bj\u0002`\u0010HÆ\u0001J\u0013\u0010#\u001a\u00020\u00052\b\u0010$\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR-\u0010\n\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fj\u0002`\u000f0\u000bj\u0002`\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006("}, d2 = {"Lexpo/modules/ui/button/ButtonProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "colors", "Lexpo/modules/ui/button/ButtonColors;", ViewProps.ENABLED, "", "contentPadding", "Lexpo/modules/ui/button/ContentPaddingRecord;", "shape", "Lexpo/modules/ui/ShapeRecord;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Lexpo/modules/ui/button/ButtonColors;ZLexpo/modules/ui/button/ContentPaddingRecord;Lexpo/modules/ui/ShapeRecord;Ljava/util/List;)V", "getColors", "()Lexpo/modules/ui/button/ButtonColors;", "getEnabled", "()Z", "getContentPadding", "()Lexpo/modules/ui/button/ContentPaddingRecord;", "getShape", "()Lexpo/modules/ui/ShapeRecord;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ButtonProps implements ComposeProps {
    public static final int $stable = 8;
    private final ButtonColors colors;
    private final ContentPaddingRecord contentPadding;
    private final boolean enabled;
    private final List<Map<String, Object>> modifiers;
    private final ShapeRecord shape;

    public ButtonProps() {
        this(null, false, null, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ButtonProps copy$default(ButtonProps buttonProps, ButtonColors buttonColors, boolean z, ContentPaddingRecord contentPaddingRecord, ShapeRecord shapeRecord, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            buttonColors = buttonProps.colors;
        }
        if ((i & 2) != 0) {
            z = buttonProps.enabled;
        }
        if ((i & 4) != 0) {
            contentPaddingRecord = buttonProps.contentPadding;
        }
        if ((i & 8) != 0) {
            shapeRecord = buttonProps.shape;
        }
        if ((i & 16) != 0) {
            list = buttonProps.modifiers;
        }
        List list2 = list;
        ContentPaddingRecord contentPaddingRecord2 = contentPaddingRecord;
        return buttonProps.copy(buttonColors, z, contentPaddingRecord2, shapeRecord, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ButtonColors getColors() {
        return this.colors;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ContentPaddingRecord getContentPadding() {
        return this.contentPadding;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final ShapeRecord getShape() {
        return this.shape;
    }

    public final List<Map<String, Object>> component5() {
        return this.modifiers;
    }

    public final ButtonProps copy(ButtonColors colors, boolean enabled, ContentPaddingRecord contentPadding, ShapeRecord shape, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new ButtonProps(colors, enabled, contentPadding, shape, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ButtonProps)) {
            return false;
        }
        ButtonProps buttonProps = (ButtonProps) other;
        return Intrinsics.areEqual(this.colors, buttonProps.colors) && this.enabled == buttonProps.enabled && Intrinsics.areEqual(this.contentPadding, buttonProps.contentPadding) && Intrinsics.areEqual(this.shape, buttonProps.shape) && Intrinsics.areEqual(this.modifiers, buttonProps.modifiers);
    }

    public int hashCode() {
        int iHashCode = ((this.colors.hashCode() * 31) + Boolean.hashCode(this.enabled)) * 31;
        ContentPaddingRecord contentPaddingRecord = this.contentPadding;
        int iHashCode2 = (iHashCode + (contentPaddingRecord == null ? 0 : contentPaddingRecord.hashCode())) * 31;
        ShapeRecord shapeRecord = this.shape;
        return ((iHashCode2 + (shapeRecord != null ? shapeRecord.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "ButtonProps(colors=" + this.colors + ", enabled=" + this.enabled + ", contentPadding=" + this.contentPadding + ", shape=" + this.shape + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ButtonProps(ButtonColors colors, boolean z, ContentPaddingRecord contentPaddingRecord, ShapeRecord shapeRecord, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.colors = colors;
        this.enabled = z;
        this.contentPadding = contentPaddingRecord;
        this.shape = shapeRecord;
        this.modifiers = modifiers;
    }

    public /* synthetic */ ButtonProps(ButtonColors buttonColors, boolean z, ContentPaddingRecord contentPaddingRecord, ShapeRecord shapeRecord, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ButtonColors() : buttonColors, (i & 2) != 0 ? true : z, (i & 4) != 0 ? null : contentPaddingRecord, (i & 8) != 0 ? null : shapeRecord, (i & 16) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final ButtonColors getColors() {
        return this.colors;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final ContentPaddingRecord getContentPadding() {
        return this.contentPadding;
    }

    public final ShapeRecord getShape() {
        return this.shape;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
