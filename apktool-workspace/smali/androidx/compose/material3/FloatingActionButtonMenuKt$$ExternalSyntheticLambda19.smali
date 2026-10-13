.class public final synthetic Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda19;->f$0:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda19;->f$1:Z

    iput-object p3, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda19;->f$2:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p4, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda19;->f$3:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda19;->f$4:Lkotlin/jvm/functions/Function3;

    iput p6, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda19;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda19;->f$0:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda19;->f$1:Z

    iget-object v2, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda19;->f$2:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v3, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda19;->f$3:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda19;->f$4:Lkotlin/jvm/functions/Function3;

    iget v5, p0, Landroidx/compose/material3/FloatingActionButtonMenuKt$$ExternalSyntheticLambda19;->f$5:I

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/FloatingActionButtonMenuKt;->$r8$lambda$rfRtjgfEMgas4Ka-iKIBl-SLBY4(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
