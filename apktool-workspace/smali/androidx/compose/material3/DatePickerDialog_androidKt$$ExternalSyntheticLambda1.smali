.class public final synthetic Landroidx/compose/material3/DatePickerDialog_androidKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f$1:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic f$2:F

.field public final synthetic f$3:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/DatePickerColors;FLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DatePickerDialog_androidKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/graphics/Shape;

    iput-object p2, p0, Landroidx/compose/material3/DatePickerDialog_androidKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/material3/DatePickerColors;

    iput p3, p0, Landroidx/compose/material3/DatePickerDialog_androidKt$$ExternalSyntheticLambda1;->f$2:F

    iput-object p4, p0, Landroidx/compose/material3/DatePickerDialog_androidKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function3;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerDialog_androidKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Landroidx/compose/material3/DatePickerDialog_androidKt$$ExternalSyntheticLambda1;->f$5:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/DatePickerDialog_androidKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/graphics/Shape;

    iget-object v1, p0, Landroidx/compose/material3/DatePickerDialog_androidKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/material3/DatePickerColors;

    iget v2, p0, Landroidx/compose/material3/DatePickerDialog_androidKt$$ExternalSyntheticLambda1;->f$2:F

    iget-object v3, p0, Landroidx/compose/material3/DatePickerDialog_androidKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function3;

    iget-object v4, p0, Landroidx/compose/material3/DatePickerDialog_androidKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Landroidx/compose/material3/DatePickerDialog_androidKt$$ExternalSyntheticLambda1;->f$5:Lkotlin/jvm/functions/Function2;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/DatePickerDialog_androidKt;->$r8$lambda$f1yZ1iA1gARqQYZ1DZujiEcU-Fg(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/DatePickerColors;FLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
