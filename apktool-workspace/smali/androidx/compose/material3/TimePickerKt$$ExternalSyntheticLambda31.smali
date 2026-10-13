.class public final synthetic Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/collection/IntList;

.field public final synthetic f$1:Landroidx/compose/material3/AnalogTimePickerState;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/compose/ui/focus/FocusManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/collection/IntList;Landroidx/compose/material3/AnalogTimePickerState;ZLandroidx/compose/ui/focus/FocusManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda31;->f$0:Landroidx/collection/IntList;

    iput-object p2, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda31;->f$1:Landroidx/compose/material3/AnalogTimePickerState;

    iput-boolean p3, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda31;->f$2:Z

    iput-object p4, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda31;->f$3:Landroidx/compose/ui/focus/FocusManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda31;->f$0:Landroidx/collection/IntList;

    iget-object v1, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda31;->f$1:Landroidx/compose/material3/AnalogTimePickerState;

    iget-boolean v2, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda31;->f$2:Z

    iget-object v3, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda31;->f$3:Landroidx/compose/ui/focus/FocusManager;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/TimePickerKt;->$r8$lambda$ypmdq98kbFG73a7Z5hnvLAlC4-8(Landroidx/collection/IntList;Landroidx/compose/material3/AnalogTimePickerState;ZLandroidx/compose/ui/focus/FocusManager;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
