package expo.modules.ui;

import android.graphics.Color;
import androidx.core.app.FrameMetricsAggregator;
import com.facebook.hermes.intl.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DatePickerView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012$\b\u0002\u0010\u0011\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013j\u0002`\u00160\u0012j\u0002`\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001bJ\t\u0010,\u001a\u00020\u0005HÆ\u0003J\t\u0010-\u001a\u00020\u0007HÆ\u0003J\t\u0010.\u001a\u00020\tHÆ\u0003J\t\u0010/\u001a\u00020\tHÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\fHÆ\u0003J\t\u00101\u001a\u00020\u000eHÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0010HÆ\u0003J%\u00103\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013j\u0002`\u00160\u0012j\u0002`\u0017HÆ\u0003J\u008a\u0001\u00104\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102$\b\u0002\u0010\u0011\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013j\u0002`\u00160\u0012j\u0002`\u0017HÆ\u0001¢\u0006\u0002\u00105J\u0013\u00106\u001a\u00020\t2\b\u00107\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u00108\u001a\u000209HÖ\u0001J\t\u0010:\u001a\u00020\u0014HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\"R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R-\u0010\u0011\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013j\u0002`\u00160\u0012j\u0002`\u0017¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*¨\u0006;"}, d2 = {"Lexpo/modules/ui/DateTimePickerProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "initialDate", "", Constants.SENSITIVITY_VARIANT, "Lexpo/modules/ui/Variant;", "displayedComponents", "Lexpo/modules/ui/DisplayedComponents;", "showVariantToggle", "", RNConstants.ARG_IS24HOUR, "color", "Landroid/graphics/Color;", "elementColors", "Lexpo/modules/ui/DateTimePickerColorOverrides;", "selectableDates", "Lexpo/modules/ui/SelectableDatesRecord;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Ljava/lang/Long;Lexpo/modules/ui/Variant;Lexpo/modules/ui/DisplayedComponents;ZZLandroid/graphics/Color;Lexpo/modules/ui/DateTimePickerColorOverrides;Lexpo/modules/ui/SelectableDatesRecord;Ljava/util/List;)V", "getInitialDate", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getVariant", "()Lexpo/modules/ui/Variant;", "getDisplayedComponents", "()Lexpo/modules/ui/DisplayedComponents;", "getShowVariantToggle", "()Z", "getColor", "()Landroid/graphics/Color;", "getElementColors", "()Lexpo/modules/ui/DateTimePickerColorOverrides;", "getSelectableDates", "()Lexpo/modules/ui/SelectableDatesRecord;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Long;Lexpo/modules/ui/Variant;Lexpo/modules/ui/DisplayedComponents;ZZLandroid/graphics/Color;Lexpo/modules/ui/DateTimePickerColorOverrides;Lexpo/modules/ui/SelectableDatesRecord;Ljava/util/List;)Lexpo/modules/ui/DateTimePickerProps;", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DateTimePickerProps implements ComposeProps {
    public static final int $stable = 8;
    private final Color color;
    private final DisplayedComponents displayedComponents;
    private final DateTimePickerColorOverrides elementColors;
    private final Long initialDate;
    private final boolean is24Hour;
    private final List<Map<String, Object>> modifiers;
    private final SelectableDatesRecord selectableDates;
    private final boolean showVariantToggle;
    private final Variant variant;

    public DateTimePickerProps() {
        this(null, null, null, false, false, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DateTimePickerProps copy$default(DateTimePickerProps dateTimePickerProps, Long l, Variant variant, DisplayedComponents displayedComponents, boolean z, boolean z2, Color color, DateTimePickerColorOverrides dateTimePickerColorOverrides, SelectableDatesRecord selectableDatesRecord, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            l = dateTimePickerProps.initialDate;
        }
        if ((i & 2) != 0) {
            variant = dateTimePickerProps.variant;
        }
        if ((i & 4) != 0) {
            displayedComponents = dateTimePickerProps.displayedComponents;
        }
        if ((i & 8) != 0) {
            z = dateTimePickerProps.showVariantToggle;
        }
        if ((i & 16) != 0) {
            z2 = dateTimePickerProps.is24Hour;
        }
        if ((i & 32) != 0) {
            color = dateTimePickerProps.color;
        }
        if ((i & 64) != 0) {
            dateTimePickerColorOverrides = dateTimePickerProps.elementColors;
        }
        if ((i & 128) != 0) {
            selectableDatesRecord = dateTimePickerProps.selectableDates;
        }
        if ((i & 256) != 0) {
            list = dateTimePickerProps.modifiers;
        }
        SelectableDatesRecord selectableDatesRecord2 = selectableDatesRecord;
        List list2 = list;
        Color color2 = color;
        DateTimePickerColorOverrides dateTimePickerColorOverrides2 = dateTimePickerColorOverrides;
        boolean z3 = z2;
        DisplayedComponents displayedComponents2 = displayedComponents;
        return dateTimePickerProps.copy(l, variant, displayedComponents2, z, z3, color2, dateTimePickerColorOverrides2, selectableDatesRecord2, list2);
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
    public final DisplayedComponents getDisplayedComponents() {
        return this.displayedComponents;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getShowVariantToggle() {
        return this.showVariantToggle;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getIs24Hour() {
        return this.is24Hour;
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

    public final List<Map<String, Object>> component9() {
        return this.modifiers;
    }

    public final DateTimePickerProps copy(Long initialDate, Variant variant, DisplayedComponents displayedComponents, boolean showVariantToggle, boolean is24Hour, Color color, DateTimePickerColorOverrides elementColors, SelectableDatesRecord selectableDates, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(variant, "variant");
        Intrinsics.checkNotNullParameter(displayedComponents, "displayedComponents");
        Intrinsics.checkNotNullParameter(elementColors, "elementColors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new DateTimePickerProps(initialDate, variant, displayedComponents, showVariantToggle, is24Hour, color, elementColors, selectableDates, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DateTimePickerProps)) {
            return false;
        }
        DateTimePickerProps dateTimePickerProps = (DateTimePickerProps) other;
        return Intrinsics.areEqual(this.initialDate, dateTimePickerProps.initialDate) && this.variant == dateTimePickerProps.variant && this.displayedComponents == dateTimePickerProps.displayedComponents && this.showVariantToggle == dateTimePickerProps.showVariantToggle && this.is24Hour == dateTimePickerProps.is24Hour && Intrinsics.areEqual(this.color, dateTimePickerProps.color) && Intrinsics.areEqual(this.elementColors, dateTimePickerProps.elementColors) && Intrinsics.areEqual(this.selectableDates, dateTimePickerProps.selectableDates) && Intrinsics.areEqual(this.modifiers, dateTimePickerProps.modifiers);
    }

    public int hashCode() {
        Long l = this.initialDate;
        int iHashCode = (((((((((l == null ? 0 : l.hashCode()) * 31) + this.variant.hashCode()) * 31) + this.displayedComponents.hashCode()) * 31) + Boolean.hashCode(this.showVariantToggle)) * 31) + Boolean.hashCode(this.is24Hour)) * 31;
        Color color = this.color;
        int iHashCode2 = (((iHashCode + (color == null ? 0 : color.hashCode())) * 31) + this.elementColors.hashCode()) * 31;
        SelectableDatesRecord selectableDatesRecord = this.selectableDates;
        return ((iHashCode2 + (selectableDatesRecord != null ? selectableDatesRecord.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "DateTimePickerProps(initialDate=" + this.initialDate + ", variant=" + this.variant + ", displayedComponents=" + this.displayedComponents + ", showVariantToggle=" + this.showVariantToggle + ", is24Hour=" + this.is24Hour + ", color=" + this.color + ", elementColors=" + this.elementColors + ", selectableDates=" + this.selectableDates + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DateTimePickerProps(Long l, Variant variant, DisplayedComponents displayedComponents, boolean z, boolean z2, Color color, DateTimePickerColorOverrides elementColors, SelectableDatesRecord selectableDatesRecord, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(variant, "variant");
        Intrinsics.checkNotNullParameter(displayedComponents, "displayedComponents");
        Intrinsics.checkNotNullParameter(elementColors, "elementColors");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.initialDate = l;
        this.variant = variant;
        this.displayedComponents = displayedComponents;
        this.showVariantToggle = z;
        this.is24Hour = z2;
        this.color = color;
        this.elementColors = elementColors;
        this.selectableDates = selectableDatesRecord;
        this.modifiers = modifiers;
    }

    public final Long getInitialDate() {
        return this.initialDate;
    }

    public /* synthetic */ DateTimePickerProps(Long l, Variant variant, DisplayedComponents displayedComponents, boolean z, boolean z2, Color color, DateTimePickerColorOverrides dateTimePickerColorOverrides, SelectableDatesRecord selectableDatesRecord, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? Variant.PICKER : variant, (i & 4) != 0 ? DisplayedComponents.DATE : displayedComponents, (i & 8) != 0 ? true : z, (i & 16) != 0 ? true : z2, (i & 32) != 0 ? null : color, (i & 64) != 0 ? new DateTimePickerColorOverrides() : dateTimePickerColorOverrides, (i & 128) != 0 ? null : selectableDatesRecord, (i & 256) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final Variant getVariant() {
        return this.variant;
    }

    public final DisplayedComponents getDisplayedComponents() {
        return this.displayedComponents;
    }

    public final boolean getShowVariantToggle() {
        return this.showVariantToggle;
    }

    public final boolean is24Hour() {
        return this.is24Hour;
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

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
