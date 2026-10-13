.class public final synthetic Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$10:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic f$11:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic f$12:Landroidx/compose/ui/focus/FocusManager;

.field public final synthetic f$2:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$3:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic f$4:Lkotlin/ranges/IntRange;

.field public final synthetic f$5:Landroidx/compose/material3/internal/CalendarMonth;

.field public final synthetic f$6:Landroidx/compose/material3/SelectableDates;

.field public final synthetic f$7:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic f$8:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic f$9:Landroidx/compose/ui/focus/FocusRequester;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/ranges/IntRange;Landroidx/compose/material3/internal/CalendarMonth;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/focus/FocusManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$0:J

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$2:Lkotlinx/coroutines/CoroutineScope;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$3:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p6, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$4:Lkotlin/ranges/IntRange;

    iput-object p7, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$5:Landroidx/compose/material3/internal/CalendarMonth;

    iput-object p8, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$6:Landroidx/compose/material3/SelectableDates;

    iput-object p9, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$7:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p10, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$8:Landroidx/compose/material3/DatePickerColors;

    iput-object p11, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$9:Landroidx/compose/ui/focus/FocusRequester;

    iput-object p12, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$10:Landroidx/compose/ui/focus/FocusRequester;

    iput-object p13, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$11:Landroidx/compose/ui/focus/FocusRequester;

    iput-object p14, p0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$12:Landroidx/compose/ui/focus/FocusManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 0
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$0:J

    iget-object v3, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$1:Landroidx/compose/runtime/MutableState;

    iget-object v4, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$2:Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$3:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v6, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$4:Lkotlin/ranges/IntRange;

    iget-object v7, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$5:Landroidx/compose/material3/internal/CalendarMonth;

    iget-object v8, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$6:Landroidx/compose/material3/SelectableDates;

    iget-object v9, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$7:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v10, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$8:Landroidx/compose/material3/DatePickerColors;

    iget-object v11, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$9:Landroidx/compose/ui/focus/FocusRequester;

    iget-object v12, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$10:Landroidx/compose/ui/focus/FocusRequester;

    iget-object v13, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$11:Landroidx/compose/ui/focus/FocusRequester;

    iget-object v14, v0, Landroidx/compose/material3/DatePickerKt$$ExternalSyntheticLambda70;->f$12:Landroidx/compose/ui/focus/FocusManager;

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v16, p2

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v17, p3

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/DatePickerKt;->$r8$lambda$xHjDjYWpYgjvzBkLhn0SPoHNpss(JLandroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/ranges/IntRange;Landroidx/compose/material3/internal/CalendarMonth;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object v1

    return-object v1
.end method
