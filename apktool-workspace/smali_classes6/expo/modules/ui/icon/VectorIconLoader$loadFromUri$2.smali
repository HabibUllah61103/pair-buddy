.class final Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VectorIconLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/icon/VectorIconLoader;->loadFromUri(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lexpo/modules/ui/icon/VectorIconLoader$IconResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/ui/icon/VectorIconLoader$IconResult;",
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
    c = "expo.modules.ui.icon.VectorIconLoader$loadFromUri$2"
    f = "VectorIconLoader.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $uriString:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lexpo/modules/ui/icon/VectorIconLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Lexpo/modules/ui/icon/VectorIconLoader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/ui/icon/VectorIconLoader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->$uriString:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->this$0:Lexpo/modules/ui/icon/VectorIconLoader;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance p1, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;

    iget-object v0, p0, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->$uriString:Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->this$0:Lexpo/modules/ui/icon/VectorIconLoader;

    invoke-direct {p1, v0, v1, p2}, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;-><init>(Ljava/lang/String;Lexpo/modules/ui/icon/VectorIconLoader;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lexpo/modules/ui/icon/VectorIconLoader$IconResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "VectorIconLoader"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 48
    iget v1, p0, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->label:I

    if-nez v1, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->$uriString:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 52
    :cond_0
    :try_start_0
    iget-object p1, p0, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->$uriString:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    iget-object v3, p0, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->this$0:Lexpo/modules/ui/icon/VectorIconLoader;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lexpo/modules/ui/icon/VectorIconLoader;->access$loadFromResourceId(Lexpo/modules/ui/icon/VectorIconLoader;Landroid/net/Uri;)Lexpo/modules/ui/icon/VectorIconLoader$IconResult;

    move-result-object p1

    return-object p1

    .line 64
    :cond_1
    iget-object v3, p0, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->this$0:Lexpo/modules/ui/icon/VectorIconLoader;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lexpo/modules/ui/icon/VectorIconLoader;->access$getInputStreamForUri(Lexpo/modules/ui/icon/VectorIconLoader;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;

    invoke-direct {v3, v2, v2, v1, v2}, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    .line 65
    :cond_2
    check-cast v3, Ljava/io/Closeable;

    iget-object v4, p0, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->this$0:Lexpo/modules/ui/icon/VectorIconLoader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v5, v3

    check-cast v5, Ljava/io/InputStream;

    .line 66
    invoke-static {v4, v5}, Lexpo/modules/ui/icon/VectorIconLoader;->access$parseIconFromStream(Lexpo/modules/ui/icon/VectorIconLoader;Ljava/io/InputStream;)Lexpo/modules/ui/icon/VectorIconLoader$IconResult;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :try_start_3
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v4

    :catchall_0
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_5
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v3

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to load icon from URI: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v0, p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    new-instance p1, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;

    invoke-direct {p1, v2, v2, v1, v2}, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 54
    iget-object v3, p0, Lexpo/modules/ui/icon/VectorIconLoader$loadFromUri$2;->$uriString:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to parse URI: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    new-instance p1, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;

    invoke-direct {p1, v2, v2, v1, v2}, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 49
    :cond_3
    :goto_0
    new-instance p1, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;

    invoke-direct {p1, v2, v2, v1, v2}, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 48
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
