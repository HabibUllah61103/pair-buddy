package expo.modules.ui;

import android.graphics.Color;
import com.facebook.hermes.intl.Constants;
import expo.modules.kotlin.views.ComposeProps;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DatePickerView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\t\u0010$\u001a\u00020\u0005HÆ\u0003J\t\u0010%\u001a\u00020\u0007HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\fHÆ\u0003J\t\u0010)\u001a\u00020\u000eHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0010HÆ\u0003Jh\u0010+\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÆ\u0001¢\u0006\u0002\u0010,J\u0013\u0010-\u001a\u00020\u00072\b\u0010.\u001a\u0004\u0018\u00010/HÖ\u0003J\t\u00100\u001a\u000201HÖ\u0001J\t\u00102\u001a\u00020\tHÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"¨\u00063"}, d2 = {"Lexpo/modules/ui/DatePickerDialogProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "initialDate", "", Constants.SENSITIVITY_VARIANT, "Lexpo/modules/ui/Variant;", "showVariantToggle", "", "confirmButtonLabel", "", "dismissButtonLabel", "color", "Landroid/graphics/Color;", "elementColors", "Lexpo/modules/ui/DateTimePickerColorOverrides;", "selectableDates", "Lexpo/modules/ui/SelectableDatesRecord;", "<init>", "(Ljava/lang/Long;Lexpo/modules/ui/Variant;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Color;Lexpo/modules/ui/DateTimePickerColorOverrides;Lexpo/modules/ui/SelectableDatesRecord;)V", "getInitialDate", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getVariant", "()Lexpo/modules/ui/Variant;", "getShowVariantToggle", "()Z", "getConfirmButtonLabel", "()Ljava/lang/String;", "getDismissButtonLabel", "getColor", "()Landroid/graphics/Color;", "getElementColors", "()Lexpo/modules/ui/DateTimePickerColorOverrides;", "getSelectableDates", "()Lexpo/modules/ui/SelectableDatesRecord;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/Long;Lexpo/modules/ui/Variant;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Color;Lexpo/modules/ui/DateTimePickerColorOverrides;Lexpo/modules/ui/SelectableDatesRecord;)Lexpo/modules/ui/DatePickerDialogProps;", "equals", "other", "", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DatePickerDialogProps implements ComposeProps {
    public static final int $stable = 8;
    private final Color color;
    private final String confirmButtonLabel;
    private final String dismissButtonLabel;
    private final DateTimePickerColorOverrides elementColors;
    private final Long initialDate;
    private final SelectableDatesRecord selectableDates;
    private final boolean showVariantToggle;
    private final Variant variant;

    public DatePickerDialogProps() {
        this(null, null, false, null, null, null, null, null, 255, null);
    }

    public static /* synthetic */ DatePickerDialogProps copy$default(DatePickerDialogProps datePickerDialogProps, Long l, Variant variant, boolean z, String str, String str2, Color color, DateTimePickerColorOverrides dateTimePickerColorOverrides, SelectableDatesRecord selectableDatesRecord, int i, Object obj) {
        if ((i & 1) != 0) {
            l = datePickerDialogProps.initialDate;
        }
        if ((i & 2) != 0) {
            variant = datePickerDialogProps.variant;
        }
        if ((i & 4) != 0) {
            z = datePickerDialogProps.showVariantToggle;
        }
        if ((i & 8) != 0) {
            str = datePickerDialogProps.confirmButtonLabel;
        }
        if ((i & 16) != 0) {
            str2 = datePickerDialogProps.dismissButtonLabel;
        }
        if ((i & 32) != 0) {
            color = datePickerDialogProps.color;
        }
        if ((i & 64) != 0) {
            dateTimePickerColorOverrides = datePickerDialogProps.elementColors;
        }
        if ((i & 128) != 0) {
            selectableDatesRecord = datePickerDialogProps.selectableDates;
        }
        DateTimePickerColorOverrides dateTimePickerColorOverrides2 = dateTimePickerColorOverrides;
        SelectableDatesRecord selectableDatesRecord2 = selectableDatesRecord;
        String str3 = str2;
        Color color2 = color;
        return datePickerDialogProps.copy(l, variant, z, str, str3, color2, dateTimePickerColorOverrides2, selectableDatesRecord2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getInitialDate() {
        return this.initialDate;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Variant getVariant() {
        return this.variant;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getShowVariantToggle() {
        return this.showVariantToggle;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getConfirmButtonLabel() {
        return this.confirmButtonLabel;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDismissButtonLabel() {
        return this.dismissButtonLabel;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Color getColor() {
        return this.color;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final DateTimePickerColorOverrides getElementColors() {
        return this.elementColors;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final SelectableDatesRecord getSelectableDates() {
        return this.selectableDates;
    }

    public final DatePickerDialogProps copy(Long initialDate, Variant variant, boolean showVariantToggle, String confirmButtonLabel, String dismissButtonLabel, Color color, DateTimePickerColorOverrides elementColors, SelectableDatesRecord selectableDates) {
        Intrinsics.checkNotNullParameter(variant, "variant");
        Intrinsics.checkNotNullParameter(elementColors, "elementColors");
        return new DatePickerDialogProps(initialDate, variant, showVariantToggle, confirmButtonLabel, dismissButtonLabel, color, elementColors, selectableDates);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DatePickerDialogProps)) {
            return false;
        }
        DatePickerDialogProps datePickerDialogProps = (DatePickerDialogProps) other;
        return Intrinsics.areEqual(this.initialDate, datePickerDialogProps.initialDate) && this.variant == datePickerDialogProps.variant && this.showVariantToggle == datePickerDialogProps.showVariantToggle && Intrinsics.areEqual(this.confirmButtonLabel, datePickerDialogProps.confirmButtonLabel) && Intrinsics.areEqual(this.dismissButtonLabel, datePickerDialogProps.dismissButtonLabel) && Intrinsics.areEqual(this.color, datePickerDialogProps.color) && Intrinsics.areEqual(this.elementColors, datePickerDialogProps.elementColors) && Intrinsics.areEqual(this.selectableDates, datePickerDialogProps.selectableDates);
    }

    public int hashCode() {
        Long l = this.initialDate;
        int iHashCode = (((((l == null ? 0 : l.hashCode()) * 31) + this.variant.hashCode()) * 31) + Boolean.hashCode(this.showVariantToggle)) * 31;
        String str = this.confirmButtonLabel;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.dismissButtonLabel;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Color color = this.color;
        int iHashCode4 = (((iHashCode3 + (color == null ? 0 : color.hashCode())) * 31) + this.elementColors.hashCode()) * 31;
        SelectableDatesRecord selectableDatesRecord = this.selectableDates;
        return iHashCode4 + (selectableDatesRecord != null ? selectableDatesRecord.hashCode() : 0);
    }

    public String toString() {
        return "DatePickerDialogProps(initialDate=" + this.initialDate + ", variant=" + this.variant + ", showVariantToggle=" + this.showVariantToggle + ", confirmButtonLabel=" + this.confirmButtonLabel + ", dismissButtonLabel=" + this.dismissButtonLabel + ", color=" + this.color + ", elementColors=" + this.elementColors + ", selectableDates=" + this.selectableDates + ")";
    }

    public DatePickerDialogProps(Long l, Variant variant, boolean z, String str, String str2, Color color, DateTimePickerColorOverrides elementColors, SelectableDatesRecord selectableDatesRecord) {
        Intrinsics.checkNotNullParameter(variant, "variant");
        Intrinsics.checkNotNullParameter(elementColors, "elementColors");
        this.initialDate = l;
        this.variant = variant;
        this.showVariantToggle = z;
        this.confirmButtonLabel = str;
        this.dismissButtonLabel = str2;
        this.color = color;
        this.elementColors = elementColors;
        this.selectableDates = selectableDatesRecord;
    }

    public final Long getInitialDate() {
        return this.initialDate;
    }

    public /* synthetic */ DatePickerDialogProps(Long l, Variant variant, boolean z, String str, String str2, Color color, DateTimePickerColorOverrides dateTimePickerColorOverrides, SelectableDatesRecord selectableDatesRecord, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? Variant.PICKER : variant, (i & 4) != 0 ? true : z, (i & 8) != 0 ? null : str, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : color, (i & 64) != 0 ? new DateTimePickerColorOverrides() : dateTimePickerColorOverrides, (i & 128) != 0 ? null : selectableDatesRecord);
    }

    public final Variant getVariant() {
        return this.variant;
    }

    public final boolean getShowVariantToggle() {
        return this.showVariantToggle;
    }

    public final String getConfirmButtonLabel() {
        return this.confirmButtonLabel;
    }

    public final String getDismissButtonLabel() {
        return this.dismissButtonLabel;
    }

    public final Color getColor() {
        return this.color;
    }

    public final DateTimePickerColorOverrides getElementColors() {
        return this.elementColors;
    }

    public final SelectableDatesRecord getSelectableDates() {
        return this.selectableDates;
    }
}
