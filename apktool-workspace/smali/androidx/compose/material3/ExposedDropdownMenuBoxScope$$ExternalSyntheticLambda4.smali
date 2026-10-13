.class public final synthetic Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$10:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic f$11:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/compose/animation/core/MutableTransitionState;

.field public final synthetic f$4:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$5:Landroidx/compose/foundation/ScrollState;

.field public final synthetic f$6:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f$7:J

.field public final synthetic f$8:F

.field public final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;ZLandroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    iput-object p2, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$2:Z

    iput-object p4, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/animation/core/MutableTransitionState;

    iput-object p5, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$4:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$5:Landroidx/compose/foundation/ScrollState;

    iput-object p7, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$6:Landroidx/compose/ui/graphics/Shape;

    iput-wide p8, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$7:J

    iput p10, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$8:F

    iput p11, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$9:F

    iput-object p12, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$10:Landroidx/compose/foundation/BorderStroke;

    iput-object p13, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$11:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    iget-object v2, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/ui/Modifier;

    iget-boolean v3, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$2:Z

    iget-object v4, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/animation/core/MutableTransitionState;

    iget-object v5, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$4:Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$5:Landroidx/compose/foundation/ScrollState;

    iget-object v7, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$6:Landroidx/compose/ui/graphics/Shape;

    iget-wide v8, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$7:J

    iget v10, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$8:F

    iget v11, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$9:F

    iget-object v12, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$10:Landroidx/compose/foundation/BorderStroke;

    iget-object v13, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$$ExternalSyntheticLambda4;->f$11:Lkotlin/jvm/functions/Function3;

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->$r8$lambda$PVQf530FC1iPry6ZgcH7H6QLeEE(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;ZLandroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object v1

    return-object v1
.end method
