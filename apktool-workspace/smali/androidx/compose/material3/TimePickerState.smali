.class public interface abstract Landroidx/compose/material3/TimePickerState;
.super Ljava/lang/Object;
.source "TimePicker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R&\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u00038\'@fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R&\u0010\t\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u00038\'@fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R$\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00038W@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R$\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00038W@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u0018\u0010\u0012\u001a\u00020\u0013X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0017\u001a\u00020\u0018X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u001b\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/material3/TimePickerState;",
        "",
        "value",
        "",
        "minute",
        "getMinute",
        "()I",
        "setMinute",
        "(I)V",
        "hour",
        "getHour",
        "setHour",
        "hourInput",
        "getHourInput",
        "setHourInput",
        "minuteInput",
        "getMinuteInput",
        "setMinuteInput",
        "is24hour",
        "",
        "()Z",
        "set24hour",
        "(Z)V",
        "selection",
        "Landroidx/compose/material3/TimePickerSelectionMode;",
        "getSelection-yecRtBI",
        "setSelection-6_8s6DQ",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getHour()I
.end method

.method public getHourInput()I
    .locals 1

    .line 665
    invoke-interface {p0}, Landroidx/compose/material3/TimePickerState;->getHour()I

    move-result v0

    return v0
.end method

.method public abstract getMinute()I
.end method

.method public getMinuteInput()I
    .locals 1

    .line 678
    invoke-interface {p0}, Landroidx/compose/material3/TimePickerState;->getMinute()I

    move-result v0

    return v0
.end method

.method public abstract getSelection-yecRtBI()I
.end method

.method public abstract is24hour()Z
.end method

.method public abstract set24hour(Z)V
.end method

.method public abstract setHour(I)V
.end method

.method public setHourInput(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x18

    if-ge p1, v0, :cond_0

    .line 668
    invoke-interface {p0, p1}, Landroidx/compose/material3/TimePickerState;->setHour(I)V

    :cond_0
    return-void
.end method

.method public abstract setMinute(I)V
.end method

.method public setMinuteInput(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    .line 681
    invoke-interface {p0, p1}, Landroidx/compose/material3/TimePickerState;->setMinute(I)V

    :cond_0
    return-void
.end method

.method public abstract setSelection-6_8s6DQ(I)V
.end method
