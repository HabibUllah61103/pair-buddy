.class public final Lcom/superwall/sdk/network/NetworkService$post-7Yrd8eY$$inlined$request$default$1$2;
.super Ljava/lang/Object;
.source "CustomURLSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/network/NetworkService$post-7Yrd8eY$$inlined$request$default$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/superwall/sdk/network/RequestResult;",
        "Lcom/superwall/sdk/misc/Either<",
        "+TT;",
        "Lcom/superwall/sdk/network/NetworkError;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomURLSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomURLSession.kt\ncom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2$2\n+ 2 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,69:1\n147#2:70\n*S KotlinDebug\n*F\n+ 1 CustomURLSession.kt\ncom/superwall/sdk/network/session/CustomHttpUrlConnection$request$2$2\n*L\n45#1:70\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $requestData:Lcom/superwall/sdk/network/NetworkRequestData;

.field final synthetic this$0:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lcom/superwall/sdk/network/NetworkRequestData;)V
    .locals 0

    iput-object p1, p0, Lcom/superwall/sdk/network/NetworkService$post-7Yrd8eY$$inlined$request$default$1$2;->this$0:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    iput-object p2, p0, Lcom/superwall/sdk/network/NetworkService$post-7Yrd8eY$$inlined$request$default$1$2;->$requestData:Lcom/superwall/sdk/network/NetworkRequestData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/superwall/sdk/network/RequestResult;)Lcom/superwall/sdk/misc/Either;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/RequestResult;",
            ")",
            "Lcom/superwall/sdk/misc/Either<",
            "TT;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;"
        }
    .end annotation

    const-string v1, "T"

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    .line 44
    :try_start_0
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    .line 45
    iget-object v3, p0, Lcom/superwall/sdk/network/NetworkService$post-7Yrd8eY$$inlined$request$default$1$2;->this$0:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    invoke-virtual {v3}, Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    .line 46
    invoke-virtual {p1}, Lcom/superwall/sdk/network/RequestResult;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-virtual {v3}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v6, "kotlinx.serialization.serializer.withModule"

    invoke-static {v6}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v3, v5, v4}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 44
    invoke-direct {v0, v3}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 52
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 53
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->network:Lcom/superwall/sdk/logger/LogScope;

    .line 56
    new-array v2, v2, [Lkotlin/Pair;

    const-string v6, "request"

    invoke-virtual {p1}, Lcom/superwall/sdk/network/RequestResult;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v2, v7

    .line 57
    const-string v6, "api_key"

    invoke-static {p1}, Lcom/superwall/sdk/network/RequestResultKt;->authHeader(Lcom/superwall/sdk/network/RequestResult;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    .line 58
    iget-object v6, p0, Lcom/superwall/sdk/network/NetworkService$post-7Yrd8eY$$inlined$request$default$1$2;->$requestData:Lcom/superwall/sdk/network/NetworkRequestData;

    invoke-virtual {v6}, Lcom/superwall/sdk/network/NetworkRequestData;->getUrl()Ljava/net/URI;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "unknown"

    :cond_1
    const-string v7, "url"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v2, v7

    const/4 v6, 0x4

    .line 59
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unable to decode response to type "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " - "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "message"

    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v7, 0x3

    aput-object v1, v2, v7

    .line 60
    const-string v1, "info"

    invoke-virtual {p1}, Lcom/superwall/sdk/network/RequestResult;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v6

    .line 61
    invoke-virtual {p1}, Lcom/superwall/sdk/network/RequestResult;->getDuration()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "request_duration"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    .line 55
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    const/16 v9, 0x10

    const/4 v10, 0x0

    .line 51
    const-string v6, "Request Error"

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 64
    new-instance p1, Lcom/superwall/sdk/misc/Either$Failure;

    new-instance v1, Lcom/superwall/sdk/network/NetworkError$Decoding;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/network/NetworkError$Decoding;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p1, v1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/superwall/sdk/misc/Either;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lcom/superwall/sdk/network/RequestResult;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/network/NetworkService$post-7Yrd8eY$$inlined$request$default$1$2;->invoke(Lcom/superwall/sdk/network/RequestResult;)Lcom/superwall/sdk/misc/Either;

    move-result-object p1

    return-object p1
.end method
