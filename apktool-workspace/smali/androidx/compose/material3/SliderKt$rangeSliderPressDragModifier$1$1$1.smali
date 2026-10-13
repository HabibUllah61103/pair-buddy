.class final Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3538:1\n65#2:3539\n65#2:3543\n69#2:3546\n65#2:3548\n65#2:3551\n60#3:3540\n60#3:3544\n70#3:3547\n60#3:3549\n60#3:3552\n22#4:3541\n22#4:3545\n22#4:3550\n22#4:3553\n1#5:3542\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1\n*L\n2697#1:3539\n2722#1:3543\n2722#1:3546\n2740#1:3548\n2747#1:3551\n2697#1:3540\n2722#1:3544\n2722#1:3547\n2740#1:3549\n2747#1:3552\n2697#1:3541\n2722#1:3545\n2740#1:3550\n2747#1:3553\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.material3.SliderKt$rangeSliderPressDragModifier$1$1$1"
    f = "Slider.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0xa86,
        0xa98,
        0xaba
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitEachGesture",
        "draggingStart",
        "$this$awaitEachGesture",
        "draggingStart",
        "press",
        "down",
        "interactionSource",
        "posX",
        "overSlop",
        "pointerSlop",
        "activeDragInteraction",
        "draggingStart",
        "interactionSource",
        "interaction"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "F$0",
        "J$0",
        "F$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $rangeSliderLogic:Landroidx/compose/material3/RangeSliderLogic;

.field final synthetic $state:Landroidx/compose/material3/RangeSliderState;

.field F$0:F

