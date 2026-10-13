package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.input.TextFieldBuffer;
import androidx.compose.foundation.text.input.TextFieldBufferKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: ImeEditCommand.android.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u001c\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0000\u001a8\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u001a\b\u0002\u0010\u000b\u001a\u0014\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u000e0\rj\u0002`\u000f\u0018\u00010\fH\u0000\u001a\u001c\u0010\u0010\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0000\u001a\u001c\u0010\u0013\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0000\u001a\f\u0010\u0014\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u001c\u0010\u0015\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0000\u001a\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u001a$\u0010\u001b\u001a\u00020\u0001*\u00020\u001c2\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u001dH\u0001\u001a\u001c\u0010\u001e\u001a\u00020\u0001*\u00020\u001c2\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0001¨\u0006\u001f"}, d2 = {"commitText", "", "Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;", "text", "", "newCursorPosition", "", "setComposingRegion", "start", "end", "setComposingText", "annotations", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/AnnotatedString$Annotation;", "Landroidx/compose/foundation/text/input/PlacedAnnotation;", "deleteSurroundingText", "lengthBeforeCursor", "lengthAfterCursor", "deleteSurroundingTextInCodePoints", "finishComposingText", "setSelection", "isSurrogatePair", "", "high", "", "low", "imeReplace", "Landroidx/compose/foundation/text/input/TextFieldBuffer;", "", "imeDelete", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ImeEditCommand_androidKt {
    public static final void commitText(ImeEditCommandScope imeEditCommandScope, final String str, final int i) {
        imeEditCommandScope.edit(new Function1() { // from class: androidx.compose.foundation.text.input.internal.ImeEditCommand_androidKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImeEditCommand_androidKt.commitText$lambda$0(str, i, (TextFieldBuffer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit commitText$lambda$0(String str, int i, TextFieldBuffer textFieldBuffer) {
        TextRange composition = textFieldBuffer.getComposition();
        if (composition != null) {
            imeReplace(textFieldBuffer, TextRange.m8335getStartimpl(composition.getPackedValue()), TextRange.m8330getEndimpl(composition.getPackedValue()), str);
        } else {
            imeReplace(textFieldBuffer, TextRange.m8335getStartimpl(textFieldBuffer.getSelectionInChars()), TextRange.m8330getEndimpl(textFieldBuffer.getSelectionInChars()), str);
        }
        int iM8335getStartimpl = TextRange.m8335getStartimpl(textFieldBuffer.getSelectionInChars());
        textFieldBuffer.m1533setSelection5zctL8(TextRangeKt.TextRange(RangesKt.coerceIn(i > 0 ? (iM8335getStartimpl + i) - 1 : (iM8335getStartimpl + i) - str.length(), 0, textFieldBuffer.getLength())));
        return Unit.INSTANCE;
    }

    public static final void setComposingRegion(ImeEditCommandScope imeEditCommandScope, final int i, final int i2) {
        imeEditCommandScope.edit(new Function1() { // from class: androidx.compose.foundation.text.input.internal.ImeEditCommand_androidKt$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImeEditCommand_androidKt.setComposingRegion$lambda$0(i, i2, (TextFieldBuffer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setComposingRegion$lambda$0(int i, int i2, TextFieldBuffer textFieldBuffer) {
        if (textFieldBuffer.hasComposition$foundation()) {
            textFieldBuffer.commitComposition$foundation();
        }
        int iCoerceIn = RangesKt.coerceIn(i, 0, textFieldBuffer.getLength());
        int iCoerceIn2 = RangesKt.coerceIn(i2, 0, textFieldBuffer.getLength());
        if (iCoerceIn != iCoerceIn2) {
            if (iCoerceIn < iCoerceIn2) {
                TextFieldBuffer.setComposition$foundation$default(textFieldBuffer, iCoerceIn, iCoerceIn2, null, 4, null);
            } else {
                TextFieldBuffer.setComposition$foundation$default(textFieldBuffer, iCoerceIn2, iCoerceIn, null, 4, null);
            }
        }
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void setComposingText$default(ImeEditCommandScope imeEditCommandScope, String str, int i, List list, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            list = null;
        }
        setComposingText(imeEditCommandScope, str, i, list);
    }

    public static final void setComposingText(ImeEditCommandScope imeEditCommandScope, final String str, final int i, final List<AnnotatedString.Range<AnnotatedString.Annotation>> list) {
        imeEditCommandScope.edit(new Function1() { // from class: androidx.compose.foundation.text.input.internal.ImeEditCommand_androidKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImeEditCommand_androidKt.setComposingText$lambda$0(str, list, i, (TextFieldBuffer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setComposingText$lambda$0(String str, List list, int i, TextFieldBuffer textFieldBuffer) {
        TextRange composition = textFieldBuffer.getComposition();
        if (composition != null) {
            String str2 = str;
            imeReplace(textFieldBuffer, TextRange.m8335getStartimpl(composition.getPackedValue()), TextRange.m8330getEndimpl(composition.getPackedValue()), str2);
            if (str2.length() > 0) {
                textFieldBuffer.setComposition$foundation(TextRange.m8335getStartimpl(composition.getPackedValue()), TextRange.m8335getStartimpl(composition.getPackedValue()) + str.length(), list);
            }
        } else {
            int iM8335getStartimpl = TextRange.m8335getStartimpl(textFieldBuffer.getSelectionInChars());
            String str3 = str;
            imeReplace(textFieldBuffer, iM8335getStartimpl, TextRange.m8330getEndimpl(textFieldBuffer.getSelectionInChars()), str3);
            if (str3.length() > 0) {
                textFieldBuffer.setComposition$foundation(iM8335getStartimpl, str.length() + iM8335getStartimpl, list);
            }
        }
        int iM8335getStartimpl2 = TextRange.m8335getStartimpl(textFieldBuffer.getSelectionInChars());
        textFieldBuffer.m1533setSelection5zctL8(TextRangeKt.TextRange(RangesKt.coerceIn(i > 0 ? (iM8335getStartimpl2 + i) - 1 : (iM8335getStartimpl2 + i) - str.length(), 0, textFieldBuffer.getLength())));
        return Unit.INSTANCE;
    }

    public static final void deleteSurroundingText(final ImeEditCommandScope imeEditCommandScope, final int i, final int i2) {
        imeEditCommandScope.edit(new Function1() { // from class: androidx.compose.foundation.text.input.internal.ImeEditCommand_androidKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImeEditCommand_androidKt.deleteSurroundingText$lambda$0(i, i2, imeEditCommandScope, (TextFieldBuffer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit deleteSurroundingText$lambda$0(int i, int i2, ImeEditCommandScope imeEditCommandScope, TextFieldBuffer textFieldBuffer) {
        if (!(i >= 0 && i2 >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i + " and " + i2 + " respectively.");
        }
        long jMo1571mapToTransformedGEjPoXI = imeEditCommandScope.mo1571mapToTransformedGEjPoXI(textFieldBuffer.getSelectionInChars());
        int iM8330getEndimpl = TextRange.m8330getEndimpl(jMo1571mapToTransformedGEjPoXI);
        int length = iM8330getEndimpl + i2;
        if (((i2 ^ length) & (iM8330getEndimpl ^ length)) < 0) {
            length = textFieldBuffer.getLength();
        }
        long jMo1570mapFromTransformedGEjPoXI = imeEditCommandScope.mo1570mapFromTransformedGEjPoXI(TextRangeKt.TextRange(TextRange.m8330getEndimpl(jMo1571mapToTransformedGEjPoXI), Math.min(length, textFieldBuffer.getLength())));
        imeDelete(textFieldBuffer, TextRange.m8333getMinimpl(jMo1570mapFromTransformedGEjPoXI), TextRange.m8332getMaximpl(jMo1570mapFromTransformedGEjPoXI));
        int iM8335getStartimpl = TextRange.m8335getStartimpl(jMo1571mapToTransformedGEjPoXI);
        int i3 = iM8335getStartimpl - i;
        if (((i ^ iM8335getStartimpl) & (iM8335getStartimpl ^ i3)) < 0) {
            i3 = 0;
        }
        long jMo1570mapFromTransformedGEjPoXI2 = imeEditCommandScope.mo1570mapFromTransformedGEjPoXI(TextRangeKt.TextRange(Math.max(0, i3), TextRange.m8335getStartimpl(jMo1571mapToTransformedGEjPoXI)));
        imeDelete(textFieldBuffer, TextRange.m8333getMinimpl(jMo1570mapFromTransformedGEjPoXI2), TextRange.m8332getMaximpl(jMo1570mapFromTransformedGEjPoXI2));
        return Unit.INSTANCE;
    }

    public static final void deleteSurroundingTextInCodePoints(ImeEditCommandScope imeEditCommandScope, final int i, final int i2) {
        imeEditCommandScope.edit(new Function1() { // from class: androidx.compose.foundation.text.input.internal.ImeEditCommand_androidKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImeEditCommand_androidKt.deleteSurroundingTextInCodePoints$lambda$0(i, i2, (TextFieldBuffer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit deleteSurroundingTextInCodePoints$lambda$0(int i, int i2, TextFieldBuffer textFieldBuffer) {
        if (!(i >= 0 && i2 >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i + " and " + i2 + " respectively.");
        }
        int iM8335getStartimpl = 0;
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iM8335getStartimpl + 1;
            if (TextRange.m8335getStartimpl(textFieldBuffer.getSelectionInChars()) > i4) {
                iM8335getStartimpl = isSurrogatePair(textFieldBuffer.asCharSequence().charAt((TextRange.m8335getStartimpl(textFieldBuffer.getSelectionInChars()) - i4) - 1), textFieldBuffer.asCharSequence().charAt(TextRange.m8335getStartimpl(textFieldBuffer.getSelectionInChars()) - i4)) ? iM8335getStartimpl + 2 : i4;
            } else {
                iM8335getStartimpl = TextRange.m8335getStartimpl(textFieldBuffer.getSelectionInChars());
                break;
            }
        }
        int length = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = length + 1;
            if (TextRange.m8330getEndimpl(textFieldBuffer.getSelectionInChars()) + i6 < textFieldBuffer.getLength()) {
                length = isSurrogatePair(textFieldBuffer.asCharSequence().charAt((TextRange.m8330getEndimpl(textFieldBuffer.getSelectionInChars()) + i6) - 1), textFieldBuffer.asCharSequence().charAt(TextRange.m8330getEndimpl(textFieldBuffer.getSelectionInChars()) + i6)) ? length + 2 : i6;
            } else {
                length = textFieldBuffer.getLength() - TextRange.m8330getEndimpl(textFieldBuffer.getSelectionInChars());
                break;
            }
        }
        imeDelete(textFieldBuffer, TextRange.m8330getEndimpl(textFieldBuffer.getSelectionInChars()), TextRange.m8330getEndimpl(textFieldBuffer.getSelectionInChars()) + length);
        imeDelete(textFieldBuffer, TextRange.m8335getStartimpl(textFieldBuffer.getSelectionInChars()) - iM8335getStartimpl, TextRange.m8335getStartimpl(textFieldBuffer.getSelectionInChars()));
        return Unit.INSTANCE;
    }

    public static final void finishComposingText(ImeEditCommandScope imeEditCommandScope) {
        imeEditCommandScope.edit(new Function1() { // from class: androidx.compose.foundation.text.input.internal.ImeEditCommand_androidKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImeEditCommand_androidKt.finishComposingText$lambda$0((TextFieldBuffer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit finishComposingText$lambda$0(TextFieldBuffer textFieldBuffer) {
        textFieldBuffer.commitComposition$foundation();
        return Unit.INSTANCE;
    }

    public static final void setSelection(final ImeEditCommandScope imeEditCommandScope, final int i, final int i2) {
        imeEditCommandScope.edit(new Function1() { // from class: androidx.compose.foundation.text.input.internal.ImeEditCommand_androidKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImeEditCommand_androidKt.setSelection$lambda$0(imeEditCommandScope, i, i2, (TextFieldBuffer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setSelection$lambda$0(ImeEditCommandScope imeEditCommandScope, int i, int i2, TextFieldBuffer textFieldBuffer) {
        long jMo1571mapToTransformedGEjPoXI = imeEditCommandScope.mo1571mapToTransformedGEjPoXI(TextRangeKt.TextRange(0, textFieldBuffer.getLength()));
        int iM8333getMinimpl = TextRange.m8333getMinimpl(jMo1571mapToTransformedGEjPoXI);
        int iM8332getMaximpl = TextRange.m8332getMaximpl(jMo1571mapToTransformedGEjPoXI);
        if (i < iM8333getMinimpl) {
            i = iM8333getMinimpl;
        }
        if (i <= iM8332getMaximpl) {
            iM8332getMaximpl = i;
        }
        int iM8333getMinimpl2 = TextRange.m8333getMinimpl(jMo1571mapToTransformedGEjPoXI);
        int iM8332getMaximpl2 = TextRange.m8332getMaximpl(jMo1571mapToTransformedGEjPoXI);
        if (i2 < iM8333getMinimpl2) {
            i2 = iM8333getMinimpl2;
        }
        if (i2 <= iM8332getMaximpl2) {
            iM8332getMaximpl2 = i2;
        }
        textFieldBuffer.m1533setSelection5zctL8(imeEditCommandScope.mo1570mapFromTransformedGEjPoXI(TextRangeKt.TextRange(iM8332getMaximpl, iM8332getMaximpl2)));
        return Unit.INSTANCE;
    }

    private static final boolean isSurrogatePair(char c, char c2) {
        return Character.isHighSurrogate(c) && Character.isLowSurrogate(c2);
    }

    public static final void imeReplace(TextFieldBuffer textFieldBuffer, int i, int i2, CharSequence charSequence) {
        int iMin = Math.min(i, i2);
        int iMax = Math.max(i, i2);
        int i3 = 0;
        int i4 = iMin;
        while (i4 < iMax && i3 < charSequence.length() && charSequence.charAt(i3) == textFieldBuffer.asCharSequence().charAt(i4)) {
            i3++;
            i4++;
        }
        int length = charSequence.length();
        while (iMax > i4 && length > i3 && charSequence.charAt(length - 1) == textFieldBuffer.asCharSequence().charAt(iMax - 1)) {
            length--;
            iMax--;
        }
        if (i4 != iMax || i3 != length) {
            textFieldBuffer.replace(i4, iMax, charSequence.subSequence(i3, length));
        } else {
            textFieldBuffer.commitComposition$foundation();
            textFieldBuffer.clearHighlight$foundation();
        }
        textFieldBuffer.m1533setSelection5zctL8(TextRangeKt.TextRange(iMin + charSequence.length()));
    }

    public static final void imeDelete(TextFieldBuffer textFieldBuffer, int i, int i2) {
        TextRange composition = textFieldBuffer.getComposition();
        int iMin = Math.min(i, i2);
        int iMax = Math.max(i, i2);
        TextFieldBufferKt.delete(textFieldBuffer, iMin, iMax);
        if (composition != null) {
            composition.getPackedValue();
            long jM1537adjustTextRangevJH6DeI = TextFieldBufferKt.m1537adjustTextRangevJH6DeI(composition.getPackedValue(), iMin, iMax, 0);
            if (TextRange.m8329getCollapsedimpl(jM1537adjustTextRangevJH6DeI)) {
                textFieldBuffer.commitComposition$foundation();
            } else {
                TextFieldBuffer.setComposition$foundation$default(textFieldBuffer, TextRange.m8333getMinimpl(jM1537adjustTextRangevJH6DeI), TextRange.m8332getMaximpl(jM1537adjustTextRangevJH6DeI), null, 4, null);
            }
        }
    }
}
