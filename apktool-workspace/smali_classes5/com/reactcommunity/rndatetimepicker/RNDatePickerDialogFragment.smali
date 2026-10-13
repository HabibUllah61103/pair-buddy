.class public Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "RNDatePickerDialogFragment.java"


# instance fields
.field private instance:Landroid/app/DatePickerDialog;

.field private mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnNeutralButtonActionListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private createDialog(Landroid/os/Bundle;)Landroid/app/DatePickerDialog;
    .locals 10

    .line 98
    invoke-virtual {p0}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-static {p1, v0, v1}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->getDialog(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/DatePickerDialog;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 102
    iget-object v2, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->mOnNeutralButtonActionListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p1, v1, v2}, Lcom/reactcommunity/rndatetimepicker/Common;->setButtonTitles(Landroid/os/Bundle;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz v0, :cond_2

    .line 104
    invoke-static {p1}, Lcom/reactcommunity/rndatetimepicker/Common;->getDisplayDate(Landroid/os/Bundle;)Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    move-result-object v2

    .line 105
    sget-object v3, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->SPINNER:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 106
    :goto_0
    sget-object v6, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->DEFAULT:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    if-ne v2, v6, :cond_1

    const-string v2, "startOnYearSelection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    const/4 v6, 0x2

    .line 107
    new-array v6, v6, [Landroid/content/DialogInterface$OnShowListener;

    .line 109
    invoke-static {v1, v2}, Lcom/reactcommunity/rndatetimepicker/Common;->openYearDialog(Landroid/app/AlertDialog;Z)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v2

    aput-object v2, v6, v5

    .line 110
    invoke-static {v0, v1, p1, v3}, Lcom/reactcommunity/rndatetimepicker/Common;->setButtonTextColor(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/os/Bundle;Z)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    aput-object v0, v6, v4

    .line 108
    invoke-static {v6}, Lcom/reactcommunity/rndatetimepicker/Common;->combine([Landroid/content/DialogInterface$OnShowListener;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    .line 107
    invoke-virtual {v1, v0}, Landroid/app/DatePickerDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 116
    :cond_2
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v8

    .line 117
    invoke-static {p1}, Lcom/reactcommunity/rndatetimepicker/Common;->minDateWithTimeZone(Landroid/os/Bundle;)J

    move-result-wide v4

    .line 118
    invoke-static {p1}, Lcom/reactcommunity/rndatetimepicker/Common;->maxDateWithTimeZone(Landroid/os/Bundle;)J

    move-result-wide v6

    .line 120
    const-string v0, "minimumDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    invoke-virtual {v8, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    goto :goto_2

    :cond_3
    const-wide v2, -0x20251fe2401L

    .line 125
    invoke-virtual {v8, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 128
    :goto_2
    const-string v2, "maximumDate"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    invoke-virtual {v8, v6, v7}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 133
    :cond_4
    const-string v3, "firstDayOfWeek"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 134
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 135
    invoke-virtual {v8, v3}, Landroid/widget/DatePicker;->setFirstDayOfWeek(I)V

    .line 138
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, p1

    goto :goto_4

    .line 139
    :cond_7
    :goto_3
    new-instance v2, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment$$ExternalSyntheticLambda0;

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment$$ExternalSyntheticLambda0;-><init>(Landroid/os/Bundle;JJLandroid/widget/DatePicker;)V

    invoke-virtual {v8, v2}, Landroid/widget/DatePicker;->setOnDateChangedListener(Landroid/widget/DatePicker$OnDateChangedListener;)V

    .line 150
    :goto_4
    const-string p1, "testID"

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 151
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/widget/DatePicker;->setTag(Ljava/lang/Object;)V

    :cond_8
    return-object v1
.end method

.method static getDialog(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/DatePickerDialog;
    .locals 9

    .line 65
    new-instance v0, Lcom/reactcommunity/rndatetimepicker/RNDate;

    invoke-direct {v0, p0}, Lcom/reactcommunity/rndatetimepicker/RNDate;-><init>(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {v0}, Lcom/reactcommunity/rndatetimepicker/RNDate;->year()I

    move-result v4

    .line 67
    invoke-virtual {v0}, Lcom/reactcommunity/rndatetimepicker/RNDate;->month()I

    move-result v5

    .line 68
    invoke-virtual {v0}, Lcom/reactcommunity/rndatetimepicker/RNDate;->day()I

    move-result v6

    .line 70
    invoke-static {p0}, Lcom/reactcommunity/rndatetimepicker/Common;->getDisplayDate(Landroid/os/Bundle;)Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    move-result-object v0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 72
    const-string v2, "display"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->valueOf(Ljava/lang/String;)Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    move-result-object v0

    :cond_0
    move-object v7, v0

    .line 76
    sget-object p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->SPINNER:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    if-ne v7, p0, :cond_1

    .line 77
    new-instance v1, Lcom/reactcommunity/rndatetimepicker/RNDismissableDatePickerDialog;

    sget v3, Lcom/reactcommunity/rndatetimepicker/R$style;->SpinnerDatePickerDialog:I

    move-object v2, p1

    move-object v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/reactcommunity/rndatetimepicker/RNDismissableDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;IIILcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;)V

    return-object v1

    :cond_1
    move-object v2, p1

    move-object v3, p2

    .line 87
    new-instance v1, Lcom/reactcommunity/rndatetimepicker/RNDismissableDatePickerDialog;

    invoke-direct/range {v1 .. v7}, Lcom/reactcommunity/rndatetimepicker/RNDismissableDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;IIILcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;)V

    return-object v1
.end method

.method static synthetic lambda$createDialog$0(Landroid/os/Bundle;JJLandroid/widget/DatePicker;Landroid/widget/DatePicker;III)V
    .locals 7

    .line 140
    invoke-static {p0}, Lcom/reactcommunity/rndatetimepicker/Common;->getTimeZone(Landroid/os/Bundle;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v1, p7

    move v2, p8

    move/from16 v3, p9

    .line 141
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 142
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p6

    invoke-static {p6, p7, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {p0, p1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 143
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 144
    invoke-virtual {p5}, Landroid/widget/DatePicker;->getYear()I

    move-result p0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 p3, 0x5

    const/4 p4, 0x2

    if-ne p0, p2, :cond_1

    invoke-virtual {p5}, Landroid/widget/DatePicker;->getMonth()I

    move-result p0

    invoke-virtual {v0, p4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p0, p2, :cond_1

    invoke-virtual {p5}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result p0

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 145
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, p4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p5, p0, p1, p2}, Landroid/widget/DatePicker;->updateDate(III)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->createDialog(Landroid/os/Bundle;)Landroid/app/DatePickerDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->instance:Landroid/app/DatePickerDialog;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 159
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 160
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method setOnNeutralButtonActionListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->mOnNeutralButtonActionListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public update(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    new-instance v0, Lcom/reactcommunity/rndatetimepicker/RNDate;

    invoke-direct {v0, p1}, Lcom/reactcommunity/rndatetimepicker/RNDate;-><init>(Landroid/os/Bundle;)V

    .line 57
    iget-object p1, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->instance:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Lcom/reactcommunity/rndatetimepicker/RNDate;->year()I

    move-result v1

    invoke-virtual {v0}, Lcom/reactcommunity/rndatetimepicker/RNDate;->month()I

    move-result v2

    invoke-virtual {v0}, Lcom/reactcommunity/rndatetimepicker/RNDate;->day()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/DatePickerDialog;->updateDate(III)V

    return-void
.end method
