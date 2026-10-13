package expo.modules.ui;

import android.graphics.Color;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;

/* JADX INFO: compiled from: DatePickerView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\bp\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\n\u0010\u0003\u001a\u0004\b\u000b\u0010\bR\u001e\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u0003\u001a\u0004\b\u000e\u0010\bR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u0003\u001a\u0004\b\u0011\u0010\bR\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u0003\u001a\u0004\b\u0014\u0010\bR\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0003\u001a\u0004\b\u0017\u0010\bR\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0003\u001a\u0004\b\u001a\u0010\bR\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0003\u001a\u0004\b\u001d\u0010\bR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0003\u001a\u0004\b \u0010\bR\u001e\u0010!\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\"\u0010\u0003\u001a\u0004\b#\u0010\bR\u001e\u0010$\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b%\u0010\u0003\u001a\u0004\b&\u0010\bR\u001e\u0010'\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b(\u0010\u0003\u001a\u0004\b)\u0010\bR\u001e\u0010*\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b+\u0010\u0003\u001a\u0004\b,\u0010\bR\u001e\u0010-\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b.\u0010\u0003\u001a\u0004\b/\u0010\bR\u001e\u00100\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b1\u0010\u0003\u001a\u0004\b2\u0010\bR\u001e\u00103\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b4\u0010\u0003\u001a\u0004\b5\u0010\bR\u001e\u00106\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b7\u0010\u0003\u001a\u0004\b8\u0010\bR\u001e\u00109\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b:\u0010\u0003\u001a\u0004\b;\u0010\bR\u001e\u0010<\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b=\u0010\u0003\u001a\u0004\b>\u0010\bR\u001e\u0010?\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b@\u0010\u0003\u001a\u0004\bA\u0010\bR\u001e\u0010B\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bC\u0010\u0003\u001a\u0004\bD\u0010\bR\u001e\u0010E\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bF\u0010\u0003\u001a\u0004\bG\u0010\bR\u001e\u0010H\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bI\u0010\u0003\u001a\u0004\bJ\u0010\bR\u001e\u0010K\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bL\u0010\u0003\u001a\u0004\bM\u0010\bR\u001e\u0010N\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bO\u0010\u0003\u001a\u0004\bP\u0010\bR\u001e\u0010Q\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bR\u0010\u0003\u001a\u0004\bS\u0010\bR\u001e\u0010T\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bU\u0010\u0003\u001a\u0004\bV\u0010\bR\u001e\u0010W\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bX\u0010\u0003\u001a\u0004\bY\u0010\bR\u001e\u0010Z\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b[\u0010\u0003\u001a\u0004\b\\\u0010\bR\u001e\u0010]\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b^\u0010\u0003\u001a\u0004\b_\u0010\bR\u001e\u0010`\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\ba\u0010\u0003\u001a\u0004\bb\u0010\bR\u001e\u0010c\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bd\u0010\u0003\u001a\u0004\be\u0010\bR\u001e\u0010f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bg\u0010\u0003\u001a\u0004\bh\u0010\bR\u001e\u0010i\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bj\u0010\u0003\u001a\u0004\bk\u0010\bR\u001e\u0010l\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bm\u0010\u0003\u001a\u0004\bn\u0010\bR\u001e\u0010o\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bp\u0010\u0003\u001a\u0004\bq\u0010\bR\u001e\u0010r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bs\u0010\u0003\u001a\u0004\bt\u0010\b¨\u0006u"}, d2 = {"Lexpo/modules/ui/DateTimePickerColorOverrides;", "Lexpo/modules/kotlin/records/Record;", "<init>", "()V", "containerColor", "Landroid/graphics/Color;", "getContainerColor$annotations", "getContainerColor", "()Landroid/graphics/Color;", "titleContentColor", "getTitleContentColor$annotations", "getTitleContentColor", "headlineContentColor", "getHeadlineContentColor$annotations", "getHeadlineContentColor", "weekdayContentColor", "getWeekdayContentColor$annotations", "getWeekdayContentColor", "subheadContentColor", "getSubheadContentColor$annotations", "getSubheadContentColor", "navigationContentColor", "getNavigationContentColor$annotations", "getNavigationContentColor", "yearContentColor", "getYearContentColor$annotations", "getYearContentColor", "disabledYearContentColor", "getDisabledYearContentColor$annotations", "getDisabledYearContentColor", "currentYearContentColor", "getCurrentYearContentColor$annotations", "getCurrentYearContentColor", "selectedYearContentColor", "getSelectedYearContentColor$annotations", "getSelectedYearContentColor", "disabledSelectedYearContentColor", "getDisabledSelectedYearContentColor$annotations", "getDisabledSelectedYearContentColor", "selectedYearContainerColor", "getSelectedYearContainerColor$annotations", "getSelectedYearContainerColor", "disabledSelectedYearContainerColor", "getDisabledSelectedYearContainerColor$annotations", "getDisabledSelectedYearContainerColor", "dayContentColor", "getDayContentColor$annotations", "getDayContentColor", "disabledDayContentColor", "getDisabledDayContentColor$annotations", "getDisabledDayContentColor", "selectedDayContentColor", "getSelectedDayContentColor$annotations", "getSelectedDayContentColor", "disabledSelectedDayContentColor", "getDisabledSelectedDayContentColor$annotations", "getDisabledSelectedDayContentColor", "selectedDayContainerColor", "getSelectedDayContainerColor$annotations", "getSelectedDayContainerColor", "disabledSelectedDayContainerColor", "getDisabledSelectedDayContainerColor$annotations", "getDisabledSelectedDayContainerColor", "todayContentColor", "getTodayContentColor$annotations", "getTodayContentColor", "todayDateBorderColor", "getTodayDateBorderColor$annotations", "getTodayDateBorderColor", "dayInSelectionRangeContentColor", "getDayInSelectionRangeContentColor$annotations", "getDayInSelectionRangeContentColor", "dayInSelectionRangeContainerColor", "getDayInSelectionRangeContainerColor$annotations", "getDayInSelectionRangeContainerColor", "dividerColor", "getDividerColor$annotations", "getDividerColor", "clockDialColor", "getClockDialColor$annotations", "getClockDialColor", "clockDialSelectedContentColor", "getClockDialSelectedContentColor$annotations", "getClockDialSelectedContentColor", "clockDialUnselectedContentColor", "getClockDialUnselectedContentColor$annotations", "getClockDialUnselectedContentColor", "selectorColor", "getSelectorColor$annotations", "getSelectorColor", "periodSelectorBorderColor", "getPeriodSelectorBorderColor$annotations", "getPeriodSelectorBorderColor", "periodSelectorSelectedContainerColor", "getPeriodSelectorSelectedContainerColor$annotations", "getPeriodSelectorSelectedContainerColor", "periodSelectorUnselectedContainerColor", "getPeriodSelectorUnselectedContainerColor$annotations", "getPeriodSelectorUnselectedContainerColor", "periodSelectorSelectedContentColor", "getPeriodSelectorSelectedContentColor$annotations", "getPeriodSelectorSelectedContentColor", "periodSelectorUnselectedContentColor", "getPeriodSelectorUnselectedContentColor$annotations", "getPeriodSelectorUnselectedContentColor", "timeSelectorSelectedContainerColor", "getTimeSelectorSelectedContainerColor$annotations", "getTimeSelectorSelectedContainerColor", "timeSelectorUnselectedContainerColor", "getTimeSelectorUnselectedContainerColor$annotations", "getTimeSelectorUnselectedContainerColor", "timeSelectorSelectedContentColor", "getTimeSelectorSelectedContentColor$annotations", "getTimeSelectorSelectedContentColor", "timeSelectorUnselectedContentColor", "getTimeSelectorUnselectedContentColor$annotations", "getTimeSelectorUnselectedContentColor", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DateTimePickerColorOverrides implements Record {
    public static final int $stable = 8;
    private final Color clockDialColor;
    private final Color clockDialSelectedContentColor;
    private final Color clockDialUnselectedContentColor;
    private final Color containerColor;
    private final Color currentYearContentColor;
    private final Color dayContentColor;
    private final Color dayInSelectionRangeContainerColor;
    private final Color dayInSelectionRangeContentColor;
    private final Color disabledDayContentColor;
    private final Color disabledSelectedDayContainerColor;
    private final Color disabledSelectedDayContentColor;
    private final Color disabledSelectedYearContainerColor;
    private final Color disabledSelectedYearContentColor;
    private final Color disabledYearContentColor;
    private final Color dividerColor;
    private final Color headlineContentColor;
    private final Color navigationContentColor;
    private final Color periodSelectorBorderColor;
    private final Color periodSelectorSelectedContainerColor;
    private final Color periodSelectorSelectedContentColor;
    private final Color periodSelectorUnselectedContainerColor;
    private final Color periodSelectorUnselectedContentColor;
    private final Color selectedDayContainerColor;
    private final Color selectedDayContentColor;
    private final Color selectedYearContainerColor;
    private final Color selectedYearContentColor;
    private final Color selectorColor;
    private final Color subheadContentColor;
    private final Color timeSelectorSelectedContainerColor;
    private final Color timeSelectorSelectedContentColor;
    private final Color timeSelectorUnselectedContainerColor;
    private final Color timeSelectorUnselectedContentColor;
    private final Color titleContentColor;
    private final Color todayContentColor;
    private final Color todayDateBorderColor;
    private final Color weekdayContentColor;
    private final Color yearContentColor;

    @Field
    public static /* synthetic */ void getClockDialColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getClockDialSelectedContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getClockDialUnselectedContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getCurrentYearContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDayContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDayInSelectionRangeContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDayInSelectionRangeContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledDayContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledSelectedDayContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledSelectedDayContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledSelectedYearContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledSelectedYearContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledYearContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDividerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getHeadlineContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getNavigationContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getPeriodSelectorBorderColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getPeriodSelectorSelectedContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getPeriodSelectorSelectedContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getPeriodSelectorUnselectedContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getPeriodSelectorUnselectedContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getSelectedDayContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getSelectedDayContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getSelectedYearContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getSelectedYearContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getSelectorColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getSubheadContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getTimeSelectorSelectedContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getTimeSelectorSelectedContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getTimeSelectorUnselectedContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getTimeSelectorUnselectedContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getTitleContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getTodayContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getTodayDateBorderColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getWeekdayContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getYearContentColor$annotations() {
    }

    public final Color getContainerColor() {
        return this.containerColor;
    }

    public final Color getTitleContentColor() {
        return this.titleContentColor;
    }

    public final Color getHeadlineContentColor() {
        return this.headlineContentColor;
    }

    public final Color getWeekdayContentColor() {
        return this.weekdayContentColor;
    }

    public final Color getSubheadContentColor() {
        return this.subheadContentColor;
    }

    public final Color getNavigationContentColor() {
        return this.navigationContentColor;
    }

    public final Color getYearContentColor() {
        return this.yearContentColor;
    }

    public final Color getDisabledYearContentColor() {
        return this.disabledYearContentColor;
    }

    public final Color getCurrentYearContentColor() {
        return this.currentYearContentColor;
    }

    public final Color getSelectedYearContentColor() {
        return this.selectedYearContentColor;
    }

    public final Color getDisabledSelectedYearContentColor() {
        return this.disabledSelectedYearContentColor;
    }

    public final Color getSelectedYearContainerColor() {
        return this.selectedYearContainerColor;
    }

    public final Color getDisabledSelectedYearContainerColor() {
        return this.disabledSelectedYearContainerColor;
    }

    public final Color getDayContentColor() {
        return this.dayContentColor;
    }

    public final Color getDisabledDayContentColor() {
        return this.disabledDayContentColor;
    }

    public final Color getSelectedDayContentColor() {
        return this.selectedDayContentColor;
    }

    public final Color getDisabledSelectedDayContentColor() {
        return this.disabledSelectedDayContentColor;
    }

    public final Color getSelectedDayContainerColor() {
        return this.selectedDayContainerColor;
    }

    public final Color getDisabledSelectedDayContainerColor() {
        return this.disabledSelectedDayContainerColor;
    }

    public final Color getTodayContentColor() {
        return this.todayContentColor;
    }

    public final Color getTodayDateBorderColor() {
        return this.todayDateBorderColor;
    }

    public final Color getDayInSelectionRangeContentColor() {
        return this.dayInSelectionRangeContentColor;
    }

    public final Color getDayInSelectionRangeContainerColor() {
        return this.dayInSelectionRangeContainerColor;
    }

    public final Color getDividerColor() {
        return this.dividerColor;
    }

    public final Color getClockDialColor() {
        return this.clockDialColor;
    }

    public final Color getClockDialSelectedContentColor() {
        return this.clockDialSelectedContentColor;
    }

    public final Color getClockDialUnselectedContentColor() {
        return this.clockDialUnselectedContentColor;
    }

    public final Color getSelectorColor() {
        return this.selectorColor;
    }

    public final Color getPeriodSelectorBorderColor() {
        return this.periodSelectorBorderColor;
    }

    public final Color getPeriodSelectorSelectedContainerColor() {
        return this.periodSelectorSelectedContainerColor;
    }

    public final Color getPeriodSelectorUnselectedContainerColor() {
        return this.periodSelectorUnselectedContainerColor;
    }

    public final Color getPeriodSelectorSelectedContentColor() {
        return this.periodSelectorSelectedContentColor;
    }

    public final Color getPeriodSelectorUnselectedContentColor() {
        return this.periodSelectorUnselectedContentColor;
    }

    public final Color getTimeSelectorSelectedContainerColor() {
        return this.timeSelectorSelectedContainerColor;
    }

    public final Color getTimeSelectorUnselectedContainerColor() {
        return this.timeSelectorUnselectedContainerColor;
    }

    public final Color getTimeSelectorSelectedContentColor() {
        return this.timeSelectorSelectedContentColor;
    }

    public final Color getTimeSelectorUnselectedContentColor() {
        return this.timeSelectorUnselectedContentColor;
    }
}
