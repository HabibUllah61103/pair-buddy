package expo.modules.ui;

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
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bu\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012*\b\u0002\u0010\b\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e0\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003HÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J+\u0010\u001a\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e0\u0003HÆ\u0003Jw\u0010\u001b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032*\b\u0002\u0010\b\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e0\u0003HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u000bHÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0011R\u0019\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R3\u0010\b\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011¨\u0006!"}, d2 = {"Lexpo/modules/ui/TooltipBoxViewProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "isPersistent", "Landroidx/compose/runtime/MutableState;", "", "hasAction", "enableUserInput", "focusable", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V", "()Landroidx/compose/runtime/MutableState;", "getHasAction", "getEnableUserInput", "getFocusable", "getModifiers", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TooltipBoxViewProps implements ComposeProps {
    public static final int $stable = 0;
    private final MutableState<Boolean> enableUserInput;
    private final MutableState<Boolean> focusable;
    private final MutableState<Boolean> hasAction;
    private final MutableState<Boolean> isPersistent;
    private final MutableState<List<Map<String, Object>>> modifiers;

    public TooltipBoxViewProps() {
        this(null, null, null, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TooltipBoxViewProps copy$default(TooltipBoxViewProps tooltipBoxViewProps, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, int i, Object obj) {
        if ((i & 1) != 0) {
            mutableState = tooltipBoxViewProps.isPersistent;
        }
        if ((i & 2) != 0) {
            mutableState2 = tooltipBoxViewProps.hasAction;
        }
        if ((i & 4) != 0) {
            mutableState3 = tooltipBoxViewProps.enableUserInput;
        }
        if ((i & 8) != 0) {
            mutableState4 = tooltipBoxViewProps.focusable;
        }
        if ((i & 16) != 0) {
            mutableState5 = tooltipBoxViewProps.modifiers;
        }
        MutableState mutableState6 = mutableState5;
        MutableState mutableState7 = mutableState3;
        return tooltipBoxViewProps.copy(mutableState, mutableState2, mutableState7, mutableState4, mutableState6);
    }

    public final MutableState<Boolean> component1() {
        return this.isPersistent;
    }

    public final MutableState<Boolean> component2() {
        return this.hasAction;
    }

    public final MutableState<Boolean> component3() {
        return this.enableUserInput;
    }

    public final MutableState<Boolean> component4() {
        return this.focusable;
    }

    public final MutableState<List<Map<String, Object>>> component5() {
        return this.modifiers;
    }

    public final TooltipBoxViewProps copy(MutableState<Boolean> isPersistent, MutableState<Boolean> hasAction, MutableState<Boolean> enableUserInput, MutableState<Boolean> focusable, MutableState<List<Map<String, Object>>> modifiers) {
        Intrinsics.checkNotNullParameter(isPersistent, "isPersistent");
        Intrinsics.checkNotNullParameter(hasAction, "hasAction");
        Intrinsics.checkNotNullParameter(enableUserInput, "enableUserInput");
        Intrinsics.checkNotNullParameter(focusable, "focusable");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new TooltipBoxViewProps(isPersistent, hasAction, enableUserInput, focusable, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TooltipBoxViewProps)) {
            return false;
        }
        TooltipBoxViewProps tooltipBoxViewProps = (TooltipBoxViewProps) other;
        return Intrinsics.areEqual(this.isPersistent, tooltipBoxViewProps.isPersistent) && Intrinsics.areEqual(this.hasAction, tooltipBoxViewProps.hasAction) && Intrinsics.areEqual(this.enableUserInput, tooltipBoxViewProps.enableUserInput) && Intrinsics.areEqual(this.focusable, tooltipBoxViewProps.focusable) && Intrinsics.areEqual(this.modifiers, tooltipBoxViewProps.modifiers);
    }

    public int hashCode() {
        return (((((((this.isPersistent.hashCode() * 31) + this.hasAction.hashCode()) * 31) + this.enableUserInput.hashCode()) * 31) + this.focusable.hashCode()) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "TooltipBoxViewProps(isPersistent=" + this.isPersistent + ", hasAction=" + this.hasAction + ", enableUserInput=" + this.enableUserInput + ", focusable=" + this.focusable + ", modifiers=" + this.modifiers + ")";
    }

    public TooltipBoxViewProps(MutableState<Boolean> isPersistent, MutableState<Boolean> hasAction, MutableState<Boolean> enableUserInput, MutableState<Boolean> focusable, MutableState<List<Map<String, Object>>> modifiers) {
        Intrinsics.checkNotNullParameter(isPersistent, "isPersistent");
        Intrinsics.checkNotNullParameter(hasAction, "hasAction");
        Intrinsics.checkNotNullParameter(enableUserInput, "enableUserInput");
        Intrinsics.checkNotNullParameter(focusable, "focusable");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.isPersistent = isPersistent;
        this.hasAction = hasAction;
        this.enableUserInput = enableUserInput;
        this.focusable = focusable;
        this.modifiers = modifiers;
    }

    public /* synthetic */ TooltipBoxViewProps(MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null) : mutableState, (i & 2) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState2, (i & 4) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(true, null, 2, null) : mutableState3, (i & 8) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null) : mutableState4, (i & 16) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(CollectionsKt.emptyList(), null, 2, null) : mutableState5);
    }

    public final MutableState<Boolean> isPersistent() {
        return this.isPersistent;
    }

    public final MutableState<Boolean> getHasAction() {
        return this.hasAction;
    }

    public final MutableState<Boolean> getEnableUserInput() {
        return this.enableUserInput;
    }

    public final MutableState<Boolean> getFocusable() {
        return this.focusable;
    }

    public final MutableState<List<Map<String, Object>>> getModifiers() {
        return this.modifiers;
    }
}
