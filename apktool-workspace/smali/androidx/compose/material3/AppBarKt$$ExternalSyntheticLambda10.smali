.class public final synthetic Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic f$1:F

.field public final synthetic f$2:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$3:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda10;->f$0:Landroidx/compose/foundation/layout/WindowInsets;

    iput p2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda10;->f$1:F

    iput-object p3, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda10;->f$2:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p4, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda10;->f$3:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p5, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda10;->f$4:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda10;->f$0:Landroidx/compose/foundation/layout/WindowInsets;

    iget v1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda10;->f$1:F

    iget-object v2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda10;->f$2:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v3, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda10;->f$3:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v4, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda10;->f$4:Lkotlin/jvm/functions/Function3;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/AppBarKt;->$r8$lambda$q-Vhe779xYCyAKoyvzUCOPfButc(Landroidx/compose/foundation/layout/WindowInsets;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
