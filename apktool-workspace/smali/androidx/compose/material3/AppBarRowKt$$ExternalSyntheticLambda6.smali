.class public final synthetic Landroidx/compose/material3/AppBarRowKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/AppBarOverflowState;

.field public final synthetic f$1:Landroidx/compose/runtime/State;

.field public final synthetic f$2:Landroidx/compose/material3/AppBarMenuState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/AppBarOverflowState;Landroidx/compose/runtime/State;Landroidx/compose/material3/AppBarMenuState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/AppBarRowKt$$ExternalSyntheticLambda6;->f$0:Landroidx/compose/material3/AppBarOverflowState;

    iput-object p2, p0, Landroidx/compose/material3/AppBarRowKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/material3/AppBarRowKt$$ExternalSyntheticLambda6;->f$2:Landroidx/compose/material3/AppBarMenuState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/AppBarRowKt$$ExternalSyntheticLambda6;->f$0:Landroidx/compose/material3/AppBarOverflowState;

    iget-object v1, p0, Landroidx/compose/material3/AppBarRowKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/runtime/State;

    iget-object v2, p0, Landroidx/compose/material3/AppBarRowKt$$ExternalSyntheticLambda6;->f$2:Landroidx/compose/material3/AppBarMenuState;

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/AppBarRowKt;->$r8$lambda$a4flw-l9mWViYRQTEMbS1_ZU08M(Landroidx/compose/material3/AppBarOverflowState;Landroidx/compose/runtime/State;Landroidx/compose/material3/AppBarMenuState;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
