.class public final synthetic Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior;

    iput-object p2, p0, Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior;

    iget-object v1, p0, Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, p1}, Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior;->$r8$lambda$Pe2MDCheQrmOFh2V4iIbAgvFlxs(Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior;Lkotlin/jvm/internal/Ref$BooleanRef;F)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
