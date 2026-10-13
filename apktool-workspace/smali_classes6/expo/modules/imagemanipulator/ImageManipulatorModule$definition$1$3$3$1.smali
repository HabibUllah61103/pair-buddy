.class final Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImageManipulatorModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagemanipulator/ImageManipulatorModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.imagemanipulator.ImageManipulatorModule$definition$1$3$3$1"
    f = "ImageManipulatorModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $base64String:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $compression:I

.field final synthetic $options:Lexpo/modules/imagemanipulator/ManipulateOptions;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $resultBitmap:Landroid/graphics/Bitmap;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lexpo/modules/imagemanipulator/ManipulateOptions;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/imagemanipulator/ManipulateOptions;",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$path:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$options:Lexpo/modules/imagemanipulator/ManipulateOptions;

    iput-object p3, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$resultBitmap:Landroid/graphics/Bitmap;

    iput p4, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$compression:I

    iput-object p5, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$base64String:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;

    iget-object v1, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$path:Ljava/lang/String;

    iget-object v2, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$options:Lexpo/modules/imagemanipulator/ManipulateOptions;

    iget-object v3, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$resultBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$compression:I

    iget-object v5, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$base64String:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;-><init>(Ljava/lang/String;Lexpo/modules/imagemanipulator/ManipulateOptions;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 124
    iget v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$path:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/io/Closeable;

    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$options:Lexpo/modules/imagemanipulator/ManipulateOptions;

    iget-object v1, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$resultBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$compression:I

    iget-object v3, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$1$3$3$1;->$base64String:Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    move-object v4, p1

    check-cast v4, Ljava/io/FileOutputStream;

    .line 126
    invoke-virtual {v0}, Lexpo/modules/imagemanipulator/ManipulateOptions;->getFormat()Lexpo/modules/imagemanipulator/ImageFormat;

    move-result-object v5

    invoke-virtual {v5}, Lexpo/modules/imagemanipulator/ImageFormat;->getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    .line 127
    check-cast v4, Ljava/io/OutputStream;

    invoke-virtual {v1, v5, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 128
    invoke-virtual {v0}, Lexpo/modules/imagemanipulator/ManipulateOptions;->getBase64()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v6, v0

    check-cast v6, Ljava/io/ByteArrayOutputStream;

    .line 130
    move-object v7, v6

    check-cast v7, Ljava/io/OutputStream;

    invoke-virtual {v1, v5, v2, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 131
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 132
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 134
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 125
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 135
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_2
    move-exception v0

    .line 125
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
