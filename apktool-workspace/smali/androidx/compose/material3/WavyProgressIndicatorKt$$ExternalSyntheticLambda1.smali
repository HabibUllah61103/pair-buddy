.class public final synthetic Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final synthetic f$5:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final synthetic f$6:F

.field public final synthetic f$7:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$8:F

.field public final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FLkotlin/jvm/functions/Function1;FFII)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$2:J

    iput-wide p5, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$3:J

    iput-object p7, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$4:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput-object p8, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$5:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput p9, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$6:F

    iput-object p10, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$7:Lkotlin/jvm/functions/Function1;

    iput p11, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$8:F

    iput p12, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$9:F

    iput p13, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$10:I

    iput p14, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$11:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    iget-object v2, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    iget-wide v3, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$2:J

    iget-wide v5, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$3:J

    iget-object v7, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$4:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget-object v8, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$5:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget v9, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$6:F

    iget-object v10, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$7:Lkotlin/jvm/functions/Function1;

    iget v11, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$8:F

    iget v12, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$9:F

    iget v13, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$10:I

    iget v14, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;->f$11:I

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v16, p2

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/WavyProgressIndicatorKt;->$r8$lambda$-Abbo4YIz5SBwhSLHJ64-cgAXtA(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FLkotlin/jvm/functions/Function1;FFIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object v1

    return-object v1
.end method
