package expo.modules.ui;

import android.graphics.Color;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TooltipView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BW\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012*\b\u0002\u0010\u0006\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\f0\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003HÆ\u0003J\u0011\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003HÆ\u0003J+\u0010\u0015\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\f0\u0003HÆ\u0003JY\u0010\u0016\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032*\b\u0002\u0010\u0006\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\f0\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\tHÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R3\u0010\u0006\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bj\u0002`\u000b0\u0007j\u0002`\f0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u001d"}, d2 = {"Lexpo/modules/ui/PlainTooltipViewProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "containerColor", "Landroidx/compose/runtime/MutableState;", "Landroid/graphics/Color;", "contentColor", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V", "getContainerColor", "()Landroidx/compose/runtime/MutableState;", "getContentColor", "getModifiers", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class PlainTooltipViewProps implements ComposeProps {
    public static final int $stable = 0;
    private final MutableState<Color> containerColor;
    private final MutableState<Color> contentColor;
    private final MutableState<List<Map<String, Object>>> modifiers;

    public PlainTooltipViewProps() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PlainTooltipViewProps copy$default(PlainTooltipViewProps plainTooltipViewProps, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, int i, Object obj) {
        if ((i & 1) != 0) {
            mutableState = plainTooltipViewProps.containerColor;
        }
        if ((i & 2) != 0) {
            mutableState2 = plainTooltipViewProps.contentColor;
        }
        if ((i & 4) != 0) {
            mutableState3 = plainTooltipViewProps.modifiers;
        }
        return plainTooltipViewProps.copy(mutableState, mutableState2, mutableState3);
    }

    public final MutableState<Color> component1() {
        return this.containerColor;
    }

    public final MutableState<Color> component2() {
        return this.contentColor;
    }

    public final MutableState<List<Map<String, Object>>> component3() {
        return this.modifiers;
    }

    public final PlainTooltipViewProps copy(MutableState<Color> containerColor, MutableState<Color> contentColor, MutableState<List<Map<String, Object>>> modifiers) {
        Intrinsics.checkNotNullParameter(containerColor, "containerColor");
        Intrinsics.checkNotNullParameter(contentColor, "contentColor");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new PlainTooltipViewProps(containerColor, contentColor, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlainTooltipViewProps)) {
            return false;
        }
        PlainTooltipViewProps plainTooltipViewProps = (PlainTooltipViewProps) other;
        return Intrinsics.areEqual(this.containerColor, plainTooltipViewProps.containerColor) && Intrinsics.areEqual(this.contentColor, plainTooltipViewProps.contentColor) && Intrinsics.areEqual(this.modifiers, plainTooltipViewProps.modifiers);
    }

    public int hashCode() {
        return (((this.containerColor.hashCode() * 31) + this.contentColor.hashCode()) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "PlainTooltipViewProps(containerColor=" + this.containerColor + ", contentColor=" + this.contentColor + ", modifiers=" + this.modifiers + ")";
    }

    public PlainTooltipViewProps(MutableState<Color> containerColor, MutableState<Color> contentColor, MutableState<List<Map<String, Object>>> modifiers) {
        Intrinsics.checkNotNullParameter(containerColor, "containerColor");
        Intrinsics.checkNotNullParameter(contentColor, "contentColor");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.containerColor = containerColor;
        this.contentColor = contentColor;
        this.modifiers = modifiers;
    }

    public /* synthetic */ PlainTooltipViewProps(MutableState mutableState, MutableState mutableState2, MutableState mutableState3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState, (i & 2) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState2, (i & 4) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(CollectionsKt.emptyList(), null, 2, null) : mutableState3);
    }

    public final MutableState<Color> getContainerColor() {
        return this.containerColor;
    }

    public final MutableState<Color> getContentColor() {
        return this.contentColor;
    }

    public final MutableState<List<Map<String, Object>>> getModifiers() {
        return this.modifiers;
    }
}
