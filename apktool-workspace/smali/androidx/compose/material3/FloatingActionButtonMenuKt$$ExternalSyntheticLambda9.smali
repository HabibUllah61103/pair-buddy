.class public final synthetic Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function3;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$0:Z

    iput-object p2, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$1:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$2:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$3:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p5, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$4:Lkotlin/jvm/functions/Function3;

    iput p6, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$5:I

    iput p7, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$6:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-boolean v0, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$0:Z

    iget-object v1, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$1:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$2:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$3:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v4, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$4:Lkotlin/jvm/functions/Function3;

    iget v5, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$5:I

    iget v6, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda9;->f$6:I

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->$r8$lambda$wt8BVBj0D4D8PrzpZ0oK3DLM_gs(ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
