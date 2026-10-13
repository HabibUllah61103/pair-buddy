.class public final synthetic Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode;

.field public final synthetic f$1:Z

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode;

    iput-boolean p2, p0, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode$$ExternalSyntheticLambda0;->f$2:F

    iput p4, p0, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode$$ExternalSyntheticLambda0;->f$3:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode;

    iget-boolean v1, p0, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode$$ExternalSyntheticLambda0;->f$1:Z

    iget v2, p0, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode$$ExternalSyntheticLambda0;->f$2:F

    iget v3, p0, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode$$ExternalSyntheticLambda0;->f$3:F

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode;->$r8$lambda$pTeadI9Nqds1WtSoCt4_lyRLjhE(Landroidx/compose/material3/internal/IndeterminateCircularWavyProgressNode;ZFFLandroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
