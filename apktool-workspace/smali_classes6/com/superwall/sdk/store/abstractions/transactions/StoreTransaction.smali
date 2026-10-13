.class public final Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;
.super Ljava/lang/Object;
.source "StoreTransaction.kt"

# interfaces
.implements Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$$serializer;,
        Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoreTransaction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoreTransaction.kt\ncom/superwall/sdk/store/abstractions/transactions/StoreTransaction\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,86:1\n216#2,2:87\n*S KotlinDebug\n*F\n+ 1 StoreTransaction.kt\ncom/superwall/sdk/store/abstractions/transactions/StoreTransaction\n*L\n78#1:87,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 L2\u00020\u0001:\u0002KLB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008BC\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0007\u0010\u000eJ\u0014\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010B0AJ%\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020\u00002\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020IH\u0001\u00a2\u0006\u0002\u0008JR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0010\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0012R\u0014\u0010\u001c\u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0016\u0010 \u001a\u0004\u0018\u00010\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0012R\u0016\u0010\"\u001a\u0004\u0018\u00010#8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u001c\u0010&\u001a\u0004\u0018\u00010\u00178VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\'\u0010\u0010\u001a\u0004\u0008(\u0010\u0019R\u0016\u0010)\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u0012R\u0016\u0010+\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\u0012R\u0016\u0010-\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010\u0012R\u0016\u0010/\u001a\u0004\u0018\u0001008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u00101R\u001c\u00102\u001a\u0004\u0018\u00010\u00178VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u00083\u0010\u0010\u001a\u0004\u00084\u0010\u0019R\u0016\u00105\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u0010\u0012R\u001c\u00107\u001a\u0004\u0018\u00010\u00178VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u00088\u0010\u0010\u001a\u0004\u00089\u0010\u0019R\u0016\u0010:\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010\u0012R\u0014\u0010<\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010\u0012R\u0016\u0010>\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010\u0012\u00a8\u0006M"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;",
        "transaction",
        "Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;",
        "configRequestId",
        "",
        "appSessionId",
        "<init>",
        "(Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;Ljava/lang/String;Ljava/lang/String;)V",
        "seen0",
        "",
        "id",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getConfigRequestId$annotations",
        "()V",
        "getConfigRequestId",
        "()Ljava/lang/String;",
        "getAppSessionId$annotations",
        "getAppSessionId",
        "getId",
        "transactionDate",
        "Ljava/util/Date;",
        "getTransactionDate",
        "()Ljava/util/Date;",
        "originalTransactionIdentifier",
        "getOriginalTransactionIdentifier",
        "state",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;",
        "getState",
        "()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;",
        "storeTransactionId",
        "getStoreTransactionId",
        "payment",
        "Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;",
        "getPayment",
        "()Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;",
        "originalTransactionDate",
        "getOriginalTransactionDate$annotations",
        "getOriginalTransactionDate",
        "webOrderLineItemID",
        "getWebOrderLineItemID",
        "appBundleId",
        "getAppBundleId",
        "subscriptionGroupId",
        "getSubscriptionGroupId",
        "isUpgraded",
        "",
        "()Ljava/lang/Boolean;",
        "expirationDate",
        "getExpirationDate$annotations",
        "getExpirationDate",
        "offerId",
        "getOfferId",
        "revocationDate",
        "getRevocationDate$annotations",
        "getRevocationDate",
        "appAccountToken",
        "getAppAccountToken",
        "purchaseToken",
        "getPurchaseToken",
        "signature",
        "getSignature",
        "toDictionary",
        "",
        "",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$superwall_release",
        "$serializer",
        "Companion",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$Companion;


# instance fields
.field private final appSessionId:Ljava/lang/String;

.field private final configRequestId:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final transient transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;


# direct methods
.method public static synthetic $r8$lambda$5g_1npF6G2vRMsRwQoxmXsGTSl8(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->toDictionary$lambda$0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->Companion:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p6, :cond_0

    .line 11
    sget-object p6, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$$serializer;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$$serializer;

    invoke-virtual {p6}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    iput-object p3, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->configRequestId:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->appSessionId:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->id:Ljava/lang/String;

    return-void

    :cond_1
    iput-object p5, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configRequestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSessionId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    .line 15
    iput-object p2, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->configRequestId:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->appSessionId:Ljava/lang/String;

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->id:Ljava/lang/String;

    return-void
.end method

.method public static synthetic getAppSessionId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "app_session_id"
    .end annotation

    return-void
.end method

.method public static synthetic getConfigRequestId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "config_request_id"
    .end annotation

    return-void
.end method

.method public static synthetic getExpirationDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getOriginalTransactionDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getRevocationDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method private static final toDictionary$lambda$0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setEncodeDefaults(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 11
    sget-object v0, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction$$serializer;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->configRequestId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->appSessionId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->id:Ljava/lang/String;

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-object p0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->id:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getAppAccountToken()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getAppAccountToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppBundleId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getAppBundleId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppSessionId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->appSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getConfigRequestId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->configRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getExpirationDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getOfferId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalTransactionDate()Ljava/util/Date;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getOriginalTransactionDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalTransactionIdentifier()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getOriginalTransactionIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayment()Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getPayment()Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getRevocationDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getUnderlyingSK2Transaction()Lcom/android/billingclient/api/Purchase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getState()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    move-result-object v0

    return-object v0
.end method

.method public getStoreTransactionId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getStoreTransactionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionGroupId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getSubscriptionGroupId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionDate()Ljava/util/Date;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getTransactionDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getWebOrderLineItemID()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->getWebOrderLineItemID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUpgraded()Ljava/lang/Boolean;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->transaction:Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;->isUpgraded()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final toDictionary()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->Companion:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lcom/superwall/sdk/storage/core_data/ConvertersKt;->toNullableTypedMap(Lkotlinx/serialization/json/Json;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 65
    const-string v1, "transaction"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 72
    :cond_1
    const-string v1, "payment"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_2

    move-object v2, v3

    check-cast v2, Ljava/util/Map;

    :cond_2
    if-eqz v2, :cond_3

    .line 75
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "payment_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v0
.end method
