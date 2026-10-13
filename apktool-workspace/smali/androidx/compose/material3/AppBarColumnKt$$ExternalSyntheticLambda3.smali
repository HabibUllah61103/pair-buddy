.class public final synthetic Landroidx/compose/material3/AppBarColumnKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$1:Landroidx/compose/material3/AppBarMenuState;

.field public final synthetic f$2:Landroidx/compose/material3/AppBarOverflowState;

.field public final synthetic f$3:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/AppBarMenuState;Landroidx/compose/material3/AppBarOverflowState;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/AppBarColumnKt$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Landroidx/compose/material3/AppBarColumnKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/material3/AppBarMenuState;

    iput-object p3, p0, Landroidx/compose/material3/AppBarColumnKt$$ExternalSyntheticLambda3;->f$2:Landroidx/compose/material3/AppBarOverflowState;

    iput-object p4, p0, Landroidx/compose/material3/AppBarColumnKt$$ExternalSyntheticLambda3;->f$3:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/AppBarColumnKt$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Landroidx/compose/material3/AppBarColumnKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/material3/AppBarMenuState;

    iget-object v2, p0, Landroidx/compose/material3/AppBarColumnKt$$ExternalSyntheticLambda3;->f$2:Landroidx/compose/material3/AppBarOverflowState;

    iget-object v3, p0, Landroidx/compose/material3/AppBarColumnKt$$ExternalSyntheticLambda3;->f$3:Landroidx/compose/runtime/State;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/AppBarColumnKt;->$r8$lambda$f2kDD8SXlzGfpqLnz06ElvXVDwQ(Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/AppBarMenuState;Landroidx/compose/material3/AppBarOverflowState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
