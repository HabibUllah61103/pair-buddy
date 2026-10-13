.class public final synthetic Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior;

    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    invoke-static {v0, v1, p1, p2, p3}, Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior;->$r8$lambda$yVOVSLsxqe8PqmRPVIcmphMP6Bc(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method
