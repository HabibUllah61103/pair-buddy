.class public final synthetic Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$10:Landroidx/compose/runtime/State;

.field public final synthetic f$11:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$2:Z

.field public final synthetic f$3:F

.field public final synthetic f$4:Landroidx/compose/runtime/State;

.field public final synthetic f$5:Landroidx/compose/runtime/State;

.field public final synthetic f$6:Landroidx/compose/runtime/State;

.field public final synthetic f$7:Landroidx/compose/runtime/MutableIntState;

.field public final synthetic f$8:Landroidx/compose/runtime/MutableIntState;

.field public final synthetic f$9:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$0:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p2, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$1:Lkotlin/jvm/functions/Function2;

    iput-boolean p3, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$2:Z

    iput p4, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$3:F

    iput-object p5, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$4:Landroidx/compose/runtime/State;

    iput-object p6, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$5:Landroidx/compose/runtime/State;

    iput-object p7, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$6:Landroidx/compose/runtime/State;

    iput-object p8, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$7:Landroidx/compose/runtime/MutableIntState;

    iput-object p9, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$8:Landroidx/compose/runtime/MutableIntState;

    iput-object p10, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$9:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p11, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$10:Landroidx/compose/runtime/State;

    iput-object p12, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$11:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$0:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v1, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$1:Lkotlin/jvm/functions/Function2;

    iget-boolean v2, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$2:Z

    iget v3, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$3:F

    iget-object v4, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$4:Landroidx/compose/runtime/State;

    iget-object v5, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$5:Landroidx/compose/runtime/State;

    iget-object v6, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$6:Landroidx/compose/runtime/State;

    iget-object v7, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$7:Landroidx/compose/runtime/MutableIntState;

    iget-object v8, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$8:Landroidx/compose/runtime/MutableIntState;

    iget-object v9, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$9:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v10, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$10:Landroidx/compose/runtime/State;

    iget-object v11, p0, Landroidx/compose/material3/WideNavigationRailKt$$ExternalSyntheticLambda15;->f$11:Lkotlin/jvm/functions/Function2;

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 p1, p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/WideNavigationRailKt;->$r8$lambda$9xaGegIS-StsldrJDpVltx-AGJQ(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
