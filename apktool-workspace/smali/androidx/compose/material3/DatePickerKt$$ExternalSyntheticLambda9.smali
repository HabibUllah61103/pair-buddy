.class public final synthetic Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic f$1:Landroidx/compose/material3/internal/CalendarMonth;

.field public final synthetic f$10:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Landroidx/compose/material3/internal/CalendarDate;

.field public final synthetic f$4:Ljava/lang/Long;

.field public final synthetic f$5:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic f$6:Landroidx/compose/material3/SelectableDates;

.field public final synthetic f$7:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic f$8:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic f$9:Landroidx/compose/ui/focus/FocusManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/material3/internal/CalendarMonth;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarDate;Ljava/lang/Long;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$1:Landroidx/compose/material3/internal/CalendarMonth;

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$2:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$3:Landroidx/compose/material3/internal/CalendarDate;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$4:Ljava/lang/Long;

    iput-object p6, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$5:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p7, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$6:Landroidx/compose/material3/SelectableDates;

    iput-object p8, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$7:Landroidx/compose/material3/DatePickerColors;

    iput-object p9, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$8:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p10, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$9:Landroidx/compose/ui/focus/FocusManager;

    iput-object p11, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$10:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v2, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$1:Landroidx/compose/material3/internal/CalendarMonth;

    iget-object v3, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$2:Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$3:Landroidx/compose/material3/internal/CalendarDate;

    iget-object v5, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$4:Ljava/lang/Long;

    iget-object v6, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$5:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v7, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$6:Landroidx/compose/material3/SelectableDates;

    iget-object v8, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$7:Landroidx/compose/material3/DatePickerColors;

    iget-object v9, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$8:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v10, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$9:Landroidx/compose/ui/focus/FocusManager;

    iget-object v11, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda9;->f$10:Lkotlin/jvm/functions/Function0;

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v14, p3

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v15, p4

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/DatePickerKt;->$r8$lambda$m4Dx7MvQv1KQOfGXmTb3tEUvxO8(Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/material3/internal/CalendarMonth;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarDate;Ljava/lang/Long;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object v1

    return-object v1
.end method
