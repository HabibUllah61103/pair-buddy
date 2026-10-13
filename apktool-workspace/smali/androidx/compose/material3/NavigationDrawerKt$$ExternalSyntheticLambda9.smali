.class public final synthetic Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/DrawerPredictiveBackState;

.field public final synthetic f$1:Z

.field public final synthetic f$2:F

.field public final synthetic f$3:Landroidx/compose/material3/internal/FloatProducer;

.field public final synthetic f$4:F

.field public final synthetic f$5:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DrawerPredictiveBackState;ZFLandroidx/compose/material3/internal/FloatProducer;FLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/material3/DrawerPredictiveBackState;

    iput-boolean p2, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$1:Z

    iput p3, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$2:F

    iput-object p4, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$3:Landroidx/compose/material3/internal/FloatProducer;

    iput p5, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$4:F

    iput-object p6, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$5:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p7, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$6:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/material3/DrawerPredictiveBackState;

    iget-boolean v1, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$1:Z

    iget v2, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$2:F

    iget-object v3, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$3:Landroidx/compose/material3/internal/FloatProducer;

    iget v4, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$4:F

    iget-object v5, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$5:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v6, p0, Landroidx/compose/material3/NavigationDrawerKt$$ExternalSyntheticLambda9;->f$6:Lkotlin/jvm/functions/Function3;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/NavigationDrawerKt;->$r8$lambda$iamY5BE1pd6SimSbCIcjMx1XUGs(Landroidx/compose/material3/DrawerPredictiveBackState;ZFLandroidx/compose/material3/internal/FloatProducer;FLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
