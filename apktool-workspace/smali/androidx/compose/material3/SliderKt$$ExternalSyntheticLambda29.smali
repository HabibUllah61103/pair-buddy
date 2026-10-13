.class public final synthetic Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:Landroidx/compose/material3/SliderColors;

.field public final synthetic f$3:Z

.field public final synthetic f$4:J

.field public final synthetic f$5:Z

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$0:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p2, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$1:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$2:Landroidx/compose/material3/SliderColors;

    iput-boolean p4, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$3:Z

    iput-wide p5, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$4:J

    iput-boolean p7, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$5:Z

    iput p8, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$6:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$0:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v1, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$1:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$2:Landroidx/compose/material3/SliderColors;

    iget-boolean v3, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$3:Z

    iget-wide v4, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$4:J

    iget-boolean v6, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$5:Z

    iget v7, p0, Landroidx/compose/material3/SliderKt$$ExternalSyntheticLambda29;->f$6:I

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/SliderKt;->$r8$lambda$SLEBBUTeGMqDk65zuhGNnEhbiXg(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJZILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
