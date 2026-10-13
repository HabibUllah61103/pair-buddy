.class public final synthetic Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/compose/material3/TimePickerState;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroidx/compose/material3/TimePickerColors;

.field public final synthetic f$5:Z

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/TimePickerState;ILandroidx/compose/material3/TimePickerColors;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$0:Landroidx/compose/ui/Modifier;

    iput p2, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$1:I

    iput-object p3, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$2:Landroidx/compose/material3/TimePickerState;

    iput p4, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$3:I

    iput-object p5, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$4:Landroidx/compose/material3/TimePickerColors;

    iput-boolean p6, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$5:Z

    iput p7, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$6:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$0:Landroidx/compose/ui/Modifier;

    iget v1, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$1:I

    iget-object v2, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$2:Landroidx/compose/material3/TimePickerState;

    iget v3, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$3:I

    iget-object v4, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$4:Landroidx/compose/material3/TimePickerColors;

    iget-boolean v5, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$5:Z

    iget v6, p0, Landroidx/compose/material3/TimePickerKt$$ExternalSyntheticLambda53;->f$6:I

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/TimePickerKt;->$r8$lambda$IMERdpNaZa_RaEvHwnoKZJlqUdA(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/TimePickerState;ILandroidx/compose/material3/TimePickerColors;ZILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
