.class public final synthetic Landroidx/compose/material3/ToggleFloatingActionButtonDefaults$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/ToggleFloatingActionButtonDefaults$$ExternalSyntheticLambda3;->f$0:F

    iput p2, p0, Landroidx/compose/material3/ToggleFloatingActionButtonDefaults$$ExternalSyntheticLambda3;->f$1:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget v0, p0, Landroidx/compose/material3/ToggleFloatingActionButtonDefaults$$ExternalSyntheticLambda3;->f$0:F

    iget v1, p0, Landroidx/compose/material3/ToggleFloatingActionButtonDefaults$$ExternalSyntheticLambda3;->f$1:F

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, p1}, Landroidx/compose/material3/ToggleFloatingActionButtonDefaults;->$r8$lambda$G86Xi3nX0HYtDgR6bzmWn7c4q-8(FFF)Landroidx/compose/ui/unit/Dp;

    move-result-object p1

    return-object p1
.end method
