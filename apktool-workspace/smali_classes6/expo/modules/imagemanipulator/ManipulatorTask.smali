.class public final Lexpo/modules/imagemanipulator/ManipulatorTask;
.super Ljava/lang/Object;
.source "ImageManipulatorContext.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001c\u0010\u0004\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0014J\u0006\u0010\u0015\u001a\u00020\u0010J\u0006\u0010\u0016\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0004\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/imagemanipulator/ManipulatorTask;",
        "",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "loader",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "Landroid/graphics/Bitmap;",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V",
        "Lkotlin/jvm/functions/Function1;",
        "task",
        "Lkotlinx/coroutines/Deferred;",
        "Lexpo/modules/imagemanipulator/ManipulatorResult;",
        "launchLoader",
        "addTransformer",
        "",
        "transformer",
        "Lexpo/modules/imagemanipulator/transformers/ImageTransformer;",
        "render",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "reset",
        "cancel",
        "expo-image-manipulator_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final loader:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private task:Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/Deferred<",
            "Lexpo/modules/imagemanipulator/ManipulatorResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lexpo/modules/imagemanipulator/ManipulatorTask;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 44
    iput-object p2, p0, Lexpo/modules/imagemanipulator/ManipulatorTask;->loader:Lkotlin/jvm/functions/Function1;

    .line 46
    invoke-direct {p0}, Lexpo/modules/imagemanipulator/ManipulatorTask;->launchLoader()Lkotlinx/coroutines/Deferred;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/imagemanipulator/ManipulatorTask;->task:Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public static final synthetic access$getLoader$p(Lexpo/modules/imagemanipulator/ManipulatorTask;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 42
    iget-object p0, p0, Lexpo/modules/imagemanipulator/ManipulatorTask;->loader:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final launchLoader()Lkotlinx/coroutines/Deferred;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/Deferred<",
            "Lexpo/modules/imagemanipulator/ManipulatorResult;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorTask;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lexpo/modules/imagemanipulator/ManipulatorTask$launchLoader$1;-><init>(Lexpo/modules/imagemanipulator/ManipulatorTask;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addTransformer(Lexpo/modules/imagemanipulator/transformers/ImageTransformer;)V
    .locals 7

    const-string v0, "transformer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorTask;->task:Lkotlinx/coroutines/Deferred;

    .line 58
    iget-object v1, p0, Lexpo/modules/imagemanipulator/ManipulatorTask;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lexpo/modules/imagemanipulator/ManipulatorTask$addTransformer$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lexpo/modules/imagemanipulator/ManipulatorTask$addTransformer$1;-><init>(Lkotlinx/coroutines/Deferred;Lexpo/modules/imagemanipulator/transformers/ImageTransformer;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/imagemanipulator/ManipulatorTask;->task:Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public final cancel()V
    .locals 3

    .line 74
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorTask;->task:Lkotlinx/coroutines/Deferred;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final render(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lexpo/modules/imagemanipulator/ManipulatorTask$render$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lexpo/modules/imagemanipulator/ManipulatorTask$render$1;

    iget v1, v0, Lexpo/modules/imagemanipulator/ManipulatorTask$render$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lexpo/modules/imagemanipulator/ManipulatorTask$render$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lexpo/modules/imagemanipulator/ManipulatorTask$render$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/imagemanipulator/ManipulatorTask$render$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/imagemanipulator/ManipulatorTask$render$1;-><init>(Lexpo/modules/imagemanipulator/ManipulatorTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lexpo/modules/imagemanipulator/ManipulatorTask$render$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 64
    iget v2, v0, Lexpo/modules/imagemanipulator/ManipulatorTask$render$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    iget-object p1, p0, Lexpo/modules/imagemanipulator/ManipulatorTask;->task:Lkotlinx/coroutines/Deferred;

    iput v3, v0, Lexpo/modules/imagemanipulator/ManipulatorTask$render$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lexpo/modules/imagemanipulator/ManipulatorResult;

    invoke-virtual {p1}, Lexpo/modules/imagemanipulator/ManipulatorResult;->get()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final reset()V
    .locals 3

    .line 69
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorTask;->task:Lkotlinx/coroutines/Deferred;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Lexpo/modules/imagemanipulator/ManipulatorTask;->launchLoader()Lkotlinx/coroutines/Deferred;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorTask;->task:Lkotlinx/coroutines/Deferred;

    return-void
.end method
