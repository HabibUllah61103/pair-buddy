.class public final synthetic Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$1:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$2:Landroidx/compose/runtime/State;

.field public final synthetic f$3:Landroidx/compose/runtime/State;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroidx/compose/runtime/State;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$7:Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZLandroidx/compose/runtime/State;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$0:Landroidx/compose/ui/text/TextStyle;

    iput-object p2, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$1:Landroidx/compose/ui/text/TextStyle;

    iput-object p3, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$2:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$3:Landroidx/compose/runtime/State;

    iput-boolean p5, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$4:Z

    iput-object p6, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$5:Landroidx/compose/runtime/State;

    iput-object p7, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$6:Lkotlin/jvm/functions/Function3;

    iput-object p8, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$7:Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$0:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$1:Landroidx/compose/ui/text/TextStyle;

    iget-object v2, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$2:Landroidx/compose/runtime/State;

    iget-object v3, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$3:Landroidx/compose/runtime/State;

    iget-boolean v4, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$4:Z

    iget-object v5, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$5:Landroidx/compose/runtime/State;

    iget-object v6, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$6:Lkotlin/jvm/functions/Function3;

    iget-object v7, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda16;->f$7:Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/internal/TextFieldImplKt;->$r8$lambda$2PiL8QjiNNRayvVcMzGNANTB57A(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZLandroidx/compose/runtime/State;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
