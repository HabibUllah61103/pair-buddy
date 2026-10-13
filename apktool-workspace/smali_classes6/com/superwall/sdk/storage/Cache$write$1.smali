.class final Lcom/superwall/sdk/storage/Cache$write$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Cache.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/storage/Cache;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V
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
    c = "com.superwall.sdk.storage.Cache$write$1"
    f = "Cache.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $storable:Lcom/superwall/sdk/storage/Storable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/storage/Cache;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/storage/Storable;Lcom/superwall/sdk/storage/Cache;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;",
            "Lcom/superwall/sdk/storage/Cache;",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/storage/Cache$write$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/storage/Cache$write$1;->$storable:Lcom/superwall/sdk/storage/Storable;

    iput-object p2, p0, Lcom/superwall/sdk/storage/Cache$write$1;->this$0:Lcom/superwall/sdk/storage/Cache;

    iput-object p3, p0, Lcom/superwall/sdk/storage/Cache$write$1;->$data:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance p1, Lcom/superwall/sdk/storage/Cache$write$1;

    iget-object v0, p0, Lcom/superwall/sdk/storage/Cache$write$1;->$storable:Lcom/superwall/sdk/storage/Storable;

    iget-object v1, p0, Lcom/superwall/sdk/storage/Cache$write$1;->this$0:Lcom/superwall/sdk/storage/Cache;

    iget-object v2, p0, Lcom/superwall/sdk/storage/Cache$write$1;->$data:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/storage/Cache$write$1;-><init>(Lcom/superwall/sdk/storage/Storable;Lcom/superwall/sdk/storage/Cache;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/storage/Cache$write$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/storage/Cache$write$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/storage/Cache$write$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/storage/Cache$write$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 82
    iget v0, p0, Lcom/superwall/sdk/storage/Cache$write$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    :try_start_0
    iget-object p1, p0, Lcom/superwall/sdk/storage/Cache$write$1;->$storable:Lcom/superwall/sdk/storage/Storable;

    iget-object v0, p0, Lcom/superwall/sdk/storage/Cache$write$1;->this$0:Lcom/superwall/sdk/storage/Cache;

    invoke-virtual {v0}, Lcom/superwall/sdk/storage/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/superwall/sdk/storage/Storable;->file(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/superwall/sdk/storage/Cache$write$1;->this$0:Lcom/superwall/sdk/storage/Cache;

    invoke-static {v0}, Lcom/superwall/sdk/storage/Cache;->access$getJson$p(Lcom/superwall/sdk/storage/Cache;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    iget-object v1, p0, Lcom/superwall/sdk/storage/Cache$write$1;->$storable:Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v1}, Lcom/superwall/sdk/storage/Storable;->getSerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/storage/Cache$write$1;->$data:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0, v1}, Lkotlin/io/FilesKt;->writeText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p1

    .line 88
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 89
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 90
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->cache:Lcom/superwall/sdk/logger/LogScope;

    .line 91
    iget-object p1, p0, Lcom/superwall/sdk/storage/Cache$write$1;->$storable:Lcom/superwall/sdk/storage/Storable;

    invoke-interface {p1}, Lcom/superwall/sdk/storage/Storable;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to write key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 88
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 95
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
