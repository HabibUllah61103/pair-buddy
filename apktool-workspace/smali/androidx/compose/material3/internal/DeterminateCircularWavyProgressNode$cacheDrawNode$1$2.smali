.class final Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CircularWavyProgressModifiers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "androidx.compose.material3.internal.DeterminateCircularWavyProgressNode$cacheDrawNode$1$2"
    f = "CircularWavyProgressModifiers.kt"
    i = {}
    l = {
        0x24d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $targetAmplitude:F

.field label:I

.field final synthetic this$0:Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;


# direct methods
.method public static synthetic $r8$lambda$roPfFOWJwFkQwL-Yc02ineVidZE(Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;Landroidx/compose/animation/core/Animatable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->invokeSuspend$lambda$0(Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;Landroidx/compose/animation/core/Animatable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;FLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->this$0:Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;

    iput p2, p0, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->$targetAmplitude:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;Landroidx/compose/animation/core/Animatable;)Lkotlin/Unit;
    .locals 0

    .line 598
    invoke-static {p0}, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;->access$getAmplitudeState$p(Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    .line 599
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;

    iget-object v0, p0, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->this$0:Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;

    iget v1, p0, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->$targetAmplitude:F

    invoke-direct {p1, v0, v1, p2}, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;-><init>(Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;FLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 587
    iget v1, p0, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 588
    iget-object p1, p0, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->this$0:Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;

    invoke-static {p1}, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;->access$getAmplitudeAnimatable$p(Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 590
    :cond_2
    iget p1, p0, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->$targetAmplitude:F

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v4

    .line 592
    invoke-virtual {v3}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v1, p0, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->$targetAmplitude:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    .line 593
    invoke-static {}, Landroidx/compose/material3/WavyProgressIndicatorKt;->getIncreasingAmplitudeAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p1

    goto :goto_0

    .line 595
    :cond_3
    invoke-static {}, Landroidx/compose/material3/WavyProgressIndicatorKt;->getDecreasingAmplitudeAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p1

    :goto_0
    move-object v5, p1

    .line 589
    iget-object p1, p0, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->this$0:Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;

    new-instance v7, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1}, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;)V

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v2, p0, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->label:I

    const/4 v6, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 603
    :cond_4
    :goto_1
    iget p1, p0, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->$targetAmplitude:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_5

    .line 604
    iget-object p1, p0, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode$cacheDrawNode$1$2;->this$0:Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;

    invoke-virtual {p1}, Landroidx/compose/material3/internal/DeterminateCircularWavyProgressNode;->stopOffsetAnimation()V

    .line 606
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
