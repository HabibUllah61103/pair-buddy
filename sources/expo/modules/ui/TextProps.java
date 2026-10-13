package expo.modules.ui;

import android.graphics.Color;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.react.modules.appstate.AppStateModule;
import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TextView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\bB\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0095\u0002\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010#\u0012$\b\u0002\u0010%\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010'0&j\u0002`(0\u0006j\u0002`)¢\u0006\u0004\b*\u0010+J\t\u0010Q\u001a\u00020\u0004HÆ\u0003J\u0011\u0010R\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0010\u0010U\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u00105J\u000b\u0010V\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u0010\u0010[\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u00105J\u0010\u0010\\\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u00105J\u000b\u0010]\u001a\u0004\u0018\u00010\u001aHÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u001dHÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u001fHÆ\u0003J\u0010\u0010a\u001a\u0004\u0018\u00010!HÆ\u0003¢\u0006\u0002\u0010JJ\u0010\u0010b\u001a\u0004\u0018\u00010#HÆ\u0003¢\u0006\u0002\u0010MJ\u0010\u0010c\u001a\u0004\u0018\u00010#HÆ\u0003¢\u0006\u0002\u0010MJ%\u0010d\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010'0&j\u0002`(0\u0006j\u0002`)HÆ\u0003J\u009c\u0002\u0010e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010#2$\b\u0002\u0010%\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010'0&j\u0002`(0\u0006j\u0002`)HÆ\u0001¢\u0006\u0002\u0010fJ\u0013\u0010g\u001a\u00020!2\b\u0010h\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010i\u001a\u00020#HÖ\u0001J\t\u0010j\u001a\u00020\u0004HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0016\u0010\b\u001a\u0004\u0018\u00010\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0018\u0010\f\u001a\u0004\u0018\u00010\rX\u0096\u0004¢\u0006\n\n\u0002\u00106\u001a\u0004\b4\u00105R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010-R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b<\u0010=R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\rX\u0096\u0004¢\u0006\n\n\u0002\u00106\u001a\u0004\b@\u00105R\u0015\u0010\u0018\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u00106\u001a\u0004\bA\u00105R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a¢\u0006\b\n\u0000\u001a\u0004\bB\u0010CR\u0016\u0010\u001b\u001a\u0004\u0018\u00010\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u00101R\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bE\u0010FR\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u001f¢\u0006\b\n\u0000\u001a\u0004\bG\u0010HR\u0015\u0010 \u001a\u0004\u0018\u00010!¢\u0006\n\n\u0002\u0010K\u001a\u0004\bI\u0010JR\u0015\u0010\"\u001a\u0004\u0018\u00010#¢\u0006\n\n\u0002\u0010N\u001a\u0004\bL\u0010MR\u0015\u0010$\u001a\u0004\u0018\u00010#¢\u0006\n\n\u0002\u0010N\u001a\u0004\bO\u0010MR-\u0010%\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010'0&j\u0002`(0\u0006j\u0002`)¢\u0006\b\n\u0000\u001a\u0004\bP\u0010/¨\u0006k"}, d2 = {"Lexpo/modules/ui/TextProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "Lexpo/modules/ui/TextSpanStyle;", "text", "", "spans", "", "Lexpo/modules/ui/TextSpanRecord;", "color", "Landroid/graphics/Color;", "typography", "Lexpo/modules/ui/TypographyStyle;", "fontSize", "", "fontWeight", "Lexpo/modules/ui/TextFontWeight;", "fontStyle", "Lexpo/modules/ui/TextFontStyle;", "fontFamily", "textAlign", "Lexpo/modules/ui/TextAlignType;", TtmlNode.ATTR_TTS_TEXT_DECORATION, "Lexpo/modules/ui/TextDecorationType;", ViewProps.LETTER_SPACING, ViewProps.LINE_HEIGHT, "lineBreak", "Lexpo/modules/ui/TextLineBreakType;", AppStateModule.APP_STATE_BACKGROUND, "shadow", "Lexpo/modules/ui/TextShadowRecord;", ViewProps.OVERFLOW, "Lexpo/modules/ui/TextOverflowType;", "softWrap", "", "maxLines", "", "minLines", "modifiers", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Ljava/lang/String;Ljava/util/List;Landroid/graphics/Color;Lexpo/modules/ui/TypographyStyle;Ljava/lang/Float;Lexpo/modules/ui/TextFontWeight;Lexpo/modules/ui/TextFontStyle;Ljava/lang/String;Lexpo/modules/ui/TextAlignType;Lexpo/modules/ui/TextDecorationType;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/TextLineBreakType;Landroid/graphics/Color;Lexpo/modules/ui/TextShadowRecord;Lexpo/modules/ui/TextOverflowType;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V", "getText", "()Ljava/lang/String;", "getSpans", "()Ljava/util/List;", "getColor", "()Landroid/graphics/Color;", "getTypography", "()Lexpo/modules/ui/TypographyStyle;", "getFontSize", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getFontWeight", "()Lexpo/modules/ui/TextFontWeight;", "getFontStyle", "()Lexpo/modules/ui/TextFontStyle;", "getFontFamily", "getTextAlign", "()Lexpo/modules/ui/TextAlignType;", "getTextDecoration", "()Lexpo/modules/ui/TextDecorationType;", "getLetterSpacing", "getLineHeight", "getLineBreak", "()Lexpo/modules/ui/TextLineBreakType;", "getBackground", "getShadow", "()Lexpo/modules/ui/TextShadowRecord;", "getOverflow", "()Lexpo/modules/ui/TextOverflowType;", "getSoftWrap", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getMaxLines", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMinLines", "getModifiers", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "copy", "(Ljava/lang/String;Ljava/util/List;Landroid/graphics/Color;Lexpo/modules/ui/TypographyStyle;Ljava/lang/Float;Lexpo/modules/ui/TextFontWeight;Lexpo/modules/ui/TextFontStyle;Ljava/lang/String;Lexpo/modules/ui/TextAlignType;Lexpo/modules/ui/TextDecorationType;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/TextLineBreakType;Landroid/graphics/Color;Lexpo/modules/ui/TextShadowRecord;Lexpo/modules/ui/TextOverflowType;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lexpo/modules/ui/TextProps;", "equals", "other", "hashCode", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TextProps implements ComposeProps, TextSpanStyle {
    public static final int $stable = 8;
    private final Color background;
    private final Color color;
    private final String fontFamily;
    private final Float fontSize;
    private final TextFontStyle fontStyle;
    private final TextFontWeight fontWeight;
    private final Float letterSpacing;
    private final TextLineBreakType lineBreak;
    private final Float lineHeight;
    private final Integer maxLines;
    private final Integer minLines;
    private final List<Map<String, Object>> modifiers;
    private final TextOverflowType overflow;
    private final TextShadowRecord shadow;
    private final Boolean softWrap;
    private final List<TextSpanRecord> spans;
    private final String text;
    private final TextAlignType textAlign;
    private final TextDecorationType textDecoration;
    private final TypographyStyle typography;

    public TextProps() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1048575, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TextProps copy$default(TextProps textProps, String str, List list, Color color, TypographyStyle typographyStyle, Float f, TextFontWeight textFontWeight, TextFontStyle textFontStyle, String str2, TextAlignType textAlignType, TextDecorationType textDecorationType, Float f2, Float f3, TextLineBreakType textLineBreakType, Color color2, TextShadowRecord textShadowRecord, TextOverflowType textOverflowType, Boolean bool, Integer num, Integer num2, List list2, int i, Object obj) {
        List list3;
        Integer num3;
        String str3 = (i & 1) != 0 ? textProps.text : str;
        List list4 = (i & 2) != 0 ? textProps.spans : list;
        Color color3 = (i & 4) != 0 ? textProps.color : color;
        TypographyStyle typographyStyle2 = (i & 8) != 0 ? textProps.typography : typographyStyle;
        Float f4 = (i & 16) != 0 ? textProps.fontSize : f;
        TextFontWeight textFontWeight2 = (i & 32) != 0 ? textProps.fontWeight : textFontWeight;
        TextFontStyle textFontStyle2 = (i & 64) != 0 ? textProps.fontStyle : textFontStyle;
        String str4 = (i & 128) != 0 ? textProps.fontFamily : str2;
        TextAlignType textAlignType2 = (i & 256) != 0 ? textProps.textAlign : textAlignType;
        TextDecorationType textDecorationType2 = (i & 512) != 0 ? textProps.textDecoration : textDecorationType;
        Float f5 = (i & 1024) != 0 ? textProps.letterSpacing : f2;
        Float f6 = (i & 2048) != 0 ? textProps.lineHeight : f3;
        TextLineBreakType textLineBreakType2 = (i & 4096) != 0 ? textProps.lineBreak : textLineBreakType;
        Color color4 = (i & 8192) != 0 ? textProps.background : color2;
        String str5 = str3;
        TextShadowRecord textShadowRecord2 = (i & 16384) != 0 ? textProps.shadow : textShadowRecord;
        TextOverflowType textOverflowType2 = (i & 32768) != 0 ? textProps.overflow : textOverflowType;
        Boolean bool2 = (i & 65536) != 0 ? textProps.softWrap : bool;
        Integer num4 = (i & 131072) != 0 ? textProps.maxLines : num;
        Integer num5 = (i & 262144) != 0 ? textProps.minLines : num2;
        if ((i & 524288) != 0) {
            num3 = num5;
            list3 = textProps.modifiers;
        } else {
            list3 = list2;
            num3 = num5;
        }
        return textProps.copy(str5, list4, color3, typographyStyle2, f4, textFontWeight2, textFontStyle2, str4, textAlignType2, textDecorationType2, f5, f6, textLineBreakType2, color4, textShadowRecord2, textOverflowType2, bool2, num4, num3, list3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getText() {
        return this.text;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final TextDecorationType getTextDecoration() {
        return this.textDecoration;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Float getLetterSpacing() {
        return this.letterSpacing;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Float getLineHeight() {
        return this.lineHeight;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final TextLineBreakType getLineBreak() {
        return this.lineBreak;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final Color getBackground() {
        return this.background;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final TextShadowRecord getShadow() {
        return this.shadow;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final TextOverflowType getOverflow() {
        return this.overflow;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final Boolean getSoftWrap() {
        return this.softWrap;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final Integer getMaxLines() {
        return this.maxLines;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final Integer getMinLines() {
        return this.minLines;
    }

    public final List<TextSpanRecord> component2() {
        return this.spans;
    }

    public final List<Map<String, Object>> component20() {
        return this.modifiers;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Color getColor() {
        return this.color;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final TypographyStyle getTypography() {
        return this.typography;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Float getFontSize() {
        return this.fontSize;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final TextFontWeight getFontWeight() {
        return this.fontWeight;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final TextFontStyle getFontStyle() {
        return this.fontStyle;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getFontFamily() {
        return this.fontFamily;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final TextAlignType getTextAlign() {
        return this.textAlign;
    }

    public final TextProps copy(String text, List<TextSpanRecord> spans, Color color, TypographyStyle typography, Float fontSize, TextFontWeight fontWeight, TextFontStyle fontStyle, String fontFamily, TextAlignType textAlign, TextDecorationType textDecoration, Float letterSpacing, Float lineHeight, TextLineBreakType lineBreak, Color background, TextShadowRecord shadow, TextOverflowType overflow, Boolean softWrap, Integer maxLines, Integer minLines, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new TextProps(text, spans, color, typography, fontSize, fontWeight, fontStyle, fontFamily, textAlign, textDecoration, letterSpacing, lineHeight, lineBreak, background, shadow, overflow, softWrap, maxLines, minLines, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextProps)) {
            return false;
        }
        TextProps textProps = (TextProps) other;
        return Intrinsics.areEqual(this.text, textProps.text) && Intrinsics.areEqual(this.spans, textProps.spans) && Intrinsics.areEqual(this.color, textProps.color) && this.typography == textProps.typography && Intrinsics.areEqual((Object) this.fontSize, (Object) textProps.fontSize) && this.fontWeight == textProps.fontWeight && this.fontStyle == textProps.fontStyle && Intrinsics.areEqual(this.fontFamily, textProps.fontFamily) && this.textAlign == textProps.textAlign && this.textDecoration == textProps.textDecoration && Intrinsics.areEqual((Object) this.letterSpacing, (Object) textProps.letterSpacing) && Intrinsics.areEqual((Object) this.lineHeight, (Object) textProps.lineHeight) && this.lineBreak == textProps.lineBreak && Intrinsics.areEqual(this.background, textProps.background) && Intrinsics.areEqual(this.shadow, textProps.shadow) && this.overflow == textProps.overflow && Intrinsics.areEqual(this.softWrap, textProps.softWrap) && Intrinsics.areEqual(this.maxLines, textProps.maxLines) && Intrinsics.areEqual(this.minLines, textProps.minLines) && Intrinsics.areEqual(this.modifiers, textProps.modifiers);
    }

    public int hashCode() {
        int iHashCode = this.text.hashCode() * 31;
        List<TextSpanRecord> list = this.spans;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        Color color = this.color;
        int iHashCode3 = (iHashCode2 + (color == null ? 0 : color.hashCode())) * 31;
        TypographyStyle typographyStyle = this.typography;
        int iHashCode4 = (iHashCode3 + (typographyStyle == null ? 0 : typographyStyle.hashCode())) * 31;
        Float f = this.fontSize;
        int iHashCode5 = (iHashCode4 + (f == null ? 0 : f.hashCode())) * 31;
        TextFontWeight textFontWeight = this.fontWeight;
        int iHashCode6 = (iHashCode5 + (textFontWeight == null ? 0 : textFontWeight.hashCode())) * 31;
        TextFontStyle textFontStyle = this.fontStyle;
        int iHashCode7 = (iHashCode6 + (textFontStyle == null ? 0 : textFontStyle.hashCode())) * 31;
        String str = this.fontFamily;
        int iHashCode8 = (iHashCode7 + (str == null ? 0 : str.hashCode())) * 31;
        TextAlignType textAlignType = this.textAlign;
        int iHashCode9 = (iHashCode8 + (textAlignType == null ? 0 : textAlignType.hashCode())) * 31;
        TextDecorationType textDecorationType = this.textDecoration;
        int iHashCode10 = (iHashCode9 + (textDecorationType == null ? 0 : textDecorationType.hashCode())) * 31;
        Float f2 = this.letterSpacing;
        int iHashCode11 = (iHashCode10 + (f2 == null ? 0 : f2.hashCode())) * 31;
        Float f3 = this.lineHeight;
        int iHashCode12 = (iHashCode11 + (f3 == null ? 0 : f3.hashCode())) * 31;
        TextLineBreakType textLineBreakType = this.lineBreak;
        int iHashCode13 = (iHashCode12 + (textLineBreakType == null ? 0 : textLineBreakType.hashCode())) * 31;
        Color color2 = this.background;
        int iHashCode14 = (iHashCode13 + (color2 == null ? 0 : color2.hashCode())) * 31;
        TextShadowRecord textShadowRecord = this.shadow;
        int iHashCode15 = (iHashCode14 + (textShadowRecord == null ? 0 : textShadowRecord.hashCode())) * 31;
        TextOverflowType textOverflowType = this.overflow;
        int iHashCode16 = (iHashCode15 + (textOverflowType == null ? 0 : textOverflowType.hashCode())) * 31;
        Boolean bool = this.softWrap;
        int iHashCode17 = (iHashCode16 + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num = this.maxLines;
        int iHashCode18 = (iHashCode17 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.minLines;
        return ((iHashCode18 + (num2 != null ? num2.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "TextProps(text=" + this.text + ", spans=" + this.spans + ", color=" + this.color + ", typography=" + this.typography + ", fontSize=" + this.fontSize + ", fontWeight=" + this.fontWeight + ", fontStyle=" + this.fontStyle + ", fontFamily=" + this.fontFamily + ", textAlign=" + this.textAlign + ", textDecoration=" + this.textDecoration + ", letterSpacing=" + this.letterSpacing + ", lineHeight=" + this.lineHeight + ", lineBreak=" + this.lineBreak + ", background=" + this.background + ", shadow=" + this.shadow + ", overflow=" + this.overflow + ", softWrap=" + this.softWrap + ", maxLines=" + this.maxLines + ", minLines=" + this.minLines + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TextProps(String text, List<TextSpanRecord> list, Color color, TypographyStyle typographyStyle, Float f, TextFontWeight textFontWeight, TextFontStyle textFontStyle, String str, TextAlignType textAlignType, TextDecorationType textDecorationType, Float f2, Float f3, TextLineBreakType textLineBreakType, Color color2, TextShadowRecord textShadowRecord, TextOverflowType textOverflowType, Boolean bool, Integer num, Integer num2, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.text = text;
        this.spans = list;
        this.color = color;
        this.typography = typographyStyle;
        this.fontSize = f;
        this.fontWeight = textFontWeight;
        this.fontStyle = textFontStyle;
        this.fontFamily = str;
        this.textAlign = textAlignType;
        this.textDecoration = textDecorationType;
        this.letterSpacing = f2;
        this.lineHeight = f3;
        this.lineBreak = textLineBreakType;
        this.background = color2;
        this.shadow = textShadowRecord;
        this.overflow = textOverflowType;
        this.softWrap = bool;
        this.maxLines = num;
        this.minLines = num2;
        this.modifiers = modifiers;
    }

    public /* synthetic */ TextProps(String str, List list, Color color, TypographyStyle typographyStyle, Float f, TextFontWeight textFontWeight, TextFontStyle textFontStyle, String str2, TextAlignType textAlignType, TextDecorationType textDecorationType, Float f2, Float f3, TextLineBreakType textLineBreakType, Color color2, TextShadowRecord textShadowRecord, TextOverflowType textOverflowType, Boolean bool, Integer num, Integer num2, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : list, (i & 4) != 0 ? null : color, (i & 8) != 0 ? null : typographyStyle, (i & 16) != 0 ? null : f, (i & 32) != 0 ? null : textFontWeight, (i & 64) != 0 ? null : textFontStyle, (i & 128) != 0 ? null : str2, (i & 256) != 0 ? null : textAlignType, (i & 512) != 0 ? null : textDecorationType, (i & 1024) != 0 ? null : f2, (i & 2048) != 0 ? null : f3, (i & 4096) != 0 ? null : textLineBreakType, (i & 8192) != 0 ? null : color2, (i & 16384) != 0 ? null : textShadowRecord, (i & 32768) != 0 ? null : textOverflowType, (i & 65536) != 0 ? null : bool, (i & 131072) != 0 ? null : num, (i & 262144) != 0 ? null : num2, (i & 524288) != 0 ? CollectionsKt.emptyList() : list2);
    }

    @Override // expo.modules.ui.TextSpanStyle
    public String getText() {
        return this.text;
    }

    public final List<TextSpanRecord> getSpans() {
        return this.spans;
    }

    @Override // expo.modules.ui.TextSpanStyle
    public Color getColor() {
        return this.color;
    }

    public final TypographyStyle getTypography() {
        return this.typography;
    }

    @Override // expo.modules.ui.TextSpanStyle
    public Float getFontSize() {
        return this.fontSize;
    }

    @Override // expo.modules.ui.TextSpanStyle
    public TextFontWeight getFontWeight() {
        return this.fontWeight;
    }

    @Override // expo.modules.ui.TextSpanStyle
    public TextFontStyle getFontStyle() {
        return this.fontStyle;
    }

    @Override // expo.modules.ui.TextSpanStyle
    public String getFontFamily() {
        return this.fontFamily;
    }

    public final TextAlignType getTextAlign() {
        return this.textAlign;
    }

    @Override // expo.modules.ui.TextSpanStyle
    public TextDecorationType getTextDecoration() {
        return this.textDecoration;
    }

    @Override // expo.modules.ui.TextSpanStyle
    public Float getLetterSpacing() {
        return this.letterSpacing;
    }

    public final Float getLineHeight() {
        return this.lineHeight;
    }

    public final TextLineBreakType getLineBreak() {
        return this.lineBreak;
    }

    @Override // expo.modules.ui.TextSpanStyle
    public Color getBackground() {
        return this.background;
    }

    @Override // expo.modules.ui.TextSpanStyle
    public TextShadowRecord getShadow() {
        return this.shadow;
    }

    public final TextOverflowType getOverflow() {
        return this.overflow;
    }

    public final Boolean getSoftWrap() {
        return this.softWrap;
    }

    public final Integer getMaxLines() {
        return this.maxLines;
    }

    public final Integer getMinLines() {
        return this.minLines;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
