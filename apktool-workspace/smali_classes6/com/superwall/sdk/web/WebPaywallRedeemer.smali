.class public final Lcom/superwall/sdk/web/WebPaywallRedeemer;
.super Ljava/lang/Object;
.source "WebPaywallRedeemer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;,
        Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;,
        Lcom/superwall/sdk/web/WebPaywallRedeemer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebPaywallRedeemer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebPaywallRedeemer.kt\ncom/superwall/sdk/web/WebPaywallRedeemer\n+ 2 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Either.kt\ncom/superwall/sdk/misc/EitherKt\n+ 7 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 8 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n*L\n1#1,480:1\n29#2,2:481\n31#2:485\n216#3,2:483\n1611#4,9:486\n1863#4:495\n1864#4:497\n1620#4:498\n1557#4:504\n1628#4,3:505\n1246#4,4:511\n1246#4,4:524\n1755#4,3:530\n295#4,2:533\n774#4:535\n865#4,2:536\n230#4,2:538\n808#4,11:552\n774#4:563\n865#4,2:564\n827#4:566\n855#4,2:567\n1#5:496\n1#5:508\n136#6,5:499\n129#6,2:528\n133#6:540\n131#6:541\n462#7:509\n412#7:510\n503#7,7:515\n462#7:522\n412#7:523\n135#8,10:542\n*S KotlinDebug\n*F\n+ 1 WebPaywallRedeemer.kt\ncom/superwall/sdk/web/WebPaywallRedeemer\n*L\n107#1:481,2\n107#1:485\n108#1:483,2\n120#1:486,9\n120#1:495\n120#1:497\n120#1:498\n189#1:504\n189#1:505,3\n213#1:511,4\n215#1:524,4\n242#1:530,3\n255#1:533,2\n279#1:535\n279#1:536,2\n287#1:538,2\n385#1:552,11\n386#1:563\n386#1:564,2\n398#1:566\n398#1:567,2\n120#1:496\n135#1:499,5\n217#1:528,2\n217#1:540\n217#1:541\n213#1:509\n213#1:510\n214#1:515,7\n215#1:522\n215#1:523\n335#1:542,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u000289B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0082@\u00a2\u0006\u0002\u0010\u001dJ\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u0002J\u001a\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020#0\"H\u0086@\u00a2\u0006\u0002\u0010$J\u0016\u0010%\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020\'H\u0086@\u00a2\u0006\u0002\u0010(J4\u0010)\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*\u0012\u0004\u0012\u00020#0\"2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010.\u001a\u00020/H\u0086@\u00a2\u0006\u0004\u00080\u00101J\u000e\u00102\u001a\u00020\u001a2\u0006\u00103\u001a\u000204J\u0012\u00105\u001a\u00020\u001a2\u0008\u0008\u0002\u00106\u001a\u000207H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
        "",
        "context",
        "Landroid/content/Context;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "deepLinkReferrer",
        "Lcom/superwall/sdk/web/CheckForReferral;",
        "network",
        "Lcom/superwall/sdk/network/Network;",
        "storage",
        "Lcom/superwall/sdk/storage/Storage;",
        "customerInfoManager",
        "Lcom/superwall/sdk/customer/CustomerInfoManager;",
        "factory",
        "Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;",
        "<init>",
        "(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/web/CheckForReferral;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/customer/CustomerInfoManager;Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;)V",
        "getDeepLinkReferrer$superwall_release",
        "()Lcom/superwall/sdk/web/CheckForReferral;",
        "getCustomerInfoManager$superwall_release",
        "()Lcom/superwall/sdk/customer/CustomerInfoManager;",
        "pollingJob",
        "Lkotlinx/coroutines/Job;",
        "redemptionJob",
        "track",
        "",
        "event",
        "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
        "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "convertToJsonElement",
        "Lkotlinx/serialization/json/JsonElement;",
        "value",
        "checkForRefferal",
        "Lcom/superwall/sdk/misc/Either;",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "redeem",
        "redemption",
        "Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;",
        "(Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkForWebEntitlements",
        "",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "userId",
        "Lcom/superwall/sdk/models/internal/UserId;",
        "deviceId",
        "Lcom/superwall/sdk/models/internal/DeviceVendorId;",
        "checkForWebEntitlements-AKGx8qU",
        "(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clear",
        "ownership",
        "Lcom/superwall/sdk/models/internal/RedemptionOwnershipType;",
        "startPolling",
        "maxAge",
        "",
        "Factory",
        "RedeemType",
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
.field private final context:Landroid/content/Context;

.field private final customerInfoManager:Lcom/superwall/sdk/customer/CustomerInfoManager;

