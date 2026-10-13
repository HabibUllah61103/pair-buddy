.class public final synthetic Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:Landroidx/compose/material3/SheetState;

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(FFLandroidx/compose/material3/SheetState;F)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda1;->f$0:F

    iput p2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda1;->f$1:F

    iput-object p3, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/material3/SheetState;

    iput p4, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda1;->f$3:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget v0, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda1;->f$0:F

    iget v1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda1;->f$1:F

    iget-object v2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/material3/SheetState;

    iget v3, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda1;->f$3:F

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableAnchorsConfig;

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/compose/material3/BottomSheetScaffoldKt;->$r8$lambda$w9rMa9sd6EVUzabDHrnqiKftpE0(FFLandroidx/compose/material3/SheetState;FLandroidx/compose/foundation/gestures/DraggableAnchorsConfig;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
