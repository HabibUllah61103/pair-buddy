.class public Lcom/reactcommunity/rndatetimepicker/RNDismissableTimePickerDialog;
.super Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;
.source "RNDismissableTimePickerDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIIZLcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;)V
    .locals 0

    .line 62
    invoke-direct/range {p0 .. p8}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIIZLcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;)V

    move-object p2, p1

    move p3, p4

    move p4, p5

    move p5, p7

    move-object p6, p8

    move-object p1, p0

    .line 63
    invoke-direct/range {p1 .. p6}, Lcom/reactcommunity/rndatetimepicker/RNDismissableTimePickerDialog;->fixSpinner(Landroid/content/Context;IIZLcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIIZLcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;)V
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p7}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIIZLcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;)V

    move-object p2, p1

    move p5, p6

    move-object p6, p7

    move-object p1, p0

    .line 49
    invoke-direct/range {p1 .. p6}, Lcom/reactcommunity/rndatetimepicker/RNDismissableTimePickerDialog;->fixSpinner(Landroid/content/Context;IIZLcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;)V

    return-void
.end method

.method private fixSpinner(Landroid/content/Context;IIZLcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic onAttachedToWindow()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->onAttachedToWindow()V

    return-void
.end method

.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public bridge synthetic onDetachedFromWindow()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->onDetachedFromWindow()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->onStop()V

    return-void
.end method

.method public bridge synthetic onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    return-void
.end method

.method public bridge synthetic updateTime(II)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->updateTime(II)V

    return-void
.end method