.field private final deepLinkReferrer:Lcom/superwall/sdk/web/CheckForReferral;

.field private final factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private final network:Lcom/superwall/sdk/network/Network;

.field private pollingJob:Lkotlinx/coroutines/Job;

.field private redemptionJob:Lkotlinx/coroutines/Job;

.field private final storage:Lcom/superwall/sdk/storage/Storage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/web/CheckForReferral;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/customer/CustomerInfoManager;Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deepLinkReferrer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customerInfoManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 47
    iput-object p3, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->deepLinkReferrer:Lcom/superwall/sdk/web/CheckForReferral;

    .line 48
    iput-object p4, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->network:Lcom/superwall/sdk/network/Network;

    .line 49
    iput-object p5, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->storage:Lcom/superwall/sdk/storage/Storage;

    .line 50
    iput-object p6, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->customerInfoManager:Lcom/superwall/sdk/customer/CustomerInfoManager;

    .line 51
    iput-object p7, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    .line 127
    move-object p1, p2

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/superwall/sdk/web/WebPaywallRedeemer$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/superwall/sdk/web/WebPaywallRedeemer$1;-><init>(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lkotlin/coroutines/Continuation;)V

    move-object p4, p2

    check-cast p4, Lkotlin/jvm/functions/Function2;

    const/4 p5, 0x3

    const/4 p6, 0x0

    const/4 p2, 0x0

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    return-object p0
.end method

.method public static final synthetic access$getStorage$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/storage/Storage;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->storage:Lcom/superwall/sdk/storage/Storage;

    return-object p0
.end method

