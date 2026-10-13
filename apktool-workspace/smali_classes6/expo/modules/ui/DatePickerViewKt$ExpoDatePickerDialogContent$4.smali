.class final Lexpo/modules/ui/DatePickerViewKt$ExpoDatePickerDialogContent$4;
.super Ljava/lang/Object;
.source "DatePickerView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/DatePickerViewKt;->ExpoDatePickerDialogContent(Lexpo/modules/ui/DatePickerDialogProps;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $colors:Landroidx/compose/material3/DatePickerColors;

.field final synthetic $props:Lexpo/modules/ui/DatePickerDialogProps;

.field final synthetic $state:Landroidx/compose/material3/DatePickerState;


# direct methods
.method constructor <init>(Lexpo/modules/ui/DatePickerDialogProps;Landroidx/compose/material3/DatePickerState;Landroidx/compose/material3/DatePickerColors;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoDatePickerDialogContent$4;->$props:Lexpo/modules/ui/DatePickerDialogProps;

    iput-object p2, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoDatePickerDialogContent$4;->$state:Landroidx/compose/material3/DatePickerState;

    iput-object p3, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoDatePickerDialogContent$4;->$colors:Landroidx/compose/material3/DatePickerColors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 281
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/ui/DatePickerViewKt$ExpoDatePickerDialogContent$4;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    const-string v0, "$this$DatePickerDialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "C281@14303L108:DatePickerView.kt#v15e7d"

    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void

    .line 0
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string v0, "expo.modules.ui.ExpoDatePickerDialogContent.<anonymous> (DatePickerView.kt:281)"

    const v1, -0x7287cb25

    invoke-static {v1, p3, p1, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 284
    :cond_2
    iget-object p1, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoDatePickerDialogContent$4;->$props:Lexpo/modules/ui/DatePickerDialogProps;

    invoke-virtual {p1}, Lexpo/modules/ui/DatePickerDialogProps;->getShowVariantToggle()Z

    move-result v6

    .line 283
    iget-object v0, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoDatePickerDialogContent$4;->$state:Landroidx/compose/material3/DatePickerState;

    .line 285
    iget-object v3, p0, Lexpo/modules/ui/DatePickerViewKt$ExpoDatePickerDialogContent$4;->$colors:Landroidx/compose/material3/DatePickerColors;

    const/4 v9, 0x0

    const/16 v10, 0xb6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v8, p2

    .line 282
    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/DatePickerKt;->DatePicker(Landroidx/compose/material3/DatePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    return-void
.end method
