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

/* JADX INFO: compiled from: BottomSheetView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B©\u0001\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0003\u0012*\b\u0002\u0010\r\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000fj\u0002`\u00120\u000ej\u0002`\u00130\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0011\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003HÆ\u0003J\u0011\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003HÆ\u0003J\u0011\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003HÆ\u0003J\u000f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010%\u001a\b\u0012\u0004\u0012\u00020\f0\u0003HÆ\u0003J+\u0010&\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000fj\u0002`\u00120\u000ej\u0002`\u00130\u0003HÆ\u0003J«\u0001\u0010'\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00032\u0010\b\u0002\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00032\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00032*\b\u0002\u0010\r\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000fj\u0002`\u00120\u000ej\u0002`\u00130\u0003HÆ\u0001J\u0013\u0010(\u001a\u00020\u00042\b\u0010)\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010*\u001a\u00020+HÖ\u0001J\t\u0010,\u001a\u00020\u0010HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0019\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0019\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0017R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0017R3\u0010\r\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000fj\u0002`\u00120\u000ej\u0002`\u00130\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0017¨\u0006-"}, d2 = {"Lexpo/modules/ui/ModalBottomSheetViewProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "skipPartiallyExpanded", "Landroidx/compose/runtime/MutableState;", "", "containerColor", "Landroid/graphics/Color;", "contentColor", "scrimColor", "showDragHandle", "sheetGesturesEnabled", "properties", "Lexpo/modules/ui/ModalBottomSheetPropertiesRecord;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V", "getSkipPartiallyExpanded", "()Landroidx/compose/runtime/MutableState;", "getContainerColor", "getContentColor", "getScrimColor", "getShowDragHandle", "getSheetGesturesEnabled", "getProperties", "getModifiers", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ModalBottomSheetViewProps implements ComposeProps {
    public static final int $stable = 0;
    private final MutableState<Color> containerColor;
    private final MutableState<Color> contentColor;
    private final MutableState<List<Map<String, Object>>> modifiers;
    private final MutableState<ModalBottomSheetPropertiesRecord> properties;
    private final MutableState<Color> scrimColor;
    private final MutableState<Boolean> sheetGesturesEnabled;
    private final MutableState<Boolean> showDragHandle;
    private final MutableState<Boolean> skipPartiallyExpanded;

    public ModalBottomSheetViewProps() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ModalBottomSheetViewProps copy$default(ModalBottomSheetViewProps modalBottomSheetViewProps, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, MutableState mutableState6, MutableState mutableState7, MutableState mutableState8, int i, Object obj) {
        if ((i & 1) != 0) {
            mutableState = modalBottomSheetViewProps.skipPartiallyExpanded;
        }
        if ((i & 2) != 0) {
            mutableState2 = modalBottomSheetViewProps.containerColor;
        }
        if ((i & 4) != 0) {
            mutableState3 = modalBottomSheetViewProps.contentColor;
        }
        if ((i & 8) != 0) {
            mutableState4 = modalBottomSheetViewProps.scrimColor;
        }
        if ((i & 16) != 0) {
            mutableState5 = modalBottomSheetViewProps.showDragHandle;
        }
        if ((i & 32) != 0) {
            mutableState6 = modalBottomSheetViewProps.sheetGesturesEnabled;
        }
        if ((i & 64) != 0) {
            mutableState7 = modalBottomSheetViewProps.properties;
        }
        if ((i & 128) != 0) {
            mutableState8 = modalBottomSheetViewProps.modifiers;
        }
        MutableState mutableState9 = mutableState7;
        MutableState mutableState10 = mutableState8;
        MutableState mutableState11 = mutableState5;
        MutableState mutableState12 = mutableState6;
        return modalBottomSheetViewProps.copy(mutableState, mutableState2, mutableState3, mutableState4, mutableState11, mutableState12, mutableState9, mutableState10);
    }

    public final MutableState<Boolean> component1() {
        return this.skipPartiallyExpanded;
    }

    public final MutableState<Color> component2() {
        return this.containerColor;
    }

    public final MutableState<Color> component3() {
        return this.contentColor;
    }

    public final MutableState<Color> component4() {
        return this.scrimColor;
    }

    public final MutableState<Boolean> component5() {
        return this.showDragHandle;
    }

    public final MutableState<Boolean> component6() {
        return this.sheetGesturesEnabled;
    }

    public final MutableState<ModalBottomSheetPropertiesRecord> component7() {
        return this.properties;
    }

    public final MutableState<List<Map<String, Object>>> component8() {
        return this.modifiers;
    }

    public final ModalBottomSheetViewProps copy(MutableState<Boolean> skipPartiallyExpanded, MutableState<Color> containerColor, MutableState<Color> contentColor, MutableState<Color> scrimColor, MutableState<Boolean> showDragHandle, MutableState<Boolean> sheetGesturesEnabled, MutableState<ModalBottomSheetPropertiesRecord> properties, MutableState<List<Map<String, Object>>> modifiers) {
        Intrinsics.checkNotNullParameter(skipPartiallyExpanded, "skipPartiallyExpanded");
        Intrinsics.checkNotNullParameter(containerColor, "containerColor");
        Intrinsics.checkNotNullParameter(contentColor, "contentColor");
        Intrinsics.checkNotNullParameter(scrimColor, "scrimColor");
        Intrinsics.checkNotNullParameter(showDragHandle, "showDragHandle");
        Intrinsics.checkNotNullParameter(sheetGesturesEnabled, "sheetGesturesEnabled");
        Intrinsics.checkNotNullParameter(properties, "properties");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new ModalBottomSheetViewProps(skipPartiallyExpanded, containerColor, contentColor, scrimColor, showDragHandle, sheetGesturesEnabled, properties, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ModalBottomSheetViewProps)) {
            return false;
        }
        ModalBottomSheetViewProps modalBottomSheetViewProps = (ModalBottomSheetViewProps) other;
        return Intrinsics.areEqual(this.skipPartiallyExpanded, modalBottomSheetViewProps.skipPartiallyExpanded) && Intrinsics.areEqual(this.containerColor, modalBottomSheetViewProps.containerColor) && Intrinsics.areEqual(this.contentColor, modalBottomSheetViewProps.contentColor) && Intrinsics.areEqual(this.scrimColor, modalBottomSheetViewProps.scrimColor) && Intrinsics.areEqual(this.showDragHandle, modalBottomSheetViewProps.showDragHandle) && Intrinsics.areEqual(this.sheetGesturesEnabled, modalBottomSheetViewProps.sheetGesturesEnabled) && Intrinsics.areEqual(this.properties, modalBottomSheetViewProps.properties) && Intrinsics.areEqual(this.modifiers, modalBottomSheetViewProps.modifiers);
    }

    public int hashCode() {
        return (((((((((((((this.skipPartiallyExpanded.hashCode() * 31) + this.containerColor.hashCode()) * 31) + this.contentColor.hashCode()) * 31) + this.scrimColor.hashCode()) * 31) + this.showDragHandle.hashCode()) * 31) + this.sheetGesturesEnabled.hashCode()) * 31) + this.properties.hashCode()) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "ModalBottomSheetViewProps(skipPartiallyExpanded=" + this.skipPartiallyExpanded + ", containerColor=" + this.containerColor + ", contentColor=" + this.contentColor + ", scrimColor=" + this.scrimColor + ", showDragHandle=" + this.showDragHandle + ", sheetGesturesEnabled=" + this.sheetGesturesEnabled + ", properties=" + this.properties + ", modifiers=" + this.modifiers + ")";
    }

    public ModalBottomSheetViewProps(MutableState<Boolean> skipPartiallyExpanded, MutableState<Color> containerColor, MutableState<Color> contentColor, MutableState<Color> scrimColor, MutableState<Boolean> showDragHandle, MutableState<Boolean> sheetGesturesEnabled, MutableState<ModalBottomSheetPropertiesRecord> properties, MutableState<List<Map<String, Object>>> modifiers) {
        Intrinsics.checkNotNullParameter(skipPartiallyExpanded, "skipPartiallyExpanded");
        Intrinsics.checkNotNullParameter(containerColor, "containerColor");
        Intrinsics.checkNotNullParameter(contentColor, "contentColor");
        Intrinsics.checkNotNullParameter(scrimColor, "scrimColor");
        Intrinsics.checkNotNullParameter(showDragHandle, "showDragHandle");
        Intrinsics.checkNotNullParameter(sheetGesturesEnabled, "sheetGesturesEnabled");
        Intrinsics.checkNotNullParameter(properties, "properties");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.skipPartiallyExpanded = skipPartiallyExpanded;
        this.containerColor = containerColor;
        this.contentColor = contentColor;
        this.scrimColor = scrimColor;
        this.showDragHandle = showDragHandle;
        this.sheetGesturesEnabled = sheetGesturesEnabled;
        this.properties = properties;
        this.modifiers = modifiers;
    }

    public /* synthetic */ ModalBottomSheetViewProps(MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, MutableState mutableState6, MutableState mutableState7, MutableState mutableState8, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null) : mutableState, (i & 2) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState2, (i & 4) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState3, (i & 8) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState4, (i & 16) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(true, null, 2, null) : mutableState5, (i & 32) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(true, null, 2, null) : mutableState6, (i & 64) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new ModalBottomSheetPropertiesRecord(false, false, 3, null), null, 2, null) : mutableState7, (i & 128) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(CollectionsKt.emptyList(), null, 2, null) : mutableState8);
    }

    public final MutableState<Boolean> getSkipPartiallyExpanded() {
        return this.skipPartiallyExpanded;
    }

    public final MutableState<Color> getContainerColor() {
        return this.containerColor;
    }

    public final MutableState<Color> getContentColor() {
        return this.contentColor;
    }

    public final MutableState<Color> getScrimColor() {
        return this.scrimColor;
    }

    public final MutableState<Boolean> getShowDragHandle() {
        return this.showDragHandle;
    }

    public final MutableState<Boolean> getSheetGesturesEnabled() {
        return this.sheetGesturesEnabled;
    }

    public final MutableState<ModalBottomSheetPropertiesRecord> getProperties() {
        return this.properties;
    }

    public final MutableState<List<Map<String, Object>>> getModifiers() {
        return this.modifiers;
    }
}
