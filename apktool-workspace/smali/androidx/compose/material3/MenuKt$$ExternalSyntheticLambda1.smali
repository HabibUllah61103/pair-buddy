.class public final synthetic Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(ZZLkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$0:Z

    iput-boolean p2, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-boolean v0, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$0:Z

    iget-boolean v1, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function2;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/compose/material3/MenuKt;->$r8$lambda$Vw2ZdQg12tDQnw--JbZNuS83h5A(ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
