.class public final synthetic Landroidx/compose/material3/ToggleableAppBarItem$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/ToggleableAppBarItem;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ToggleableAppBarItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ToggleableAppBarItem$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/material3/ToggleableAppBarItem;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/ToggleableAppBarItem$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/material3/ToggleableAppBarItem;

    check-cast p1, Landroidx/compose/material3/TooltipScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p1, p2, p3}, Landroidx/compose/material3/ToggleableAppBarItem;->$r8$lambda$ViLE9V4a-xqDALKs-A21vdyR7bk(Landroidx/compose/material3/ToggleableAppBarItem;Landroidx/compose/material3/TooltipScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
