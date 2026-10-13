.class final Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;
.super Ljava/lang/Object;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderKt;->rangeSliderOnKeyEvents(Landroidx/compose/ui/Modifier;ZILkotlin/ranges/ClosedFloatingPointRange;FFZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
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
.field final synthetic $enabled:Z

.field final synthetic $isStartThumb:Z

.field final synthetic $onValueChangeFinishedState:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onValueChangeState:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/material3/SliderRange;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $reverseDirection:Z

.field final synthetic $steps:I

.field final synthetic $valueEnd:F

.field final synthetic $valueRange:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $valueStart:F


# direct methods
.method constructor <init>(ZLkotlin/ranges/ClosedFloatingPointRange;IZZFLkotlin/jvm/functions/Function1;FLkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;IZZF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/SliderRange;",
            "Lkotlin/Unit;",
            ">;F",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$enabled:Z

    iput-object p2, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iput p3, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$steps:I

    iput-boolean p4, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$reverseDirection:Z

    iput-boolean p5, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$isStartThumb:Z

    iput p6, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueEnd:F

    iput-object p7, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeState:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueStart:F

    iput-object p9, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeFinishedState:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1039
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/KeyEvent;->unbox-impl()Landroid/view/KeyEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->invoke-ZmokQxo(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-ZmokQxo(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 11

    .line 1040
    iget-boolean v0, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$enabled:Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    .line 1041
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v0

    .line 1042
    sget-object v2, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyDown-CS__XNY()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    .line 1043
    iget-object v0, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v0}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v2, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v2}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1048
    iget v2, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$steps:I

    if-lez v2, :cond_1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    const/16 v2, 0x64

    :goto_0
    int-to-float v4, v2

    div-float/2addr v0, v4

    .line 1050
    iget-boolean v4, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$reverseDirection:Z

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    goto :goto_1

    :cond_2
    move v4, v3

    .line 1052
    :goto_1
    iget-boolean v5, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$isStartThumb:Z

    const/16 v6, 0xa

    if-eqz v5, :cond_9

    .line 1053
    iget-object v5, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v5}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iget v7, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueEnd:F

    invoke-static {v5, v7}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v5

    .line 1054
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v7

    .line 1055
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionRight-EK5gGoQ()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1056
    iget-object p1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeState:Lkotlin/jvm/functions/Function1;

    .line 1058
    iget v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueStart:F

    int-to-float v2, v4

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 1059
    iget v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueEnd:F

    .line 1057
    invoke-static {v0, v1}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/material3/SliderRange;->box-impl(J)Landroidx/compose/material3/SliderRange;

    move-result-object v0

    .line 1056
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1065
    :cond_3
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionLeft-EK5gGoQ()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1066
    iget-object p1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeState:Lkotlin/jvm/functions/Function1;

    .line 1068
    iget v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueStart:F

    int-to-float v2, v4

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 1069
    iget v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueEnd:F

    .line 1067
    invoke-static {v0, v1}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/material3/SliderRange;->box-impl(J)Landroidx/compose/material3/SliderRange;

    move-result-object v0

    .line 1066
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1075
    :cond_4
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getPageUp-EK5gGoQ()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1076
    div-int/2addr v2, v6

    invoke-static {v2, v3, v6}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 1077
    iget-object v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeState:Lkotlin/jvm/functions/Function1;

    .line 1079
    iget v2, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueStart:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {p1, v5}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 1080
    iget v0, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueEnd:F

    .line 1078
    invoke-static {p1, v0}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/material3/SliderRange;->box-impl(J)Landroidx/compose/material3/SliderRange;

    move-result-object p1

    .line 1077
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1086
    :cond_5
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getPageDown-EK5gGoQ()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1087
    div-int/2addr v2, v6

    invoke-static {v2, v3, v6}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 1088
    iget-object v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeState:Lkotlin/jvm/functions/Function1;

    .line 1090
    iget v2, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueStart:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {p1, v5}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 1091
    iget v0, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueEnd:F

    .line 1089
    invoke-static {p1, v0}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/material3/SliderRange;->box-impl(J)Landroidx/compose/material3/SliderRange;

    move-result-object p1

    .line 1088
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1097
    :cond_6
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getMoveHome-EK5gGoQ()J

    move-result-wide v4

    invoke-static {v7, v8, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1098
    iget-object p1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeState:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v0}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueEnd:F

    invoke-static {v0, v1}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/material3/SliderRange;->box-impl(J)Landroidx/compose/material3/SliderRange;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1102
    :cond_7
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getMoveEnd-EK5gGoQ()J

    move-result-wide v4

    invoke-static {v7, v8, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1103
    iget-object p1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeState:Lkotlin/jvm/functions/Function1;

    iget v0, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueEnd:F

    invoke-static {v0, v0}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/material3/SliderRange;->box-impl(J)Landroidx/compose/material3/SliderRange;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v1

    .line 1110
    :cond_9
    iget v5, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueStart:F

    iget-object v7, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v7}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-static {v5, v7}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v5

    .line 1111
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v7

    .line 1112
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionRight-EK5gGoQ()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1113
    iget-object p1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeState:Lkotlin/jvm/functions/Function1;

    .line 1115
    iget v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueStart:F

    .line 1116
    iget v2, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueEnd:F

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 1114
    invoke-static {v1, v0}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/material3/SliderRange;->box-impl(J)Landroidx/compose/material3/SliderRange;

    move-result-object v0

    .line 1113
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1123
    :cond_a
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionLeft-EK5gGoQ()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1124
    iget-object p1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeState:Lkotlin/jvm/functions/Function1;

    .line 1126
    iget v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueStart:F

    .line 1127
    iget v2, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueEnd:F

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 1125
    invoke-static {v1, v0}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/material3/SliderRange;->box-impl(J)Landroidx/compose/material3/SliderRange;

    move-result-object v0

    .line 1124
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1134
    :cond_b
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getPageUp-EK5gGoQ()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1135
    div-int/2addr v2, v6

    invoke-static {v2, v3, v6}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 1136
    iget-object v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeState:Lkotlin/jvm/functions/Function1;

    .line 1138
    iget v2, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueStart:F

    .line 1139
    iget v4, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueEnd:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {p1, v5}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 1137
    invoke-static {v2, p1}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/material3/SliderRange;->box-impl(J)Landroidx/compose/material3/SliderRange;

    move-result-object p1

    .line 1136
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1145
    :cond_c
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getPageDown-EK5gGoQ()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1146
    div-int/2addr v2, v6

    invoke-static {v2, v3, v6}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 1147
    iget-object v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeState:Lkotlin/jvm/functions/Function1;

    .line 1149
    iget v2, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueStart:F

    .line 1150
    iget v4, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueEnd:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {p1, v5}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 1148
    invoke-static {v2, p1}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/material3/SliderRange;->box-impl(J)Landroidx/compose/material3/SliderRange;

    move-result-object p1

    .line 1147
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1156
    :cond_d
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getMoveHome-EK5gGoQ()J

    move-result-wide v4

    invoke-static {v7, v8, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1157
    iget-object p1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeState:Lkotlin/jvm/functions/Function1;

    iget v0, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueStart:F

    invoke-static {v0, v0}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/material3/SliderRange;->box-impl(J)Landroidx/compose/material3/SliderRange;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1161
    :cond_e
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getMoveEnd-EK5gGoQ()J

    move-result-wide v4

    invoke-static {v7, v8, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1162
    iget-object p1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeState:Lkotlin/jvm/functions/Function1;

    iget v0, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueStart:F

    iget-object v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v1}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/material3/SliderRange;->box-impl(J)Landroidx/compose/material3/SliderRange;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_f
    return-object v1

    .line 1171
    :cond_10
    sget-object v2, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyUp-CS__XNY()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1172
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v4

    .line 1173
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionRight-EK5gGoQ()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1174
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionLeft-EK5gGoQ()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1175
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getMoveHome-EK5gGoQ()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1176
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getMoveEnd-EK5gGoQ()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1177
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getPageUp-EK5gGoQ()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1178
    sget-object p1, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/Key$Companion;->getPageDown-EK5gGoQ()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_2

    :cond_11
    return-object v1

    .line 1179
    :cond_12
    :goto_2
    iget-object p1, p0, Landroidx/compose/material3/SliderKt$rangeSliderOnKeyEvents$2;->$onValueChangeFinishedState:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_13

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1180
    :cond_13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_14
    return-object v1
.end method
