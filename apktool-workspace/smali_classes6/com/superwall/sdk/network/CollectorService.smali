.class public final Lcom/superwall/sdk/network/CollectorService;
.super Lcom/superwall/sdk/network/NetworkService;
.source "CollectorService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectorService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectorService.kt\ncom/superwall/sdk/network/CollectorService\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 NetworkService.kt\ncom/superwall/sdk/network/NetworkService\n+ 4 CustomURLSession.kt\ncom/superwall/sdk/network/session/CustomHttpUrlConnection\n*L\n1#1,28:1\n113#2:29\n50#3,9:30\n75#3:49\n23#4,9:39\n67#4:48\n*S KotlinDebug\n*F\n+ 1 CollectorService.kt\ncom/superwall/sdk/network/CollectorService\n*L\n25#1:29\n23#1:30,9\n23#1:49\n23#1:39,9\n23#1:48\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ*\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H\u0096@\u00a2\u0006\u0002\u0010\u0019J\"\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0086@\u00a2\u0006\u0002\u0010 R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/superwall/sdk/network/CollectorService;",
        "Lcom/superwall/sdk/network/NetworkService;",
        "host",
        "",
        "version",
        "factory",
        "Lcom/superwall/sdk/dependencies/ApiFactory;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "customHttpUrlConnection",
        "Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/dependencies/ApiFactory;Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V",
        "getHost",
        "()Ljava/lang/String;",
        "getVersion",
        "getFactory",
        "()Lcom/superwall/sdk/dependencies/ApiFactory;",
        "getCustomHttpUrlConnection",
        "()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;",
        "makeHeaders",
        "",
        "isForDebugging",
        "",
        "requestId",
        "(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "events",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/models/events/EventsResponse;",
        "Lcom/superwall/sdk/network/NetworkError;",
        "eventsRequest",
        "Lcom/superwall/sdk/models/events/EventsRequest;",
        "(Lcom/superwall/sdk/models/events/EventsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "superwall_release"
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
.field private final customHttpUrlConnection:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

.field private final factory:Lcom/superwall/sdk/dependencies/ApiFactory;

.field private final host:Ljava/lang/String;

.field private final json:Lkotlinx/serialization/json/Json;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/dependencies/ApiFactory;Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customHttpUrlConnection"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/superwall/sdk/network/NetworkService;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/superwall/sdk/network/CollectorService;->host:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/superwall/sdk/network/CollectorService;->version:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/superwall/sdk/network/CollectorService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    .line 14
    iput-object p4, p0, Lcom/superwall/sdk/network/CollectorService;->json:Lkotlinx/serialization/json/Json;

    .line 15
    iput-object p5, p0, Lcom/superwall/sdk/network/CollectorService;->customHttpUrlConnection:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    return-void
.end method


# virtual methods
.method public final events(Lcom/superwall/sdk/models/events/EventsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/events/EventsRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/events/EventsResponse;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/superwall/sdk/network/CollectorService;->json:Lkotlinx/serialization/json/Json;

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 29
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v1, Lcom/superwall/sdk/models/events/EventsRequest;->Companion:Lcom/superwall/sdk/models/events/EventsRequest$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/events/EventsRequest$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v0, v1, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const-string p1, "getBytes(...)"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 38
    move-object v4, p0

    check-cast v4, Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v4}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v2

    .line 45
    new-instance v1, Lcom/superwall/sdk/network/CollectorService$events$$inlined$post-7Yrd8eY$default$1;

    const/4 v3, 0x0

    const-string v5, "events"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/superwall/sdk/network/CollectorService$events$$inlined$post-7Yrd8eY$default$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;[BLjava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x6

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/network/CollectorService;->customHttpUrlConnection:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    return-object v0
.end method

.method public final getFactory()Lcom/superwall/sdk/dependencies/ApiFactory;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/superwall/sdk/network/CollectorService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/superwall/sdk/network/CollectorService;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/superwall/sdk/network/CollectorService;->version:Ljava/lang/String;

    return-object v0
.end method

.method public makeHeaders(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/network/CollectorService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    invoke-interface {v0, p1, p2, p3}, Lcom/superwall/sdk/dependencies/ApiFactory;->makeHeaders(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
