.class public final Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1$1$1;
.super Ljava/lang/Object;
.source "ImageManipulatorModule.kt"

# interfaces
.implements Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageManipulatorModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageManipulatorModule.kt\nexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1$1$1\n+ 2 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n*L\n1#1,147:1\n11#2,6:148\n*S KotlinDebug\n*F\n+ 1 ImageManipulatorModule.kt\nexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1$1$1\n*L\n49#1:148,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "expo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1$1$1",
        "Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;",
        "onSuccess",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "onFailure",
        "cause",
        "",
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
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $url:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1$1$1;->$url:Landroid/net/Uri;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 6

    .line 49
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    new-instance v1, Lexpo/modules/imagemanipulator/ImageLoadingFailedException;

    iget-object v2, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1$1$1;->$url:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 149
    new-instance p1, Lexpo/modules/kotlin/exception/UnexpectedException;

    const-string v3, "Unknown error"

    invoke-direct {p1, v3}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 150
    :cond_0
    instance-of v3, p1, Lexpo/modules/kotlin/exception/CodedException;

    if-eqz v3, :cond_1

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 151
    :cond_1
    instance-of v3, p1, Lexpo/modules/core/errors/CodedException;

    if-eqz v3, :cond_2

    new-instance v3, Lexpo/modules/kotlin/exception/CodedException;

    check-cast p1, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getCode(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v3, v4, v5, p1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v3

    goto :goto_0

    .line 152
    :cond_2
    new-instance v3, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v3, p1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v3

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    .line 49
    :goto_0
    invoke-direct {v1, v2, p1}, Lexpo/modules/imagemanipulator/ImageLoadingFailedException;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast v1, Ljava/lang/Throwable;

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
