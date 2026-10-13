.class public Lcom/superwall/sdk/network/Network;
.super Ljava/lang/Object;
.source "Network.kt"

# interfaces
.implements Lcom/superwall/sdk/network/SuperwallAPI;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetwork.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Network.kt\ncom/superwall/sdk/network/Network\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,182:1\n1#2:183\n17#3:184\n19#3:188\n46#4:185\n51#4:187\n105#5:186\n*S KotlinDebug\n*F\n+ 1 Network.kt\ncom/superwall/sdk/network/Network\n*L\n165#1:184\n165#1:188\n165#1:185\n165#1:187\n165#1:186\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\"\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0096@\u00a2\u0006\u0002\u0010\u0014J8\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\u000f2\u001c\u0010\u0017\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0018H\u0096@\u00a2\u0006\u0002\u0010\u001bJ\"\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@\u00a2\u0006\u0002\u0010\u001fJ.\u0010 \u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u00110\u000f2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0096@\u00a2\u0006\u0002\u0010&J(\u0010\'\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0(\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010)\u001a\u00020*H\u0096@\u00a2\u0006\u0002\u0010+J4\u0010,\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0096@\u00a2\u0006\u0004\u00084\u00105J \u00106\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002070(\u0012\u0004\u0012\u00020\u00110\u000fH\u0096@\u00a2\u0006\u0002\u00108Jr\u00109\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u00110\u000f2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020<0(2\u0008\u0010=\u001a\u0004\u0018\u00010>2\u0008\u0010?\u001a\u0004\u0018\u00010#2\u0006\u0010@\u001a\u00020A2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020C0(2\u0006\u0010D\u001a\u00020#2\u0014\u0010E\u001a\u0010\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020G\u0018\u00010FH\u0096@\u00a2\u0006\u0004\u0008H\u0010IJ,\u0010J\u001a\u000e\u0012\u0004\u0012\u00020K\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010=\u001a\u00020>2\u0006\u0010L\u001a\u00020AH\u0096@\u00a2\u0006\u0004\u0008M\u0010NJ\"\u0010O\u001a\u000e\u0012\u0004\u0012\u00020K\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010L\u001a\u00020AH\u0096@\u00a2\u0006\u0002\u0010PJ\u001a\u0010Q\u001a\u000e\u0012\u0004\u0012\u00020R\u0012\u0004\u0012\u00020\u00110\u000fH\u0086@\u00a2\u0006\u0002\u00108J\u000e\u0010S\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0002\u00108JJ\u0010T\u001a\u000e\u0012\u0004\u0012\u0002HU\u0012\u0004\u0012\u00020\u00110\u000f\"\u0004\u0008\u0000\u0010U*\u000e\u0012\u0004\u0012\u0002HU\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010V\u001a\u00020#2\u0016\u0008\u0002\u0010W\u001a\u0010\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u001a\u0018\u00010FH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006X"
    }
    d2 = {
        "Lcom/superwall/sdk/network/Network;",
        "Lcom/superwall/sdk/network/SuperwallAPI;",
        "baseHostService",
        "Lcom/superwall/sdk/network/BaseHostService;",
        "collectorService",
        "Lcom/superwall/sdk/network/CollectorService;",
        "enrichmentService",
        "Lcom/superwall/sdk/network/EnrichmentService;",
        "factory",
        "Lcom/superwall/sdk/dependencies/ApiFactory;",
        "subscriptionService",
        "Lcom/superwall/sdk/network/SubscriptionService;",
        "<init>",
        "(Lcom/superwall/sdk/network/BaseHostService;Lcom/superwall/sdk/network/CollectorService;Lcom/superwall/sdk/network/EnrichmentService;Lcom/superwall/sdk/dependencies/ApiFactory;Lcom/superwall/sdk/network/SubscriptionService;)V",
        "sendEvents",
        "Lcom/superwall/sdk/misc/Either;",
        "",
        "Lcom/superwall/sdk/network/NetworkError;",
        "events",
        "Lcom/superwall/sdk/models/events/EventsRequest;",
        "(Lcom/superwall/sdk/models/events/EventsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getConfig",
        "Lcom/superwall/sdk/models/config/Config;",
        "isRetryingCallback",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "confirmAssignments",
        "confirmableAssignments",
        "Lcom/superwall/sdk/models/assignment/AssignmentPostback;",
        "(Lcom/superwall/sdk/models/assignment/AssignmentPostback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPaywall",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "identifier",
        "",
        "event",
        "Lcom/superwall/sdk/models/events/EventData;",
        "(Ljava/lang/String;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPaywalls",
        "",
        "isForDebugging",
        "",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getEnrichment",
        "Lcom/superwall/sdk/models/enrichment/Enrichment;",
        "enrichmentRequest",
        "Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;",
        "maxRetry",
        "",
        "timeout",
        "Lkotlin/time/Duration;",
        "getEnrichment-exY8QGI",
        "(Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAssignments",
        "Lcom/superwall/sdk/models/assignment/Assignment;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "redeemToken",
        "Lcom/superwall/sdk/models/internal/WebRedemptionResponse;",
        "codes",
        "Lcom/superwall/sdk/models/entitlements/Redeemable;",
        "userId",
        "Lcom/superwall/sdk/models/internal/UserId;",
        "aliasId",
        "vendorId",
        "Lcom/superwall/sdk/models/internal/DeviceVendorId;",
        "receipts",
        "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;",
        "externalAccountId",
        "attributionProps",
        "",
        "Lkotlinx/serialization/json/JsonElement;",
        "redeemToken-Jf2YlNw",
        "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "webEntitlementsByUserId",
        "Lcom/superwall/sdk/models/entitlements/WebEntitlements;",
        "deviceId",
        "webEntitlementsByUserId-5PBZuVg",
        "(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "webEntitlementsByDeviceID",
        "(Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getSuperwallProducts",
        "Lcom/superwall/sdk/store/testmode/models/SuperwallProductsResponse;",
        "awaitUntilAppInForeground",
        "logError",
        "T",
        "url",
        "data",
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
.field private final baseHostService:Lcom/superwall/sdk/network/BaseHostService;

.field private final collectorService:Lcom/superwall/sdk/network/CollectorService;

.field private final enrichmentService:Lcom/superwall/sdk/network/EnrichmentService;

.field private final factory:Lcom/superwall/sdk/dependencies/ApiFactory;

.field private final subscriptionService:Lcom/superwall/sdk/network/SubscriptionService;


# direct methods
.method public static synthetic $r8$lambda$5-sWqqYky7a5FQsewO9VURK_7Dk(Lcom/superwall/sdk/models/paywall/Paywalls;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/network/Network;->getPaywalls$lambda$4(Lcom/superwall/sdk/models/paywall/Paywalls;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$A5X8DPa0cUPb0Eywz4jkQwmG9DQ(Lcom/superwall/sdk/models/assignment/ConfirmedAssignmentResponse;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/network/Network;->getAssignments$lambda$5(Lcom/superwall/sdk/models/assignment/ConfirmedAssignmentResponse;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ek6EbFVs1ePFt5-IrfJGadnq90A(Ljava/lang/String;Lcom/superwall/sdk/models/config/Config;)Lcom/superwall/sdk/models/config/Config;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/network/Network;->getConfig$lambda$1(Ljava/lang/String;Lcom/superwall/sdk/models/config/Config;)Lcom/superwall/sdk/models/config/Config;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W8XjMSQUvhUsJ4Lmi5_Dnwo3qW4(Lcom/superwall/sdk/models/assignment/ConfirmedAssignmentResponse;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/network/Network;->confirmAssignments$lambda$2(Lcom/superwall/sdk/models/assignment/ConfirmedAssignmentResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tCHLLQQIn0bTZtVwKyMQfh_6-XA(Lcom/superwall/sdk/models/events/EventsResponse;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/network/Network;->sendEvents$lambda$0(Lcom/superwall/sdk/models/events/EventsResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vaZO2j-iqpgElTJSuoxl2CsOTDE(Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/network/NetworkError;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/network/Network;->logError$lambda$7(Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/network/NetworkError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/superwall/sdk/network/BaseHostService;Lcom/superwall/sdk/network/CollectorService;Lcom/superwall/sdk/network/EnrichmentService;Lcom/superwall/sdk/dependencies/ApiFactory;Lcom/superwall/sdk/network/SubscriptionService;)V
    .locals 1

    const-string v0, "baseHostService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectorService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enrichmentService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionService"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/superwall/sdk/network/Network;->baseHostService:Lcom/superwall/sdk/network/BaseHostService;

    .line 36
    iput-object p2, p0, Lcom/superwall/sdk/network/Network;->collectorService:Lcom/superwall/sdk/network/CollectorService;

    .line 37
    iput-object p3, p0, Lcom/superwall/sdk/network/Network;->enrichmentService:Lcom/superwall/sdk/network/EnrichmentService;

    .line 38
    iput-object p4, p0, Lcom/superwall/sdk/network/Network;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    .line 39
    iput-object p5, p0, Lcom/superwall/sdk/network/Network;->subscriptionService:Lcom/superwall/sdk/network/SubscriptionService;

    return-void
.end method

.method public static final synthetic access$awaitUntilAppInForeground(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/superwall/sdk/network/Network;->awaitUntilAppInForeground(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFactory$p(Lcom/superwall/sdk/network/Network;)Lcom/superwall/sdk/dependencies/ApiFactory;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/superwall/sdk/network/Network;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    return-object p0
.end method

.method private final awaitUntilAppInForeground(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/superwall/sdk/network/Network;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    invoke-interface {v0}, Lcom/superwall/sdk/dependencies/ApiFactory;->getAppLifecycleObserver()Lcom/superwall/sdk/misc/AppLifecycleObserver;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/superwall/sdk/misc/AppLifecycleObserver;->isInBackground()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 186
    new-instance v1, Lcom/superwall/sdk/network/Network$awaitUntilAppInForeground$$inlined$filter$1;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/network/Network$awaitUntilAppInForeground$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 166
    invoke-static {v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private static final confirmAssignments$lambda$2(Lcom/superwall/sdk/models/assignment/ConfirmedAssignmentResponse;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic confirmAssignments$suspendImpl(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/models/assignment/AssignmentPostback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/Network;",
            "Lcom/superwall/sdk/models/assignment/AssignmentPostback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lkotlin/Unit;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/network/Network$confirmAssignments$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/network/Network$confirmAssignments$1;

    iget v1, v0, Lcom/superwall/sdk/network/Network$confirmAssignments$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/network/Network$confirmAssignments$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/network/Network$confirmAssignments$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/network/Network$confirmAssignments$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/network/Network$confirmAssignments$1;-><init>(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/network/Network$confirmAssignments$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 71
    iget v2, v0, Lcom/superwall/sdk/network/Network$confirmAssignments$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/superwall/sdk/network/Network$confirmAssignments$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/network/Network;

    iget-object p1, v0, Lcom/superwall/sdk/network/Network$confirmAssignments$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/models/assignment/AssignmentPostback;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    iget-object p2, p0, Lcom/superwall/sdk/network/Network;->baseHostService:Lcom/superwall/sdk/network/BaseHostService;

    .line 73
    iput-object p1, v0, Lcom/superwall/sdk/network/Network$confirmAssignments$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/superwall/sdk/network/Network$confirmAssignments$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/network/Network$confirmAssignments$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/superwall/sdk/network/BaseHostService;->confirmAssignments(Lcom/superwall/sdk/models/assignment/AssignmentPostback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 71
    :cond_3
    :goto_1
    check-cast p2, Lcom/superwall/sdk/misc/Either;

    new-instance v0, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda1;-><init>()V

    .line 74
    invoke-static {p2, v0}, Lcom/superwall/sdk/misc/EitherKt;->map(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object p2

    .line 75
    const-string v0, "assignments"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "/confirm_assignments"

    invoke-direct {p0, p2, v0, p1}, Lcom/superwall/sdk/network/Network;->logError(Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;)Lcom/superwall/sdk/misc/Either;

    move-result-object p0

    return-object p0
.end method

.method private static final getAssignments$lambda$5(Lcom/superwall/sdk/models/assignment/ConfirmedAssignmentResponse;)Ljava/util/List;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/superwall/sdk/models/assignment/ConfirmedAssignmentResponse;->getAssignments()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic getAssignments$suspendImpl(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/Network;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/assignment/Assignment;",
            ">;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/network/Network$getAssignments$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/network/Network$getAssignments$1;

    iget v1, v0, Lcom/superwall/sdk/network/Network$getAssignments$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/network/Network$getAssignments$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/network/Network$getAssignments$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/network/Network$getAssignments$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/network/Network$getAssignments$1;-><init>(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/network/Network$getAssignments$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 124
    iget v2, v0, Lcom/superwall/sdk/network/Network$getAssignments$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/superwall/sdk/network/Network$getAssignments$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/network/Network;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    iget-object p1, p0, Lcom/superwall/sdk/network/Network;->baseHostService:Lcom/superwall/sdk/network/BaseHostService;

    .line 126
    iput-object p0, v0, Lcom/superwall/sdk/network/Network$getAssignments$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/network/Network$getAssignments$1;->label:I

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/network/BaseHostService;->assignments(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v2, p0

    .line 124
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    new-instance p0, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda5;-><init>()V

    .line 127
    invoke-static {p1, p0}, Lcom/superwall/sdk/misc/EitherKt;->map(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 129
    const-string v4, "/assignments"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/superwall/sdk/network/Network;->logError$default(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/superwall/sdk/misc/Either;

    move-result-object p0

    return-object p0
.end method

.method private static final getConfig$lambda$1(Ljava/lang/String;Lcom/superwall/sdk/models/config/Config;)Lcom/superwall/sdk/models/config/Config;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, p0}, Lcom/superwall/sdk/models/config/Config;->setRequestId(Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic getConfig$suspendImpl(Lcom/superwall/sdk/network/Network;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/Network;",
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

    instance-of v0, p2, Lcom/superwall/sdk/network/Network$getConfig$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/network/Network$getConfig$1;

    iget v1, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/network/Network$getConfig$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/network/Network$getConfig$1;-><init>(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget v2, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/network/Network;

    iget-object p1, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_1
    move-object v2, p0

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/network/Network;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    iput-object p0, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->label:I

    invoke-direct {p0, v0}, Lcom/superwall/sdk/network/Network;->awaitUntilAppInForeground(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    .line 59
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "toString(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/superwall/sdk/network/Network;->baseHostService:Lcom/superwall/sdk/network/BaseHostService;

    .line 62
    iput-object p2, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/network/Network$getConfig$1;->label:I

    invoke-virtual {v2, p2, p1, v0}, Lcom/superwall/sdk/network/BaseHostService;->config(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_3
    return-object v1

    :cond_5
    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_1

    .line 56
    :goto_4
    check-cast p2, Lcom/superwall/sdk/misc/Either;

    .line 65
    new-instance p0, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/superwall/sdk/misc/EitherKt;->map(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 68
    const-string v4, "/static_config"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/superwall/sdk/network/Network;->logError$default(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/superwall/sdk/misc/Either;

    move-result-object p0

    return-object p0
.end method

.method static synthetic getEnrichment-exY8QGI$suspendImpl(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/Network;",
            "Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;",
            "IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/enrichment/Enrichment;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/superwall/sdk/network/Network$getEnrichment$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;

    iget v2, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;

    invoke-direct {v1, p0, v0}, Lcom/superwall/sdk/network/Network$getEnrichment$1;-><init>(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 102
    iget v3, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->label:I

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_7

    if-eq v3, v8, :cond_6

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_3

    if-ne v3, v4, :cond_2

    iget-object p0, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/network/Network;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object v3, p0

    goto/16 :goto_6

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/network/Network;

    iget-object v3, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/network/Network;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget-object p0, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/network/Network;

    iget-object v3, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/network/Network;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    iget-wide v7, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->J$0:J

    iget p0, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->I$0:I

    iget-object v3, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;

    iget-object v10, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/superwall/sdk/network/Network;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-wide v10, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->J$0:J

    iget p0, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->I$0:I

    iget-object v3, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;

    iget-object v8, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/superwall/sdk/network/Network;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v3

    move v3, p0

    move-object p0, v8

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    iput-object p0, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$0:Ljava/lang/Object;

    iput-object p1, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$1:Ljava/lang/Object;

    move/from16 v3, p2

    iput v3, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->I$0:I

    move-wide/from16 v10, p3

    iput-wide v10, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->J$0:J

    iput v8, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->label:I

    invoke-direct {p0, v1}, Lcom/superwall/sdk/network/Network;->awaitUntilAppInForeground(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_8

    goto/16 :goto_5

    :cond_8
    move-object v0, p1

    .line 108
    :goto_1
    iget-object v8, p0, Lcom/superwall/sdk/network/Network;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    new-instance v12, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad;

    sget-object v13, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State$Start;->INSTANCE:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State$Start;

    check-cast v13, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State;

    invoke-direct {v12, v13}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State;)V

    check-cast v12, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    iput-object p0, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$1:Ljava/lang/Object;

    iput v3, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->I$0:I

    iput-wide v10, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->J$0:J

    iput v7, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->label:I

    invoke-interface {v8, v12, v1}, Lcom/superwall/sdk/dependencies/ApiFactory;->track(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_9

    goto :goto_5

    :cond_9
    move-wide v7, v10

    move-object v10, p0

    move p0, v3

    move-object v3, v0

    .line 109
    :goto_2
    iget-object v0, v10, Lcom/superwall/sdk/network/Network;->enrichmentService:Lcom/superwall/sdk/network/EnrichmentService;

    .line 110
    iput-object v10, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$1:Ljava/lang/Object;

    iput v6, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->label:I

    move/from16 p2, p0

    move-object p0, v0

    move-object/from16 p5, v1

    move-object p1, v3

    move-wide/from16 p3, v7

    invoke-virtual/range {p0 .. p5}, Lcom/superwall/sdk/network/EnrichmentService;->enrichment-exY8QGI(Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_a

    goto :goto_5

    :cond_a
    move-object p0, v10

    move-object v3, p0

    .line 102
    :goto_3
    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 111
    new-instance v6, Lcom/superwall/sdk/network/Network$getEnrichment$2;

    invoke-direct {v6, v3, v9}, Lcom/superwall/sdk/network/Network$getEnrichment$2;-><init>(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object v3, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$0:Ljava/lang/Object;

    iput-object p0, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$1:Ljava/lang/Object;

    iput v5, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->label:I

    invoke-static {v0, v6, v1}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_b

    goto :goto_5

    .line 102
    :cond_b
    :goto_4
    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 119
    new-instance v5, Lcom/superwall/sdk/network/Network$getEnrichment$3;

    invoke-direct {v5, v3, v9}, Lcom/superwall/sdk/network/Network$getEnrichment$3;-><init>(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object p0, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->L$1:Ljava/lang/Object;

    iput v4, v1, Lcom/superwall/sdk/network/Network$getEnrichment$1;->label:I

    invoke-static {v0, v5, v1}, Lcom/superwall/sdk/misc/EitherKt;->onErrorAsync(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_1

    :goto_5
    return-object v2

    .line 102
    :goto_6
    move-object v4, v0

    check-cast v4, Lcom/superwall/sdk/misc/Either;

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 121
    const-string v5, "/enrich"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/superwall/sdk/network/Network;->logError$default(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/superwall/sdk/misc/Either;

    move-result-object p0

    return-object p0
.end method

.method static synthetic getPaywall$suspendImpl(Lcom/superwall/sdk/network/Network;Ljava/lang/String;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/Network;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/network/Network$getPaywall$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/network/Network$getPaywall$1;

    iget v1, v0, Lcom/superwall/sdk/network/Network$getPaywall$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/network/Network$getPaywall$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/network/Network$getPaywall$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/network/Network$getPaywall$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/network/Network$getPaywall$1;-><init>(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/network/Network$getPaywall$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 77
    iget v2, v0, Lcom/superwall/sdk/network/Network$getPaywall$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/superwall/sdk/network/Network$getPaywall$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/network/Network;

    iget-object p1, v0, Lcom/superwall/sdk/network/Network$getPaywall$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/superwall/sdk/models/events/EventData;

    iget-object p1, v0, Lcom/superwall/sdk/network/Network$getPaywall$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    iget-object p3, p0, Lcom/superwall/sdk/network/Network;->baseHostService:Lcom/superwall/sdk/network/BaseHostService;

    .line 82
    iput-object p1, v0, Lcom/superwall/sdk/network/Network$getPaywall$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/network/Network$getPaywall$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lcom/superwall/sdk/network/Network$getPaywall$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/network/Network$getPaywall$1;->label:I

    invoke-virtual {p3, p1, v0}, Lcom/superwall/sdk/network/BaseHostService;->paywall(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 77
    :cond_3
    :goto_1
    check-cast p3, Lcom/superwall/sdk/misc/Either;

    .line 84
    const-string v0, ""

    if-eqz p1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    move-object v1, v0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "/paywall"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_8

    const/4 p1, 0x2

    .line 87
    new-array p1, p1, [Lkotlin/Pair;

    const-string v2, "identifier"

    const-string v4, "none"

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, p1, v4

    if-eqz p2, :cond_7

    .line 88
    invoke-virtual {p2}, Lcom/superwall/sdk/models/events/EventData;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, p2

    :cond_7
    :goto_2
    const-string p2, "event"

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v3

    .line 86
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    .line 83
    :goto_3
    invoke-direct {p0, p3, v1, p1}, Lcom/superwall/sdk/network/Network;->logError(Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;)Lcom/superwall/sdk/misc/Either;

    move-result-object p0

    return-object p0
.end method

.method private static final getPaywalls$lambda$4(Lcom/superwall/sdk/models/paywall/Paywalls;)Ljava/util/List;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/superwall/sdk/models/paywall/Paywalls;->getPaywalls()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic getPaywalls$suspendImpl(Lcom/superwall/sdk/network/Network;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/Network;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/network/Network$getPaywalls$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/network/Network$getPaywalls$1;

    iget v1, v0, Lcom/superwall/sdk/network/Network$getPaywalls$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/network/Network$getPaywalls$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/network/Network$getPaywalls$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/network/Network$getPaywalls$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/network/Network$getPaywalls$1;-><init>(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/network/Network$getPaywalls$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 95
    iget v2, v0, Lcom/superwall/sdk/network/Network$getPaywalls$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p0, v0, Lcom/superwall/sdk/network/Network$getPaywalls$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/network/Network;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object v2, p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    iget-object p2, p0, Lcom/superwall/sdk/network/Network;->baseHostService:Lcom/superwall/sdk/network/BaseHostService;

    .line 97
    iput-object p0, v0, Lcom/superwall/sdk/network/Network$getPaywalls$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/network/Network$getPaywalls$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/superwall/sdk/network/BaseHostService;->paywalls(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    return-object v1

    .line 95
    :goto_1
    check-cast p2, Lcom/superwall/sdk/misc/Either;

    new-instance p0, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda4;-><init>()V

    .line 98
    invoke-static {p2, p0}, Lcom/superwall/sdk/misc/EitherKt;->map(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 100
    const-string v4, "/paywalls"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/superwall/sdk/network/Network;->logError$default(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/superwall/sdk/misc/Either;

    move-result-object p0

    return-object p0
.end method

.method private final logError(Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;)Lcom/superwall/sdk/misc/Either;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/misc/Either<",
            "+TT;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/superwall/sdk/misc/Either<",
            "TT;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p3}, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p1, v0}, Lcom/superwall/sdk/misc/EitherKt;->onError(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object p1

    return-object p1
.end method

.method static synthetic logError$default(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/superwall/sdk/misc/Either;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 169
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/network/Network;->logError(Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;)Lcom/superwall/sdk/misc/Either;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: logError"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final logError$lambda$7(Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/network/NetworkError;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 174
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 175
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->network:Lcom/superwall/sdk/logger/LogScope;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Request Failed: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    move-object v6, p2

    check-cast v6, Ljava/lang/Throwable;

    move-object v5, p1

    .line 173
    invoke-virtual/range {v1 .. v6}, Lcom/superwall/sdk/logger/Logger;->debug(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 180
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic redeemToken-Jf2YlNw$suspendImpl(Lcom/superwall/sdk/network/Network;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/Network;",
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

    move-object/from16 v0, p8

    instance-of v1, v0, Lcom/superwall/sdk/network/Network$redeemToken$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/superwall/sdk/network/Network$redeemToken$1;

    iget v2, v1, Lcom/superwall/sdk/network/Network$redeemToken$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/superwall/sdk/network/Network$redeemToken$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/superwall/sdk/network/Network$redeemToken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/superwall/sdk/network/Network$redeemToken$1;

    invoke-direct {v1, p0, v0}, Lcom/superwall/sdk/network/Network$redeemToken$1;-><init>(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v1

    iget-object v0, v10, Lcom/superwall/sdk/network/Network$redeemToken$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 131
    iget v2, v10, Lcom/superwall/sdk/network/Network$redeemToken$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v10, Lcom/superwall/sdk/network/Network$redeemToken$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/network/Network;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    iget-object v2, p0, Lcom/superwall/sdk/network/Network;->subscriptionService:Lcom/superwall/sdk/network/SubscriptionService;

    .line 141
    iput-object p0, v10, Lcom/superwall/sdk/network/Network$redeemToken$1;->L$0:Ljava/lang/Object;

    iput v3, v10, Lcom/superwall/sdk/network/Network$redeemToken$1;->label:I

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/superwall/sdk/network/SubscriptionService;->redeemToken-Jf2YlNw(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 131
    :cond_3
    :goto_1
    move-object p1, v0

    check-cast p1, Lcom/superwall/sdk/misc/Either;

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 142
    const-string v0, "/redeem"

    const/4 v1, 0x0

    move p4, p2

    move-object/from16 p5, p3

    move-object p2, v0

    move-object p3, v1

    invoke-static/range {p0 .. p5}, Lcom/superwall/sdk/network/Network;->logError$default(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/superwall/sdk/misc/Either;

    move-result-object p0

    return-object p0
.end method

.method private static final sendEvents$lambda$0(Lcom/superwall/sdk/models/events/EventsResponse;)Lkotlin/Unit;
    .locals 9

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/superwall/sdk/models/events/EventsResponse;->getStatus()Lcom/superwall/sdk/models/events/EventsResponse$Status;

    move-result-object p0

    sget-object v0, Lcom/superwall/sdk/models/events/EventsResponse$Status;->PARTIAL_SUCCESS:Lcom/superwall/sdk/models/events/EventsResponse$Status;

    if-ne p0, v0, :cond_0

    .line 47
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 48
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 49
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->network:Lcom/superwall/sdk/logger/LogScope;

    const/16 v7, 0x18

    const/4 v8, 0x0

    .line 47
    const-string v4, "Request had partial success: /events"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 54
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic sendEvents$suspendImpl(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/models/events/EventsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/Network;",
            "Lcom/superwall/sdk/models/events/EventsRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lkotlin/Unit;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/network/Network$sendEvents$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/network/Network$sendEvents$1;

    iget v1, v0, Lcom/superwall/sdk/network/Network$sendEvents$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/network/Network$sendEvents$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/network/Network$sendEvents$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/network/Network$sendEvents$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/network/Network$sendEvents$1;-><init>(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/network/Network$sendEvents$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 41
    iget v2, v0, Lcom/superwall/sdk/network/Network$sendEvents$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/superwall/sdk/network/Network$sendEvents$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/network/Network;

    iget-object p1, v0, Lcom/superwall/sdk/network/Network$sendEvents$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/models/events/EventsRequest;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    iget-object p2, p0, Lcom/superwall/sdk/network/Network;->collectorService:Lcom/superwall/sdk/network/CollectorService;

    .line 43
    iput-object p1, v0, Lcom/superwall/sdk/network/Network$sendEvents$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/superwall/sdk/network/Network$sendEvents$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/network/Network$sendEvents$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/superwall/sdk/network/CollectorService;->events(Lcom/superwall/sdk/models/events/EventsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 41
    :cond_3
    :goto_1
    check-cast p2, Lcom/superwall/sdk/misc/Either;

    new-instance v0, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/network/Network$$ExternalSyntheticLambda0;-><init>()V

    .line 45
    invoke-static {p2, v0}, Lcom/superwall/sdk/misc/EitherKt;->map(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object p2

    .line 54
    const-string v0, "payload"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "/events"

    invoke-direct {p0, p2, v0, p1}, Lcom/superwall/sdk/network/Network;->logError(Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;)Lcom/superwall/sdk/misc/Either;

    move-result-object p0

    return-object p0
.end method

.method static synthetic webEntitlementsByDeviceID$suspendImpl(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/Network;",
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

    instance-of v0, p2, Lcom/superwall/sdk/network/Network$webEntitlementsByDeviceID$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/network/Network$webEntitlementsByDeviceID$1;

    iget v1, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByDeviceID$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByDeviceID$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByDeviceID$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/network/Network$webEntitlementsByDeviceID$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/network/Network$webEntitlementsByDeviceID$1;-><init>(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByDeviceID$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 151
    iget v2, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByDeviceID$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByDeviceID$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/network/Network;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    iget-object p2, p0, Lcom/superwall/sdk/network/Network;->subscriptionService:Lcom/superwall/sdk/network/SubscriptionService;

    .line 153
    iput-object p0, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByDeviceID$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByDeviceID$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/superwall/sdk/network/SubscriptionService;->webEntitlementsByDeviceId(Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v2, p0

    .line 151
    move-object v3, p2

    check-cast v3, Lcom/superwall/sdk/misc/Either;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 154
    const-string v4, "/redeem"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/superwall/sdk/network/Network;->logError$default(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/superwall/sdk/misc/Either;

    move-result-object p0

    return-object p0
.end method

.method static synthetic webEntitlementsByUserId-5PBZuVg$suspendImpl(Lcom/superwall/sdk/network/Network;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/Network;",
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

    instance-of v0, p3, Lcom/superwall/sdk/network/Network$webEntitlementsByUserId$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/network/Network$webEntitlementsByUserId$1;

    iget v1, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByUserId$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByUserId$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByUserId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/network/Network$webEntitlementsByUserId$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/network/Network$webEntitlementsByUserId$1;-><init>(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByUserId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 144
    iget v2, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByUserId$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByUserId$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/network/Network;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 147
    iget-object p3, p0, Lcom/superwall/sdk/network/Network;->subscriptionService:Lcom/superwall/sdk/network/SubscriptionService;

    .line 148
    iput-object p0, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByUserId$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/network/Network$webEntitlementsByUserId$1;->label:I

    invoke-virtual {p3, p1, p2, v0}, Lcom/superwall/sdk/network/SubscriptionService;->webEntitlementsByUserId-AKGx8qU(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v2, p0

    .line 144
    move-object v3, p3

    check-cast v3, Lcom/superwall/sdk/misc/Either;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 149
    const-string v4, "/redeem"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/superwall/sdk/network/Network;->logError$default(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/superwall/sdk/misc/Either;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public confirmAssignments(Lcom/superwall/sdk/models/assignment/AssignmentPostback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/assignment/AssignmentPostback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lkotlin/Unit;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/network/Network;->confirmAssignments$suspendImpl(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/models/assignment/AssignmentPostback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAssignments(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/assignment/Assignment;",
            ">;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/superwall/sdk/network/Network;->getAssignments$suspendImpl(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getConfig(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/network/Network;->getConfig$suspendImpl(Lcom/superwall/sdk/network/Network;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEnrichment-exY8QGI(Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;",
            "IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/enrichment/Enrichment;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/superwall/sdk/network/Network;->getEnrichment-exY8QGI$suspendImpl(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPaywall(Ljava/lang/String;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/network/Network;->getPaywall$suspendImpl(Lcom/superwall/sdk/network/Network;Ljava/lang/String;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPaywalls(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/network/Network;->getPaywalls$suspendImpl(Lcom/superwall/sdk/network/Network;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getSuperwallProducts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p1, Lcom/superwall/sdk/network/Network$getSuperwallProducts$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/network/Network$getSuperwallProducts$1;

    iget v1, v0, Lcom/superwall/sdk/network/Network$getSuperwallProducts$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/network/Network$getSuperwallProducts$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/network/Network$getSuperwallProducts$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/network/Network$getSuperwallProducts$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/network/Network$getSuperwallProducts$1;-><init>(Lcom/superwall/sdk/network/Network;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/network/Network$getSuperwallProducts$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 156
    iget v2, v0, Lcom/superwall/sdk/network/Network$getSuperwallProducts$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/superwall/sdk/network/Network$getSuperwallProducts$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/network/Network;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 157
    iget-object p1, p0, Lcom/superwall/sdk/network/Network;->subscriptionService:Lcom/superwall/sdk/network/SubscriptionService;

    .line 158
    iput-object p0, v0, Lcom/superwall/sdk/network/Network$getSuperwallProducts$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/network/Network$getSuperwallProducts$1;->label:I

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/network/SubscriptionService;->getProducts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 156
    :goto_1
    move-object v1, p1

    check-cast v1, Lcom/superwall/sdk/misc/Either;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 159
    const-string v2, "/products"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/superwall/sdk/network/Network;->logError$default(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/misc/Either;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/superwall/sdk/misc/Either;

    move-result-object p1

    return-object p1
.end method

.method public redeemToken-Jf2YlNw(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    invoke-static/range {p0 .. p8}, Lcom/superwall/sdk/network/Network;->redeemToken-Jf2YlNw$suspendImpl(Lcom/superwall/sdk/network/Network;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sendEvents(Lcom/superwall/sdk/models/events/EventsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/events/EventsRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lkotlin/Unit;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/network/Network;->sendEvents$suspendImpl(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/models/events/EventsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public webEntitlementsByDeviceID(Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/network/Network;->webEntitlementsByDeviceID$suspendImpl(Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public webEntitlementsByUserId-5PBZuVg(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/network/Network;->webEntitlementsByUserId-5PBZuVg$suspendImpl(Lcom/superwall/sdk/network/Network;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
