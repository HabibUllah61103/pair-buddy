.class public final synthetic Landroidx/compose/material3/NavigationBarKt$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/NavigationBarItemColors;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/NavigationBarItemColors;ZZLandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/NavigationBarKt$$ExternalSyntheticLambda13;->f$0:Landroidx/compose/material3/NavigationBarItemColors;

    iput-boolean p2, p0, Landroidx/compose/material3/NavigationBarKt$$ExternalSyntheticLambda13;->f$1:Z

    iput-boolean p3, p0, Landroidx/compose/material3/NavigationBarKt$$ExternalSyntheticLambda13;->f$2:Z

    iput-object p4, p0, Landroidx/compose/material3/NavigationBarKt$$ExternalSyntheticLambda13;->f$3:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p5, p0, Landroidx/compose/material3/NavigationBarKt$$ExternalSyntheticLambda13;->f$4:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/NavigationBarKt$$ExternalSyntheticLambda13;->f$0:Landroidx/compose/material3/NavigationBarItemColors;

    iget-boolean v1, p0, Landroidx/compose/material3/NavigationBarKt$$ExternalSyntheticLambda13;->f$1:Z

    iget-boolean v2, p0, Landroidx/compose/material3/NavigationBarKt$$ExternalSyntheticLambda13;->f$2:Z

    iget-object v3, p0, Landroidx/compose/material3/NavigationBarKt$$ExternalSyntheticLambda13;->f$3:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget-object v4, p0, Landroidx/compose/material3/NavigationBarKt$$ExternalSyntheticLambda13;->f$4:Lkotlin/jvm/functions/Function2;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/NavigationBarKt;->$r8$lambda$AYj1feIN5yzTABi3gP5lHyjZntM(Landroidx/compose/material3/NavigationBarItemColors;ZZLandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
