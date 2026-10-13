.class public final synthetic Landroidx/compose/material3/SearchBarKt$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function4;

.field public final synthetic f$1:Landroidx/compose/material3/SearchBarState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function4;Landroidx/compose/material3/SearchBarState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/SearchBarKt$$ExternalSyntheticLambda22;->f$0:Lkotlin/jvm/functions/Function4;

    iput-object p2, p0, Landroidx/compose/material3/SearchBarKt$$ExternalSyntheticLambda22;->f$1:Landroidx/compose/material3/SearchBarState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/SearchBarKt$$ExternalSyntheticLambda22;->f$0:Lkotlin/jvm/functions/Function4;

    iget-object v1, p0, Landroidx/compose/material3/SearchBarKt$$ExternalSyntheticLambda22;->f$1:Landroidx/compose/material3/SearchBarState;

    check-cast p1, Landroidx/compose/material3/internal/PredictiveBackState;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Landroidx/compose/material3/SearchBarKt;->$r8$lambda$NZsLNY3lzMp8JMywNNTMW7Q8_OM(Lkotlin/jvm/functions/Function4;Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/internal/PredictiveBackState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
