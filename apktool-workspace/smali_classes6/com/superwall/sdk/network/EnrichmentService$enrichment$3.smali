.class final Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EnrichmentService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/network/EnrichmentService;->enrichment-exY8QGI(Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/superwall/sdk/misc/Either<",
        "+",
        "Lcom/superwall/sdk/models/enrichment/Enrichment;",
        "Lcom/superwall/sdk/network/NetworkError;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnrichmentService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnrichmentService.kt\ncom/superwall/sdk/network/EnrichmentService$enrichment$3\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 NetworkService.kt\ncom/superwall/sdk/network/NetworkService\n+ 4 CustomURLSession.kt\ncom/superwall/sdk/network/session/CustomHttpUrlConnection\n*L\n1#1,36:1\n113#2:37\n50#3,9:38\n75#3:57\n23#4,9:47\n67#4:56\n*S KotlinDebug\n*F\n+ 1 EnrichmentService.kt\ncom/superwall/sdk/network/EnrichmentService$enrichment$3\n*L\n31#1:37\n28#1:38,9\n28#1:57\n28#1:47,9\n28#1:56\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/models/enrichment/Enrichment;",
        "Lcom/superwall/sdk/network/NetworkError;"
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
    c = "com.superwall.sdk.network.EnrichmentService$enrichment$3"
    f = "EnrichmentService.kt"
    i = {}
    l = {
        0x35
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $enrichmentRequest:Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;

.field final synthetic $maxRetry:I

.field final synthetic $timeout:J

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/network/EnrichmentService;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/network/EnrichmentService;Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/EnrichmentService;",
            "Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;",
            "IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->this$0:Lcom/superwall/sdk/network/EnrichmentService;

    iput-object p2, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->$enrichmentRequest:Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;

    iput p3, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->$maxRetry:I

    iput-wide p4, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->$timeout:J

    const/4 p1, 0x1

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;

    iget-object v1, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->this$0:Lcom/superwall/sdk/network/EnrichmentService;

    iget-object v2, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->$enrichmentRequest:Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;

    iget v3, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->$maxRetry:I

    iget-wide v4, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->$timeout:J

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;-><init>(Lcom/superwall/sdk/network/EnrichmentService;Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/enrichment/Enrichment;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 27
    iget v1, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->this$0:Lcom/superwall/sdk/network/EnrichmentService;

    invoke-virtual {p1}, Lcom/superwall/sdk/network/EnrichmentService;->getFactory()Lcom/superwall/sdk/dependencies/ApiFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/superwall/sdk/dependencies/ApiFactory;->json()Lkotlinx/serialization/json/Json;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/StringFormat;

    iget-object v1, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->$enrichmentRequest:Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;

    .line 37
    invoke-interface {p1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v3, Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;->Companion:Lcom/superwall/sdk/models/enrichment/EnrichmentRequest$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/models/enrichment/EnrichmentRequest$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, v3, v1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 31
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const-string p1, "getBytes(...)"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->this$0:Lcom/superwall/sdk/network/EnrichmentService;

    move-object v6, p1

    check-cast v6, Lcom/superwall/sdk/network/NetworkService;

    .line 30
    iget p1, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->$maxRetry:I

    .line 32
    iget-wide v3, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->$timeout:J

    invoke-static {v3, v4}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v11

    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    .line 46
    invoke-virtual {v6}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v4

    .line 53
    new-instance v3, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3$invokeSuspend$$inlined$post-7Yrd8eY$default$1;

    const/4 v5, 0x0

    const/4 v10, 0x0

    const-string v7, "enrich"

    invoke-direct/range {v3 .. v11}, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3$invokeSuspend$$inlined$post-7Yrd8eY$default$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;[BLjava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;->label:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v3, v1}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
