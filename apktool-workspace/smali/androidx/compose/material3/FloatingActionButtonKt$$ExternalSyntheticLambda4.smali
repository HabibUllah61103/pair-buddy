.class public final synthetic Landroidx/compose/material3/FloatingActionButtonKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/ui/text/TextStyle;FFLkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/FloatingActionButtonKt$$ExternalSyntheticLambda4;->f$0:J

    iput-object p3, p0, Landroidx/compose/material3/FloatingActionButtonKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/ui/text/TextStyle;

    iput p4, p0, Landroidx/compose/material3/FloatingActionButtonKt$$ExternalSyntheticLambda4;->f$2:F

    iput p5, p0, Landroidx/compose/material3/FloatingActionButtonKt$$ExternalSyntheticLambda4;->f$3:F

    iput-object p6, p0, Landroidx/compose/material3/FloatingActionButtonKt$$ExternalSyntheticLambda4;->f$4:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-wide v0, p0, Landroidx/compose/material3/FloatingActionButtonKt$$ExternalSyntheticLambda4;->f$0:J

    iget-object v2, p0, Landroidx/compose/material3/FloatingActionButtonKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/ui/text/TextStyle;

    iget v3, p0, Landroidx/compose/material3/FloatingActionButtonKt$$ExternalSyntheticLambda4;->f$2:F

    iget v4, p0, Landroidx/compose/material3/FloatingActionButtonKt$$ExternalSyntheticLambda4;->f$3:F

    iget-object v5, p0, Landroidx/compose/material3/FloatingActionButtonKt$$ExternalSyntheticLambda4;->f$4:Lkotlin/jvm/functions/Function2;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/FloatingActionButtonKt;->$r8$lambda$mNv_-rHr3RW5LDxKbiFa3w419WA(JLandroidx/compose/ui/text/TextStyle;FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
