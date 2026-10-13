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
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B{\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012*\b\u0002\u0010\b\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e0\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003HÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003HÆ\u0003J\u0011\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003HÆ\u0003J+\u0010\u001b\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e0\u0003HÆ\u0003J}\u0010\u001c\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032*\b\u0002\u0010\b\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e0\u0003HÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u000bHÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0019\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0019\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R3\u0010\b\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012¨\u0006#"}, d2 = {"Lexpo/modules/ui/RichTooltipViewProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "containerColor", "Landroidx/compose/runtime/MutableState;", "Landroid/graphics/Color;", "contentColor", "titleContentColor", "actionContentColor", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V", "getContainerColor", "()Landroidx/compose/runtime/MutableState;", "getContentColor", "getTitleContentColor", "getActionContentColor", "getModifiers", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class RichTooltipViewProps implements ComposeProps {
    public static final int $stable = 0;
    private final MutableState<Color> actionContentColor;
    private final MutableState<Color> containerColor;
    private final MutableState<Color> contentColor;
    private final MutableState<List<Map<String, Object>>> modifiers;
    private final MutableState<Color> titleContentColor;

    public RichTooltipViewProps() {
        this(null, null, null, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RichTooltipViewProps copy$default(RichTooltipViewProps richTooltipViewProps, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, int i, Object obj) {
        if ((i & 1) != 0) {
            mutableState = richTooltipViewProps.containerColor;
        }
        if ((i & 2) != 0) {
            mutableState2 = richTooltipViewProps.contentColor;
        }
        if ((i & 4) != 0) {
            mutableState3 = richTooltipViewProps.titleContentColor;
        }
        if ((i & 8) != 0) {
            mutableState4 = richTooltipViewProps.actionContentColor;
        }
        if ((i & 16) != 0) {
            mutableState5 = richTooltipViewProps.modifiers;
        }
        MutableState mutableState6 = mutableState5;
        MutableState mutableState7 = mutableState3;
        return richTooltipViewProps.copy(mutableState, mutableState2, mutableState7, mutableState4, mutableState6);
    }

    public final MutableState<Color> component1() {
        return this.containerColor;
    }

    public final MutableState<Color> component2() {
        return this.contentColor;
    }

    public final MutableState<Color> component3() {
        return this.titleContentColor;
    }

    public final MutableState<Color> component4() {
        return this.actionContentColor;
    }

    public final MutableState<List<Map<String, Object>>> component5() {
        return this.modifiers;
    }

    public final RichTooltipViewProps copy(MutableState<Color> containerColor, MutableState<Color> contentColor, MutableState<Color> titleContentColor, MutableState<Color> actionContentColor, MutableState<List<Map<String, Object>>> modifiers) {
        Intrinsics.checkNotNullParameter(containerColor, "containerColor");
        Intrinsics.checkNotNullParameter(contentColor, "contentColor");
        Intrinsics.checkNotNullParameter(titleContentColor, "titleContentColor");
        Intrinsics.checkNotNullParameter(actionContentColor, "actionContentColor");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new RichTooltipViewProps(containerColor, contentColor, titleContentColor, actionContentColor, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RichTooltipViewProps)) {
            return false;
        }
        RichTooltipViewProps richTooltipViewProps = (RichTooltipViewProps) other;
        return Intrinsics.areEqual(this.containerColor, richTooltipViewProps.containerColor) && Intrinsics.areEqual(this.contentColor, richTooltipViewProps.contentColor) && Intrinsics.areEqual(this.titleContentColor, richTooltipViewProps.titleContentColor) && Intrinsics.areEqual(this.actionContentColor, richTooltipViewProps.actionContentColor) && Intrinsics.areEqual(this.modifiers, richTooltipViewProps.modifiers);
    }

    public int hashCode() {
        return (((((((this.containerColor.hashCode() * 31) + this.contentColor.hashCode()) * 31) + this.titleContentColor.hashCode()) * 31) + this.actionContentColor.hashCode()) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "RichTooltipViewProps(containerColor=" + this.containerColor + ", contentColor=" + this.contentColor + ", titleContentColor=" + this.titleContentColor + ", actionContentColor=" + this.actionContentColor + ", modifiers=" + this.modifiers + ")";
    }

    public RichTooltipViewProps(MutableState<Color> containerColor, MutableState<Color> contentColor, MutableState<Color> titleContentColor, MutableState<Color> actionContentColor, MutableState<List<Map<String, Object>>> modifiers) {
        Intrinsics.checkNotNullParameter(containerColor, "containerColor");
        Intrinsics.checkNotNullParameter(contentColor, "contentColor");
        Intrinsics.checkNotNullParameter(titleContentColor, "titleContentColor");
        Intrinsics.checkNotNullParameter(actionContentColor, "actionContentColor");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.containerColor = containerColor;
        this.contentColor = contentColor;
        this.titleContentColor = titleContentColor;
        this.actionContentColor = actionContentColor;
        this.modifiers = modifiers;
    }

    public /* synthetic */ RichTooltipViewProps(MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState, (i & 2) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState2, (i & 4) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState3, (i & 8) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState4, (i & 16) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(CollectionsKt.emptyList(), null, 2, null) : mutableState5);
    }

    public final MutableState<Color> getContainerColor() {
        return this.containerColor;
    }

    public final MutableState<Color> getContentColor() {
        return this.contentColor;
    }

    public final MutableState<Color> getTitleContentColor() {
        return this.titleContentColor;
    }

    public final MutableState<Color> getActionContentColor() {
        return this.actionContentColor;
    }

    public final MutableState<List<Map<String, Object>>> getModifiers() {
        return this.modifiers;
    }
}
