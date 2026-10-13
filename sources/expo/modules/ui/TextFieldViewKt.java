package expo.modules.ui;

import androidx.autofill.HintConstants;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextFieldDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import com.facebook.hermes.intl.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TextFieldView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0005\u001a\u0013\u0010\u0006\u001a\u00020\u0007*\u0004\u0018\u00010\bH\u0002¢\u0006\u0002\u0010\t\u001a\u0013\u0010\n\u001a\u00020\u000b*\u0004\u0018\u00010\bH\u0002¢\u0006\u0002\u0010\t\u001a\u0013\u0010\f\u001a\u00020\r*\u0004\u0018\u00010\bH\u0002¢\u0006\u0002\u0010\t¨\u0006\u000e"}, d2 = {"toColors", "Landroidx/compose/material3/TextFieldColors;", "Lexpo/modules/ui/TextFieldColorsRecord;", "isOutlined", "", "(Lexpo/modules/ui/TextFieldColorsRecord;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;", "toKeyboardType", "Landroidx/compose/ui/text/input/KeyboardType;", "", "(Ljava/lang/String;)I", "toCapitalization", "Landroidx/compose/ui/text/input/KeyboardCapitalization;", "toImeAction", "Landroidx/compose/ui/text/input/ImeAction;", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class TextFieldViewKt {
    public static final TextFieldColors toColors(TextFieldColorsRecord textFieldColorsRecord, boolean z, Composer composer, int i) {
        TextFieldColors textFieldColorsColors;
        Intrinsics.checkNotNullParameter(textFieldColorsRecord, "<this>");
        composer.startReplaceGroup(-2038514757);
        ComposerKt.sourceInformation(composer, "C(toColors)111@4467L4118:TextFieldView.kt#v15e7d");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2038514757, i, -1, "expo.modules.ui.toColors (TextFieldView.kt:108)");
        }
        if (z) {
            composer.startReplaceGroup(-507589821);
            ComposerKt.sourceInformation(composer, "109@4331L8");
            textFieldColorsColors = OutlinedTextFieldDefaults.INSTANCE.colors(composer, 6);
        } else {
            composer.startReplaceGroup(-507588797);
            ComposerKt.sourceInformation(composer, "109@4363L8");
            textFieldColorsColors = TextFieldDefaults.INSTANCE.colors(composer, 6);
        }
        composer.endReplaceGroup();
        TextFieldDefaults textFieldDefaults = TextFieldDefaults.INSTANCE;
        Color composeOrNull = UtilsKt.getComposeOrNull(textFieldColorsRecord.getFocusedTextColor());
        long jM6068unboximpl = composeOrNull != null ? composeOrNull.m6068unboximpl() : textFieldColorsColors.getFocusedTextColor();
        Color composeOrNull2 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getUnfocusedTextColor());
        long jM6068unboximpl2 = composeOrNull2 != null ? composeOrNull2.m6068unboximpl() : textFieldColorsColors.getUnfocusedTextColor();
        Color composeOrNull3 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getDisabledTextColor());
        long jM6068unboximpl3 = composeOrNull3 != null ? composeOrNull3.m6068unboximpl() : textFieldColorsColors.getDisabledTextColor();
        Color composeOrNull4 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getErrorTextColor());
        long jM6068unboximpl4 = composeOrNull4 != null ? composeOrNull4.m6068unboximpl() : textFieldColorsColors.getErrorTextColor();
        Color composeOrNull5 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getFocusedContainerColor());
        long jM6068unboximpl5 = composeOrNull5 != null ? composeOrNull5.m6068unboximpl() : textFieldColorsColors.getFocusedContainerColor();
        Color composeOrNull6 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getUnfocusedContainerColor());
        long jM6068unboximpl6 = composeOrNull6 != null ? composeOrNull6.m6068unboximpl() : textFieldColorsColors.getUnfocusedContainerColor();
        Color composeOrNull7 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getDisabledContainerColor());
        long jM6068unboximpl7 = composeOrNull7 != null ? composeOrNull7.m6068unboximpl() : textFieldColorsColors.getDisabledContainerColor();
        Color composeOrNull8 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getErrorContainerColor());
        long jM6068unboximpl8 = composeOrNull8 != null ? composeOrNull8.m6068unboximpl() : textFieldColorsColors.getErrorContainerColor();
        Color composeOrNull9 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getCursorColor());
        long jM6068unboximpl9 = composeOrNull9 != null ? composeOrNull9.m6068unboximpl() : textFieldColorsColors.getCursorColor();
        Color composeOrNull10 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getErrorCursorColor());
        long jM6068unboximpl10 = composeOrNull10 != null ? composeOrNull10.m6068unboximpl() : textFieldColorsColors.getErrorCursorColor();
        Color composeOrNull11 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getFocusedIndicatorColor());
        long jM6068unboximpl11 = composeOrNull11 != null ? composeOrNull11.m6068unboximpl() : textFieldColorsColors.getFocusedIndicatorColor();
        Color composeOrNull12 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getUnfocusedIndicatorColor());
        long jM6068unboximpl12 = composeOrNull12 != null ? composeOrNull12.m6068unboximpl() : textFieldColorsColors.getUnfocusedIndicatorColor();
        Color composeOrNull13 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getDisabledIndicatorColor());
        long jM6068unboximpl13 = composeOrNull13 != null ? composeOrNull13.m6068unboximpl() : textFieldColorsColors.getDisabledIndicatorColor();
        Color composeOrNull14 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getErrorIndicatorColor());
        long jM6068unboximpl14 = composeOrNull14 != null ? composeOrNull14.m6068unboximpl() : textFieldColorsColors.getErrorIndicatorColor();
        Color composeOrNull15 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getFocusedLeadingIconColor());
        long jM6068unboximpl15 = composeOrNull15 != null ? composeOrNull15.m6068unboximpl() : textFieldColorsColors.getFocusedLeadingIconColor();
        Color composeOrNull16 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getUnfocusedLeadingIconColor());
        long jM6068unboximpl16 = composeOrNull16 != null ? composeOrNull16.m6068unboximpl() : textFieldColorsColors.getUnfocusedLeadingIconColor();
        Color composeOrNull17 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getDisabledLeadingIconColor());
        long jM6068unboximpl17 = composeOrNull17 != null ? composeOrNull17.m6068unboximpl() : textFieldColorsColors.getDisabledLeadingIconColor();
        Color composeOrNull18 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getErrorLeadingIconColor());
        long jM6068unboximpl18 = composeOrNull18 != null ? composeOrNull18.m6068unboximpl() : textFieldColorsColors.getErrorLeadingIconColor();
        Color composeOrNull19 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getFocusedTrailingIconColor());
        long jM6068unboximpl19 = composeOrNull19 != null ? composeOrNull19.m6068unboximpl() : textFieldColorsColors.getFocusedTrailingIconColor();
        Color composeOrNull20 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getUnfocusedTrailingIconColor());
        long jM6068unboximpl20 = composeOrNull20 != null ? composeOrNull20.m6068unboximpl() : textFieldColorsColors.getUnfocusedTrailingIconColor();
        Color composeOrNull21 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getDisabledTrailingIconColor());
        long jM6068unboximpl21 = composeOrNull21 != null ? composeOrNull21.m6068unboximpl() : textFieldColorsColors.getDisabledTrailingIconColor();
        Color composeOrNull22 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getErrorTrailingIconColor());
        long jM6068unboximpl22 = composeOrNull22 != null ? composeOrNull22.m6068unboximpl() : textFieldColorsColors.getErrorTrailingIconColor();
        Color composeOrNull23 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getFocusedLabelColor());
        long jM6068unboximpl23 = composeOrNull23 != null ? composeOrNull23.m6068unboximpl() : textFieldColorsColors.getFocusedLabelColor();
        Color composeOrNull24 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getUnfocusedLabelColor());
        long jM6068unboximpl24 = composeOrNull24 != null ? composeOrNull24.m6068unboximpl() : textFieldColorsColors.getUnfocusedLabelColor();
        Color composeOrNull25 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getDisabledLabelColor());
        long jM6068unboximpl25 = composeOrNull25 != null ? composeOrNull25.m6068unboximpl() : textFieldColorsColors.getDisabledLabelColor();
        Color composeOrNull26 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getErrorLabelColor());
        long jM6068unboximpl26 = composeOrNull26 != null ? composeOrNull26.m6068unboximpl() : textFieldColorsColors.getErrorLabelColor();
        Color composeOrNull27 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getFocusedPlaceholderColor());
        long jM6068unboximpl27 = composeOrNull27 != null ? composeOrNull27.m6068unboximpl() : textFieldColorsColors.getFocusedPlaceholderColor();
        Color composeOrNull28 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getUnfocusedPlaceholderColor());
        long jM6068unboximpl28 = composeOrNull28 != null ? composeOrNull28.m6068unboximpl() : textFieldColorsColors.getUnfocusedPlaceholderColor();
        Color composeOrNull29 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getDisabledPlaceholderColor());
        long jM6068unboximpl29 = composeOrNull29 != null ? composeOrNull29.m6068unboximpl() : textFieldColorsColors.getDisabledPlaceholderColor();
        Color composeOrNull30 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getErrorPlaceholderColor());
        long jM6068unboximpl30 = composeOrNull30 != null ? composeOrNull30.m6068unboximpl() : textFieldColorsColors.getErrorPlaceholderColor();
        Color composeOrNull31 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getFocusedSupportingTextColor());
        long jM6068unboximpl31 = composeOrNull31 != null ? composeOrNull31.m6068unboximpl() : textFieldColorsColors.getFocusedSupportingTextColor();
        Color composeOrNull32 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getUnfocusedSupportingTextColor());
        long jM6068unboximpl32 = composeOrNull32 != null ? composeOrNull32.m6068unboximpl() : textFieldColorsColors.getUnfocusedSupportingTextColor();
        Color composeOrNull33 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getDisabledSupportingTextColor());
        long jM6068unboximpl33 = composeOrNull33 != null ? composeOrNull33.m6068unboximpl() : textFieldColorsColors.getDisabledSupportingTextColor();
        Color composeOrNull34 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getErrorSupportingTextColor());
        long jM6068unboximpl34 = composeOrNull34 != null ? composeOrNull34.m6068unboximpl() : textFieldColorsColors.getErrorSupportingTextColor();
        Color composeOrNull35 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getFocusedPrefixColor());
        long jM6068unboximpl35 = composeOrNull35 != null ? composeOrNull35.m6068unboximpl() : textFieldColorsColors.getFocusedPrefixColor();
        Color composeOrNull36 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getUnfocusedPrefixColor());
        long jM6068unboximpl36 = composeOrNull36 != null ? composeOrNull36.m6068unboximpl() : textFieldColorsColors.getUnfocusedPrefixColor();
        Color composeOrNull37 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getDisabledPrefixColor());
        long jM6068unboximpl37 = composeOrNull37 != null ? composeOrNull37.m6068unboximpl() : textFieldColorsColors.getDisabledPrefixColor();
        Color composeOrNull38 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getErrorPrefixColor());
        long jM6068unboximpl38 = composeOrNull38 != null ? composeOrNull38.m6068unboximpl() : textFieldColorsColors.getErrorPrefixColor();
        Color composeOrNull39 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getFocusedSuffixColor());
        long jM6068unboximpl39 = composeOrNull39 != null ? composeOrNull39.m6068unboximpl() : textFieldColorsColors.getFocusedSuffixColor();
        Color composeOrNull40 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getUnfocusedSuffixColor());
        long jM6068unboximpl40 = composeOrNull40 != null ? composeOrNull40.m6068unboximpl() : textFieldColorsColors.getUnfocusedSuffixColor();
        Color composeOrNull41 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getDisabledSuffixColor());
        long jM6068unboximpl41 = composeOrNull41 != null ? composeOrNull41.m6068unboximpl() : textFieldColorsColors.getDisabledSuffixColor();
        Color composeOrNull42 = UtilsKt.getComposeOrNull(textFieldColorsRecord.getErrorSuffixColor());
        TextFieldColors textFieldColorsM3712colors0hiis_0 = textFieldDefaults.m3712colors0hiis_0(jM6068unboximpl, jM6068unboximpl2, jM6068unboximpl3, jM6068unboximpl4, jM6068unboximpl5, jM6068unboximpl6, jM6068unboximpl7, jM6068unboximpl8, jM6068unboximpl9, jM6068unboximpl10, null, jM6068unboximpl11, jM6068unboximpl12, jM6068unboximpl13, jM6068unboximpl14, jM6068unboximpl15, jM6068unboximpl16, jM6068unboximpl17, jM6068unboximpl18, jM6068unboximpl19, jM6068unboximpl20, jM6068unboximpl21, jM6068unboximpl22, jM6068unboximpl23, jM6068unboximpl24, jM6068unboximpl25, jM6068unboximpl26, jM6068unboximpl27, jM6068unboximpl28, jM6068unboximpl29, jM6068unboximpl30, jM6068unboximpl31, jM6068unboximpl32, jM6068unboximpl33, jM6068unboximpl34, jM6068unboximpl35, jM6068unboximpl36, jM6068unboximpl37, jM6068unboximpl38, jM6068unboximpl39, jM6068unboximpl40, jM6068unboximpl41, composeOrNull42 != null ? composeOrNull42.m6068unboximpl() : textFieldColorsColors.getErrorSuffixColor(), composer, 0, 0, 0, 0, 3072, 1024, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return textFieldColorsM3712colors0hiis_0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final int toKeyboardType(String str) {
        if (str != null) {
            switch (str.hashCode()) {
                case -1034364087:
                    if (str.equals("number")) {
                        return KeyboardType.INSTANCE.m8577getNumberPjHm6EE();
                    }
                    break;
                case 116076:
                    if (str.equals("uri")) {
                        return KeyboardType.INSTANCE.m8583getUriPjHm6EE();
                    }
                    break;
                case 3556653:
                    if (str.equals("text")) {
                        return KeyboardType.INSTANCE.m8581getTextPjHm6EE();
                    }
                    break;
                case 93106001:
                    if (str.equals("ascii")) {
                        return KeyboardType.INSTANCE.m8574getAsciiPjHm6EE();
                    }
                    break;
                case 96619420:
                    if (str.equals("email")) {
                        return KeyboardType.INSTANCE.m8576getEmailPjHm6EE();
                    }
                    break;
                case 106642798:
                    if (str.equals(HintConstants.AUTOFILL_HINT_PHONE)) {
                        return KeyboardType.INSTANCE.m8580getPhonePjHm6EE();
                    }
                    break;
                case 154509572:
                    if (str.equals("numberPassword")) {
                        return KeyboardType.INSTANCE.m8578getNumberPasswordPjHm6EE();
                    }
                    break;
                case 1216985755:
                    if (str.equals(HintConstants.AUTOFILL_HINT_PASSWORD)) {
                        return KeyboardType.INSTANCE.m8579getPasswordPjHm6EE();
                    }
                    break;
                case 1542263633:
                    if (str.equals("decimal")) {
                        return KeyboardType.INSTANCE.m8575getDecimalPjHm6EE();
                    }
                    break;
            }
        }
        return KeyboardType.INSTANCE.m8581getTextPjHm6EE();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final int toCapitalization(String str) {
        if (str != null) {
            switch (str.hashCode()) {
                case 3387192:
                    if (str.equals("none")) {
                        return KeyboardCapitalization.INSTANCE.m8553getNoneIUNYP9k();
                    }
                    break;
                case 113318569:
                    if (str.equals("words")) {
                        return KeyboardCapitalization.INSTANCE.m8556getWordsIUNYP9k();
                    }
                    break;
                case 490141296:
                    if (str.equals("sentences")) {
                        return KeyboardCapitalization.INSTANCE.m8554getSentencesIUNYP9k();
                    }
                    break;
                case 1245424234:
                    if (str.equals("characters")) {
                        return KeyboardCapitalization.INSTANCE.m8552getCharactersIUNYP9k();
                    }
                    break;
            }
        }
        return KeyboardCapitalization.INSTANCE.m8553getNoneIUNYP9k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final int toImeAction(String str) {
        if (str != null) {
            switch (str.hashCode()) {
                case -1273775369:
                    if (str.equals("previous")) {
                        return ImeAction.INSTANCE.m8525getPreviouseUduSuo();
                    }
                    break;
                case -906336856:
                    if (str.equals("search")) {
                        return ImeAction.INSTANCE.m8526getSearcheUduSuo();
                    }
                    break;
                case 3304:
                    if (str.equals("go")) {
                        return ImeAction.INSTANCE.m8522getGoeUduSuo();
                    }
                    break;
                case 3089282:
                    if (str.equals("done")) {
                        return ImeAction.INSTANCE.m8521getDoneeUduSuo();
                    }
                    break;
                case 3377907:
                    if (str.equals("next")) {
                        return ImeAction.INSTANCE.m8523getNexteUduSuo();
                    }
                    break;
                case 3387192:
                    if (str.equals("none")) {
                        return ImeAction.INSTANCE.m8524getNoneeUduSuo();
                    }
                    break;
                case 3526536:
                    if (str.equals("send")) {
                        return ImeAction.INSTANCE.m8527getSendeUduSuo();
                    }
                    break;
                case 1544803905:
                    if (str.equals(Constants.COLLATION_DEFAULT)) {
                        return ImeAction.INSTANCE.m8520getDefaulteUduSuo();
                    }
                    break;
            }
        }
        return ImeAction.INSTANCE.m8520getDefaulteUduSuo();
    }
}
