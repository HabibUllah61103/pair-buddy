.class public final Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1;
.super Ljava/lang/Object;
.source "WideNavigationRail.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/FlingBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/WideNavigationRailKt;->ModalWideNavigationRailContent-pU6N4AM(ZZLandroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;FLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWideNavigationRail.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WideNavigationRail.kt\nandroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1485:1\n1#2:1486\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0003H\u0096@\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "androidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "performFling",
        "",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "initialVelocity",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $anchoredDraggableFlingBehavior:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

.field final synthetic $modalAnimateToDismiss:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/TargetedFlingBehavior;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1;->$anchoredDraggableFlingBehavior:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iput-object p2, p0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1;->$modalAnimateToDismiss:Lkotlin/jvm/functions/Function1;

    .line 1197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;

    iget v1, v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;-><init>(Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1198
    iget v2, v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    iget p1, v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;->F$0:F

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1202
    :try_start_1
    iget-object p3, p0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1;->$anchoredDraggableFlingBehavior:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iput v5, v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Landroidx/compose/foundation/gestures/TargetedFlingBehavior;->performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    iget-object p2, p0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1;->$modalAnimateToDismiss:Lkotlin/jvm/functions/Function1;

    iput p1, v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;->F$0:F

    iput v4, v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;->label:I

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_3

    .line 1206
    :cond_6
    :goto_2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 1204
    iget-object p2, p0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1;->$modalAnimateToDismiss:Lkotlin/jvm/functions/Function1;

    iput-object p1, v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1;->label:I

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    :goto_3
    return-object v1

    .line 1206
    :cond_7
    :goto_4
    throw p1
.end method
