.class final Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImageManipulatorModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagemanipulator/ImageManipulatorModule;->createManipulatorContext(Landroid/net/Uri;)Lexpo/modules/imagemanipulator/ImageManipulatorContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageManipulatorModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageManipulatorModule.kt\nexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1\n+ 2 AppContext.kt\nexpo/modules/kotlin/AppContext\n+ 3 ServicesRegistry.kt\nexpo/modules/kotlin/services/ServicesRegistry\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,147:1\n172#2:148\n55#3:149\n426#4,11:150\n*S KotlinDebug\n*F\n+ 1 ImageManipulatorModule.kt\nexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1\n*L\n37#1:148\n37#1:149\n40#1:150,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;"
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
    c = "expo.modules.imagemanipulator.ImageManipulatorModule$createManipulatorContext$loader$1"
    f = "ImageManipulatorModule.kt"
    i = {
        0x0
    }
    l = {
        0x96
    }
    m = "invokeSuspend"
    n = {
        "imageLoader"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $url:Landroid/net/Uri;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/imagemanipulator/ImageManipulatorModule;


# direct methods
.method constructor <init>(Lexpo/modules/imagemanipulator/ImageManipulatorModule;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/imagemanipulator/ImageManipulatorModule;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->this$0:Lexpo/modules/imagemanipulator/ImageManipulatorModule;

    iput-object p2, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->$url:Landroid/net/Uri;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;

    iget-object v1, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->this$0:Lexpo/modules/imagemanipulator/ImageManipulatorModule;

    iget-object v2, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->$url:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p1}, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;-><init>(Lexpo/modules/imagemanipulator/ImageManipulatorModule;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    invoke-virtual {p0, p1}, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 36
    iget v1, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->L$1:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->this$0:Lexpo/modules/imagemanipulator/ImageManipulatorModule;

    invoke-virtual {p1}, Lexpo/modules/imagemanipulator/ImageManipulatorModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getServices()Lexpo/modules/kotlin/services/ServicesRegistry;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lexpo/modules/kotlin/services/ServicesRegistry;->getRegistry()Ljava/util/Map;

    move-result-object p1

    const-class v1, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;

    if-nez v1, :cond_2

    const/4 p1, 0x0

    :cond_2
    check-cast p1, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;

    check-cast p1, Lexpo/modules/kotlin/services/Service;

    .line 37
    check-cast p1, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;

    if-eqz p1, :cond_5

    .line 40
    iget-object v1, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->$url:Landroid/net/Uri;

    .line 150
    iput-object p1, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1;->label:I

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 151
    new-instance v4, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 157
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 158
    move-object v2, v4

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    .line 42
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "toString(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v6, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1$1$1;

    invoke-direct {v6, v2, v1}, Lexpo/modules/imagemanipulator/ImageManipulatorModule$createManipulatorContext$loader$1$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Landroid/net/Uri;)V

    check-cast v6, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;

    .line 41
    invoke-interface {p1, v5, v6}, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;->loadImageForManipulationFromURL(Ljava/lang/String;Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;)V

    .line 159
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 150
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    return-object p1

    .line 38
    :cond_5
    new-instance p1, Lexpo/modules/imagemanipulator/ImageLoaderNotFoundException;

    invoke-direct {p1}, Lexpo/modules/imagemanipulator/ImageLoaderNotFoundException;-><init>()V

    throw p1
.end method
