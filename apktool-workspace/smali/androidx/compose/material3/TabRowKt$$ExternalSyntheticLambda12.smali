.class public final synthetic Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/ScrollState;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:I

.field public final synthetic f$6:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FFILkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$0:Landroidx/compose/foundation/ScrollState;

    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$1:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$2:Lkotlin/jvm/functions/Function2;

    iput p4, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$3:F

    iput p5, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$4:F

    iput p6, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$5:I

    iput-object p7, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$6:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$0:Landroidx/compose/foundation/ScrollState;

    iget-object v1, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$1:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$2:Lkotlin/jvm/functions/Function2;

    iget v3, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$3:F

    iget v4, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$4:F

    iget v5, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$5:I

    iget-object v6, p0, Landroidx/compose/material3/TabRowKt$$ExternalSyntheticLambda12;->f$6:Lkotlin/jvm/functions/Function3;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/TabRowKt;->$r8$lambda$MiKX22A4AgR8mCSsvNeR_gdOZFI(Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FFILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
