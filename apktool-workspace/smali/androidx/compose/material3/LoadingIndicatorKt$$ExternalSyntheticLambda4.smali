.class public final synthetic Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/Shape;Ljava/util/List;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$1:J

    iput-wide p4, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$2:J

    iput-object p6, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/ui/graphics/Shape;

    iput-object p7, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$4:Ljava/util/List;

    iput p8, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$5:I

    iput p9, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$6:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$1:J

    iget-wide v3, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$2:J

    iget-object v5, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/ui/graphics/Shape;

    iget-object v6, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$4:Ljava/util/List;

    iget v7, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$5:I

    iget v8, p0, Landroidx/compose/material3/LoadingIndicatorKt$$ExternalSyntheticLambda4;->f$6:I

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/LoadingIndicatorKt;->$r8$lambda$Xjr2MuzKRRO3ccDLIPQplHbrlFM(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/Shape;Ljava/util/List;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
