.class public final synthetic Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:Landroidx/compose/material3/MenuItemColors;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$4:Landroidx/compose/foundation/layout/RowScope;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/MenuItemColors;ZLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/RowScope;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/material3/MenuItemColors;

    iput-boolean p3, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda4;->f$2:Z

    iput-object p4, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda4;->f$3:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda4;->f$4:Landroidx/compose/foundation/layout/RowScope;

    iput-object p6, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda4;->f$5:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/material3/MenuItemColors;

    iget-boolean v2, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda4;->f$2:Z

    iget-object v3, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda4;->f$3:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda4;->f$4:Landroidx/compose/foundation/layout/RowScope;

    iget-object v5, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda4;->f$5:Lkotlin/jvm/functions/Function2;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/MenuKt;->$r8$lambda$N_sYJg0Gp_SxEwHZ49m14A9An8M(Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/MenuItemColors;ZLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/RowScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
