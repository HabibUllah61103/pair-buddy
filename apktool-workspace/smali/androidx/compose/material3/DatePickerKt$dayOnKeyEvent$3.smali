.class final Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$3;
.super Ljava/lang/Object;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->dayOnKeyEvent(Landroidx/compose/ui/Modifier;ZZZLandroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $focusManager:Landroidx/compose/ui/focus/FocusManager;

.field final synthetic $isRtl:Z


# direct methods
.method constructor <init>(ZLandroidx/compose/ui/focus/FocusManager;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$3;->$isRtl:Z

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$3;->$focusManager:Landroidx/compose/ui/focus/FocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2123
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/KeyEvent;->unbox-impl()Landroid/view/KeyEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$3;->invoke-ZmokQxo(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-ZmokQxo(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 2

    .line 2125
    iget-boolean v0, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$3;->$isRtl:Z

    invoke-static {p1, v0}, Landroidx/compose/material3/DatePickerKt;->access$isDirectionForward-YhN2O0w(Landroid/view/KeyEvent;Z)Z

    move-result v0

    const/4 v1, 0x1

    .line 2127
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 2126
    iget-object p1, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$3;->$focusManager:Landroidx/compose/ui/focus/FocusManager;

    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getNext-dhqQ-8s()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusManager;->moveFocus-3ESFkO8(I)Z

    return-object v1

    .line 2128
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$3;->$isRtl:Z

    invoke-static {p1, v0}, Landroidx/compose/material3/DatePickerKt;->access$isDirectionBackwards-YhN2O0w(Landroid/view/KeyEvent;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2129
    iget-object p1, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$3;->$focusManager:Landroidx/compose/ui/focus/FocusManager;

    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getPrevious-dhqQ-8s()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusManager;->moveFocus-3ESFkO8(I)Z

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 2132
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
