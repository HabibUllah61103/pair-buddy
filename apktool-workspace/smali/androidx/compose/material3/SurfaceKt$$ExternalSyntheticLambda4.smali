.class public final synthetic Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:F

.field public final synthetic f$2:Landroidx/compose/ui/graphics/ColorProducer;

.field public final synthetic f$3:Landroidx/compose/material3/ColorScheme;

.field public final synthetic f$4:Z

.field public final synthetic f$5:F

.field public final synthetic f$6:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/material3/ColorScheme;ZFLkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/ui/Modifier;

    iput p2, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$1:F

    iput-object p3, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/ui/graphics/ColorProducer;

    iput-object p4, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/material3/ColorScheme;

    iput-boolean p5, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$4:Z

    iput p6, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$5:F

    iput-object p7, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$6:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/ui/Modifier;

    iget v1, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$1:F

    iget-object v2, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/ui/graphics/ColorProducer;

    iget-object v3, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/material3/ColorScheme;

    iget-boolean v4, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$4:Z

    iget v5, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$5:F

    iget-object v6, p0, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda4;->f$6:Lkotlin/jvm/functions/Function2;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/SurfaceKt;->$r8$lambda$tasXTVFomU0C90_hZlwar5Vo4_w(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/material3/ColorScheme;ZFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
