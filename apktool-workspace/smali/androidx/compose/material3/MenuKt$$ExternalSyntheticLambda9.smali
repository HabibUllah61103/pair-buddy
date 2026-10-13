.class public final synthetic Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$10:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic f$11:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroidx/compose/material3/MenuItemColors;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:Landroidx/compose/animation/core/FiniteAnimationSpec;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;ZZZLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p2, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$1:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$2:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$3:Lkotlin/jvm/functions/Function2;

    iput-boolean p5, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$4:Z

    iput-object p6, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$5:Landroidx/compose/material3/MenuItemColors;

    iput-boolean p7, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$6:Z

    iput-boolean p8, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$7:Z

    iput-boolean p9, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$8:Z

    iput-object p10, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$9:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p11, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$10:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p12, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$11:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v1, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$1:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$2:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$3:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$4:Z

    iget-object v5, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$5:Landroidx/compose/material3/MenuItemColors;

    iget-boolean v6, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$6:Z

    iget-boolean v7, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$7:Z

    iget-boolean v8, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$8:Z

    iget-object v9, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$9:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget-object v10, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$10:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget-object v11, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda9;->f$11:Lkotlin/jvm/functions/Function2;

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 p1, p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/MenuKt;->$r8$lambda$pnEFuXo7XAgc9g6KIWppYxnUads(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;ZZZLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
