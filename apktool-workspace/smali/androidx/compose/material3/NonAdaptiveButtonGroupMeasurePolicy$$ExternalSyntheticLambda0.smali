.class public final synthetic Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic f$2:[I

.field public final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;[I[I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p3, p0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy$$ExternalSyntheticLambda0;->f$2:[I

    iput-object p4, p0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy$$ExternalSyntheticLambda0;->f$3:[I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v2, p0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy$$ExternalSyntheticLambda0;->f$2:[I

    iget-object v3, p0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy$$ExternalSyntheticLambda0;->f$3:[I

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;->$r8$lambda$MJKhKO1YNRPvcXEXl78-3kIrulM(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;[I[ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
