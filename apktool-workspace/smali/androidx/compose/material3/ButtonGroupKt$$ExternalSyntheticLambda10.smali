.class public final synthetic Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/ButtonGroupOverflowState;

.field public final synthetic f$1:Landroidx/compose/material3/ButtonGroupMenuState;

.field public final synthetic f$2:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/material3/ButtonGroupMenuState;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda10;->f$0:Landroidx/compose/material3/ButtonGroupOverflowState;

    iput-object p2, p0, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda10;->f$1:Landroidx/compose/material3/ButtonGroupMenuState;

    iput-object p3, p0, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda10;->f$2:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda10;->f$0:Landroidx/compose/material3/ButtonGroupOverflowState;

    iget-object v1, p0, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda10;->f$1:Landroidx/compose/material3/ButtonGroupMenuState;

    iget-object v2, p0, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda10;->f$2:Landroidx/compose/runtime/State;

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/ButtonGroupKt;->$r8$lambda$4ns_02PIZEbRPgSDHmmOBCa655w(Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/material3/ButtonGroupMenuState;Landroidx/compose/runtime/State;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