.field F$1:F

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$WJOT77SCvo7C7zV82885DeR-_MA(Landroidx/compose/material3/RangeSliderState;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/ui/input/pointer/PointerInputChange;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->invokeSuspend$lambda$2(Landroidx/compose/material3/RangeSliderState;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/ui/input/pointer/PointerInputChange;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/material3/RangeSliderLogic;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/RangeSliderState;",
            "Landroidx/compose/material3/RangeSliderLogic;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    iput-object p2, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material3/RangeSliderLogic;

    iput-object p3, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$2(Landroidx/compose/material3/RangeSliderState;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/ui/input/pointer/PointerInputChange;)Lkotlin/Unit;
    .locals 3

    .line 2747
    invoke-static {p2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    .line 3553
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 2749
    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2750
    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->isRtl$material3()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-float v0, v0

    .line 2748
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroidx/compose/material3/RangeSliderState;->onDrag$material3(ZF)V

    .line 2752
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 2753
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;

    iget-object v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    iget-object v2, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material3/RangeSliderLogic;

    iget-object v3, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;-><init>(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/material3/RangeSliderLogic;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2688
    iget v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$3:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    iget-object v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v3, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v2

    move-object/from16 v2, p1

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    :goto_0
    move-object v14, v8

    goto/16 :goto_13

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->F$1:F

    iget-wide v9, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->J$0:J

    iget v11, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->F$0:F

    iget-object v12, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$4:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v13, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$3:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v14, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$2:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iget-object v15, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$BooleanRef;

    const/16 v16, 0x20

    iget-object v5, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v3, v11

    move-object v11, v5

    move-object v5, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v3

    move-object/from16 v3, p1

    move-object v6, v8

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v4, v8

    move-object v3, v15

    goto/16 :goto_13

    :cond_2
    const/16 v16, 0x20

    iget-object v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v5, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    move-object v9, v5

    move-object/from16 v5, p1

    goto :goto_1

    :cond_3
    const/16 v16, 0x20

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 2690
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 2694
    :try_start_3
    move-object v12, v1

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v9, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    iput v7, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->label:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    goto/16 :goto_b

    .line 2688
    :cond_4
    :goto_1
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 2697
    iget-object v10, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v10}, Landroidx/compose/material3/RangeSliderState;->isRtl$material3()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v10}, Landroidx/compose/material3/RangeSliderState;->getTotalWidth$material3()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v11

    shr-long v11, v11, v16

    long-to-int v11, v11

    .line 3541
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    sub-float/2addr v10, v11

    goto :goto_2

    .line 2697
    :cond_5
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v10

    shr-long v10, v10, v16

    long-to-int v10, v10

    .line 3541
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 2698
    :goto_2
    iget-object v11, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material3/RangeSliderLogic;

    invoke-virtual {v11, v10}, Landroidx/compose/material3/RangeSliderLogic;->compareOffsets(F)I

    move-result v11

    if-eqz v11, :cond_7

    if-gez v11, :cond_6

    :goto_3
    move v11, v7

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 2701
    :cond_7
    iget-object v11, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v11}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetStart$material3()F

    move-result v11

    cmpl-float v11, v11, v10

    if-lez v11, :cond_6

    goto :goto_3

    .line 2700
    :goto_4
    iput-boolean v11, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2703
    iget-object v11, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material3/RangeSliderLogic;

    iget-boolean v12, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v11, v12}, Landroidx/compose/material3/RangeSliderLogic;->activeInteraction(Z)Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v11

    .line 2704
    new-instance v14, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v12

    invoke-direct {v14, v12, v13, v8}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    .line 2705
    :try_start_4
    iget-object v12, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v13, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$1$1;

    invoke-direct {v13, v11, v14, v8}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v20, v13

    check-cast v20, Lkotlin/jvm/functions/Function2;

    const/16 v21, 0x3

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v12

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2708
    sget-object v12, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v12

    .line 2709
    invoke-interface {v9}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v15

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v6

    invoke-static {v15, v6}, Landroidx/compose/material3/internal/DragGestureDetectorCopyKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move-object v15, v14

    move-object v14, v5

    move-object v5, v2

    move v2, v6

    move-object v6, v8

    .line 2712
    :goto_5
    :try_start_5
    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v9, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v15, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$2:Ljava/lang/Object;

    iput-object v14, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$3:Ljava/lang/Object;

    iput-object v11, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$4:Ljava/lang/Object;

    iput v10, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->F$0:F

    iput-wide v12, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->J$0:J

    iput v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->F$1:F

    iput v4, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->label:I

    invoke-static {v9, v8, v3, v7, v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_8

    goto/16 :goto_b

    :cond_8
    move-object/from16 v27, v11

    move-object v11, v9

    move-wide/from16 v28, v12

    move v12, v10

    move-object/from16 v13, v27

    move-wide/from16 v9, v28

    :goto_6
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v3, :cond_9

    move-object/from16 v20, v5

    .line 2714
    :try_start_6
    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    move-result-wide v4

    invoke-static {v9, v10, v4, v5}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v4

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v6

    move-object v14, v15

    move-object/from16 v3, v20

    goto/16 :goto_13

    :cond_9
    move-object/from16 v20, v5

    move-wide v4, v9

    :goto_7
    if-eqz v3, :cond_b

    .line 2718
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2719
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getDistanceSquared-impl(J)F

    move-result v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    mul-float v10, v2, v2

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_a

    goto :goto_8

    :cond_a
    move-object v9, v11

    move v10, v12

    move-object v11, v13

    move-wide v12, v4

    move-object/from16 v5, v20

    const/4 v4, 0x2

    goto :goto_5

    :cond_b
    :goto_8
    if-eqz v3, :cond_11

    shr-long v9, v4, v16

    long-to-int v2, v9

    .line 3545
    :try_start_7
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 2722
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const-wide v21, 0xffffffffL

    and-long v4, v4, v21

    long-to-int v4, v4

    .line 3545
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 2722
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    cmpl-float v4, v9, v4

    if-lez v4, :cond_11

    if-eqz v15, :cond_c

    .line 2724
    :try_start_8
    iget-object v3, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2725
    new-instance v4, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$2$1;

    invoke-direct {v4, v13, v15, v8}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$2$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v24, v4

    check-cast v24, Lkotlin/jvm/functions/Function2;

    const/16 v25, 0x3

    const/16 v26, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v3

    invoke-static/range {v21 .. v26}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2730
    :cond_c
    :try_start_9
    new-instance v3, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-direct {v3}, Landroidx/compose/foundation/interaction/DragInteraction$Start;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 2732
    :try_start_a
    iget-object v4, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$3;

    invoke-direct {v5, v13, v3, v8}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$3;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/DragInteraction$Start;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v24, v5

    check-cast v24, Lkotlin/jvm/functions/Function2;

    const/16 v25, 0x3

    const/16 v26, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v4

    invoke-static/range {v21 .. v26}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object/from16 v5, v20

    .line 2737
    :try_start_b
    iget-boolean v4, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v4, :cond_d

    iget-object v4, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v4}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetStart$material3()F

    move-result v4

    goto :goto_9

    .line 2738
    :cond_d
    iget-object v4, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v4}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetEnd$material3()F

    move-result v4

    :goto_9
    sub-float/2addr v12, v4

    .line 2740
    iget-object v4, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v4}, Landroidx/compose/material3/RangeSliderState;->isRtl$material3()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3550
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_a

    :cond_e
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    :goto_a
    add-float/2addr v12, v2

    .line 2741
    iget-object v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    iget-boolean v4, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v2, v4, v12}, Landroidx/compose/material3/RangeSliderState;->onDrag$material3(ZF)V

    .line 2744
    iget-object v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v2, v7}, Landroidx/compose/material3/RangeSliderState;->setDragging$material3(Z)V

    .line 2746
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v6

    iget-object v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    new-instance v4, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v5}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/RangeSliderState;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v13, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$4:Ljava/lang/Object;

    const/4 v9, 0x3

    iput v9, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->label:I

    invoke-static {v11, v6, v7, v4, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->horizontalDrag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-ne v2, v0, :cond_f

    :goto_b
    return-object v0

    :cond_f
    move-object v0, v3

    move-object v4, v0

    move-object v3, v5

    :goto_c
    :try_start_c
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2755
    iget-object v5, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/compose/material3/RangeSliderState;->setDragging$material3(Z)V

    if-eqz v2, :cond_10

    .line 2759
    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v2, Landroidx/compose/foundation/interaction/DragInteraction;

    goto :goto_d

    .line 2761
    :cond_10
    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v2, Landroidx/compose/foundation/interaction/DragInteraction;

    .line 2763
    :goto_d
    iget-object v0, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v0}, Landroidx/compose/material3/RangeSliderState;->getGestureEndAction$material3()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-boolean v5, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2764
    iget-object v0, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$4;

    invoke-direct {v5, v13, v2, v8}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$4;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/DragInteraction;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v21, v5

    check-cast v21, Lkotlin/jvm/functions/Function2;

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v23}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v5, v3

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object/from16 v5, v20

    :goto_e
    move-object v4, v3

    move-object v3, v5

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object/from16 v5, v20

    goto :goto_10

    :catchall_6
    move-exception v0

    move-object/from16 v5, v20

    goto/16 :goto_12

    :cond_11
    move-object/from16 v5, v20

    if-eqz v3, :cond_14

    .line 2766
    :try_start_d
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz v15, :cond_12

    .line 2768
    iget-object v0, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2769
    new-instance v2, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$5$1;

    invoke-direct {v2, v13, v15, v8}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$5$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v21, v2

    check-cast v21, Lkotlin/jvm/functions/Function2;

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v23}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 2777
    :cond_12
    :try_start_e
    iget-boolean v0, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_13

    iget-object v0, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v0}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetStart$material3()F

    move-result v0

    goto :goto_f

    :cond_13
    iget-object v0, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v0}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetEnd$material3()F

    move-result v0

    :goto_f
    sub-float/2addr v12, v0

    .line 2778
    iget-object v0, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    iget-boolean v2, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v0, v2, v12}, Landroidx/compose/material3/RangeSliderState;->onDrag$material3(ZF)V

    .line 2779
    iget-object v0, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v0}, Landroidx/compose/material3/RangeSliderState;->getGestureEndAction$material3()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-boolean v2, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_11

    :catchall_7
    move-exception v0

    :goto_10
    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_0

    :cond_14
    if-eqz v15, :cond_15

    .line 2784
    :try_start_f
    iget-object v9, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2785
    new-instance v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$6$1;

    invoke-direct {v0, v13, v15, v8}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$6$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 2790
    :cond_15
    :goto_11
    iget-object v0, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v0}, Landroidx/compose/material3/RangeSliderState;->isDragging$material3()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2797
    iget-object v0, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v0}, Landroidx/compose/material3/RangeSliderState;->getGestureEndAction$material3()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-boolean v2, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2798
    iget-object v0, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/compose/material3/RangeSliderState;->setDragging$material3(Z)V

    .line 2807
    :cond_16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_8
    move-exception v0

    :goto_12
    move-object v3, v5

    move-object v4, v6

    move-object v14, v15

    goto :goto_13

    :catchall_9
    move-exception v0

    move-object v3, v2

    move-object v4, v8

    goto :goto_13

    :catchall_a
    move-exception v0

    move-object v3, v2

    move-object v4, v8

    move-object v14, v4

    .line 2790
    :goto_13
    iget-object v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v2}, Landroidx/compose/material3/RangeSliderState;->isDragging$material3()Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v4, :cond_17

    .line 2792
    iget-object v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material3/RangeSliderLogic;

    iget-object v5, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2794
    iget-boolean v6, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v2, v6}, Landroidx/compose/material3/RangeSliderLogic;->activeInteraction(Z)Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v2

    .line 2795
    new-instance v6, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$7$1;

    invoke-direct {v6, v2, v4, v8}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$7$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/DragInteraction$Start;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v21, v6

    check-cast v21, Lkotlin/jvm/functions/Function2;

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v5

    invoke-static/range {v18 .. v23}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2797
    :cond_17
    iget-object v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v2}, Landroidx/compose/material3/RangeSliderState;->getGestureEndAction$material3()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    iget-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2798
    iget-object v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$state:Landroidx/compose/material3/RangeSliderState;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroidx/compose/material3/RangeSliderState;->setDragging$material3(Z)V

    :cond_18
    if-eqz v14, :cond_19

    .line 2801
    iget-object v2, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material3/RangeSliderLogic;

    iget-object v15, v1, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2803
    iget-boolean v3, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v2, v3}, Landroidx/compose/material3/RangeSliderLogic;->activeInteraction(Z)Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v2

    .line 2804
    new-instance v3, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$8$1;

    invoke-direct {v3, v2, v14, v8}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$8$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v18, v3

    check-cast v18, Lkotlin/jvm/functions/Function2;

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v15 .. v20}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2801
    :cond_19
    throw v0
.end method
