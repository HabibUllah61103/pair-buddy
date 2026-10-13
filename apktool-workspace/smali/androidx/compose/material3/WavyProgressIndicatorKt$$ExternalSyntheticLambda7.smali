.class public final synthetic Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:J

.field public final synthetic f$10:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final synthetic f$4:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final synthetic f$5:F

.field public final synthetic f$6:F

.field public final synthetic f$7:F

.field public final synthetic f$8:F

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFII)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$0:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$1:J

    iput-wide p4, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$2:J

    iput-object p6, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$3:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput-object p7, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$4:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput p8, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$5:F

    iput p9, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$6:F

    iput p10, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$7:F

    iput p11, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$8:F

    iput p12, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$9:I

    iput p13, p0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$10:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$0:Landroidx/compose/ui/Modifier;

    iget-wide v2, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$1:J

    iget-wide v4, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$2:J

    iget-object v6, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$3:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget-object v7, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$4:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget v8, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$5:F

    iget v9, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$6:F

    iget v10, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$7:F

    iget v11, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$8:F

    iget v12, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$9:I

    iget v13, v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;->f$10:I

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/WavyProgressIndicatorKt;->$r8$lambda$zvAFIxv8f3QJQkU8RalrGTjEVyY(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object v1

    return-object v1
.end method
