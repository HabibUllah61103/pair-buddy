.class public final Lcom/superwall/sdk/network/BaseHostService;
.super Lcom/superwall/sdk/network/NetworkService;
.source "BaseHostService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseHostService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseHostService.kt\ncom/superwall/sdk/network/BaseHostService\n+ 2 NetworkService.kt\ncom/superwall/sdk/network/NetworkService\n+ 3 CustomURLSession.kt\ncom/superwall/sdk/network/session/CustomHttpUrlConnection\n+ 4 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n*L\n1#1,82:1\n21#2,10:83\n48#2:97\n21#2,10:98\n48#2:112\n50#2,9:114\n75#2:133\n21#2,10:134\n48#2:148\n21#2,10:149\n48#2:163\n30#3,2:93\n29#3:95\n67#3:96\n30#3,2:108\n29#3:110\n67#3:111\n23#3,9:123\n67#3:132\n30#3,2:144\n29#3:146\n67#3:147\n30#3,2:159\n29#3:161\n67#3:162\n113#4:113\n*S KotlinDebug\n*F\n+ 1 BaseHostService.kt\ncom/superwall/sdk/network/BaseHostService\n*L\n29#1:83,10\n29#1:97\n36#1:98,10\n36#1:112\n39#1:114,9\n39#1:133\n44#1:134,10\n44#1:148\n79#1:149,10\n79#1:163\n29#1:93,2\n29#1:95\n29#1:96\n36#1:108,2\n36#1:110\n36#1:111\n39#1:123,9\n39#1:132\n44#1:144,2\n44#1:146\n44#1:147\n79#1:159,2\n79#1:161\n79#1:162\n41#1:113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ*\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H\u0096@\u00a2\u0006\u0002\u0010\u0019JD\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001b2\u0006\u0010\u0018\u001a\u00020\u00032 \u0008\u0002\u0010\u001e\u001a\u001a\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"\u0018\u00010\u001fH\u0086@\u00a2\u0006\u0002\u0010#J\u001a\u0010$\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u001d0\u001bH\u0086@\u00a2\u0006\u0002\u0010&J\"\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u001d0\u001b2\u0006\u0010(\u001a\u00020)H\u0086@\u00a2\u0006\u0002\u0010*J$\u0010+\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u001d0\u001b2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017H\u0086@\u00a2\u0006\u0002\u0010-J&\u0010.\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020\u001d0\u001b2\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010\u0003H\u0086@\u00a2\u0006\u0002\u00101R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u00062"
    }
    d2 = {
        "Lcom/superwall/sdk/network/BaseHostService;",
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
        "config",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/models/config/Config;",
        "Lcom/superwall/sdk/network/NetworkError;",
        "isRetryingCallback",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "assignments",
        "Lcom/superwall/sdk/models/assignment/ConfirmedAssignmentResponse;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "confirmAssignments",
        "confirmableAssignments",
        "Lcom/superwall/sdk/models/assignment/AssignmentPostback;",
        "(Lcom/superwall/sdk/models/assignment/AssignmentPostback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "paywalls",
        "Lcom/superwall/sdk/models/paywall/Paywalls;",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "paywall",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "identifier",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

    .line 20
    invoke-direct {p0}, Lcom/superwall/sdk/network/NetworkService;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/superwall/sdk/network/BaseHostService;->host:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/superwall/sdk/network/BaseHostService;->version:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/superwall/sdk/network/BaseHostService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    .line 18
    iput-object p4, p0, Lcom/superwall/sdk/network/BaseHostService;->json:Lkotlinx/serialization/json/Json;

    .line 19
    iput-object p5, p0, Lcom/superwall/sdk/network/BaseHostService;->customHttpUrlConnection:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    return-void
.end method

.method public static synthetic config$default(Lcom/superwall/sdk/network/BaseHostService;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 26
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/network/BaseHostService;->config(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic paywall$default(Lcom/superwall/sdk/network/BaseHostService;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/network/BaseHostService;->paywall(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic paywalls$default(Lcom/superwall/sdk/network/BaseHostService;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 44
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/network/BaseHostService;->paywalls(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final assignments(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/assignment/ConfirmedAssignmentResponse;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 102
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    sget-object v0, Lcom/superwall/sdk/network/NetworkConsts;->INSTANCE:Lcom/superwall/sdk/network/NetworkConsts;

    invoke-virtual {v0}, Lcom/superwall/sdk/network/NetworkConsts;->retryCount()I

    move-result v0

    .line 107
    move-object v4, p0

    check-cast v4, Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v4}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v2

    .line 110
    new-instance v1, Lcom/superwall/sdk/network/BaseHostService$assignments$$inlined$get-rl3MWlM$default$1;

    const/4 v3, 0x0

    const-string v5, "assignments"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/superwall/sdk/network/BaseHostService$assignments$$inlined$get-rl3MWlM$default$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final config(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/config/Config;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/superwall/sdk/network/URLQueryItem;

    iget-object v1, p0, Lcom/superwall/sdk/network/BaseHostService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    invoke-interface {v1}, Lcom/superwall/sdk/dependencies/ApiFactory;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/storage/LocalStorage;->getApiKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pk"

    invoke-direct {v0, v2, v1}, Lcom/superwall/sdk/network/URLQueryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 88
    sget-object v0, Lcom/superwall/sdk/network/NetworkConsts;->INSTANCE:Lcom/superwall/sdk/network/NetworkConsts;

    invoke-virtual {v0}, Lcom/superwall/sdk/network/NetworkConsts;->retryCount()I

    move-result v0

    .line 92
    move-object v6, p0

    check-cast v6, Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v6}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v4

    .line 95
    new-instance v3, Lcom/superwall/sdk/network/BaseHostService$config$$inlined$get-rl3MWlM$default$1;

    const/4 v5, 0x0

    const-string v7, "static_config"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, p1

    invoke-direct/range {v3 .. v11}, Lcom/superwall/sdk/network/BaseHostService$config$$inlined$get-rl3MWlM$default$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p2, v3, p3}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final confirmAssignments(Lcom/superwall/sdk/models/assignment/AssignmentPostback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/assignment/AssignmentPostback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/assignment/ConfirmedAssignmentResponse;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/superwall/sdk/network/BaseHostService;->json:Lkotlinx/serialization/json/Json;

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 113
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v1, Lcom/superwall/sdk/models/assignment/AssignmentPostback;->Companion:Lcom/superwall/sdk/models/assignment/AssignmentPostback$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/assignment/AssignmentPostback$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v0, v1, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 41
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const-string p1, "getBytes(...)"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 122
    move-object v4, p0

    check-cast v4, Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v4}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v2

    .line 129
    new-instance v1, Lcom/superwall/sdk/network/BaseHostService$confirmAssignments$$inlined$post-7Yrd8eY$default$1;

    const/4 v3, 0x0

    const-string v5, "confirm_assignments"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/superwall/sdk/network/BaseHostService$confirmAssignments$$inlined$post-7Yrd8eY$default$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;[BLjava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x6

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/network/BaseHostService;->customHttpUrlConnection:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    return-object v0
.end method

.method public final getFactory()Lcom/superwall/sdk/dependencies/ApiFactory;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/superwall/sdk/network/BaseHostService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/network/BaseHostService;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/superwall/sdk/network/BaseHostService;->version:Ljava/lang/String;

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

    .line 24
    iget-object v0, p0, Lcom/superwall/sdk/network/BaseHostService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    invoke-interface {v0, p1, p2, p3}, Lcom/superwall/sdk/dependencies/ApiFactory;->makeHeaders(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final paywall(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 50
    new-array v2, v1, [Lcom/superwall/sdk/network/URLQueryItem;

    new-instance v3, Lcom/superwall/sdk/network/URLQueryItem;

    iget-object v4, v0, Lcom/superwall/sdk/network/BaseHostService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    invoke-interface {v4}, Lcom/superwall/sdk/dependencies/ApiFactory;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/storage/LocalStorage;->getApiKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pk"

    invoke-direct {v3, v5, v4}, Lcom/superwall/sdk/network/URLQueryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 57
    iget-object v2, v0, Lcom/superwall/sdk/network/BaseHostService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    invoke-interface {v2}, Lcom/superwall/sdk/dependencies/ApiFactory;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/config/ConfigManager;->getConfig()Lcom/superwall/sdk/models/config/Config;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v2}, Lcom/superwall/sdk/models/config/Config;->getLocales()Ljava/util/Set;

    move-result-object v3

    iget-object v5, v0, Lcom/superwall/sdk/network/BaseHostService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    invoke-interface {v5}, Lcom/superwall/sdk/dependencies/ApiFactory;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "locale"

    if-eqz v3, :cond_0

    .line 60
    new-instance v1, Lcom/superwall/sdk/network/URLQueryItem;

    .line 62
    iget-object v2, v0, Lcom/superwall/sdk/network/BaseHostService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    invoke-interface {v2}, Lcom/superwall/sdk/dependencies/ApiFactory;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocale()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-direct {v1, v5, v2}, Lcom/superwall/sdk/network/URLQueryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_0
    iget-object v3, v0, Lcom/superwall/sdk/network/BaseHostService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    invoke-interface {v3}, Lcom/superwall/sdk/dependencies/ApiFactory;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/network/device/DeviceHelper;->getLocale()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/CharSequence;

    new-array v12, v1, [Ljava/lang/String;

    const-string v1, "_"

    aput-object v1, v12, v4

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    invoke-virtual {v2}, Lcom/superwall/sdk/models/config/Config;->getLocales()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    new-instance v2, Lcom/superwall/sdk/network/URLQueryItem;

    invoke-direct {v2, v5, v1}, Lcom/superwall/sdk/network/URLQueryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "paywall/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 153
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 154
    sget-object v1, Lcom/superwall/sdk/network/NetworkConsts;->INSTANCE:Lcom/superwall/sdk/network/NetworkConsts;

    invoke-virtual {v1}, Lcom/superwall/sdk/network/NetworkConsts;->retryCount()I

    move-result v1

    .line 158
    move-object v8, v0

    check-cast v8, Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v8}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v6

    .line 161
    new-instance v5, Lcom/superwall/sdk/network/BaseHostService$paywall$$inlined$get-rl3MWlM$default$1;

    const/4 v7, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/superwall/sdk/network/BaseHostService$paywall$$inlined$get-rl3MWlM$default$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    move-object/from16 v3, p2

    invoke-static {v1, v2, v5, v3}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final paywalls(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/paywall/Paywalls;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 138
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 139
    sget-object v0, Lcom/superwall/sdk/network/NetworkConsts;->INSTANCE:Lcom/superwall/sdk/network/NetworkConsts;

    invoke-virtual {v0}, Lcom/superwall/sdk/network/NetworkConsts;->retryCount()I

    move-result v0

    .line 143
    move-object v4, p0

    check-cast v4, Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v4}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v2

    .line 146
    new-instance v1, Lcom/superwall/sdk/network/BaseHostService$paywalls$$inlined$get-rl3MWlM$default$1;

    const/4 v3, 0x0

    const-string v5, "paywalls"

    const/4 v6, 0x0

    const/4 v9, 0x0

    move v8, p1

    invoke-direct/range {v1 .. v9}, Lcom/superwall/sdk/network/BaseHostService$paywalls$$inlined$get-rl3MWlM$default$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
