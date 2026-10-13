.class public final Lcom/superwall/sdk/network/SubscriptionService;
.super Lcom/superwall/sdk/network/NetworkService;
.source "SubscriptionService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubscriptionService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionService.kt\ncom/superwall/sdk/network/SubscriptionService\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 NetworkService.kt\ncom/superwall/sdk/network/NetworkService\n+ 4 CustomURLSession.kt\ncom/superwall/sdk/network/session/CustomHttpUrlConnection\n*L\n1#1,83:1\n113#2:84\n50#3,9:85\n75#3:104\n21#3,10:105\n48#3:119\n21#3,10:120\n48#3:134\n21#3,10:135\n48#3:149\n23#4,9:94\n67#4:103\n30#4,2:115\n29#4:117\n67#4:118\n30#4,2:130\n29#4:132\n67#4:133\n30#4,2:145\n29#4:147\n67#4:148\n*S KotlinDebug\n*F\n+ 1 SubscriptionService.kt\ncom/superwall/sdk/network/SubscriptionService\n*L\n51#1:84\n46#1:85,9\n46#1:104\n68#1:105,10\n68#1:119\n75#1:120,10\n75#1:134\n81#1:135,10\n81#1:149\n46#1:94,9\n46#1:103\n68#1:115,2\n68#1:117\n68#1:118\n75#1:130,2\n75#1:132\n75#1:133\n81#1:145,2\n81#1:147\n81#1:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ*\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H\u0096@\u00a2\u0006\u0002\u0010\u0019Jr\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u00032\u0006\u0010$\u001a\u00020%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\'0\u001f2\u0006\u0010(\u001a\u00020\u00032\u0014\u0010)\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020*\u0018\u00010\u0015H\u0086@\u00a2\u0006\u0004\u0008+\u0010,J.\u0010-\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u001d0\u001b2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010/\u001a\u00020%H\u0086@\u00a2\u0006\u0004\u00080\u00101J\"\u00102\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u001d0\u001b2\u0006\u0010/\u001a\u00020%H\u0086@\u00a2\u0006\u0002\u00103J\u001a\u00104\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u001d0\u001bH\u0086@\u00a2\u0006\u0002\u00106R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/superwall/sdk/network/SubscriptionService;",
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
        "redeemToken",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/models/internal/WebRedemptionResponse;",
        "Lcom/superwall/sdk/network/NetworkError;",
        "codes",
        "",
        "Lcom/superwall/sdk/models/entitlements/Redeemable;",
        "userId",
        "Lcom/superwall/sdk/models/internal/UserId;",
        "aliasId",
        "vendorId",
        "Lcom/superwall/sdk/models/internal/DeviceVendorId;",
        "transactionReceipt",
        "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;",
        "externalAccountId",
        "attributionProps",
        "Lkotlinx/serialization/json/JsonElement;",
        "redeemToken-Jf2YlNw",
        "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "webEntitlementsByUserId",
        "Lcom/superwall/sdk/models/entitlements/WebEntitlements;",
        "deviceId",
        "webEntitlementsByUserId-AKGx8qU",
        "(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "webEntitlementsByDeviceId",
        "(Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getProducts",
        "Lcom/superwall/sdk/store/testmode/models/SuperwallProductsResponse;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static synthetic $r8$lambda$KUX507Mj2h_sI89W4uKCODXDZw0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/network/SubscriptionService;->json$lambda$0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

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

    .line 24
    invoke-direct {p0}, Lcom/superwall/sdk/network/NetworkService;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/superwall/sdk/network/SubscriptionService;->host:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/superwall/sdk/network/SubscriptionService;->version:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/superwall/sdk/network/SubscriptionService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    .line 23
    iput-object p5, p0, Lcom/superwall/sdk/network/SubscriptionService;->customHttpUrlConnection:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    .line 31
    new-instance p1, Lcom/superwall/sdk/network/SubscriptionService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/superwall/sdk/network/SubscriptionService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p4, p1}, Lkotlinx/serialization/json/JsonKt;->Json(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/Json;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/network/SubscriptionService;->json:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method private static final json$lambda$0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setNamingStrategy(Lkotlinx/serialization/json/JsonNamingStrategy;)V

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setExplicitNulls(Z)V

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    .line 35
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setCoerceInputValues(Z)V

    .line 36
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/superwall/sdk/network/SubscriptionService;->customHttpUrlConnection:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    return-object v0
.end method

.method public final getFactory()Lcom/superwall/sdk/dependencies/ApiFactory;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/superwall/sdk/network/SubscriptionService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/network/SubscriptionService;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getProducts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/store/testmode/models/SuperwallProductsResponse;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 139
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 140
    sget-object v0, Lcom/superwall/sdk/network/NetworkConsts;->INSTANCE:Lcom/superwall/sdk/network/NetworkConsts;

    invoke-virtual {v0}, Lcom/superwall/sdk/network/NetworkConsts;->retryCount()I

    move-result v0

    .line 144
    move-object v4, p0

    check-cast v4, Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v4}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v2

    .line 147
    new-instance v1, Lcom/superwall/sdk/network/SubscriptionService$getProducts$$inlined$get-rl3MWlM$default$1;

    const/4 v3, 0x0

    const-string v5, "products"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/superwall/sdk/network/SubscriptionService$getProducts$$inlined$get-rl3MWlM$default$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/network/SubscriptionService;->version:Ljava/lang/String;

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

    .line 28
    iget-object v0, p0, Lcom/superwall/sdk/network/SubscriptionService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    invoke-interface {v0, p1, p2, p3}, Lcom/superwall/sdk/dependencies/ApiFactory;->makeHeaders(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final redeemToken-Jf2YlNw(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Redeemable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/internal/DeviceVendorId;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/internal/WebRedemptionResponse;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 50
    iget-object v1, v0, Lcom/superwall/sdk/network/SubscriptionService;->json:Lkotlinx/serialization/json/Json;

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 52
    new-instance v2, Lcom/superwall/sdk/models/entitlements/RedeemRequest;

    .line 53
    invoke-virtual/range {p4 .. p4}, Lcom/superwall/sdk/models/internal/DeviceVendorId;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    if-nez p2, :cond_0

    move-object v4, v10

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    move-object/from16 v6, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 52
    invoke-direct/range {v2 .. v9}, Lcom/superwall/sdk/models/entitlements/RedeemRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v3, Lcom/superwall/sdk/models/entitlements/RedeemRequest;->Companion:Lcom/superwall/sdk/models/entitlements/RedeemRequest$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/models/entitlements/RedeemRequest$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v3, v2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 61
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v2, 0xa

    sget-object v3, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    .line 48
    invoke-static {v2, v3}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v19

    .line 89
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v17

    .line 93
    move-object v14, v0

    check-cast v14, Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v14}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v12

    .line 100
    new-instance v11, Lcom/superwall/sdk/network/SubscriptionService$redeemToken-Jf2YlNw$$inlined$post-7Yrd8eY$default$1;

    const/4 v13, 0x0

    const-string v15, "redeem"

    const/16 v18, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v19}, Lcom/superwall/sdk/network/SubscriptionService$redeemToken-Jf2YlNw$$inlined$post-7Yrd8eY$default$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;[BLjava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    move-object/from16 v2, p8

    invoke-static {v1, v10, v11, v2}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final webEntitlementsByDeviceId(Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/internal/DeviceVendorId;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/entitlements/WebEntitlements;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Lcom/superwall/sdk/models/internal/DeviceVendorId;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "users/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/entitlements"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    new-instance v0, Lcom/superwall/sdk/network/URLQueryItem;

    const-string v1, "deviceId"

    invoke-virtual {p1}, Lcom/superwall/sdk/models/internal/DeviceVendorId;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/superwall/sdk/network/URLQueryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 78
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 p1, 0x5

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v9

    .line 124
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 125
    sget-object p1, Lcom/superwall/sdk/network/NetworkConsts;->INSTANCE:Lcom/superwall/sdk/network/NetworkConsts;

    invoke-virtual {p1}, Lcom/superwall/sdk/network/NetworkConsts;->retryCount()I

    move-result p1

    .line 129
    move-object v4, p0

    check-cast v4, Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v4}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v2

    .line 132
    new-instance v1, Lcom/superwall/sdk/network/SubscriptionService$webEntitlementsByDeviceId$$inlined$get-rl3MWlM$default$1;

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/superwall/sdk/network/SubscriptionService$webEntitlementsByDeviceId$$inlined$get-rl3MWlM$default$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final webEntitlementsByUserId-AKGx8qU(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/internal/DeviceVendorId;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/entitlements/WebEntitlements;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/superwall/sdk/models/internal/DeviceVendorId;->getValue()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "users/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/entitlements"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 70
    new-instance p1, Lcom/superwall/sdk/network/URLQueryItem;

    const-string v0, "deviceId"

    invoke-virtual {p2}, Lcom/superwall/sdk/models/internal/DeviceVendorId;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/superwall/sdk/network/URLQueryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 71
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 p1, 0x5

    sget-object p2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, p2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v8

    .line 109
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 110
    sget-object p1, Lcom/superwall/sdk/network/NetworkConsts;->INSTANCE:Lcom/superwall/sdk/network/NetworkConsts;

    invoke-virtual {p1}, Lcom/superwall/sdk/network/NetworkConsts;->retryCount()I

    move-result p1

    .line 114
    move-object v3, p0

    check-cast v3, Lcom/superwall/sdk/network/NetworkService;

    invoke-virtual {v3}, Lcom/superwall/sdk/network/NetworkService;->getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    move-result-object v1

    .line 117
    new-instance v0, Lcom/superwall/sdk/network/SubscriptionService$webEntitlementsByUserId-AKGx8qU$$inlined$get-rl3MWlM$default$1;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/network/SubscriptionService$webEntitlementsByUserId-AKGx8qU$$inlined$get-rl3MWlM$default$1;-><init>(Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;Lkotlin/coroutines/Continuation;Lcom/superwall/sdk/network/NetworkService;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/time/Duration;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/superwall/sdk/misc/Task_RetryingKt;->retrying(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
