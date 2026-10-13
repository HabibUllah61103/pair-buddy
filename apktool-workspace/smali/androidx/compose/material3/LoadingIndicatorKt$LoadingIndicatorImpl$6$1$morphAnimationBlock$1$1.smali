.class final Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoadingIndicator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.material3.LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1"
    f = "LoadingIndicator.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x19a,
        0x19b
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "morphAnimationSpec",
        "deferred",
        "$this$launch",
        "morphAnimationSpec"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $currentMorphIndex$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $morphProgress:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $morphRotationTargetAngle$delegate:Landroidx/compose/runtime/MutableFloatState;

.field final synthetic $morphSequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Morph;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Animatable;Ljava/util/List;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Morph;",
            ">;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Landroidx/compose/runtime/MutableFloatState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->$morphProgress:Landroidx/compose/animation/core/Animatable;

    iput-object p2, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->$morphSequence:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->$currentMorphIndex$delegate:Landroidx/compose/runtime/MutableIntState;

    iput-object p4, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->$morphRotationTargetAngle$delegate:Landroidx/compose/runtime/MutableFloatState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;

    iget-object v1, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->$morphProgress:Landroidx/compose/animation/core/Animatable;

    iget-object v2, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->$morphSequence:Ljava/util/List;

    iget-object v3, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->$currentMorphIndex$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v4, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->$morphRotationTargetAngle$delegate:Landroidx/compose/runtime/MutableFloatState;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;-><init>(Landroidx/compose/animation/core/Animatable;Ljava/util/List;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 388
    iget v1, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/animation/core/SpringSpec;

    iget-object v4, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/Deferred;

    iget-object v4, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/SpringSpec;

    iget-object v5, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    const v1, 0x3dcccccd    # 0.1f

    .line 392
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v1

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x43480000    # 200.0f

    invoke-static {v4, v5, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring(FFLjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v1

    move-object v4, p1

    :goto_0
    move-object v7, v1

    .line 397
    :goto_1
    new-instance v5, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1$deferred$1;

    iget-object v6, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->$morphProgress:Landroidx/compose/animation/core/Animatable;

    iget-object v8, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->$morphSequence:Ljava/util/List;

    iget-object v9, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->$currentMorphIndex$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v10, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->$morphRotationTargetAngle$delegate:Landroidx/compose/runtime/MutableFloatState;

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1$deferred$1;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/SpringSpec;Ljava/util/List;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V

    move-object v1, v7

    move-object v7, v5

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    .line 410
    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->label:I

    const-wide/16 v6, 0x28a

    invoke-static {v6, v7, v5}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, v4

    move-object v4, v1

    move-object v1, p1

    .line 411
    :goto_2
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/material3/LoadingIndicatorKt$LoadingIndicatorImpl$6$1$morphAnimationBlock$1$1;->label:I

    invoke-interface {v1, p1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    move-object v7, v4

    move-object v4, v5

    goto :goto_1
.end method
