package expo.modules.ui;

import android.graphics.Color;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SwitchView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bE\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001BÇ\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0003HÆ\u0003JÉ\u0001\u0010G\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010H\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010KHÖ\u0003J\t\u0010L\u001a\u00020MHÖ\u0001J\t\u0010N\u001a\u00020OHÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u0018R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001d\u0010\u0016\u001a\u0004\b\u001e\u0010\u0018R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0016\u001a\u0004\b \u0010\u0018R\u001e\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b!\u0010\u0016\u001a\u0004\b\"\u0010\u0018R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b#\u0010\u0016\u001a\u0004\b$\u0010\u0018R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b%\u0010\u0016\u001a\u0004\b&\u0010\u0018R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b'\u0010\u0016\u001a\u0004\b(\u0010\u0018R\u001e\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b)\u0010\u0016\u001a\u0004\b*\u0010\u0018R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b+\u0010\u0016\u001a\u0004\b,\u0010\u0018R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b-\u0010\u0016\u001a\u0004\b.\u0010\u0018R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b/\u0010\u0016\u001a\u0004\b0\u0010\u0018R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b1\u0010\u0016\u001a\u0004\b2\u0010\u0018R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b3\u0010\u0016\u001a\u0004\b4\u0010\u0018R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b5\u0010\u0016\u001a\u0004\b6\u0010\u0018¨\u0006P"}, d2 = {"Lexpo/modules/ui/SwitchColors;", "Lexpo/modules/kotlin/records/Record;", "checkedThumbColor", "Landroid/graphics/Color;", "checkedTrackColor", "checkedBorderColor", "checkedIconColor", "uncheckedThumbColor", "uncheckedTrackColor", "uncheckedBorderColor", "uncheckedIconColor", "disabledCheckedThumbColor", "disabledCheckedTrackColor", "disabledCheckedBorderColor", "disabledCheckedIconColor", "disabledUncheckedThumbColor", "disabledUncheckedTrackColor", "disabledUncheckedBorderColor", "disabledUncheckedIconColor", "<init>", "(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V", "getCheckedThumbColor$annotations", "()V", "getCheckedThumbColor", "()Landroid/graphics/Color;", "getCheckedTrackColor$annotations", "getCheckedTrackColor", "getCheckedBorderColor$annotations", "getCheckedBorderColor", "getCheckedIconColor$annotations", "getCheckedIconColor", "getUncheckedThumbColor$annotations", "getUncheckedThumbColor", "getUncheckedTrackColor$annotations", "getUncheckedTrackColor", "getUncheckedBorderColor$annotations", "getUncheckedBorderColor", "getUncheckedIconColor$annotations", "getUncheckedIconColor", "getDisabledCheckedThumbColor$annotations", "getDisabledCheckedThumbColor", "getDisabledCheckedTrackColor$annotations", "getDisabledCheckedTrackColor", "getDisabledCheckedBorderColor$annotations", "getDisabledCheckedBorderColor", "getDisabledCheckedIconColor$annotations", "getDisabledCheckedIconColor", "getDisabledUncheckedThumbColor$annotations", "getDisabledUncheckedThumbColor", "getDisabledUncheckedTrackColor$annotations", "getDisabledUncheckedTrackColor", "getDisabledUncheckedBorderColor$annotations", "getDisabledUncheckedBorderColor", "getDisabledUncheckedIconColor$annotations", "getDisabledUncheckedIconColor", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SwitchColors implements Record {
    public static final int $stable = 8;
    private final Color checkedBorderColor;
    private final Color checkedIconColor;
    private final Color checkedThumbColor;
    private final Color checkedTrackColor;
    private final Color disabledCheckedBorderColor;
    private final Color disabledCheckedIconColor;
    private final Color disabledCheckedThumbColor;
    private final Color disabledCheckedTrackColor;
    private final Color disabledUncheckedBorderColor;
    private final Color disabledUncheckedIconColor;
    private final Color disabledUncheckedThumbColor;
    private final Color disabledUncheckedTrackColor;
    private final Color uncheckedBorderColor;
    private final Color uncheckedIconColor;
    private final Color uncheckedThumbColor;
    private final Color uncheckedTrackColor;

    public SwitchColors() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null);
    }

    public static /* synthetic */ SwitchColors copy$default(SwitchColors switchColors, Color color, Color color2, Color color3, Color color4, Color color5, Color color6, Color color7, Color color8, Color color9, Color color10, Color color11, Color color12, Color color13, Color color14, Color color15, Color color16, int i, Object obj) {
        Color color17 = (i & 1) != 0 ? switchColors.checkedThumbColor : color;
        return switchColors.copy(color17, (i & 2) != 0 ? switchColors.checkedTrackColor : color2, (i & 4) != 0 ? switchColors.checkedBorderColor : color3, (i & 8) != 0 ? switchColors.checkedIconColor : color4, (i & 16) != 0 ? switchColors.uncheckedThumbColor : color5, (i & 32) != 0 ? switchColors.uncheckedTrackColor : color6, (i & 64) != 0 ? switchColors.uncheckedBorderColor : color7, (i & 128) != 0 ? switchColors.uncheckedIconColor : color8, (i & 256) != 0 ? switchColors.disabledCheckedThumbColor : color9, (i & 512) != 0 ? switchColors.disabledCheckedTrackColor : color10, (i & 1024) != 0 ? switchColors.disabledCheckedBorderColor : color11, (i & 2048) != 0 ? switchColors.disabledCheckedIconColor : color12, (i & 4096) != 0 ? switchColors.disabledUncheckedThumbColor : color13, (i & 8192) != 0 ? switchColors.disabledUncheckedTrackColor : color14, (i & 16384) != 0 ? switchColors.disabledUncheckedBorderColor : color15, (i & 32768) != 0 ? switchColors.disabledUncheckedIconColor : color16);
    }

    @Field
    public static /* synthetic */ void getCheckedBorderColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getCheckedIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getCheckedThumbColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getCheckedTrackColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledCheckedBorderColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledCheckedIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledCheckedThumbColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledCheckedTrackColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledUncheckedBorderColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledUncheckedIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledUncheckedThumbColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledUncheckedTrackColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUncheckedBorderColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUncheckedIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUncheckedThumbColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUncheckedTrackColor$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Color getCheckedThumbColor() {
        return this.checkedThumbColor;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Color getDisabledCheckedTrackColor() {
        return this.disabledCheckedTrackColor;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Color getDisabledCheckedBorderColor() {
        return this.disabledCheckedBorderColor;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Color getDisabledCheckedIconColor() {
        return this.disabledCheckedIconColor;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Color getDisabledUncheckedThumbColor() {
        return this.disabledUncheckedThumbColor;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final Color getDisabledUncheckedTrackColor() {
        return this.disabledUncheckedTrackColor;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final Color getDisabledUncheckedBorderColor() {
        return this.disabledUncheckedBorderColor;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final Color getDisabledUncheckedIconColor() {
        return this.disabledUncheckedIconColor;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Color getCheckedTrackColor() {
        return this.checkedTrackColor;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Color getCheckedBorderColor() {
        return this.checkedBorderColor;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Color getCheckedIconColor() {
        return this.checkedIconColor;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Color getUncheckedThumbColor() {
        return this.uncheckedThumbColor;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Color getUncheckedTrackColor() {
        return this.uncheckedTrackColor;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Color getUncheckedBorderColor() {
        return this.uncheckedBorderColor;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Color getUncheckedIconColor() {
        return this.uncheckedIconColor;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Color getDisabledCheckedThumbColor() {
        return this.disabledCheckedThumbColor;
    }

    public final SwitchColors copy(Color checkedThumbColor, Color checkedTrackColor, Color checkedBorderColor, Color checkedIconColor, Color uncheckedThumbColor, Color uncheckedTrackColor, Color uncheckedBorderColor, Color uncheckedIconColor, Color disabledCheckedThumbColor, Color disabledCheckedTrackColor, Color disabledCheckedBorderColor, Color disabledCheckedIconColor, Color disabledUncheckedThumbColor, Color disabledUncheckedTrackColor, Color disabledUncheckedBorderColor, Color disabledUncheckedIconColor) {
        return new SwitchColors(checkedThumbColor, checkedTrackColor, checkedBorderColor, checkedIconColor, uncheckedThumbColor, uncheckedTrackColor, uncheckedBorderColor, uncheckedIconColor, disabledCheckedThumbColor, disabledCheckedTrackColor, disabledCheckedBorderColor, disabledCheckedIconColor, disabledUncheckedThumbColor, disabledUncheckedTrackColor, disabledUncheckedBorderColor, disabledUncheckedIconColor);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SwitchColors)) {
            return false;
        }
        SwitchColors switchColors = (SwitchColors) other;
        return Intrinsics.areEqual(this.checkedThumbColor, switchColors.checkedThumbColor) && Intrinsics.areEqual(this.checkedTrackColor, switchColors.checkedTrackColor) && Intrinsics.areEqual(this.checkedBorderColor, switchColors.checkedBorderColor) && Intrinsics.areEqual(this.checkedIconColor, switchColors.checkedIconColor) && Intrinsics.areEqual(this.uncheckedThumbColor, switchColors.uncheckedThumbColor) && Intrinsics.areEqual(this.uncheckedTrackColor, switchColors.uncheckedTrackColor) && Intrinsics.areEqual(this.uncheckedBorderColor, switchColors.uncheckedBorderColor) && Intrinsics.areEqual(this.uncheckedIconColor, switchColors.uncheckedIconColor) && Intrinsics.areEqual(this.disabledCheckedThumbColor, switchColors.disabledCheckedThumbColor) && Intrinsics.areEqual(this.disabledCheckedTrackColor, switchColors.disabledCheckedTrackColor) && Intrinsics.areEqual(this.disabledCheckedBorderColor, switchColors.disabledCheckedBorderColor) && Intrinsics.areEqual(this.disabledCheckedIconColor, switchColors.disabledCheckedIconColor) && Intrinsics.areEqual(this.disabledUncheckedThumbColor, switchColors.disabledUncheckedThumbColor) && Intrinsics.areEqual(this.disabledUncheckedTrackColor, switchColors.disabledUncheckedTrackColor) && Intrinsics.areEqual(this.disabledUncheckedBorderColor, switchColors.disabledUncheckedBorderColor) && Intrinsics.areEqual(this.disabledUncheckedIconColor, switchColors.disabledUncheckedIconColor);
    }

    public int hashCode() {
        Color color = this.checkedThumbColor;
        int iHashCode = (color == null ? 0 : color.hashCode()) * 31;
        Color color2 = this.checkedTrackColor;
        int iHashCode2 = (iHashCode + (color2 == null ? 0 : color2.hashCode())) * 31;
        Color color3 = this.checkedBorderColor;
        int iHashCode3 = (iHashCode2 + (color3 == null ? 0 : color3.hashCode())) * 31;
        Color color4 = this.checkedIconColor;
        int iHashCode4 = (iHashCode3 + (color4 == null ? 0 : color4.hashCode())) * 31;
        Color color5 = this.uncheckedThumbColor;
        int iHashCode5 = (iHashCode4 + (color5 == null ? 0 : color5.hashCode())) * 31;
        Color color6 = this.uncheckedTrackColor;
        int iHashCode6 = (iHashCode5 + (color6 == null ? 0 : color6.hashCode())) * 31;
        Color color7 = this.uncheckedBorderColor;
        int iHashCode7 = (iHashCode6 + (color7 == null ? 0 : color7.hashCode())) * 31;
        Color color8 = this.uncheckedIconColor;
        int iHashCode8 = (iHashCode7 + (color8 == null ? 0 : color8.hashCode())) * 31;
        Color color9 = this.disabledCheckedThumbColor;
        int iHashCode9 = (iHashCode8 + (color9 == null ? 0 : color9.hashCode())) * 31;
        Color color10 = this.disabledCheckedTrackColor;
        int iHashCode10 = (iHashCode9 + (color10 == null ? 0 : color10.hashCode())) * 31;
        Color color11 = this.disabledCheckedBorderColor;
        int iHashCode11 = (iHashCode10 + (color11 == null ? 0 : color11.hashCode())) * 31;
        Color color12 = this.disabledCheckedIconColor;
        int iHashCode12 = (iHashCode11 + (color12 == null ? 0 : color12.hashCode())) * 31;
        Color color13 = this.disabledUncheckedThumbColor;
        int iHashCode13 = (iHashCode12 + (color13 == null ? 0 : color13.hashCode())) * 31;
        Color color14 = this.disabledUncheckedTrackColor;
        int iHashCode14 = (iHashCode13 + (color14 == null ? 0 : color14.hashCode())) * 31;
        Color color15 = this.disabledUncheckedBorderColor;
        int iHashCode15 = (iHashCode14 + (color15 == null ? 0 : color15.hashCode())) * 31;
        Color color16 = this.disabledUncheckedIconColor;
        return iHashCode15 + (color16 != null ? color16.hashCode() : 0);
    }

    public String toString() {
        return "SwitchColors(checkedThumbColor=" + this.checkedThumbColor + ", checkedTrackColor=" + this.checkedTrackColor + ", checkedBorderColor=" + this.checkedBorderColor + ", checkedIconColor=" + this.checkedIconColor + ", uncheckedThumbColor=" + this.uncheckedThumbColor + ", uncheckedTrackColor=" + this.uncheckedTrackColor + ", uncheckedBorderColor=" + this.uncheckedBorderColor + ", uncheckedIconColor=" + this.uncheckedIconColor + ", disabledCheckedThumbColor=" + this.disabledCheckedThumbColor + ", disabledCheckedTrackColor=" + this.disabledCheckedTrackColor + ", disabledCheckedBorderColor=" + this.disabledCheckedBorderColor + ", disabledCheckedIconColor=" + this.disabledCheckedIconColor + ", disabledUncheckedThumbColor=" + this.disabledUncheckedThumbColor + ", disabledUncheckedTrackColor=" + this.disabledUncheckedTrackColor + ", disabledUncheckedBorderColor=" + this.disabledUncheckedBorderColor + ", disabledUncheckedIconColor=" + this.disabledUncheckedIconColor + ")";
    }

    public SwitchColors(Color color, Color color2, Color color3, Color color4, Color color5, Color color6, Color color7, Color color8, Color color9, Color color10, Color color11, Color color12, Color color13, Color color14, Color color15, Color color16) {
        this.checkedThumbColor = color;
        this.checkedTrackColor = color2;
        this.checkedBorderColor = color3;
        this.checkedIconColor = color4;
        this.uncheckedThumbColor = color5;
        this.uncheckedTrackColor = color6;
        this.uncheckedBorderColor = color7;
        this.uncheckedIconColor = color8;
        this.disabledCheckedThumbColor = color9;
        this.disabledCheckedTrackColor = color10;
        this.disabledCheckedBorderColor = color11;
        this.disabledCheckedIconColor = color12;
        this.disabledUncheckedThumbColor = color13;
        this.disabledUncheckedTrackColor = color14;
        this.disabledUncheckedBorderColor = color15;
        this.disabledUncheckedIconColor = color16;
    }

    public /* synthetic */ SwitchColors(Color color, Color color2, Color color3, Color color4, Color color5, Color color6, Color color7, Color color8, Color color9, Color color10, Color color11, Color color12, Color color13, Color color14, Color color15, Color color16, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : color, (i & 2) != 0 ? null : color2, (i & 4) != 0 ? null : color3, (i & 8) != 0 ? null : color4, (i & 16) != 0 ? null : color5, (i & 32) != 0 ? null : color6, (i & 64) != 0 ? null : color7, (i & 128) != 0 ? null : color8, (i & 256) != 0 ? null : color9, (i & 512) != 0 ? null : color10, (i & 1024) != 0 ? null : color11, (i & 2048) != 0 ? null : color12, (i & 4096) != 0 ? null : color13, (i & 8192) != 0 ? null : color14, (i & 16384) != 0 ? null : color15, (i & 32768) != 0 ? null : color16);
    }

    public final Color getCheckedThumbColor() {
        return this.checkedThumbColor;
    }

    public final Color getCheckedTrackColor() {
        return this.checkedTrackColor;
    }

    public final Color getCheckedBorderColor() {
        return this.checkedBorderColor;
    }

    public final Color getCheckedIconColor() {
        return this.checkedIconColor;
    }

    public final Color getUncheckedThumbColor() {
        return this.uncheckedThumbColor;
    }

    public final Color getUncheckedTrackColor() {
        return this.uncheckedTrackColor;
    }

    public final Color getUncheckedBorderColor() {
        return this.uncheckedBorderColor;
    }

    public final Color getUncheckedIconColor() {
        return this.uncheckedIconColor;
    }

    public final Color getDisabledCheckedThumbColor() {
        return this.disabledCheckedThumbColor;
    }

    public final Color getDisabledCheckedTrackColor() {
        return this.disabledCheckedTrackColor;
    }

    public final Color getDisabledCheckedBorderColor() {
        return this.disabledCheckedBorderColor;
    }

    public final Color getDisabledCheckedIconColor() {
        return this.disabledCheckedIconColor;
    }

    public final Color getDisabledUncheckedThumbColor() {
        return this.disabledUncheckedThumbColor;
    }

    public final Color getDisabledUncheckedTrackColor() {
        return this.disabledUncheckedTrackColor;
    }

    public final Color getDisabledUncheckedBorderColor() {
        return this.disabledUncheckedBorderColor;
    }

    public final Color getDisabledUncheckedIconColor() {
        return this.disabledUncheckedIconColor;
    }
}
