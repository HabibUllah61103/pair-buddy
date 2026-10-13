.class final Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;
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
.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $focusManager:Landroidx/compose/ui/focus/FocusManager;

.field final synthetic $isRtl:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(Landroidx/compose/ui/focus/FocusManager;ZLandroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$focusManager:Landroidx/compose/ui/focus/FocusManager;

    iput-boolean p2, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$isRtl:Z

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2091
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/KeyEvent;->unbox-impl()Landroid/view/KeyEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->invoke-ZmokQxo(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-ZmokQxo(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 5

    .line 2093
    invoke-static {p1}, Landroidx/compose/material3/DatePickerKt;->access$isTab-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    .line 2110
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 2095
    iget-object p1, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$focusManager:Landroidx/compose/ui/focus/FocusManager;

    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusManager;->moveFocus-3ESFkO8(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2097
    iget-boolean p1, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$isRtl:Z

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result p1

    .line 2099
    :goto_0
    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$focusManager:Landroidx/compose/ui/focus/FocusManager;

    invoke-interface {v0, p1}, Landroidx/compose/ui/focus/FocusManager;->moveFocus-3ESFkO8(I)Z

    goto :goto_1

    .line 2100
    :cond_1
    iget-object p1, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->isScrollInProgress()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2103
    iget-object p1, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$focusManager:Landroidx/compose/ui/focus/FocusManager;

    sget-object v3, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getNext-dhqQ-8s()I

    move-result v3

    iget-object v4, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, p1, v0, v3, v4}, Landroidx/compose/material3/DatePickerKt;->access$goToMonth-BhxgA10(ILandroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/focus/FocusManager;ILkotlinx/coroutines/CoroutineScope;)V

    :cond_2
    :goto_1
    return-object v2

    .line 2107
    :cond_3
    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->isScrollInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    .line 2112
    :cond_4
    iget-boolean v0, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$isRtl:Z

    invoke-static {p1, v0}, Landroidx/compose/material3/DatePickerKt;->access$isDirectionForward-YhN2O0w(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2114
    iget-object p1, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$focusManager:Landroidx/compose/ui/focus/FocusManager;

    sget-object v3, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getNext-dhqQ-8s()I

    move-result v3

    iget-object v4, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, p1, v0, v3, v4}, Landroidx/compose/material3/DatePickerKt;->access$goToMonth-BhxgA10(ILandroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/focus/FocusManager;ILkotlinx/coroutines/CoroutineScope;)V

    return-object v2

    .line 2116
    :cond_5
    iget-boolean v0, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$isRtl:Z

    invoke-static {p1, v0}, Landroidx/compose/material3/DatePickerKt;->access$isDirectionBackwards-YhN2O0w(Landroid/view/KeyEvent;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2117
    iget-object p1, p0, Landroidx/compose/material3/DatePickerKt$dayOnKeyEvent$2;->$focusManager:Landroidx/compose/ui/focus/FocusManager;

    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getPrevious-dhqQ-8s()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusManager;->moveFocus-3ESFkO8(I)Z

    return-object v2

    :cond_6
    const/4 p1, 0x0

    .line 2120
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
