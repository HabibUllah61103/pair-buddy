.class final Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LinearWavyProgressModifiers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;->updateOffsetAnimation()V
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
    c = "androidx.compose.material3.internal.BaseLinearWavyProgressNode$updateOffsetAnimation$1"
    f = "LinearWavyProgressModifiers.kt"
    i = {}
    l = {
        0x139
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $durationMillis:I

.field label:I

.field final synthetic this$0:Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;


# direct methods
.method public static synthetic $r8$lambda$IUIsIVKzEasqRK9uEVP3hNGhR48(Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;Landroidx/compose/animation/core/Animatable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;->invokeSuspend$lambda$0(Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;Landroidx/compose/animation/core/Animatable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;->this$0:Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;

    iput p2, p0, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;->$durationMillis:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;Landroidx/compose/animation/core/Animatable;)Lkotlin/Unit;
    .locals 1

    .line 321
    invoke-virtual {p0}, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;->getWaveOffset()Landroidx/compose/runtime/MutableFloatState;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    rem-float/2addr p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    .line 322
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

    new-instance p1, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;

    iget-object v0, p0, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;->this$0:Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;

    iget v1, p0, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;->$durationMillis:I

    invoke-direct {p1, v0, v1, p2}, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;-><init>(Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 307
    iget v1, p0, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 309
    iget-object p1, p0, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;->this$0:Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;

    invoke-virtual {p1}, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;->getWaveOffset()Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result p1

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 310
    invoke-static {p1, v1, v3, v4}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v5

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    .line 312
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroidx/compose/animation/core/Animatable;->updateBounds(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v6

    .line 317
    iget p1, p0, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;->$durationMillis:I

    const/4 v1, 0x0

    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v7

    invoke-static {p1, v1, v7, v3, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 318
    sget-object v8, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-wide/16 v9, 0x0

    .line 316
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroidx/compose/animation/core/AnimationSpec;

    .line 313
    iget-object p1, p0, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;->this$0:Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;

    new-instance v9, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1$$ExternalSyntheticLambda0;

    invoke-direct {v9, p1}, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/internal/BaseLinearWavyProgressNode;)V

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput v2, p0, Landroidx/compose/material3/internal/BaseLinearWavyProgressNode$updateOffsetAnimation$1;->label:I

    const/4 v8, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 323
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
