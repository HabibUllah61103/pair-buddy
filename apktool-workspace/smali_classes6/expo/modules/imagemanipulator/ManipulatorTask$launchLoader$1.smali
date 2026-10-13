.class final Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImageManipulatorContext.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagemanipulator/ManipulatorTask;->launchLoader()Lkotlinx/coroutines/Deferred;
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
        "Lexpo/modules/imagemanipulator/ManipulatorResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageManipulatorContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageManipulatorContext.kt\nexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1\n+ 2 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n*L\n1#1,92:1\n11#2,6:93\n*S KotlinDebug\n*F\n+ 1 ImageManipulatorContext.kt\nexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1\n*L\n52#1:93,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/imagemanipulator/ManipulatorResult;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.imagemanipulator.ManipulatorTask$launchLoader$1"
    f = "ImageManipulatorContext.kt"
    i = {}
    l = {
        0x32
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lexpo/modules/imagemanipulator/ManipulatorTask;


# direct methods
.method constructor <init>(Lexpo/modules/imagemanipulator/ManipulatorTask;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/imagemanipulator/ManipulatorTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;->this$0:Lexpo/modules/imagemanipulator/ManipulatorTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;

    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;->this$0:Lexpo/modules/imagemanipulator/ManipulatorTask;

    invoke-direct {p1, v0, p2}, Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;-><init>(Lexpo/modules/imagemanipulator/ManipulatorTask;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lexpo/modules/imagemanipulator/ManipulatorResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 48
    iget v1, p0, Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    :try_start_1
    iget-object p1, p0, Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;->this$0:Lexpo/modules/imagemanipulator/ManipulatorTask;

    invoke-static {p1}, Lexpo/modules/imagemanipulator/ManipulatorTask;->access$getLoader$p(Lexpo/modules/imagemanipulator/ManipulatorTask;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iput v3, p0, Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;->label:I

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    new-instance v0, Lexpo/modules/imagemanipulator/ManipulatorResult;

    invoke-direct {v0, p1, v2}, Lexpo/modules/imagemanipulator/ManipulatorResult;-><init>(Landroid/graphics/Bitmap;Lexpo/modules/kotlin/exception/CodedException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 52
    :goto_1
    new-instance v0, Lexpo/modules/imagemanipulator/ManipulatorResult;

    .line 95
    instance-of v1, p1, Lexpo/modules/kotlin/exception/CodedException;

    if-eqz v1, :cond_3

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_2

    .line 96
    :cond_3
    instance-of v1, p1, Lexpo/modules/core/errors/CodedException;

    if-eqz v1, :cond_4

    new-instance v1, Lexpo/modules/kotlin/exception/CodedException;

    check-cast p1, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getCode(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, v3, v4, p1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    goto :goto_2

    .line 97
    :cond_4
    new-instance v1, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v1, p1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v1

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    .line 52
    :goto_2
    invoke-direct {v0, v2, p1}, Lexpo/modules/imagemanipulator/ManipulatorResult;-><init>(Landroid/graphics/Bitmap;Lexpo/modules/kotlin/exception/CodedException;)V

    return-object v0
.end method
