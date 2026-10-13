package expo.modules.ui;

import android.content.res.Configuration;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.AndroidAlertDialog_androidKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonElevation;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerDefaults;
import androidx.compose.material3.DatePickerDialog_androidKt;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.DatePickerState;
import androidx.compose.material3.SelectableDates;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TimePickerColors;
import androidx.compose.material3.TimePickerDefaults;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.material3.TimePickerLayoutType;
import androidx.compose.material3.TimePickerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.imagepipeline.common.RotationOptions;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.FunctionalComposableScope;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DatePickerView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000n\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0002\u001a\u0017\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\u0010\u0007\u001a/\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000e\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000f\u0010\u0010\u001a/\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000e\u001a\u00020\u0012H\u0007¢\u0006\u0004\b\u0013\u0010\u0014\u001a7\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00160\u001a2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00160\u001dH\u0007¢\u0006\u0002\u0010\u001e\u001a7\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020 2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00160\u001a2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00160\u001dH\u0007¢\u0006\u0002\u0010!\u001a-\u0010\"\u001a\u00020\u0016*\u00020#2\u0006\u0010\u0017\u001a\u00020$2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00160\u001aH\u0007¢\u0006\u0002\u0010%\u001a3\u0010&\u001a\u00020\u00162\b\b\u0002\u0010'\u001a\u00020(2\u0006\u0010\u0017\u001a\u00020$2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00160\u001aH\u0007¢\u0006\u0002\u0010)\u001a3\u0010*\u001a\u00020\u00162\b\b\u0002\u0010'\u001a\u00020(2\u0006\u0010\u0017\u001a\u00020$2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00160\u001aH\u0007¢\u0006\u0002\u0010)¨\u0006+"}, d2 = {"toUtcDayMillis", "", "localMillis", "rememberSelectableDates", "Landroidx/compose/material3/SelectableDates;", "selectableDatesRecord", "Lexpo/modules/ui/SelectableDatesRecord;", "(Lexpo/modules/ui/SelectableDatesRecord;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SelectableDates;", "buildDatePickerColors", "Landroidx/compose/material3/DatePickerColors;", "elementColors", "Lexpo/modules/ui/DateTimePickerColorOverrides;", "colorProp", "Landroidx/compose/ui/graphics/Color;", "defaults", "buildDatePickerColors-BAq54LU", "(Lexpo/modules/ui/DateTimePickerColorOverrides;Landroidx/compose/ui/graphics/Color;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DatePickerColors;", "buildTimePickerColors", "Landroidx/compose/material3/TimePickerColors;", "buildTimePickerColors-BAq54LU", "(Lexpo/modules/ui/DateTimePickerColorOverrides;Landroidx/compose/ui/graphics/Color;Landroidx/compose/material3/TimePickerColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TimePickerColors;", "ExpoDatePickerDialogContent", "", "props", "Lexpo/modules/ui/DatePickerDialogProps;", "onDateSelected", "Lkotlin/Function1;", "Lexpo/modules/ui/DatePickerResult;", "onDismissRequest", "Lkotlin/Function0;", "(Lexpo/modules/ui/DatePickerDialogProps;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "ExpoTimePickerDialogContent", "Lexpo/modules/ui/TimePickerDialogProps;", "(Lexpo/modules/ui/TimePickerDialogProps;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "DateTimePickerContent", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "Lexpo/modules/ui/DateTimePickerProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/DateTimePickerProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "ExpoDatePicker", "modifier", "Landroidx/compose/ui/Modifier;", "(Landroidx/compose/ui/Modifier;Lexpo/modules/ui/DateTimePickerProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "ExpoTimePicker", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class DatePickerViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit DateTimePickerContent$lambda$18(FunctionalComposableScope functionalComposableScope, DateTimePickerProps dateTimePickerProps, Function1 function1, int i, Composer composer, int i2) {
        DateTimePickerContent(functionalComposableScope, dateTimePickerProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ExpoDatePicker$lambda$21(Modifier modifier, DateTimePickerProps dateTimePickerProps, Function1 function1, int i, int i2, Composer composer, int i3) {
        ExpoDatePicker(modifier, dateTimePickerProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ExpoDatePickerDialogContent$lambda$9(DatePickerDialogProps datePickerDialogProps, Function1 function1, Function0 function0, int i, Composer composer, int i2) {
        ExpoDatePickerDialogContent(datePickerDialogProps, function1, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ExpoTimePicker$lambda$24(Modifier modifier, DateTimePickerProps dateTimePickerProps, Function1 function1, int i, int i2, Composer composer, int i3) {
        ExpoTimePicker(modifier, dateTimePickerProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ExpoTimePickerDialogContent$lambda$13(TimePickerDialogProps timePickerDialogProps, Function1 function1, Function0 function0, int i, Composer composer, int i2) {
        ExpoTimePickerDialogContent(timePickerDialogProps, function1, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    private static final long toUtcDayMillis(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        Calendar calendar2 = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        calendar2.set(calendar.get(1), calendar.get(2), calendar.get(5), 0, 0, 0);
        calendar2.set(14, 0);
        return calendar2.getTimeInMillis();
    }

    public static final SelectableDates rememberSelectableDates(SelectableDatesRecord selectableDatesRecord, Composer composer, int i) {
        final Integer numValueOf;
        SelectableDates allDates;
        composer.startReplaceGroup(-1912423973);
        ComposerKt.sourceInformation(composer, "C(rememberSelectableDates)150@6177L1073:DatePickerView.kt#v15e7d");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1912423973, i, -1, "expo.modules.ui.rememberSelectableDates (DatePickerView.kt:147)");
        }
        final Integer numValueOf2 = null;
        Long start = selectableDatesRecord != null ? selectableDatesRecord.getStart() : null;
        Long end = selectableDatesRecord != null ? selectableDatesRecord.getEnd() : null;
        composer.startReplaceGroup(-1633490746);
        ComposerKt.sourceInformation(composer, "CC(remember):DatePickerView.kt#9igjgp");
        boolean zChanged = composer.changed(start) | composer.changed(end);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
            if (start != null || end != null) {
                final Long lValueOf = start != null ? Long.valueOf(toUtcDayMillis(start.longValue())) : null;
                final Long lValueOf2 = end != null ? Long.valueOf(toUtcDayMillis(end.longValue())) : null;
                if (start != null) {
                    long jLongValue = start.longValue();
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTimeInMillis(jLongValue);
                    numValueOf = Integer.valueOf(calendar.get(1));
                } else {
                    numValueOf = null;
                }
                if (end != null) {
                    long jLongValue2 = end.longValue();
                    Calendar calendar2 = Calendar.getInstance();
                    calendar2.setTimeInMillis(jLongValue2);
                    numValueOf2 = Integer.valueOf(calendar2.get(1));
                }
                allDates = new SelectableDates() { // from class: expo.modules.ui.DatePickerViewKt$rememberSelectableDates$1$1
                    @Override // androidx.compose.material3.SelectableDates
                    public boolean isSelectableDate(long utcTimeMillis) {
                        Long l = lValueOf;
                        if (l != null && utcTimeMillis < l.longValue()) {
                            return false;
                        }
                        Long l2 = lValueOf2;
                        return l2 == null || utcTimeMillis <= l2.longValue();
                    }

                    @Override // androidx.compose.material3.SelectableDates
                    public boolean isSelectableYear(int year) {
                        Integer num = numValueOf;
                        if (num != null && year < num.intValue()) {
                            return false;
                        }
                        Integer num2 = numValueOf2;
                        return num2 == null || year <= num2.intValue();
                    }
                };
            } else {
                allDates = DatePickerDefaults.INSTANCE.getAllDates();
            }
            objRememberedValue = allDates;
            composer.updateRememberedValue(objRememberedValue);
        }
        SelectableDates selectableDates = (SelectableDates) objRememberedValue;
        composer.endReplaceGroup();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return selectableDates;
    }

    /* JADX INFO: renamed from: buildDatePickerColors-BAq54LU, reason: not valid java name */
    public static final DatePickerColors m11139buildDatePickerColorsBAq54LU(DateTimePickerColorOverrides dateTimePickerColorOverrides, Color color, DatePickerColors datePickerColors, Composer composer, int i, int i2) {
        long jM6068unboximpl;
        long jM6068unboximpl2;
        long jM6068unboximpl3;
        long jM6068unboximpl4;
        composer.startReplaceGroup(1991323504);
        ComposerKt.sourceInformation(composer, "C(buildDatePickerColors)P(2,0:c#ui.graphics.Color)190@7547L8:DatePickerView.kt#v15e7d");
        DateTimePickerColorOverrides dateTimePickerColorOverrides2 = (i2 & 1) != 0 ? new DateTimePickerColorOverrides() : dateTimePickerColorOverrides;
        Color color2 = (i2 & 2) != 0 ? null : color;
        DatePickerColors datePickerColorsColors = (i2 & 4) != 0 ? DatePickerDefaults.INSTANCE.colors(composer, 6) : datePickerColors;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1991323504, i, -1, "expo.modules.ui.buildDatePickerColors (DatePickerView.kt:191)");
        }
        Color composeOrNull = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getContainerColor());
        long jM6068unboximpl5 = composeOrNull != null ? composeOrNull.m6068unboximpl() : datePickerColorsColors.getContainerColor();
        Color composeOrNull2 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getTitleContentColor());
        if (composeOrNull2 != null) {
            jM6068unboximpl = composeOrNull2.m6068unboximpl();
        } else {
            jM6068unboximpl = color2 != null ? color2.m6068unboximpl() : datePickerColorsColors.getTitleContentColor();
        }
        Color composeOrNull3 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getHeadlineContentColor());
        if (composeOrNull3 != null) {
            jM6068unboximpl2 = composeOrNull3.m6068unboximpl();
        } else {
            jM6068unboximpl2 = color2 != null ? color2.m6068unboximpl() : datePickerColorsColors.getHeadlineContentColor();
        }
        Color composeOrNull4 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getWeekdayContentColor());
        long jM6068unboximpl6 = composeOrNull4 != null ? composeOrNull4.m6068unboximpl() : datePickerColorsColors.getWeekdayContentColor();
        Color composeOrNull5 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getSubheadContentColor());
        long jM6068unboximpl7 = composeOrNull5 != null ? composeOrNull5.m6068unboximpl() : datePickerColorsColors.getSubheadContentColor();
        Color composeOrNull6 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getNavigationContentColor());
        long jM6068unboximpl8 = composeOrNull6 != null ? composeOrNull6.m6068unboximpl() : datePickerColorsColors.getNavigationContentColor();
        Color composeOrNull7 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getYearContentColor());
        long jM6068unboximpl9 = composeOrNull7 != null ? composeOrNull7.m6068unboximpl() : datePickerColorsColors.getYearContentColor();
        Color composeOrNull8 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getDisabledYearContentColor());
        long jM6068unboximpl10 = composeOrNull8 != null ? composeOrNull8.m6068unboximpl() : datePickerColorsColors.getDisabledYearContentColor();
        Color composeOrNull9 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getCurrentYearContentColor());
        long jM6068unboximpl11 = composeOrNull9 != null ? composeOrNull9.m6068unboximpl() : datePickerColorsColors.getCurrentYearContentColor();
        Color composeOrNull10 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getSelectedYearContentColor());
        long jM6068unboximpl12 = composeOrNull10 != null ? composeOrNull10.m6068unboximpl() : datePickerColorsColors.getSelectedYearContentColor();
        Color composeOrNull11 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getDisabledSelectedYearContentColor());
        long jM6068unboximpl13 = composeOrNull11 != null ? composeOrNull11.m6068unboximpl() : datePickerColorsColors.getDisabledSelectedYearContentColor();
        Color composeOrNull12 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getSelectedYearContainerColor());
        long jM6068unboximpl14 = composeOrNull12 != null ? composeOrNull12.m6068unboximpl() : datePickerColorsColors.getSelectedYearContainerColor();
        Color composeOrNull13 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getDisabledSelectedYearContainerColor());
        long jM6068unboximpl15 = composeOrNull13 != null ? composeOrNull13.m6068unboximpl() : datePickerColorsColors.getDisabledSelectedYearContainerColor();
        Color composeOrNull14 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getDayContentColor());
        long jM6068unboximpl16 = composeOrNull14 != null ? composeOrNull14.m6068unboximpl() : datePickerColorsColors.getDayContentColor();
        Color composeOrNull15 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getDisabledDayContentColor());
        long jM6068unboximpl17 = composeOrNull15 != null ? composeOrNull15.m6068unboximpl() : datePickerColorsColors.getDisabledDayContentColor();
        Color composeOrNull16 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getSelectedDayContentColor());
        long jM6068unboximpl18 = composeOrNull16 != null ? composeOrNull16.m6068unboximpl() : datePickerColorsColors.getSelectedDayContentColor();
        Color composeOrNull17 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getDisabledSelectedDayContentColor());
        long jM6068unboximpl19 = composeOrNull17 != null ? composeOrNull17.m6068unboximpl() : datePickerColorsColors.getDisabledSelectedDayContentColor();
        Color composeOrNull18 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getSelectedDayContainerColor());
        if (composeOrNull18 != null) {
            jM6068unboximpl3 = composeOrNull18.m6068unboximpl();
        } else {
            jM6068unboximpl3 = color2 != null ? color2.m6068unboximpl() : datePickerColorsColors.getSelectedDayContainerColor();
        }
        Color composeOrNull19 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getDisabledSelectedDayContainerColor());
        long jM6068unboximpl20 = composeOrNull19 != null ? composeOrNull19.m6068unboximpl() : datePickerColorsColors.getDisabledSelectedDayContainerColor();
        Color composeOrNull20 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getTodayContentColor());
        long jM6068unboximpl21 = composeOrNull20 != null ? composeOrNull20.m6068unboximpl() : datePickerColorsColors.getTodayContentColor();
        Color composeOrNull21 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getTodayDateBorderColor());
        if (composeOrNull21 != null) {
            jM6068unboximpl4 = composeOrNull21.m6068unboximpl();
        } else {
            jM6068unboximpl4 = color2 != null ? color2.m6068unboximpl() : datePickerColorsColors.getTodayDateBorderColor();
        }
        long j = jM6068unboximpl4;
        Color composeOrNull22 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getDayInSelectionRangeContentColor());
        long jM6068unboximpl22 = composeOrNull22 != null ? composeOrNull22.m6068unboximpl() : datePickerColorsColors.getDayInSelectionRangeContentColor();
        Color composeOrNull23 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getDayInSelectionRangeContainerColor());
        long jM6068unboximpl23 = composeOrNull23 != null ? composeOrNull23.m6068unboximpl() : datePickerColorsColors.getDayInSelectionRangeContainerColor();
        Color composeOrNull24 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getDividerColor());
        DatePickerColors datePickerColorsM2369copytNwlRmA = datePickerColorsColors.m2369copytNwlRmA((16777216 & 1) != 0 ? datePickerColorsColors.containerColor : jM6068unboximpl5, (16777216 & 2) != 0 ? datePickerColorsColors.titleContentColor : jM6068unboximpl, (16777216 & 4) != 0 ? datePickerColorsColors.headlineContentColor : jM6068unboximpl2, (16777216 & 8) != 0 ? datePickerColorsColors.weekdayContentColor : jM6068unboximpl6, (16777216 & 16) != 0 ? datePickerColorsColors.subheadContentColor : jM6068unboximpl7, (16777216 & 32) != 0 ? datePickerColorsColors.navigationContentColor : jM6068unboximpl8, (16777216 & 64) != 0 ? datePickerColorsColors.yearContentColor : jM6068unboximpl9, (16777216 & 128) != 0 ? datePickerColorsColors.disabledYearContentColor : jM6068unboximpl10, (16777216 & 256) != 0 ? datePickerColorsColors.currentYearContentColor : jM6068unboximpl11, (16777216 & 512) != 0 ? datePickerColorsColors.selectedYearContentColor : jM6068unboximpl12, (16777216 & 1024) != 0 ? datePickerColorsColors.disabledSelectedYearContentColor : jM6068unboximpl13, (16777216 & 2048) != 0 ? datePickerColorsColors.selectedYearContainerColor : jM6068unboximpl14, (16777216 & 4096) != 0 ? datePickerColorsColors.disabledSelectedYearContainerColor : jM6068unboximpl15, (16777216 & 8192) != 0 ? datePickerColorsColors.dayContentColor : jM6068unboximpl16, (16777216 & 16384) != 0 ? datePickerColorsColors.disabledDayContentColor : jM6068unboximpl17, (16777216 & 32768) != 0 ? datePickerColorsColors.selectedDayContentColor : jM6068unboximpl18, (16777216 & 65536) != 0 ? datePickerColorsColors.disabledSelectedDayContentColor : jM6068unboximpl19, (16777216 & 131072) != 0 ? datePickerColorsColors.selectedDayContainerColor : jM6068unboximpl3, (16777216 & 262144) != 0 ? datePickerColorsColors.disabledSelectedDayContainerColor : jM6068unboximpl20, (16777216 & 524288) != 0 ? datePickerColorsColors.todayContentColor : jM6068unboximpl21, (16777216 & 1048576) != 0 ? datePickerColorsColors.todayDateBorderColor : j, (16777216 & 2097152) != 0 ? datePickerColorsColors.dayInSelectionRangeContainerColor : jM6068unboximpl23, (16777216 & 4194304) != 0 ? datePickerColorsColors.dayInSelectionRangeContentColor : jM6068unboximpl22, (16777216 & 8388608) != 0 ? datePickerColorsColors.dividerColor : composeOrNull24 != null ? composeOrNull24.m6068unboximpl() : datePickerColorsColors.getDividerColor(), (16777216 & 16777216) != 0 ? datePickerColorsColors.dateTextFieldColors : null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return datePickerColorsM2369copytNwlRmA;
    }

    /* JADX INFO: renamed from: buildTimePickerColors-BAq54LU, reason: not valid java name */
    public static final TimePickerColors m11140buildTimePickerColorsBAq54LU(DateTimePickerColorOverrides dateTimePickerColorOverrides, Color color, TimePickerColors timePickerColors, Composer composer, int i, int i2) {
        long jM6068unboximpl;
        long jM6068unboximpl2;
        long jM6068unboximpl3;
        composer.startReplaceGroup(-1016419281);
        ComposerKt.sourceInformation(composer, "C(buildTimePickerColors)P(2,0:c#ui.graphics.Color)225@10839L8:DatePickerView.kt#v15e7d");
        DateTimePickerColorOverrides dateTimePickerColorOverrides2 = (i2 & 1) != 0 ? new DateTimePickerColorOverrides() : dateTimePickerColorOverrides;
        Color color2 = (i2 & 2) != 0 ? null : color;
        TimePickerColors timePickerColorsColors = (i2 & 4) != 0 ? TimePickerDefaults.INSTANCE.colors(composer, 6) : timePickerColors;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1016419281, i, -1, "expo.modules.ui.buildTimePickerColors (DatePickerView.kt:226)");
        }
        Color composeOrNull = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getContainerColor());
        long jM6068unboximpl4 = composeOrNull != null ? composeOrNull.m6068unboximpl() : timePickerColorsColors.getContainerColor();
        Color composeOrNull2 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getClockDialColor());
        if (composeOrNull2 != null) {
            jM6068unboximpl = composeOrNull2.m6068unboximpl();
        } else {
            Color colorM6048boximpl = color2 != null ? Color.m6048boximpl(Color.m6057copywmQWz5c$default(color2.m6068unboximpl(), 0.3f, 0.0f, 0.0f, 0.0f, 14, null)) : null;
            jM6068unboximpl = colorM6048boximpl != null ? colorM6048boximpl.m6068unboximpl() : timePickerColorsColors.getClockDialColor();
        }
        long j = jM6068unboximpl;
        Color composeOrNull3 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getClockDialSelectedContentColor());
        long jM6068unboximpl5 = composeOrNull3 != null ? composeOrNull3.m6068unboximpl() : timePickerColorsColors.getClockDialSelectedContentColor();
        Color composeOrNull4 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getClockDialUnselectedContentColor());
        long jM6068unboximpl6 = composeOrNull4 != null ? composeOrNull4.m6068unboximpl() : timePickerColorsColors.getClockDialUnselectedContentColor();
        Color composeOrNull5 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getSelectorColor());
        if (composeOrNull5 != null) {
            jM6068unboximpl2 = composeOrNull5.m6068unboximpl();
        } else {
            jM6068unboximpl2 = color2 != null ? color2.m6068unboximpl() : timePickerColorsColors.getSelectorColor();
        }
        long j2 = jM6068unboximpl2;
        Color composeOrNull6 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getPeriodSelectorBorderColor());
        long jM6068unboximpl7 = composeOrNull6 != null ? composeOrNull6.m6068unboximpl() : timePickerColorsColors.getPeriodSelectorBorderColor();
        Color composeOrNull7 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getPeriodSelectorSelectedContainerColor());
        long jM6068unboximpl8 = composeOrNull7 != null ? composeOrNull7.m6068unboximpl() : timePickerColorsColors.getPeriodSelectorSelectedContainerColor();
        Color composeOrNull8 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getPeriodSelectorUnselectedContainerColor());
        long jM6068unboximpl9 = composeOrNull8 != null ? composeOrNull8.m6068unboximpl() : timePickerColorsColors.getPeriodSelectorUnselectedContainerColor();
        Color composeOrNull9 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getPeriodSelectorSelectedContentColor());
        long jM6068unboximpl10 = composeOrNull9 != null ? composeOrNull9.m6068unboximpl() : timePickerColorsColors.getPeriodSelectorSelectedContentColor();
        Color composeOrNull10 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getPeriodSelectorUnselectedContentColor());
        long jM6068unboximpl11 = composeOrNull10 != null ? composeOrNull10.m6068unboximpl() : timePickerColorsColors.getPeriodSelectorUnselectedContentColor();
        Color composeOrNull11 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getTimeSelectorSelectedContainerColor());
        if (composeOrNull11 != null) {
            jM6068unboximpl3 = composeOrNull11.m6068unboximpl();
        } else {
            jM6068unboximpl3 = color2 != null ? color2.m6068unboximpl() : timePickerColorsColors.getTimeSelectorSelectedContainerColor();
        }
        long j3 = jM6068unboximpl3;
        Color composeOrNull12 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getTimeSelectorUnselectedContainerColor());
        long jM6068unboximpl12 = composeOrNull12 != null ? composeOrNull12.m6068unboximpl() : timePickerColorsColors.getTimeSelectorUnselectedContainerColor();
        Color composeOrNull13 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getTimeSelectorSelectedContentColor());
        long jM6068unboximpl13 = composeOrNull13 != null ? composeOrNull13.m6068unboximpl() : timePickerColorsColors.getTimeSelectorSelectedContentColor();
        Color composeOrNull14 = UtilsKt.getComposeOrNull(dateTimePickerColorOverrides2.getTimeSelectorUnselectedContentColor());
        TimePickerColors timePickerColorsM3746copydVHXu7A = timePickerColorsColors.m3746copydVHXu7A(j, j2, jM6068unboximpl4, jM6068unboximpl7, jM6068unboximpl5, jM6068unboximpl6, jM6068unboximpl8, jM6068unboximpl9, jM6068unboximpl10, jM6068unboximpl11, j3, jM6068unboximpl12, jM6068unboximpl13, composeOrNull14 != null ? composeOrNull14.m6068unboximpl() : timePickerColorsColors.getTimeSelectorUnselectedContentColor());
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return timePickerColorsM3746copydVHXu7A;
    }

    public static final void ExpoDatePickerDialogContent(final DatePickerDialogProps props, final Function1<? super DatePickerResult, Unit> onDateSelected, final Function0<Unit> onDismissRequest, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onDateSelected, "onDateSelected");
        Intrinsics.checkNotNullParameter(onDismissRequest, "onDismissRequest");
        Composer composerStartRestartGroup = composer.startRestartGroup(1233192626);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(ExpoDatePickerDialogContent)P(2)248@13128L7,250@13217L46,251@13285L24,254@13379L323,265@13808L8,265@13719L98,268@13862L22,269@13906L193,274@14121L150,280@14297L118,267@13821L594:DatePickerView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(props) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onDateSelected) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onDismissRequest) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1233192626, i3, -1, "expo.modules.ui.ExpoDatePickerDialogContent (DatePickerView.kt:247)");
            }
            ProvidableCompositionLocal<Configuration> localConfiguration = AndroidCompositionLocals_androidKt.getLocalConfiguration();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = composerStartRestartGroup.consume(localConfiguration);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            Locale locale = ((Configuration) objConsume).getLocales().get(0);
            int iM11187toDisplayModejFl4v0 = props.getVariant().m11187toDisplayModejFl4v0();
            SelectableDates selectableDatesRememberSelectableDates = rememberSelectableDates(props.getSelectableDates(), composerStartRestartGroup, 0);
            composerStartRestartGroup.startReplaceGroup(1849434622);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):DatePickerView.kt#9igjgp");
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = Long.valueOf(new Date().getTime());
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            long jLongValue = ((Number) objRememberedValue).longValue();
            composerStartRestartGroup.endReplaceGroup();
            Long initialDate = props.getInitialDate();
            if (initialDate != null) {
                jLongValue = initialDate.longValue();
            }
            composerStartRestartGroup.startReplaceGroup(-1746271574);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):DatePickerView.kt#9igjgp");
            boolean zChanged = composerStartRestartGroup.changed(iM11187toDisplayModejFl4v0) | composerStartRestartGroup.changed(jLongValue) | composerStartRestartGroup.changed(selectableDatesRememberSelectableDates);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Intrinsics.checkNotNull(locale);
                long j = jLongValue;
                objRememberedValue2 = DatePickerKt.m2424DatePickerStatesHin3Bw(locale, Long.valueOf(j), Long.valueOf(j), DatePickerDefaults.INSTANCE.getYearRange(), iM11187toDisplayModejFl4v0, selectableDatesRememberSelectableDates);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            final DatePickerState datePickerState = (DatePickerState) objRememberedValue2;
            composerStartRestartGroup.endReplaceGroup();
            final DatePickerColors datePickerColorsM11139buildDatePickerColorsBAq54LU = m11139buildDatePickerColorsBAq54LU(props.getElementColors(), UtilsKt.getComposeOrNull(props.getColor()), DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6), composerStartRestartGroup, 0, 0);
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):DatePickerView.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue3 = new Function0() { // from class: expo.modules.ui.DatePickerViewKt$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DatePickerViewKt.ExpoDatePickerDialogContent$lambda$8$lambda$7(onDismissRequest);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            composerStartRestartGroup.endReplaceGroup();
            DatePickerDialog_androidKt.m2401DatePickerDialogGmEhDVc((Function0) objRememberedValue3, ComposableLambdaKt.rememberComposableLambda(-1116712124, true, new AnonymousClass2(onDateSelected, datePickerState, props), composerStartRestartGroup, 54), null, ComposableLambdaKt.rememberComposableLambda(780267334, true, new AnonymousClass3(onDismissRequest, props), composerStartRestartGroup, 54), null, 0.0f, datePickerColorsM11139buildDatePickerColorsBAq54LU, null, ComposableLambdaKt.rememberComposableLambda(-1921501989, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.DatePickerViewKt.ExpoDatePickerDialogContent.4
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                    invoke(columnScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope DatePickerDialog, Composer composer2, int i4) {
                    Intrinsics.checkNotNullParameter(DatePickerDialog, "$this$DatePickerDialog");
                    ComposerKt.sourceInformation(composer2, "C281@14303L108:DatePickerView.kt#v15e7d");
                    if ((i4 & 17) == 16 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1921501989, i4, -1, "expo.modules.ui.ExpoDatePickerDialogContent.<anonymous> (DatePickerView.kt:281)");
                    }
                    DatePickerKt.DatePicker(datePickerState, null, null, datePickerColorsM11139buildDatePickerColorsBAq54LU, null, null, props.getShowVariantToggle(), null, composer2, 0, 182);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 100666416, RotationOptions.ROTATE_180);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.DatePickerViewKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return DatePickerViewKt.ExpoDatePickerDialogContent$lambda$9(props, onDateSelected, onDismissRequest, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: renamed from: expo.modules.ui.DatePickerViewKt$ExpoDatePickerDialogContent$2, reason: invalid class name */
    /* JADX INFO: compiled from: DatePickerView.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class AnonymousClass2 implements Function2<Composer, Integer, Unit> {
        final /* synthetic */ Function1<DatePickerResult, Unit> $onDateSelected;
        final /* synthetic */ DatePickerDialogProps $props;
        final /* synthetic */ DatePickerState $state;

        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function1<? super DatePickerResult, Unit> function1, DatePickerState datePickerState, DatePickerDialogProps datePickerDialogProps) {
            this.$onDateSelected = function1;
            this.$state = datePickerState;
            this.$props = datePickerDialogProps;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$1$lambda$0(Function1 function1, DatePickerState datePickerState) {
            function1.invoke(new DatePickerResult(datePickerState.getSelectedDateMillis()));
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C270@13935L69,270@14006L87,270@13914L179:DatePickerView.kt#v15e7d");
            if ((i & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1116712124, i, -1, "expo.modules.ui.ExpoDatePickerDialogContent.<anonymous> (DatePickerView.kt:270)");
            }
            composer.startReplaceGroup(-1633490746);
            ComposerKt.sourceInformation(composer, "CC(remember):DatePickerView.kt#9igjgp");
            boolean zChanged = composer.changed(this.$onDateSelected) | composer.changed(this.$state);
            final Function1<DatePickerResult, Unit> function1 = this.$onDateSelected;
            final DatePickerState datePickerState = this.$state;
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.DatePickerViewKt$ExpoDatePickerDialogContent$2$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DatePickerViewKt.AnonymousClass2.invoke$lambda$1$lambda$0(function1, datePickerState);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            final DatePickerDialogProps datePickerDialogProps = this.$props;
            ButtonKt.TextButton((Function0<Unit>) objRememberedValue, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, (Function3<? super RowScope, ? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(1764719809, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.DatePickerViewKt.ExpoDatePickerDialogContent.2.2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer2, Integer num) {
                    invoke(rowScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RowScope TextButton, Composer composer2, int i2) {
                    Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
                    ComposerKt.sourceInformation(composer2, "C271@14016L69:DatePickerView.kt#v15e7d");
                    if ((i2 & 17) == 16 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1764719809, i2, -1, "expo.modules.ui.ExpoDatePickerDialogContent.<anonymous>.<anonymous> (DatePickerView.kt:271)");
                    }
                    String confirmButtonLabel = datePickerDialogProps.getConfirmButtonLabel();
                    composer2.startReplaceGroup(-616344928);
                    ComposerKt.sourceInformation(composer2, "271@14049L35");
                    if (confirmButtonLabel == null) {
                        confirmButtonLabel = StringResources_androidKt.stringResource(android.R.string.ok, composer2, 6);
                    }
                    composer2.endReplaceGroup();
                    TextKt.m3740TextNvy7gAk(confirmButtonLabel, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262142);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composer, 54), composer, 805306368, TypedValues.Position.TYPE_POSITION_TYPE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ExpoDatePickerDialogContent$lambda$8$lambda$7(Function0 function0) {
        function0.invoke();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: expo.modules.ui.DatePickerViewKt$ExpoDatePickerDialogContent$3, reason: invalid class name */
    /* JADX INFO: compiled from: DatePickerView.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class AnonymousClass3 implements Function2<Composer, Integer, Unit> {
        final /* synthetic */ Function0<Unit> $onDismissRequest;
        final /* synthetic */ DatePickerDialogProps $props;

        AnonymousClass3(Function0<Unit> function0, DatePickerDialogProps datePickerDialogProps) {
            this.$onDismissRequest = function0;
            this.$props = datePickerDialogProps;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$1$lambda$0(Function0 function0) {
            function0.invoke();
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C275@14150L22,275@14174L91,275@14129L136:DatePickerView.kt#v15e7d");
            if ((i & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(780267334, i, -1, "expo.modules.ui.ExpoDatePickerDialogContent.<anonymous> (DatePickerView.kt:275)");
            }
            composer.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composer, "CC(remember):DatePickerView.kt#9igjgp");
            boolean zChanged = composer.changed(this.$onDismissRequest);
            final Function0<Unit> function0 = this.$onDismissRequest;
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.DatePickerViewKt$ExpoDatePickerDialogContent$3$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DatePickerViewKt.AnonymousClass3.invoke$lambda$1$lambda$0(function0);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            Function0 function1 = (Function0) objRememberedValue;
            composer.endReplaceGroup();
            final DatePickerDialogProps datePickerDialogProps = this.$props;
            ButtonKt.TextButton((Function0<Unit>) function1, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, (Function3<? super RowScope, ? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-633268029, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.DatePickerViewKt.ExpoDatePickerDialogContent.3.2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer2, Integer num) {
                    invoke(rowScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RowScope TextButton, Composer composer2, int i2) {
                    Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
                    ComposerKt.sourceInformation(composer2, "C276@14184L73:DatePickerView.kt#v15e7d");
                    if ((i2 & 17) == 16 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-633268029, i2, -1, "expo.modules.ui.ExpoDatePickerDialogContent.<anonymous>.<anonymous> (DatePickerView.kt:276)");
                    }
                    String dismissButtonLabel = datePickerDialogProps.getDismissButtonLabel();
                    composer2.startReplaceGroup(1314780710);
                    ComposerKt.sourceInformation(composer2, "276@14217L39");
                    if (dismissButtonLabel == null) {
                        dismissButtonLabel = StringResources_androidKt.stringResource(android.R.string.cancel, composer2, 6);
                    }
                    composer2.endReplaceGroup();
                    TextKt.m3740TextNvy7gAk(dismissButtonLabel, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262142);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composer, 54), composer, 805306368, TypedValues.Position.TYPE_POSITION_TYPE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    }

    public static final void ExpoTimePickerDialogContent(final TimePickerDialogProps props, final Function1<? super DatePickerResult, Unit> onDateSelected, final Function0<Unit> onDismissRequest, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onDateSelected, "onDateSelected");
        Intrinsics.checkNotNullParameter(onDismissRequest, "onDismissRequest");
        Composer composerStartRestartGroup = composer.startRestartGroup(-423514060);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(ExpoTimePickerDialogContent)P(2)294@14662L312,306@15090L8,306@15001L98,309@15139L22,310@15183L420,323@15625L150,328@15788L142,308@15103L831:DatePickerView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(props) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onDateSelected) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onDismissRequest) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-423514060, i3, -1, "expo.modules.ui.ExpoTimePickerDialogContent (DatePickerView.kt:291)");
            }
            Long initialDate = props.getInitialDate();
            boolean zIs24Hour = props.is24Hour();
            composerStartRestartGroup.startReplaceGroup(-1633490746);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):DatePickerView.kt#9igjgp");
            boolean zChanged = composerStartRestartGroup.changed(zIs24Hour) | composerStartRestartGroup.changed(initialDate);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Calendar calendar = Calendar.getInstance();
                if (initialDate != null) {
                    calendar.setTimeInMillis(initialDate.longValue());
                }
                objRememberedValue = TimePickerKt.TimePickerState(calendar.get(11), calendar.get(12), props.is24Hour());
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final TimePickerState timePickerState = (TimePickerState) objRememberedValue;
            composerStartRestartGroup.endReplaceGroup();
            final TimePickerColors timePickerColorsM11140buildTimePickerColorsBAq54LU = m11140buildTimePickerColorsBAq54LU(props.getElementColors(), UtilsKt.getComposeOrNull(props.getColor()), TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6), composerStartRestartGroup, 0, 0);
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):DatePickerView.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue2 = new Function0() { // from class: expo.modules.ui.DatePickerViewKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DatePickerViewKt.ExpoTimePickerDialogContent$lambda$12$lambda$11(onDismissRequest);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            composerStartRestartGroup.endReplaceGroup();
            AndroidAlertDialog_androidKt.m1976AlertDialogOix01E0((Function0) objRememberedValue2, ComposableLambdaKt.rememberComposableLambda(-1405172500, true, new C07052(initialDate, timePickerState, onDateSelected, props), composerStartRestartGroup, 54), null, ComposableLambdaKt.rememberComposableLambda(-994562134, true, new C07063(onDismissRequest, props), composerStartRestartGroup, 54), null, null, ComposableLambdaKt.rememberComposableLambda(1768837063, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.DatePickerViewKt.ExpoTimePickerDialogContent.4
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C329@15796L128:DatePickerView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1768837063, i4, -1, "expo.modules.ui.ExpoTimePickerDialogContent.<anonymous> (DatePickerView.kt:329)");
                    }
                    TimePickerKt.m3803TimePickermT9BvqQ(timePickerState, null, timePickerColorsM11140buildTimePickerColorsBAq54LU, TimePickerLayoutType.INSTANCE.m3828getVerticalQJTpgSE(), composer2, 0, 2);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), null, 0L, 0L, 0L, 0L, 0.0f, null, composerStartRestartGroup, 1575984, 0, 16308);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.DatePickerViewKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return DatePickerViewKt.ExpoTimePickerDialogContent$lambda$13(props, onDateSelected, onDismissRequest, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: renamed from: expo.modules.ui.DatePickerViewKt$ExpoTimePickerDialogContent$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DatePickerView.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C07052 implements Function2<Composer, Integer, Unit> {
        final /* synthetic */ Long $initialDate;
        final /* synthetic */ Function1<DatePickerResult, Unit> $onDateSelected;
        final /* synthetic */ TimePickerDialogProps $props;
        final /* synthetic */ TimePickerState $state;

        /* JADX WARN: Multi-variable type inference failed */
        C07052(Long l, TimePickerState timePickerState, Function1<? super DatePickerResult, Unit> function1, TimePickerDialogProps timePickerDialogProps) {
            this.$initialDate = l;
            this.$state = timePickerState;
            this.$onDateSelected = function1;
            this.$props = timePickerDialogProps;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C311@15212L296,319@15510L87,311@15191L406:DatePickerView.kt#v15e7d");
            if ((i & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1405172500, i, -1, "expo.modules.ui.ExpoTimePickerDialogContent.<anonymous> (DatePickerView.kt:311)");
            }
            composer.startReplaceGroup(-1746271574);
            ComposerKt.sourceInformation(composer, "CC(remember):DatePickerView.kt#9igjgp");
            boolean zChanged = composer.changed(this.$initialDate) | composer.changedInstance(this.$state) | composer.changed(this.$onDateSelected);
            final Long l = this.$initialDate;
            final TimePickerState timePickerState = this.$state;
            final Function1<DatePickerResult, Unit> function1 = this.$onDateSelected;
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.DatePickerViewKt$ExpoTimePickerDialogContent$2$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DatePickerViewKt.C07052.invoke$lambda$1$lambda$0(l, timePickerState, function1);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            final TimePickerDialogProps timePickerDialogProps = this.$props;
            ButtonKt.TextButton((Function0<Unit>) objRememberedValue, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, (Function3<? super RowScope, ? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(1986060623, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.DatePickerViewKt.ExpoTimePickerDialogContent.2.2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer2, Integer num) {
                    invoke(rowScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RowScope TextButton, Composer composer2, int i2) {
                    Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
                    ComposerKt.sourceInformation(composer2, "C320@15520L69:DatePickerView.kt#v15e7d");
                    if ((i2 & 17) == 16 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1986060623, i2, -1, "expo.modules.ui.ExpoTimePickerDialogContent.<anonymous>.<anonymous> (DatePickerView.kt:320)");
                    }
                    String confirmButtonLabel = timePickerDialogProps.getConfirmButtonLabel();
                    composer2.startReplaceGroup(1638779822);
                    ComposerKt.sourceInformation(composer2, "320@15553L35");
                    if (confirmButtonLabel == null) {
                        confirmButtonLabel = StringResources_androidKt.stringResource(android.R.string.ok, composer2, 6);
                    }
                    composer2.endReplaceGroup();
                    TextKt.m3740TextNvy7gAk(confirmButtonLabel, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262142);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composer, 54), composer, 805306368, TypedValues.Position.TYPE_POSITION_TYPE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$1$lambda$0(Long l, TimePickerState timePickerState, Function1 function1) {
            Calendar calendar = Calendar.getInstance();
            if (l != null) {
                calendar.setTimeInMillis(l.longValue());
            }
            calendar.set(11, timePickerState.getHour());
            calendar.set(12, timePickerState.getMinute());
            function1.invoke(new DatePickerResult(Long.valueOf(calendar.getTime().getTime())));
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ExpoTimePickerDialogContent$lambda$12$lambda$11(Function0 function0) {
        function0.invoke();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: expo.modules.ui.DatePickerViewKt$ExpoTimePickerDialogContent$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DatePickerView.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C07063 implements Function2<Composer, Integer, Unit> {
        final /* synthetic */ Function0<Unit> $onDismissRequest;
        final /* synthetic */ TimePickerDialogProps $props;

        C07063(Function0<Unit> function0, TimePickerDialogProps timePickerDialogProps) {
            this.$onDismissRequest = function0;
            this.$props = timePickerDialogProps;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$1$lambda$0(Function0 function0) {
            function0.invoke();
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C324@15654L22,324@15678L91,324@15633L136:DatePickerView.kt#v15e7d");
            if ((i & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-994562134, i, -1, "expo.modules.ui.ExpoTimePickerDialogContent.<anonymous> (DatePickerView.kt:324)");
            }
            composer.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composer, "CC(remember):DatePickerView.kt#9igjgp");
            boolean zChanged = composer.changed(this.$onDismissRequest);
            final Function0<Unit> function0 = this.$onDismissRequest;
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.DatePickerViewKt$ExpoTimePickerDialogContent$3$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DatePickerViewKt.C07063.invoke$lambda$1$lambda$0(function0);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            Function0 function1 = (Function0) objRememberedValue;
            composer.endReplaceGroup();
            final TimePickerDialogProps timePickerDialogProps = this.$props;
            ButtonKt.TextButton((Function0<Unit>) function1, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, (Function3<? super RowScope, ? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1898296307, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.DatePickerViewKt.ExpoTimePickerDialogContent.3.2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer2, Integer num) {
                    invoke(rowScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RowScope TextButton, Composer composer2, int i2) {
                    Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
                    ComposerKt.sourceInformation(composer2, "C325@15688L73:DatePickerView.kt#v15e7d");
                    if ((i2 & 17) == 16 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1898296307, i2, -1, "expo.modules.ui.ExpoTimePickerDialogContent.<anonymous>.<anonymous> (DatePickerView.kt:325)");
                    }
                    String dismissButtonLabel = timePickerDialogProps.getDismissButtonLabel();
                    composer2.startReplaceGroup(1098350320);
                    ComposerKt.sourceInformation(composer2, "325@15721L39");
                    if (dismissButtonLabel == null) {
                        dismissButtonLabel = StringResources_androidKt.stringResource(android.R.string.cancel, composer2, 6);
                    }
                    composer2.endReplaceGroup();
                    TextKt.m3740TextNvy7gAk(dismissButtonLabel, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262142);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composer, 54), composer, 805306368, TypedValues.Position.TYPE_POSITION_TYPE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    }

    public static final void DateTimePickerContent(final FunctionalComposableScope functionalComposableScope, DateTimePickerProps props, final Function1<? super DatePickerResult, Unit> onDateSelected, Composer composer, final int i) {
        int i2;
        final DateTimePickerProps dateTimePickerProps;
        boolean z;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onDateSelected, "onDateSelected");
        Composer composerStartRestartGroup = composer.startRestartGroup(2052567908);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(DateTimePickerContent)P(1)341@16150L83:DatePickerView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onDateSelected) ? 256 : 128;
        }
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2052567908, i2, -1, "expo.modules.ui.DateTimePickerContent (DatePickerView.kt:340)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            composerStartRestartGroup = composerStartRestartGroup;
            if (props.getDisplayedComponents() == DisplayedComponents.HOUR_AND_MINUTE) {
                composerStartRestartGroup.startReplaceGroup(601522017);
                ComposerKt.sourceInformation(composerStartRestartGroup, "343@16363L32,343@16312L83");
                composerStartRestartGroup.startReplaceGroup(5004770);
                ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):DatePickerView.kt#9igjgp");
                z = (i2 & 896) == 256;
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new Function1() { // from class: expo.modules.ui.DatePickerViewKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return DatePickerViewKt.DateTimePickerContent$lambda$15$lambda$14(onDateSelected, (DatePickerResult) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composerStartRestartGroup.endReplaceGroup();
                dateTimePickerProps = props;
                ExpoTimePicker(modifierApplyModifiers, dateTimePickerProps, (Function1) objRememberedValue, composerStartRestartGroup, i2 & 112, 0);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                dateTimePickerProps = props;
                composerStartRestartGroup.startReplaceGroup(601620225);
                ComposerKt.sourceInformation(composerStartRestartGroup, "347@16462L32,347@16411L83");
                composerStartRestartGroup.startReplaceGroup(5004770);
                ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):DatePickerView.kt#9igjgp");
                z = (i2 & 896) == 256;
                Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue2 = new Function1() { // from class: expo.modules.ui.DatePickerViewKt$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return DatePickerViewKt.DateTimePickerContent$lambda$17$lambda$16(onDateSelected, (DatePickerResult) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                composerStartRestartGroup.endReplaceGroup();
                ExpoDatePicker(modifierApplyModifiers, dateTimePickerProps, (Function1) objRememberedValue2, composerStartRestartGroup, i2 & 112, 0);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            dateTimePickerProps = props;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.DatePickerViewKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return DatePickerViewKt.DateTimePickerContent$lambda$18(functionalComposableScope, dateTimePickerProps, onDateSelected, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit DateTimePickerContent$lambda$15$lambda$14(Function1 function1, DatePickerResult it) {
        Intrinsics.checkNotNullParameter(it, "it");
        function1.invoke(it);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit DateTimePickerContent$lambda$17$lambda$16(Function1 function1, DatePickerResult it) {
        Intrinsics.checkNotNullParameter(it, "it");
        function1.invoke(it);
        return Unit.INSTANCE;
    }

    public static final void ExpoDatePicker(Modifier modifier, final DateTimePickerProps props, final Function1<? super DatePickerResult, Unit> onDateSelected, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        final Modifier modifier3;
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onDateSelected, "onDateSelected");
        Composer composerStartRestartGroup = composer.startRestartGroup(73851819);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(ExpoDatePicker)P(!1,2)356@16712L7,359@16839L46,361@16901L390,373@17336L75,373@17295L116,381@17530L69,377@17415L188:DatePickerView.kt#v15e7d");
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(onDateSelected) ? 256 : 128;
        }
        int i5 = i3;
        if ((i5 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            Modifier.Companion companion = i4 != 0 ? Modifier.INSTANCE : modifier2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(73851819, i5, -1, "expo.modules.ui.ExpoDatePicker (DatePickerView.kt:355)");
            }
            ProvidableCompositionLocal<Configuration> localConfiguration = AndroidCompositionLocals_androidKt.getLocalConfiguration();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = composerStartRestartGroup.consume(localConfiguration);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            Locale locale = ((Configuration) objConsume).getLocales().get(0);
            int iM11187toDisplayModejFl4v0 = props.getVariant().m11187toDisplayModejFl4v0();
            Long initialDate = props.getInitialDate();
            SelectableDates selectableDatesRememberSelectableDates = rememberSelectableDates(props.getSelectableDates(), composerStartRestartGroup, 0);
            composerStartRestartGroup.startReplaceGroup(-1746271574);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):DatePickerView.kt#9igjgp");
            boolean zChanged = composerStartRestartGroup.changed(iM11187toDisplayModejFl4v0) | composerStartRestartGroup.changed(initialDate) | composerStartRestartGroup.changed(selectableDatesRememberSelectableDates);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                long time = new Date().getTime();
                Intrinsics.checkNotNull(locale);
                long jLongValue = initialDate != null ? initialDate.longValue() : time;
                if (initialDate != null) {
                    time = initialDate.longValue();
                }
                objRememberedValue = DatePickerKt.m2424DatePickerStatesHin3Bw(locale, Long.valueOf(jLongValue), Long.valueOf(time), DatePickerDefaults.INSTANCE.getYearRange(), iM11187toDisplayModejFl4v0, selectableDatesRememberSelectableDates);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            DatePickerState datePickerState = (DatePickerState) objRememberedValue;
            composerStartRestartGroup.endReplaceGroup();
            Long selectedDateMillis = datePickerState.getSelectedDateMillis();
            composerStartRestartGroup.startReplaceGroup(-1633490746);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):DatePickerView.kt#9igjgp");
            boolean zChanged2 = ((i5 & 896) == 256) | composerStartRestartGroup.changed(datePickerState);
            DatePickerViewKt$ExpoDatePicker$1$1 datePickerViewKt$ExpoDatePicker$1$1RememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || datePickerViewKt$ExpoDatePicker$1$1RememberedValue == Composer.INSTANCE.getEmpty()) {
                datePickerViewKt$ExpoDatePicker$1$1RememberedValue = new DatePickerViewKt$ExpoDatePicker$1$1(onDateSelected, datePickerState, null);
                composerStartRestartGroup.updateRememberedValue(datePickerViewKt$ExpoDatePicker$1$1RememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            EffectsKt.LaunchedEffect(selectedDateMillis, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) datePickerViewKt$ExpoDatePicker$1$1RememberedValue, composerStartRestartGroup, 0);
            Modifier modifier4 = companion;
            DatePickerKt.DatePicker(datePickerState, modifier4, null, m11139buildDatePickerColorsBAq54LU(props.getElementColors(), UtilsKt.getComposeOrNull(props.getColor()), null, composerStartRestartGroup, 0, 4), null, null, props.getShowVariantToggle(), null, composerStartRestartGroup, (i5 << 3) & 112, RotationOptions.ROTATE_180);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.DatePickerViewKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return DatePickerViewKt.ExpoDatePicker$lambda$21(modifier3, props, onDateSelected, i, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final void ExpoTimePicker(Modifier modifier, final DateTimePickerProps props, final Function1<? super DatePickerResult, Unit> onDateSelected, Composer composer, final int i, final int i2) {
        int i3;
        final Modifier modifier2;
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onDateSelected, "onDateSelected");
        Composer composerStartRestartGroup = composer.startRestartGroup(-369319700);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(ExpoTimePicker)P(!1,2)390@17836L338,403@18219L290,403@18178L331,418@18630L69,414@18513L190:DatePickerView.kt#v15e7d");
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(onDateSelected) ? 256 : 128;
        }
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (i4 != 0) {
                modifier = Modifier.INSTANCE;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-369319700, i3, -1, "expo.modules.ui.ExpoTimePicker (DatePickerView.kt:387)");
            }
            Long initialDate = props.getInitialDate();
            boolean zIs24Hour = props.is24Hour();
            composerStartRestartGroup.startReplaceGroup(-1633490746);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):DatePickerView.kt#9igjgp");
            boolean zChanged = composerStartRestartGroup.changed(zIs24Hour) | composerStartRestartGroup.changed(initialDate);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Calendar calendar = Calendar.getInstance();
                calendar.setLenient(false);
                if (initialDate != null) {
                    calendar.setTimeInMillis(initialDate.longValue());
                }
                objRememberedValue = TimePickerKt.TimePickerState(calendar.get(11), calendar.get(12), props.is24Hour());
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            TimePickerState timePickerState = (TimePickerState) objRememberedValue;
            composerStartRestartGroup.endReplaceGroup();
            Integer numValueOf = Integer.valueOf(timePickerState.getHour());
            Integer numValueOf2 = Integer.valueOf(timePickerState.getMinute());
            composerStartRestartGroup.startReplaceGroup(-1746271574);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):DatePickerView.kt#9igjgp");
            boolean zChanged2 = composerStartRestartGroup.changed(initialDate) | composerStartRestartGroup.changedInstance(timePickerState) | ((i3 & 896) == 256);
            DatePickerViewKt$ExpoTimePicker$1$1 datePickerViewKt$ExpoTimePicker$1$1RememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || datePickerViewKt$ExpoTimePicker$1$1RememberedValue == Composer.INSTANCE.getEmpty()) {
                datePickerViewKt$ExpoTimePicker$1$1RememberedValue = new DatePickerViewKt$ExpoTimePicker$1$1(initialDate, timePickerState, onDateSelected, null);
                composerStartRestartGroup.updateRememberedValue(datePickerViewKt$ExpoTimePicker$1$1RememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            EffectsKt.LaunchedEffect(numValueOf, numValueOf2, (Function2) datePickerViewKt$ExpoTimePicker$1$1RememberedValue, composerStartRestartGroup, 0);
            Modifier modifier3 = modifier;
            TimePickerKt.m3803TimePickermT9BvqQ(timePickerState, modifier3, m11140buildTimePickerColorsBAq54LU(props.getElementColors(), UtilsKt.getComposeOrNull(props.getColor()), null, composerStartRestartGroup, 0, 4), TimePickerLayoutType.INSTANCE.m3828getVerticalQJTpgSE(), composerStartRestartGroup, (i3 << 3) & 112, 0);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier2 = modifier;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.DatePickerViewKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return DatePickerViewKt.ExpoTimePicker$lambda$24(modifier2, props, onDateSelected, i, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