.method public static final synthetic access$track(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->track(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final convertToJsonElement(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    return-object p1

    .line 104
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/Number;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    return-object p1

    .line 105
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    return-object p1

    .line 106
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 481
    new-instance v0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 108
    check-cast p1, Ljava/util/Map;

    .line 483
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 109
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 110
    invoke-direct {p0, v1}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->convertToJsonElement(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 112
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 485
    :cond_5
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    return-object p1

    .line 118
    :cond_6
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_9

    .line 120
    check-cast p1, Ljava/lang/Iterable;

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 495
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 120
    invoke-direct {p0, v1}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->convertToJsonElement(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 494
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 498
    :cond_8
    check-cast v0, Ljava/util/List;

    .line 119
    new-instance p1, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {p1, v0}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    return-object p1

    .line 123
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    return-object p1
.end method

.method private final startPolling(J)V
    .locals 9

    .line 418
    iget-object v0, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->pollingJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/superwall/sdk/web/WebPaywallRedeemer$startPolling$1;-><init>(Lcom/superwall/sdk/web/WebPaywallRedeemer;JLkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 419
    iput-object p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->pollingJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method static synthetic startPolling$default(Lcom/superwall/sdk/web/WebPaywallRedeemer;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 417
    iget-object p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    invoke-interface {p1}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->maxAge()J

    move-result-wide p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->startPolling(J)V

    return-void
.end method

.method private final track(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    invoke-interface {v0, p1, p2}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->track(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final checkForRefferal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lkotlin/Unit;",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;

    iget v1, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;-><init>(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 134
    iget v2, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 500
    :try_start_2
    move-object p1, v0

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 136
    iget-object p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->deepLinkReferrer:Lcom/superwall/sdk/web/CheckForReferral;

    .line 137
    iput-object p0, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;->label:I

    invoke-interface {p1, v0}, Lcom/superwall/sdk/web/CheckForReferral;->checkForReferral-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 138
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_6

    check-cast p1, Ljava/lang/String;

    .line 140
    new-instance v4, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    invoke-direct {v4, p1}, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;-><init>(Ljava/lang/String;)V

    check-cast v4, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForRefferal$1;->label:I

    invoke-virtual {v2, v4, v0}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->redeem(Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    .line 144
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 500
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    return-object v0

    .line 142
    :cond_6
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 502
    new-instance v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    return-object v0
.end method

.method public final checkForWebEntitlements-AKGx8qU(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/internal/DeviceVendorId;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "Fetched web CustomerInfo: "

    instance-of v5, v3, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;

    iget v6, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->label:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget v3, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->label:I

    sub-int/2addr v3, v7

    iput v3, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;

    invoke-direct {v5, v1, v3}, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;-><init>(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 332
    iget v7, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->label:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v8, :cond_1

    iget-object v0, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez v0, :cond_5

    .line 338
    :try_start_2
    iget-object v3, v1, Lcom/superwall/sdk/web/WebPaywallRedeemer;->network:Lcom/superwall/sdk/network/Network;

    iput-object v1, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->L$0:Ljava/lang/Object;

    iput-object v0, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->L$1:Ljava/lang/Object;

    iput v9, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->label:I

    invoke-virtual {v3, v2, v5}, Lcom/superwall/sdk/network/Network;->webEntitlementsByDeviceID(Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_1
    check-cast v3, Lcom/superwall/sdk/misc/Either;

    goto :goto_4

    .line 340
    :cond_5
    iget-object v3, v1, Lcom/superwall/sdk/web/WebPaywallRedeemer;->network:Lcom/superwall/sdk/network/Network;

    iput-object v1, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->L$0:Ljava/lang/Object;

    iput-object v0, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->L$1:Ljava/lang/Object;

    iput v8, v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$checkForWebEntitlements$1;->label:I

    invoke-virtual {v3, v0, v2, v5}, Lcom/superwall/sdk/network/Network;->webEntitlementsByUserId-5PBZuVg(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_6

    :goto_2
    return-object v6

    :cond_6
    move-object v2, v1

    .line 332
    :goto_3
    check-cast v3, Lcom/superwall/sdk/misc/Either;

    .line 342
    :goto_4
    invoke-virtual {v3}, Lcom/superwall/sdk/misc/Either;->getSuccess()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/models/entitlements/WebEntitlements;

    if-eqz v3, :cond_7

    .line 346
    invoke-virtual {v3}, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->getCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v3

    if-nez v3, :cond_9

    :cond_7
    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    .line 348
    sget-object v5, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 349
    sget-object v6, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 350
    sget-object v7, Lcom/superwall/sdk/logger/LogScope;->customerInfo:Lcom/superwall/sdk/logger/LogScope;

    .line 351
    const-string v8, "Backend didn\'t return customerInfo, constructing from entitlements"

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 348
    invoke-static/range {v5 .. v12}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 353
    new-instance v13, Lcom/superwall/sdk/models/customer/CustomerInfo;

    .line 354
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 355
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    if-nez v0, :cond_8

    .line 356
    const-string v0, ""

    :cond_8
    move-object/from16 v16, v0

    .line 357
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    .line 353
    invoke-direct/range {v13 .. v18}, Lcom/superwall/sdk/models/customer/CustomerInfo;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    move-object v3, v13

    .line 362
    :cond_9
    sget-object v5, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 363
    sget-object v6, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 364
    sget-object v7, Lcom/superwall/sdk/logger/LogScope;->customerInfo:Lcom/superwall/sdk/logger/LogScope;

    .line 366
    invoke-virtual {v3}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 367
    invoke-virtual {v3}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getNonSubscriptions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " subs, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " non-subs"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 362
    invoke-static/range {v5 .. v12}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 371
    iget-object v0, v2, Lcom/superwall/sdk/web/WebPaywallRedeemer;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v4, Lcom/superwall/sdk/storage/LatestWebCustomerInfo;->INSTANCE:Lcom/superwall/sdk/storage/LatestWebCustomerInfo;

    check-cast v4, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v0, v4, v3}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 372
    iget-object v0, v2, Lcom/superwall/sdk/web/WebPaywallRedeemer;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v2, Lcom/superwall/sdk/storage/LastWebEntitlementsFetchDate;->INSTANCE:Lcom/superwall/sdk/storage/LastWebEntitlementsFetchDate;

    check-cast v2, Lcom/superwall/sdk/storage/Storable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 375
    invoke-virtual {v3}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getEntitlements()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 543
    new-instance v2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v2, v0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lcom/superwall/sdk/misc/Either;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 545
    :goto_5
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 546
    sget-object v2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 547
    sget-object v2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 550
    :cond_a
    new-instance v2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v2, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v2, Lcom/superwall/sdk/misc/Either;

    return-object v2
.end method

.method public final clear(Lcom/superwall/sdk/models/internal/RedemptionOwnershipType;)V
    .locals 9

    const-string v0, "ownership"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v1, Lcom/superwall/sdk/storage/LatestRedemptionResponse;->INSTANCE:Lcom/superwall/sdk/storage/LatestRedemptionResponse;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v0, v1}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    .line 384
    invoke-virtual {v1}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->getCodes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 383
    check-cast v2, Ljava/lang/Iterable;

    .line 552
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 561
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 562
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 383
    check-cast v3, Ljava/lang/Iterable;

    .line 563
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 564
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;

    .line 387
    sget-object v6, Lcom/superwall/sdk/web/WebPaywallRedeemer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/superwall/sdk/models/internal/RedemptionOwnershipType;->ordinal()I

    move-result v8

    aget v6, v6, v8

    if-eq v6, v0, :cond_4

    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 389
    invoke-virtual {v5}, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;->getRedemptionInfo()Lcom/superwall/sdk/models/internal/RedemptionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/models/internal/RedemptionInfo;->getOwnership()Lcom/superwall/sdk/models/internal/RedemptionOwnership;

    move-result-object v5

    instance-of v5, v5, Lcom/superwall/sdk/models/internal/RedemptionOwnership$Device;

    goto :goto_2

    .line 387
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 388
    :cond_4
    invoke-virtual {v5}, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;->getRedemptionInfo()Lcom/superwall/sdk/models/internal/RedemptionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/models/internal/RedemptionInfo;->getOwnership()Lcom/superwall/sdk/models/internal/RedemptionOwnership;

    move-result-object v5

    instance-of v5, v5, Lcom/superwall/sdk/models/internal/RedemptionOwnership$AppUser;

    :goto_2
    if-eqz v5, :cond_2

    .line 564
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 565
    :cond_5
    check-cast v2, Ljava/util/List;

    goto :goto_3

    :cond_6
    move-object v2, v7

    :goto_3
    if-eqz v1, :cond_a

    .line 398
    invoke-virtual {v1}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->getCodes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 566
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 567
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/superwall/sdk/models/internal/RedemptionResult;

    if-nez v2, :cond_8

    .line 398
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_5

    :cond_8
    move-object v6, v2

    :goto_5
    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 567
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 568
    :cond_9
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 397
    invoke-static/range {v1 .. v6}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->copy$default(Lcom/superwall/sdk/models/internal/WebRedemptionResponse;Ljava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Ljava/util/List;ILjava/lang/Object;)Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    move-result-object p1

    goto :goto_6

    :cond_a
    move-object p1, v7

    :goto_6
    if-eqz p1, :cond_b

    .line 403
    iget-object v1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v2, Lcom/superwall/sdk/storage/LatestRedemptionResponse;->INSTANCE:Lcom/superwall/sdk/storage/LatestRedemptionResponse;

    check-cast v2, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v1, v2, p1}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 405
    :cond_b
    iget-object p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    .line 406
    new-instance v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    .line 407
    iget-object v2, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    invoke-interface {v2}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->getActiveDeviceEntitlements()Ljava/util/Set;

    move-result-object v2

    .line 406
    invoke-direct {v1, v2}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;-><init>(Ljava/util/Set;)V

    check-cast v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    .line 405
    invoke-interface {p1, v1}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->internallySetSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 410
    iget-object p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->redemptionJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_c

    invoke-static {p1, v7, v0, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 412
    :cond_c
    iget-object p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/web/WebPaywallRedeemer$clear$1;

    invoke-direct {p1, p0, v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer$clear$1;-><init>(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 411
    iput-object p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->redemptionJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getCustomerInfoManager$superwall_release()Lcom/superwall/sdk/customer/CustomerInfoManager;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->customerInfoManager:Lcom/superwall/sdk/customer/CustomerInfoManager;

    return-object v0
.end method

.method public final getDeepLinkReferrer$superwall_release()Lcom/superwall/sdk/web/CheckForReferral;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->deepLinkReferrer:Lcom/superwall/sdk/web/CheckForReferral;

    return-object v0
.end method

.method public final redeem(Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;

    iget v4, v3, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;

    invoke-direct {v3, v0, v2}, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;-><init>(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v12, v3

    iget-object v2, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 168
    iget v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    const/16 v13, 0xa

    const-string v14, "code"

    const-string v15, ""

    const/16 v16, 0x0

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v0, v5

    move-object v5, v1

    const/4 v1, 0x0

    goto/16 :goto_1e

    :pswitch_1
    iget-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/network/NetworkError;

    iget-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;

    iget-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    move v0, v5

    const/4 v1, 0x0

    goto/16 :goto_1b

    :pswitch_2
    iget-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    iget-object v3, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;

    iget-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    move v0, v5

    const/4 v1, 0x0

    goto/16 :goto_17

    :pswitch_3
    iget-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    iget-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;

    iget-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v0, v5

    move-object v5, v2

    move-object v2, v1

    const/4 v1, 0x0

    goto/16 :goto_16

    :pswitch_4
    iget-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    iget-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;

    iget-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    move v0, v5

    const/4 v1, 0x0

    goto/16 :goto_f

    :pswitch_5
    iget-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;

    iget-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v4

    move v0, v5

    move-object v4, v1

    const/4 v1, 0x0

    goto/16 :goto_e

    :pswitch_6
    iget-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$6:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/models/internal/DeviceVendorId;

    iget-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$4:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lcom/superwall/sdk/network/Network;

    iget-object v10, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;

    iget-object v11, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object v5, v8

    move-object v8, v1

    move-object v1, v7

    move-object v7, v4

    move-object v4, v9

    move-object v9, v10

    move-object v10, v11

    goto/16 :goto_8

    :pswitch_7
    iget-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;

    iget-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v1

    move-object v10, v4

    :goto_1
    move-object v11, v7

    goto/16 :goto_7

    :pswitch_8
    iget-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;

    iget-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, v4

    goto/16 :goto_6

    :pswitch_9
    iget-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;

    iget-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v25, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v4, v25

    goto/16 :goto_5

    :pswitch_a
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 170
    sget-object v17, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 171
    sget-object v18, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 172
    sget-object v19, Lcom/superwall/sdk/logger/LogScope;->webEntitlements:Lcom/superwall/sdk/logger/LogScope;

    .line 175
    instance-of v2, v1, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Existing;

    if-eqz v2, :cond_2

    const-string v2, "Existing"

    goto :goto_2

    .line 176
    :cond_2
    instance-of v2, v1, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    invoke-virtual {v2}, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;->getCode()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Code: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 177
    :cond_3
    instance-of v2, v1, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$IntegrationAttributes;

    if-eqz v2, :cond_35

    const-string v2, "Integration attributes"

    .line 174
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Starting redemption of type "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x18

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 170
    invoke-static/range {v17 .. v24}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 182
    iget-object v2, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->storage:Lcom/superwall/sdk/storage/Storage;

    sget-object v4, Lcom/superwall/sdk/storage/LatestRedemptionResponse;->INSTANCE:Lcom/superwall/sdk/storage/LatestRedemptionResponse;

    check-cast v4, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v2, v4}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    if-eqz v2, :cond_4

    .line 183
    invoke-virtual {v2}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->getAllCodes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 185
    :cond_5
    instance-of v4, v1, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    if-eqz v4, :cond_9

    .line 186
    iget-object v4, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    invoke-interface {v4}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->willRedeemLink()V

    .line 188
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 189
    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    .line 504
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v4, v13}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 505
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 506
    check-cast v8, Lcom/superwall/sdk/models/entitlements/Redeemable;

    .line 189
    invoke-virtual {v8}, Lcom/superwall/sdk/models/entitlements/Redeemable;->getCode()Ljava/lang/String;

    move-result-object v8

    .line 506
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 507
    :cond_6
    check-cast v7, Ljava/util/List;

    .line 189
    move-object v4, v1

    check-cast v4, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    invoke-virtual {v4}, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    goto :goto_4

    :cond_7
    move v4, v5

    .line 191
    :goto_4
    new-instance v7, Lcom/superwall/sdk/models/entitlements/Redeemable;

    move-object v8, v1

    check-cast v8, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    invoke-virtual {v8}, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v7, v8, v4}, Lcom/superwall/sdk/models/entitlements/Redeemable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v4, v0, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    iput-object v0, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    iput-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    iput-object v2, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    iput v5, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    invoke-interface {v4, v12}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->isPaywallVisible(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_8

    goto/16 :goto_1d

    :cond_8
    move-object v7, v0

    :goto_5
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v7, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    invoke-interface {v4}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->isPaymentSheetOpen()Z

    move-result v4

    if-nez v4, :cond_a

    .line 195
    new-instance v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore;

    .line 196
    sget-object v8, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Start;->INSTANCE:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Start;

    check-cast v8, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;

    .line 197
    iget-object v9, v7, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    invoke-interface {v9}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v9

    .line 195
    invoke-direct {v4, v8, v9}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    check-cast v4, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    .line 194
    iput-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    iput-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    iput-object v2, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    invoke-direct {v7, v4, v12}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->track(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_a

    goto/16 :goto_1d

    :cond_9
    move-object v7, v0

    .line 202
    :cond_a
    :goto_6
    new-instance v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions;

    sget-object v8, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState$Start;->INSTANCE:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState$Start;

    check-cast v8, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState;

    invoke-direct {v4, v8, v1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState;Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;)V

    check-cast v4, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    iput-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    iput-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    iput-object v2, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    invoke-direct {v7, v4, v12}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->track(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_b

    goto/16 :goto_1d

    :cond_b
    move-object v10, v1

    move-object v8, v2

    goto/16 :goto_1

    .line 203
    :goto_7
    iget-object v9, v11, Lcom/superwall/sdk/web/WebPaywallRedeemer;->network:Lcom/superwall/sdk/network/Network;

    .line 206
    iget-object v1, v11, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->getUserId-P5Wmf0A()Ljava/lang/String;

    move-result-object v7

    .line 207
    iget-object v1, v11, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->getAliasId()Ljava/lang/String;

    move-result-object v4

    .line 208
    iget-object v1, v11, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    invoke-interface {v1}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->getDeviceId()Lcom/superwall/sdk/models/internal/DeviceVendorId;

    move-result-object v1

    .line 209
    iget-object v2, v11, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    iput-object v11, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    iput-object v10, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    iput-object v9, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    iput-object v8, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$3:Ljava/lang/Object;

    iput-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$4:Ljava/lang/Object;

    iput-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$5:Ljava/lang/Object;

    iput-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$6:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    invoke-interface {v2, v12}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->receipts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_1

    goto/16 :goto_1d

    .line 168
    :goto_8
    check-cast v2, Ljava/util/List;

    .line 210
    iget-object v11, v10, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    invoke-interface {v11}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->getExternalAccountId()Ljava/lang/String;

    move-result-object v11

    .line 211
    iget-object v13, v10, Lcom/superwall/sdk/web/WebPaywallRedeemer;->factory:Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    invoke-interface {v13}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->getIntegrationProps()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_c

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    :goto_9
    if-eqz v13, :cond_11

    .line 509
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    .line 510
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 511
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 512
    check-cast v13, Ljava/util/Map$Entry;

    move-object/from16 p1, v0

    .line 510
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 213
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->convertToJsonElement(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v13

    .line 512
    invoke-interface {v6, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    goto :goto_a

    .line 515
    :cond_d
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 516
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 517
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lkotlinx/serialization/json/JsonElement;

    if-eqz v19, :cond_f

    const/16 v19, 0x1

    goto :goto_c

    :cond_f
    move/from16 v19, v16

    :goto_c
    if-eqz v19, :cond_e

    move-object/from16 p1, v1

    .line 518
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v1, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p1

    goto :goto_b

    :cond_10
    move-object/from16 p1, v1

    .line 521
    check-cast v0, Ljava/util/Map;

    .line 522
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 523
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 524
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 525
    check-cast v6, Ljava/util/Map$Entry;

    .line 523
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    .line 215
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 525
    invoke-interface {v1, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_11
    move-object/from16 p1, v1

    const/4 v1, 0x0

    .line 204
    :cond_12
    iput-object v10, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    iput-object v9, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    iput-object v0, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$3:Ljava/lang/Object;

    iput-object v0, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$4:Ljava/lang/Object;

    iput-object v0, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$5:Ljava/lang/Object;

    iput-object v0, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$6:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    move-object/from16 v6, p1

    move-object v13, v9

    move-object v9, v2

    move-object v2, v10

    move-object v10, v11

    move-object v11, v1

    move-object v1, v0

    const/4 v0, 0x1

    invoke-virtual/range {v4 .. v12}, Lcom/superwall/sdk/network/Network;->redeemToken-Jf2YlNw(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_13

    goto/16 :goto_1d

    :cond_13
    move-object v7, v2

    move-object v2, v4

    move-object v4, v13

    .line 168
    :goto_e
    check-cast v2, Lcom/superwall/sdk/misc/Either;

    .line 529
    instance-of v5, v2, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v5, :cond_2d

    check-cast v2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v2}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v12

    check-cast v5, Lkotlin/coroutines/Continuation;

    check-cast v2, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    .line 219
    invoke-static {v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getStorage$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/storage/Storage;

    move-result-object v5

    sget-object v6, Lcom/superwall/sdk/storage/LatestRedemptionResponse;->INSTANCE:Lcom/superwall/sdk/storage/LatestRedemptionResponse;

    check-cast v6, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v5, v6, v2}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 221
    new-instance v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions;

    .line 222
    sget-object v6, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState$Complete;->INSTANCE:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState$Complete;

    check-cast v6, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState;

    .line 221
    invoke-direct {v5, v6, v4}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState;Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;)V

    check-cast v5, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    .line 220
    iput-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    iput-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    iput-object v2, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x6

    iput v6, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    invoke-static {v7, v5, v12}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$track(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_14

    goto/16 :goto_1d

    .line 227
    :cond_14
    :goto_f
    instance-of v5, v4, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    if-eqz v5, :cond_25

    .line 228
    sget-object v17, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 229
    sget-object v18, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 230
    sget-object v19, Lcom/superwall/sdk/logger/LogScope;->webEntitlements:Lcom/superwall/sdk/logger/LogScope;

    if-eqz v5, :cond_15

    .line 235
    move-object v6, v4

    check-cast v6, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    goto :goto_10

    :cond_15
    move-object v6, v1

    :goto_10
    if-eqz v6, :cond_16

    invoke-virtual {v6}, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;->getCode()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_17

    :cond_16
    move-object v6, v15

    .line 234
    :cond_17
    invoke-static {v14, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 233
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v21

    const/16 v23, 0x10

    const/16 v24, 0x0

    .line 228
    const-string v20, "Entitlement redemption done"

    const/16 v22, 0x0

    invoke-static/range {v17 .. v24}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 242
    invoke-virtual {v2}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->getCodes()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 530
    instance-of v8, v6, Ljava/util/Collection;

    if-eqz v8, :cond_19

    move-object v8, v6

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_19

    :cond_18
    move/from16 v6, v16

    goto :goto_11

    .line 531
    :cond_19
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/superwall/sdk/models/internal/RedemptionResult;

    .line 242
    invoke-virtual {v8}, Lcom/superwall/sdk/models/internal/RedemptionResult;->getCode()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    check-cast v9, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    invoke-virtual {v9}, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    move v6, v0

    :goto_11
    if-eqz v6, :cond_1b

    .line 243
    invoke-virtual {v2}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->getCodes()Ljava/util/List;

    move-result-object v5

    goto :goto_14

    .line 246
    :cond_1b
    new-instance v6, Lcom/superwall/sdk/models/internal/RedemptionResult$Error;

    if-eqz v5, :cond_1c

    .line 248
    move-object v5, v4

    check-cast v5, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    goto :goto_12

    :cond_1c
    move-object v5, v1

    :goto_12
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;->getCode()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1d

    goto :goto_13

    :cond_1d
    move-object v15, v5

    .line 250
    :cond_1e
    :goto_13
    new-instance v5, Lcom/superwall/sdk/models/internal/ErrorInfo;

    const-string v8, "Redemption failed, code not returned"

    invoke-direct {v5, v8}, Lcom/superwall/sdk/models/internal/ErrorInfo;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-direct {v6, v15, v5}, Lcom/superwall/sdk/models/internal/RedemptionResult$Error;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/internal/ErrorInfo;)V

    .line 245
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 255
    :goto_14
    check-cast v5, Ljava/lang/Iterable;

    .line 533
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/superwall/sdk/models/internal/RedemptionResult;

    .line 255
    invoke-virtual {v8}, Lcom/superwall/sdk/models/internal/RedemptionResult;->getCode()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    check-cast v9, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    invoke-virtual {v9}, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    goto :goto_15

    :cond_20
    move-object v6, v1

    :goto_15
    check-cast v6, Lcom/superwall/sdk/models/internal/RedemptionResult;

    if-eqz v6, :cond_27

    .line 257
    invoke-static {v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v5

    iput-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    iput-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    iput-object v2, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x7

    iput v6, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    invoke-interface {v5, v12}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->isPaywallVisible(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_21

    goto/16 :goto_1d

    :cond_21
    :goto_16
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-static {v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v5

    invoke-interface {v5}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->isPaymentSheetOpen()Z

    move-result v5

    if-nez v5, :cond_27

    .line 258
    invoke-virtual {v2}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->getCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v5

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getEntitlements()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 259
    invoke-static {v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v6

    invoke-interface {v6}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->currentPaywallEntitlements()Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    .line 258
    invoke-interface {v5, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v16

    :cond_22
    if-eqz v16, :cond_24

    .line 262
    invoke-static {v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v5

    iput-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    iput-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    iput-object v2, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    const/16 v6, 0x8

    iput v6, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    invoke-interface {v5, v12}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->triggerRestoreInPaywall(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_23

    goto/16 :goto_1d

    :cond_23
    move-object v3, v4

    move-object v4, v7

    :goto_17
    move-object v7, v4

    move-object v4, v3

    goto :goto_18

    .line 264
    :cond_24
    invoke-static {v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v3

    const-string v5, "Failed to restore subscriptions from the web"

    invoke-interface {v3, v5}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->trackRestorationFailed(Ljava/lang/String;)V

    goto :goto_18

    .line 270
    :cond_25
    sget-object v3, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Existing;->INSTANCE:Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Existing;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    sget-object v3, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$IntegrationAttributes;->INSTANCE:Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$IntegrationAttributes;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_18

    .line 226
    :cond_26
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 274
    :cond_27
    :goto_18
    invoke-static {v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v3

    .line 277
    invoke-virtual {v2}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->getCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 278
    invoke-virtual {v5}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getEntitlements()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 277
    check-cast v5, Ljava/lang/Iterable;

    .line 535
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 536
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_28
    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 279
    invoke-virtual {v9}, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 536
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 537
    :cond_29
    check-cast v6, Ljava/util/List;

    .line 277
    check-cast v6, Ljava/lang/Iterable;

    .line 280
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_2a

    goto :goto_1a

    :cond_2a
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v5

    .line 282
    :goto_1a
    invoke-static {v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v6

    invoke-interface {v6}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->getActiveDeviceEntitlements()Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 276
    invoke-static {v5, v6}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    .line 275
    new-instance v6, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    invoke-direct {v6, v5}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;-><init>(Ljava/util/Set;)V

    check-cast v6, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    .line 274
    invoke-interface {v3, v6}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->internallySetSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 285
    instance-of v3, v4, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    if-eqz v3, :cond_33

    .line 286
    invoke-static {v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v3

    invoke-interface {v3}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->closePaywallIfExists()V

    .line 287
    invoke-virtual {v2}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->getCodes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 538
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/models/internal/RedemptionResult;

    .line 287
    invoke-virtual {v3}, Lcom/superwall/sdk/models/internal/RedemptionResult;->getCode()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    invoke-virtual {v6}, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 288
    invoke-static {v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->didRedeemLink(Lcom/superwall/sdk/models/internal/RedemptionResult;)V

    goto/16 :goto_1f

    .line 539
    :cond_2c
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_2d
    instance-of v5, v2, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v5, :cond_34

    check-cast v2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v2}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object v2

    move-object v5, v12

    check-cast v5, Lkotlin/coroutines/Continuation;

    check-cast v2, Lcom/superwall/sdk/network/NetworkError;

    .line 297
    new-instance v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions;

    .line 298
    sget-object v6, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState$Fail;->INSTANCE:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState$Fail;

    check-cast v6, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState;

    .line 297
    invoke-direct {v5, v6, v4}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState;Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;)V

    check-cast v5, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    .line 296
    iput-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    iput-object v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    iput-object v2, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    const/16 v6, 0x9

    iput v6, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    invoke-static {v7, v5, v12}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$track(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_2e

    goto :goto_1d

    .line 302
    :cond_2e
    :goto_1b
    instance-of v5, v4, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    if-eqz v5, :cond_33

    .line 304
    invoke-virtual {v2}, Lcom/superwall/sdk/network/NetworkError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2f

    invoke-virtual {v2}, Lcom/superwall/sdk/network/NetworkError;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2f

    .line 305
    const-string v5, "Redemption failed, error unknown"

    .line 306
    :cond_2f
    sget-object v18, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 307
    sget-object v19, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 308
    sget-object v20, Lcom/superwall/sdk/logger/LogScope;->webEntitlements:Lcom/superwall/sdk/logger/LogScope;

    .line 310
    check-cast v4, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;

    invoke-virtual {v4}, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v22

    .line 311
    move-object/from16 v23, v2

    check-cast v23, Ljava/lang/Throwable;

    .line 306
    const-string v21, "Failed to redeem purchase token"

    invoke-virtual/range {v18 .. v23}, Lcom/superwall/sdk/logger/Logger;->debug(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 314
    invoke-static {v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v2

    .line 315
    new-instance v6, Lcom/superwall/sdk/models/internal/RedemptionResult$Error;

    .line 316
    invoke-virtual {v4}, Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;->getCode()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_30

    goto :goto_1c

    :cond_30
    move-object v15, v4

    .line 318
    :goto_1c
    new-instance v4, Lcom/superwall/sdk/models/internal/ErrorInfo;

    invoke-direct {v4, v5}, Lcom/superwall/sdk/models/internal/ErrorInfo;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-direct {v6, v15, v4}, Lcom/superwall/sdk/models/internal/RedemptionResult$Error;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/internal/ErrorInfo;)V

    check-cast v6, Lcom/superwall/sdk/models/internal/RedemptionResult;

    .line 314
    invoke-interface {v2, v6}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->didRedeemLink(Lcom/superwall/sdk/models/internal/RedemptionResult;)V

    .line 323
    invoke-static {v7}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v2

    iput-object v7, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$0:Ljava/lang/Object;

    iput-object v5, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$1:Ljava/lang/Object;

    iput-object v1, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->L$2:Ljava/lang/Object;

    const/16 v4, 0xa

    iput v4, v12, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    invoke-interface {v2, v12}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->isPaywallVisible(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_31

    :goto_1d
    return-object v3

    :cond_31
    move-object v3, v7

    :goto_1e
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {v3}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v2

    invoke-interface {v2}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->isPaymentSheetOpen()Z

    move-result v2

    if-nez v2, :cond_32

    .line 324
    invoke-static {v3}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->access$getFactory$p(Lcom/superwall/sdk/web/WebPaywallRedeemer;)Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;->trackRestorationFailed(Ljava/lang/String;)V

    :cond_32
    move-object v7, v3

    :cond_33
    :goto_1f
    const-wide/16 v2, 0x0

    .line 329
    invoke-static {v7, v2, v3, v0, v1}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->startPolling$default(Lcom/superwall/sdk/web/WebPaywallRedeemer;JILjava/lang/Object;)V

    .line 330
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 528
    :cond_34
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 174
    :cond_35
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
