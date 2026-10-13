.class final Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ButtonGroup.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "pressed",
        ""
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
    c = "androidx.compose.material3.EnlargeOnPressNode$launchCollectionJob$1$1$2"
    f = "ButtonGroup.kt"
    i = {}
    l = {
        0x46d,
        0x46e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $$this$launch:Lkotlinx/coroutines/CoroutineScope;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Landroidx/compose/material3/EnlargeOnPressNode;


# direct methods
.method public static synthetic $r8$lambda$CQpIpFlADK69YbcFwPLirq9BWNI(Landroidx/compose/material3/EnlargeOnPressNode;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->invokeSuspend$lambda$0(Landroidx/compose/material3/EnlargeOnPressNode;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/EnlargeOnPressNode;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/material3/EnlargeOnPressNode;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->this$0:Landroidx/compose/material3/EnlargeOnPressNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/compose/material3/EnlargeOnPressNode;)Z
    .locals 1

    .line 1133
    invoke-static {p0}, Landroidx/compose/material3/EnlargeOnPressNode;->access$getPressedAnimatable$p(Landroidx/compose/material3/EnlargeOnPressNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;

    iget-object v1, p0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->this$0:Landroidx/compose/material3/EnlargeOnPressNode;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/EnlargeOnPressNode;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->Z$0:Z

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1129
    iget v1, p0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->Z$0:Z

    if-eqz p1, :cond_3

    .line 1131
    iget-object v4, p0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2$1;

    iget-object v0, p0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->this$0:Landroidx/compose/material3/EnlargeOnPressNode;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2$1;-><init>(Landroidx/compose/material3/EnlargeOnPressNode;Lkotlin/coroutines/Continuation;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_2

    .line 1133
    :cond_3
    iget-object p1, p0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->this$0:Landroidx/compose/material3/EnlargeOnPressNode;

    new-instance v1, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/EnlargeOnPressNode;)V

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->label:I

    invoke-static {v1, p1}, Landroidx/compose/material3/ButtonGroupKt;->access$waitUntil(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 1134
    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->this$0:Landroidx/compose/material3/EnlargeOnPressNode;

    invoke-static {p1}, Landroidx/compose/material3/EnlargeOnPressNode;->access$getPressedAnimatable$p(Landroidx/compose/material3/EnlargeOnPressNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object v3

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v4

    iget-object p1, p0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->this$0:Landroidx/compose/material3/EnlargeOnPressNode;

    invoke-virtual {p1}, Landroidx/compose/material3/EnlargeOnPressNode;->getAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v5

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v2, p0, Landroidx/compose/material3/EnlargeOnPressNode$launchCollectionJob$1$1$2;->label:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_1
    return-object v0

    .line 1136
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
