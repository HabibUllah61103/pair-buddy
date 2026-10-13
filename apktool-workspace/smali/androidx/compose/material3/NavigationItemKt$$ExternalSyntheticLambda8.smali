.class public final synthetic Landroidx/compose/material3/NavigationItemKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroidx/compose/material3/NavigationItemColors;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$4:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/material3/NavigationItemColors;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material3/NavigationItemKt$$ExternalSyntheticLambda8;->f$0:Z

    iput-object p2, p0, Landroidx/compose/material3/NavigationItemKt$$ExternalSyntheticLambda8;->f$1:Landroidx/compose/material3/NavigationItemColors;

    iput-boolean p3, p0, Landroidx/compose/material3/NavigationItemKt$$ExternalSyntheticLambda8;->f$2:Z

    iput-object p4, p0, Landroidx/compose/material3/NavigationItemKt$$ExternalSyntheticLambda8;->f$3:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Landroidx/compose/material3/NavigationItemKt$$ExternalSyntheticLambda8;->f$4:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-boolean v0, p0, Landroidx/compose/material3/NavigationItemKt$$ExternalSyntheticLambda8;->f$0:Z

    iget-object v1, p0, Landroidx/compose/material3/NavigationItemKt$$ExternalSyntheticLambda8;->f$1:Landroidx/compose/material3/NavigationItemColors;

    iget-boolean v2, p0, Landroidx/compose/material3/NavigationItemKt$$ExternalSyntheticLambda8;->f$2:Z

    iget-object v3, p0, Landroidx/compose/material3/NavigationItemKt$$ExternalSyntheticLambda8;->f$3:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Landroidx/compose/material3/NavigationItemKt$$ExternalSyntheticLambda8;->f$4:Landroidx/compose/runtime/State;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/NavigationItemKt;->$r8$lambda$eVrvqA2-f6lBxdlZQJNk0vIV3bA(ZLandroidx/compose/material3/NavigationItemColors;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
