.class public final Lexpo/modules/ui/DatePickerViewKt$rememberSelectableDates$1$1;
.super Ljava/lang/Object;
.source "DatePickerView.kt"

# interfaces
.implements Landroidx/compose/material3/SelectableDates;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/DatePickerViewKt;->rememberSelectableDates(Lexpo/modules/ui/SelectableDatesRecord;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SelectableDates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "expo/modules/ui/DatePickerViewKt$rememberSelectableDates$1$1",
        "Landroidx/compose/material3/SelectableDates;",
        "isSelectableDate",
        "",
        "utcTimeMillis",
        "",
        "isSelectableYear",
        "year",
        "",
        "expo-ui_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $endUtcDayMillis:Ljava/lang/Long;

.field final synthetic $endYear:Ljava/lang/Integer;

.field final synthetic $startUtcDayMillis:Ljava/lang/Long;

.field final synthetic $startYear:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/ui/DatePickerViewKt$rememberSelectableDates$1$1;->$startUtcDayMillis:Ljava/lang/Long;

    iput-object p2, p0, Lexpo/modules/ui/DatePickerViewKt$rememberSelectableDates$1$1;->$endUtcDayMillis:Ljava/lang/Long;

    iput-object p3, p0, Lexpo/modules/ui/DatePickerViewKt$rememberSelectableDates$1$1;->$startYear:Ljava/lang/Integer;

    iput-object p4, p0, Lexpo/modules/ui/DatePickerViewKt$rememberSelectableDates$1$1;->$endYear:Ljava/lang/Integer;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSelectableDate(J)Z
    .locals 4

    .line 169
    iget-object v0, p0, Lexpo/modules/ui/DatePickerViewKt$rememberSelectableDates$1$1;->$startUtcDayMillis:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    return v1

    .line 170
    :cond_0
    iget-object v0, p0, Lexpo/modules/ui/DatePickerViewKt$rememberSelectableDates$1$1;->$endUtcDayMillis:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-lez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isSelectableYear(I)Z
    .locals 2

    .line 175
    iget-object v0, p0, Lexpo/modules/ui/DatePickerViewKt$rememberSelectableDates$1$1;->$startYear:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_0

    return v1

    .line 176
    :cond_0
    iget-object v0, p0, Lexpo/modules/ui/DatePickerViewKt$rememberSelectableDates$1$1;->$endYear:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
