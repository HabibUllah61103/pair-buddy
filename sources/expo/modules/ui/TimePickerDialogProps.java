package expo.modules.ui;

import android.graphics.Color;
import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.kotlin.views.ComposeProps;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DatePickerView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010\u001f\u001a\u00020\fHÆ\u0003JR\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001¢\u0006\u0002\u0010!J\u0013\u0010\"\u001a\u00020\u00052\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020\u0007HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0012R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006("}, d2 = {"Lexpo/modules/ui/TimePickerDialogProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "initialDate", "", RNConstants.ARG_IS24HOUR, "", "confirmButtonLabel", "", "dismissButtonLabel", "color", "Landroid/graphics/Color;", "elementColors", "Lexpo/modules/ui/DateTimePickerColorOverrides;", "<init>", "(Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Color;Lexpo/modules/ui/DateTimePickerColorOverrides;)V", "getInitialDate", "()Ljava/lang/Long;", "Ljava/lang/Long;", "()Z", "getConfirmButtonLabel", "()Ljava/lang/String;", "getDismissButtonLabel", "getColor", "()Landroid/graphics/Color;", "getElementColors", "()Lexpo/modules/ui/DateTimePickerColorOverrides;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Color;Lexpo/modules/ui/DateTimePickerColorOverrides;)Lexpo/modules/ui/TimePickerDialogProps;", "equals", "other", "", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TimePickerDialogProps implements ComposeProps {
    public static final int $stable = 8;
    private final Color color;
    private final String confirmButtonLabel;
    private final String dismissButtonLabel;
    private final DateTimePickerColorOverrides elementColors;
    private final Long initialDate;
    private final boolean is24Hour;

    public TimePickerDialogProps() {
        this(null, false, null, null, null, null, 63, null);
    }

    public static /* synthetic */ TimePickerDialogProps copy$default(TimePickerDialogProps timePickerDialogProps, Long l, boolean z, String str, String str2, Color color, DateTimePickerColorOverrides dateTimePickerColorOverrides, int i, Object obj) {
        if ((i & 1) != 0) {
            l = timePickerDialogProps.initialDate;
        }
        if ((i & 2) != 0) {
            z = timePickerDialogProps.is24Hour;
        }
        if ((i & 4) != 0) {
            str = timePickerDialogProps.confirmButtonLabel;
        }
        if ((i & 8) != 0) {
            str2 = timePickerDialogProps.dismissButtonLabel;
        }
        if ((i & 16) != 0) {
            color = timePickerDialogProps.color;
        }
        if ((i & 32) != 0) {
            dateTimePickerColorOverrides = timePickerDialogProps.elementColors;
        }
        Color color2 = color;
        DateTimePickerColorOverrides dateTimePickerColorOverrides2 = dateTimePickerColorOverrides;
        return timePickerDialogProps.copy(l, z, str, str2, color2, dateTimePickerColorOverrides2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getInitialDate() {
        return this.initialDate;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIs24Hour() {
        return this.is24Hour;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getConfirmButtonLabel() {
        return this.confirmButtonLabel;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDismissButtonLabel() {
        return this.dismissButtonLabel;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Color getColor() {
        return this.color;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final DateTimePickerColorOverrides getElementColors() {
        return this.elementColors;
    }

    public final TimePickerDialogProps copy(Long initialDate, boolean is24Hour, String confirmButtonLabel, String dismissButtonLabel, Color color, DateTimePickerColorOverrides elementColors) {
        Intrinsics.checkNotNullParameter(elementColors, "elementColors");
        return new TimePickerDialogProps(initialDate, is24Hour, confirmButtonLabel, dismissButtonLabel, color, elementColors);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TimePickerDialogProps)) {
            return false;
        }
        TimePickerDialogProps timePickerDialogProps = (TimePickerDialogProps) other;
        return Intrinsics.areEqual(this.initialDate, timePickerDialogProps.initialDate) && this.is24Hour == timePickerDialogProps.is24Hour && Intrinsics.areEqual(this.confirmButtonLabel, timePickerDialogProps.confirmButtonLabel) && Intrinsics.areEqual(this.dismissButtonLabel, timePickerDialogProps.dismissButtonLabel) && Intrinsics.areEqual(this.color, timePickerDialogProps.color) && Intrinsics.areEqual(this.elementColors, timePickerDialogProps.elementColors);
    }

    public int hashCode() {
        Long l = this.initialDate;
        int iHashCode = (((l == null ? 0 : l.hashCode()) * 31) + Boolean.hashCode(this.is24Hour)) * 31;
        String str = this.confirmButtonLabel;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.dismissButtonLabel;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Color color = this.color;
        return ((iHashCode3 + (color != null ? color.hashCode() : 0)) * 31) + this.elementColors.hashCode();
    }

    public String toString() {
        return "TimePickerDialogProps(initialDate=" + this.initialDate + ", is24Hour=" + this.is24Hour + ", confirmButtonLabel=" + this.confirmButtonLabel + ", dismissButtonLabel=" + this.dismissButtonLabel + ", color=" + this.color + ", elementColors=" + this.elementColors + ")";
    }

    public TimePickerDialogProps(Long l, boolean z, String str, String str2, Color color, DateTimePickerColorOverrides elementColors) {
        Intrinsics.checkNotNullParameter(elementColors, "elementColors");
        this.initialDate = l;
        this.is24Hour = z;
        this.confirmButtonLabel = str;
        this.dismissButtonLabel = str2;
        this.color = color;
        this.elementColors = elementColors;
    }

    public final Long getInitialDate() {
        return this.initialDate;
    }

    public final boolean is24Hour() {
        return this.is24Hour;
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

    public /* synthetic */ TimePickerDialogProps(Long l, boolean z, String str, String str2, Color color, DateTimePickerColorOverrides dateTimePickerColorOverrides, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? true : z, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : color, (i & 32) != 0 ? new DateTimePickerColorOverrides() : dateTimePickerColorOverrides);
    }

    public final DateTimePickerColorOverrides getElementColors() {
        return this.elementColors;
    }
}
