package expo.modules.ui;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import com.facebook.hermes.intl.Constants;
import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TextFieldView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\"\b\u0087\b\u0018\u00002\u00020\u0001Bý\u0001\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0003\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0003\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0003\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0003\u0012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0003\u0012*\b\u0002\u0010\u0016\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018j\u0002`\u001a0\u0017j\u0002`\u001b0\u0003¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J\u000f\u0010-\u001a\b\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0003J\u000f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J\u000f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J\u000f\u00100\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J\u000f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J\u0011\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0003HÆ\u0003J\u0011\u00103\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0003HÆ\u0003J\u0011\u00104\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0003HÆ\u0003J\u0011\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0003HÆ\u0003J\u0011\u00106\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0003HÆ\u0003J+\u00107\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018j\u0002`\u001a0\u0017j\u0002`\u001b0\u0003HÆ\u0003Jÿ\u0001\u00108\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u0010\b\u0002\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00032\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00032\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00032\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u00032\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00032*\b\u0002\u0010\u0016\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018j\u0002`\u001a0\u0017j\u0002`\u001b0\u0003HÆ\u0001J\u0013\u00109\u001a\u00020\u00062\b\u0010:\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010;\u001a\u00020\u000eHÖ\u0001J\t\u0010<\u001a\u00020\u0004HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001fR\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001fR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001fR\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001fR\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u001fR\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001fR\u0019\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001fR\u0019\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001fR\u0019\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001fR\u0019\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0003¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001fR\u0019\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001fR3\u0010\u0016\u001a$\u0012 \u0012\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018j\u0002`\u001a0\u0017j\u0002`\u001b0\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001f¨\u0006="}, d2 = {"Lexpo/modules/ui/TextFieldProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "defaultValue", "Landroidx/compose/runtime/MutableState;", "", "autoFocus", "", Constants.SENSITIVITY_VARIANT, "Lexpo/modules/ui/TextFieldVariant;", ViewProps.ENABLED, "readOnly", "isError", "singleLine", "maxLines", "", "minLines", "keyboardOptions", "Lexpo/modules/ui/TextFieldKeyboardOptionsRecord;", "shape", "Lexpo/modules/ui/ShapeRecord;", "colors", "Lexpo/modules/ui/TextFieldColorsRecord;", "modifiers", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V", "getDefaultValue", "()Landroidx/compose/runtime/MutableState;", "getAutoFocus", "getVariant", "getEnabled", "getReadOnly", "getSingleLine", "getMaxLines", "getMinLines", "getKeyboardOptions", "getShape", "getColors", "getModifiers", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "equals", "other", "hashCode", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TextFieldProps implements ComposeProps {
    public static final int $stable = 0;
    private final MutableState<Boolean> autoFocus;
    private final MutableState<TextFieldColorsRecord> colors;
    private final MutableState<String> defaultValue;
    private final MutableState<Boolean> enabled;
    private final MutableState<Boolean> isError;
    private final MutableState<TextFieldKeyboardOptionsRecord> keyboardOptions;
    private final MutableState<Integer> maxLines;
    private final MutableState<Integer> minLines;
    private final MutableState<List<Map<String, Object>>> modifiers;
    private final MutableState<Boolean> readOnly;
    private final MutableState<ShapeRecord> shape;
    private final MutableState<Boolean> singleLine;
    private final MutableState<TextFieldVariant> variant;

    public TextFieldProps() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, 8191, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TextFieldProps copy$default(TextFieldProps textFieldProps, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, MutableState mutableState6, MutableState mutableState7, MutableState mutableState8, MutableState mutableState9, MutableState mutableState10, MutableState mutableState11, MutableState mutableState12, MutableState mutableState13, int i, Object obj) {
        if ((i & 1) != 0) {
            mutableState = textFieldProps.defaultValue;
        }
        return textFieldProps.copy(mutableState, (i & 2) != 0 ? textFieldProps.autoFocus : mutableState2, (i & 4) != 0 ? textFieldProps.variant : mutableState3, (i & 8) != 0 ? textFieldProps.enabled : mutableState4, (i & 16) != 0 ? textFieldProps.readOnly : mutableState5, (i & 32) != 0 ? textFieldProps.isError : mutableState6, (i & 64) != 0 ? textFieldProps.singleLine : mutableState7, (i & 128) != 0 ? textFieldProps.maxLines : mutableState8, (i & 256) != 0 ? textFieldProps.minLines : mutableState9, (i & 512) != 0 ? textFieldProps.keyboardOptions : mutableState10, (i & 1024) != 0 ? textFieldProps.shape : mutableState11, (i & 2048) != 0 ? textFieldProps.colors : mutableState12, (i & 4096) != 0 ? textFieldProps.modifiers : mutableState13);
    }

    public final MutableState<String> component1() {
        return this.defaultValue;
    }

    public final MutableState<TextFieldKeyboardOptionsRecord> component10() {
        return this.keyboardOptions;
    }

    public final MutableState<ShapeRecord> component11() {
        return this.shape;
    }

    public final MutableState<TextFieldColorsRecord> component12() {
        return this.colors;
    }

    public final MutableState<List<Map<String, Object>>> component13() {
        return this.modifiers;
    }

    public final MutableState<Boolean> component2() {
        return this.autoFocus;
    }

    public final MutableState<TextFieldVariant> component3() {
        return this.variant;
    }

    public final MutableState<Boolean> component4() {
        return this.enabled;
    }

    public final MutableState<Boolean> component5() {
        return this.readOnly;
    }

    public final MutableState<Boolean> component6() {
        return this.isError;
    }

    public final MutableState<Boolean> component7() {
        return this.singleLine;
    }

    public final MutableState<Integer> component8() {
        return this.maxLines;
    }

    public final MutableState<Integer> component9() {
        return this.minLines;
    }

    public final TextFieldProps copy(MutableState<String> defaultValue, MutableState<Boolean> autoFocus, MutableState<TextFieldVariant> variant, MutableState<Boolean> enabled, MutableState<Boolean> readOnly, MutableState<Boolean> isError, MutableState<Boolean> singleLine, MutableState<Integer> maxLines, MutableState<Integer> minLines, MutableState<TextFieldKeyboardOptionsRecord> keyboardOptions, MutableState<ShapeRecord> shape, MutableState<TextFieldColorsRecord> colors, MutableState<List<Map<String, Object>>> modifiers) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        Intrinsics.checkNotNullParameter(autoFocus, "autoFocus");
        Intrinsics.checkNotNullParameter(variant, "variant");
        Intrinsics.checkNotNullParameter(enabled, "enabled");
        Intrinsics.checkNotNullParameter(readOnly, "readOnly");
        Intrinsics.checkNotNullParameter(isError, "isError");
        Intrinsics.checkNotNullParameter(singleLine, "singleLine");
        Intrinsics.checkNotNullParameter(maxLines, "maxLines");
        Intrinsics.checkNotNullParameter(minLines, "minLines");
        Intrinsics.checkNotNullParameter(keyboardOptions, "keyboardOptions");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new TextFieldProps(defaultValue, autoFocus, variant, enabled, readOnly, isError, singleLine, maxLines, minLines, keyboardOptions, shape, colors, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextFieldProps)) {
            return false;
        }
        TextFieldProps textFieldProps = (TextFieldProps) other;
        return Intrinsics.areEqual(this.defaultValue, textFieldProps.defaultValue) && Intrinsics.areEqual(this.autoFocus, textFieldProps.autoFocus) && Intrinsics.areEqual(this.variant, textFieldProps.variant) && Intrinsics.areEqual(this.enabled, textFieldProps.enabled) && Intrinsics.areEqual(this.readOnly, textFieldProps.readOnly) && Intrinsics.areEqual(this.isError, textFieldProps.isError) && Intrinsics.areEqual(this.singleLine, textFieldProps.singleLine) && Intrinsics.areEqual(this.maxLines, textFieldProps.maxLines) && Intrinsics.areEqual(this.minLines, textFieldProps.minLines) && Intrinsics.areEqual(this.keyboardOptions, textFieldProps.keyboardOptions) && Intrinsics.areEqual(this.shape, textFieldProps.shape) && Intrinsics.areEqual(this.colors, textFieldProps.colors) && Intrinsics.areEqual(this.modifiers, textFieldProps.modifiers);
    }

    public int hashCode() {
        return (((((((((((((((((((((((this.defaultValue.hashCode() * 31) + this.autoFocus.hashCode()) * 31) + this.variant.hashCode()) * 31) + this.enabled.hashCode()) * 31) + this.readOnly.hashCode()) * 31) + this.isError.hashCode()) * 31) + this.singleLine.hashCode()) * 31) + this.maxLines.hashCode()) * 31) + this.minLines.hashCode()) * 31) + this.keyboardOptions.hashCode()) * 31) + this.shape.hashCode()) * 31) + this.colors.hashCode()) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "TextFieldProps(defaultValue=" + this.defaultValue + ", autoFocus=" + this.autoFocus + ", variant=" + this.variant + ", enabled=" + this.enabled + ", readOnly=" + this.readOnly + ", isError=" + this.isError + ", singleLine=" + this.singleLine + ", maxLines=" + this.maxLines + ", minLines=" + this.minLines + ", keyboardOptions=" + this.keyboardOptions + ", shape=" + this.shape + ", colors=" + this.colors + ", modifiers=" + this.modifiers + ")";
    }

    public TextFieldProps(MutableState<String> defaultValue, MutableState<Boolean> autoFocus, MutableState<TextFieldVariant> variant, MutableState<Boolean> enabled, MutableState<Boolean> readOnly, MutableState<Boolean> isError, MutableState<Boolean> singleLine, MutableState<Integer> maxLines, MutableState<Integer> minLines, MutableState<TextFieldKeyboardOptionsRecord> keyboardOptions, MutableState<ShapeRecord> shape, MutableState<TextFieldColorsRecord> colors, MutableState<List<Map<String, Object>>> modifiers) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        Intrinsics.checkNotNullParameter(autoFocus, "autoFocus");
        Intrinsics.checkNotNullParameter(variant, "variant");
        Intrinsics.checkNotNullParameter(enabled, "enabled");
        Intrinsics.checkNotNullParameter(readOnly, "readOnly");
        Intrinsics.checkNotNullParameter(isError, "isError");
        Intrinsics.checkNotNullParameter(singleLine, "singleLine");
        Intrinsics.checkNotNullParameter(maxLines, "maxLines");
        Intrinsics.checkNotNullParameter(minLines, "minLines");
        Intrinsics.checkNotNullParameter(keyboardOptions, "keyboardOptions");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.defaultValue = defaultValue;
        this.autoFocus = autoFocus;
        this.variant = variant;
        this.enabled = enabled;
        this.readOnly = readOnly;
        this.isError = isError;
        this.singleLine = singleLine;
        this.maxLines = maxLines;
        this.minLines = minLines;
        this.keyboardOptions = keyboardOptions;
        this.shape = shape;
        this.colors = colors;
        this.modifiers = modifiers;
    }

    public /* synthetic */ TextFieldProps(MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, MutableState mutableState6, MutableState mutableState7, MutableState mutableState8, MutableState mutableState9, MutableState mutableState10, MutableState mutableState11, MutableState mutableState12, MutableState mutableState13, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null) : mutableState, (i & 2) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null) : mutableState2, (i & 4) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TextFieldVariant.FILLED, null, 2, null) : mutableState3, (i & 8) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(true, null, 2, null) : mutableState4, (i & 16) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null) : mutableState5, (i & 32) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null) : mutableState6, (i & 64) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null) : mutableState7, (i & 128) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState8, (i & 256) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState9, (i & 512) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState10, (i & 1024) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState11, (i & 2048) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState12, (i & 4096) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(CollectionsKt.emptyList(), null, 2, null) : mutableState13);
    }

    public final MutableState<String> getDefaultValue() {
        return this.defaultValue;
    }

    public final MutableState<Boolean> getAutoFocus() {
        return this.autoFocus;
    }

    public final MutableState<TextFieldVariant> getVariant() {
        return this.variant;
    }

    public final MutableState<Boolean> getEnabled() {
        return this.enabled;
    }

    public final MutableState<Boolean> getReadOnly() {
        return this.readOnly;
    }

    public final MutableState<Boolean> isError() {
        return this.isError;
    }

    public final MutableState<Boolean> getSingleLine() {
        return this.singleLine;
    }

    public final MutableState<Integer> getMaxLines() {
        return this.maxLines;
    }

    public final MutableState<Integer> getMinLines() {
        return this.minLines;
    }

    public final MutableState<TextFieldKeyboardOptionsRecord> getKeyboardOptions() {
        return this.keyboardOptions;
    }

    public final MutableState<ShapeRecord> getShape() {
        return this.shape;
    }

    public final MutableState<TextFieldColorsRecord> getColors() {
        return this.colors;
    }

    public final MutableState<List<Map<String, Object>>> getModifiers() {
        return this.modifiers;
    }
}
