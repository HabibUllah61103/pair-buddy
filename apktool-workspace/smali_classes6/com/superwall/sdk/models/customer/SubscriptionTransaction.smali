.class public final Lcom/superwall/sdk/models/customer/SubscriptionTransaction;
.super Ljava/lang/Object;
.source "SubscriptionTransaction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/customer/SubscriptionTransaction$$serializer;,
        Lcom/superwall/sdk/models/customer/SubscriptionTransaction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008-\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 M2\u00020\u0001:\u0002MNBs\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014B\u0089\u0001\u0008\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u0013\u0010\u0019J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\t\u00106\u001a\u00020\u0006H\u00c6\u0003J\t\u00107\u001a\u00020\u0008H\u00c6\u0003J\t\u00108\u001a\u00020\u0008H\u00c6\u0003J\t\u00109\u001a\u00020\u0008H\u00c6\u0003J\t\u0010:\u001a\u00020\u0008H\u00c6\u0003J\t\u0010;\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010=\u001a\u00020\u000fH\u00c6\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0087\u0001\u0010@\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00082\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010A\u001a\u00020\u00082\u0008\u0010B\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010C\u001a\u00020\u0016H\u00d6\u0001J\t\u0010D\u001a\u00020\u0003H\u00d6\u0001J%\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u00002\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020KH\u0001\u00a2\u0006\u0002\u0008LR\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001e\u0010\u001b\u001a\u0004\u0008\u001f\u0010\u001dR\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008 \u0010\u001b\u001a\u0004\u0008!\u0010\"R\u001c\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008#\u0010\u001b\u001a\u0004\u0008$\u0010%R\u001c\u0010\t\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008&\u0010\u001b\u001a\u0004\u0008\t\u0010%R\u001c\u0010\n\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\'\u0010\u001b\u001a\u0004\u0008\n\u0010%R\u001c\u0010\u000b\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008(\u0010\u001b\u001a\u0004\u0008\u000b\u0010%R\u001c\u0010\u000c\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008)\u0010\u001b\u001a\u0004\u0008\u000c\u0010%R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008*\u0010\u001b\u001a\u0004\u0008+\u0010\"R\u001c\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008,\u0010\u001b\u001a\u0004\u0008-\u0010.R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008/\u0010\u001b\u001a\u0004\u00080\u00101R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00082\u0010\u001b\u001a\u0004\u00083\u0010\u001d\u00a8\u0006O"
    }
    d2 = {
        "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;",
        "",
        "transactionId",
        "",
        "productId",
        "purchaseDate",
        "Ljava/util/Date;",
        "willRenew",
        "",
        "isRevoked",
        "isInGracePeriod",
        "isInBillingRetryPeriod",
        "isActive",
        "expirationDate",
        "store",
        "Lcom/superwall/sdk/models/product/Store;",
        "offerType",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;",
        "subscriptionGroupId",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZZZZLjava/util/Date;Lcom/superwall/sdk/models/product/Store;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Ljava/lang/String;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZZZZLjava/util/Date;Lcom/superwall/sdk/models/product/Store;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getTransactionId$annotations",
        "()V",
        "getTransactionId",
        "()Ljava/lang/String;",
        "getProductId$annotations",
        "getProductId",
        "getPurchaseDate$annotations",
        "getPurchaseDate",
        "()Ljava/util/Date;",
        "getWillRenew$annotations",
        "getWillRenew",
        "()Z",
        "isRevoked$annotations",
        "isInGracePeriod$annotations",
        "isInBillingRetryPeriod$annotations",
        "isActive$annotations",
        "getExpirationDate$annotations",
        "getExpirationDate",
        "getStore$annotations",
        "getStore",
        "()Lcom/superwall/sdk/models/product/Store;",
        "getOfferType$annotations",
        "getOfferType",
        "()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;",
        "getSubscriptionGroupId$annotations",
        "getSubscriptionGroupId",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$superwall_release",
        "Companion",
        "$serializer",
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
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/models/customer/SubscriptionTransaction$Companion;


# instance fields
.field private final expirationDate:Ljava/util/Date;

.field private final isActive:Z

.field private final isInBillingRetryPeriod:Z

.field private final isInGracePeriod:Z

.field private final isRevoked:Z

.field private final offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

.field private final productId:Ljava/lang/String;

.field private final purchaseDate:Ljava/util/Date;

.field private final store:Lcom/superwall/sdk/models/product/Store;

.field private final subscriptionGroupId:Ljava/lang/String;

.field private final transactionId:Ljava/lang/String;

.field private final willRenew:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->Companion:Lcom/superwall/sdk/models/customer/SubscriptionTransaction$Companion;

    const/16 v0, 0xc

    .line 58
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v2, Lcom/superwall/sdk/models/product/Store;->Companion:Lcom/superwall/sdk/models/product/Store$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/Store$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v0, v3

    sget-object v2, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;->Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v0, v3

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZZZZLjava/util/Date;Lcom/superwall/sdk/models/product/Store;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit16 p14, p1, 0x1ff

    const/16 v0, 0x1ff

    if-eq v0, p14, :cond_0

    .line 13
    sget-object p14, Lcom/superwall/sdk/models/customer/SubscriptionTransaction$$serializer;->INSTANCE:Lcom/superwall/sdk/models/customer/SubscriptionTransaction$$serializer;

    invoke-virtual {p14}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p14

    invoke-static {p1, v0, p14}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->transactionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->productId:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    iput-boolean p5, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->willRenew:Z

    iput-boolean p6, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isRevoked:Z

    iput-boolean p7, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInGracePeriod:Z

    iput-boolean p8, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInBillingRetryPeriod:Z

    iput-boolean p9, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isActive:Z

    iput-object p10, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->expirationDate:Ljava/util/Date;

    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_1

    .line 48
    sget-object p2, Lcom/superwall/sdk/models/product/Store;->PLAY_STORE:Lcom/superwall/sdk/models/product/Store;

    .line 13
    iput-object p2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    goto :goto_0

    :cond_1
    iput-object p11, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    :goto_0
    and-int/lit16 p2, p1, 0x400

    const/4 p3, 0x0

    if-nez p2, :cond_2

    iput-object p3, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    goto :goto_1

    :cond_2
    iput-object p12, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    :goto_1
    and-int/lit16 p1, p1, 0x800

    if-nez p1, :cond_3

    iput-object p3, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->subscriptionGroupId:Ljava/lang/String;

    return-void

    :cond_3
    iput-object p13, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->subscriptionGroupId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZZZZLjava/util/Date;Lcom/superwall/sdk/models/product/Store;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "transactionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "store"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->transactionId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->productId:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    .line 26
    iput-boolean p4, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->willRenew:Z

    .line 29
    iput-boolean p5, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isRevoked:Z

    .line 32
    iput-boolean p6, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInGracePeriod:Z

    .line 35
    iput-boolean p7, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInBillingRetryPeriod:Z

    .line 38
    iput-boolean p8, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isActive:Z

    .line 43
    iput-object p9, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->expirationDate:Ljava/util/Date;

    .line 47
    iput-object p10, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    .line 52
    iput-object p11, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    .line 55
    iput-object p12, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->subscriptionGroupId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZZZZLjava/util/Date;Lcom/superwall/sdk/models/product/Store;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p13

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    .line 48
    sget-object v1, Lcom/superwall/sdk/models/product/Store;->PLAY_STORE:Lcom/superwall/sdk/models/product/Store;

    move-object v12, v1

    goto :goto_0

    :cond_0
    move-object/from16 v12, p10

    :goto_0
    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object/from16 v13, p11

    :goto_1
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2

    move-object v14, v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object v2, p0

    goto :goto_2

    :cond_2
    move-object/from16 v14, p12

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    .line 14
    :goto_2
    invoke-direct/range {v2 .. v14}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZZZZLjava/util/Date;Lcom/superwall/sdk/models/product/Store;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 13
    sget-object v0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/customer/SubscriptionTransaction;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZZZZLjava/util/Date;Lcom/superwall/sdk/models/product/Store;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/models/customer/SubscriptionTransaction;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->transactionId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->productId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-boolean p4, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->willRenew:Z

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-boolean p5, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isRevoked:Z

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-boolean p6, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInGracePeriod:Z

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget-boolean p7, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInBillingRetryPeriod:Z

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-boolean p8, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isActive:Z

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-object p9, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->expirationDate:Ljava/util/Date;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    iget-object p10, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    iget-object p11, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    iget-object p12, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->subscriptionGroupId:Ljava/lang/String;

    :cond_b
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move-object p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZZZZLjava/util/Date;Lcom/superwall/sdk/models/product/Store;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Ljava/lang/String;)Lcom/superwall/sdk/models/customer/SubscriptionTransaction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getExpirationDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "expirationDate"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getOfferType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "offerType"
    .end annotation

    return-void
.end method

.method public static synthetic getProductId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "productId"
    .end annotation

    return-void
.end method

.method public static synthetic getPurchaseDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "purchaseDate"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getStore$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "store"
    .end annotation

    return-void
.end method

.method public static synthetic getSubscriptionGroupId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "subscriptionGroupId"
    .end annotation

    return-void
.end method

.method public static synthetic getTransactionId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "transactionId"
    .end annotation

    return-void
.end method

.method public static synthetic getWillRenew$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "willRenew"
    .end annotation

    return-void
.end method

.method public static synthetic isActive$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "isActive"
    .end annotation

    return-void
.end method

.method public static synthetic isInBillingRetryPeriod$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "isInBillingRetryPeriod"
    .end annotation

    return-void
.end method

.method public static synthetic isInGracePeriod$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "isInGracePeriod"
    .end annotation

    return-void
.end method

.method public static synthetic isRevoked$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "isRevoked"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/customer/SubscriptionTransaction;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 13
    sget-object v0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->transactionId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->productId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->willRenew:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isRevoked:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInGracePeriod:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInBillingRetryPeriod:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isActive:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    sget-object v1, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->expirationDate:Ljava/util/Date;

    const/16 v3, 0x8

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    .line 48
    sget-object v3, Lcom/superwall/sdk/models/product/Store;->PLAY_STORE:Lcom/superwall/sdk/models/product/Store;

    if-eq v2, v3, :cond_1

    .line 13
    :goto_0
    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    if-eqz v2, :cond_3

    :goto_1
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/16 v0, 0xb

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->subscriptionGroupId:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->subscriptionGroupId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/superwall/sdk/models/product/Store;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    return-object v0
.end method

.method public final component11()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->subscriptionGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->willRenew:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isRevoked:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInGracePeriod:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInBillingRetryPeriod:Z

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isActive:Z

    return v0
.end method

.method public final component9()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->expirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZZZZLjava/util/Date;Lcom/superwall/sdk/models/product/Store;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Ljava/lang/String;)Lcom/superwall/sdk/models/customer/SubscriptionTransaction;
    .locals 14

    const-string v0, "transactionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productId"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseDate"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "store"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZZZZLjava/util/Date;Lcom/superwall/sdk/models/product/Store;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;

    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->transactionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->transactionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->productId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->willRenew:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->willRenew:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isRevoked:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isRevoked:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInGracePeriod:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInGracePeriod:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInBillingRetryPeriod:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInBillingRetryPeriod:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isActive:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isActive:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->expirationDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->expirationDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    iget-object v3, p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    iget-object v3, p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->subscriptionGroupId:Ljava/lang/String;

    iget-object p1, p1, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->subscriptionGroupId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getExpirationDate()Ljava/util/Date;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->expirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getOfferType()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseDate()Ljava/util/Date;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getStore()Lcom/superwall/sdk/models/product/Store;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    return-object v0
.end method

.method public final getSubscriptionGroupId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->subscriptionGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWillRenew()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->willRenew:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->productId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->willRenew:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isRevoked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInGracePeriod:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInBillingRetryPeriod:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->expirationDate:Ljava/util/Date;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/Store;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->subscriptionGroupId:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final isActive()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isActive:Z

    return v0
.end method

.method public final isInBillingRetryPeriod()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInBillingRetryPeriod:Z

    return v0
.end method

.method public final isInGracePeriod()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInGracePeriod:Z

    return v0
.end method

.method public final isRevoked()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isRevoked:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->transactionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->productId:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    iget-boolean v3, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->willRenew:Z

    iget-boolean v4, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isRevoked:Z

    iget-boolean v5, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInGracePeriod:Z

    iget-boolean v6, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isInBillingRetryPeriod:Z

    iget-boolean v7, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->isActive:Z

    iget-object v8, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->expirationDate:Ljava/util/Date;

    iget-object v9, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    iget-object v10, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->offerType:Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;

    iget-object v11, p0, Lcom/superwall/sdk/models/customer/SubscriptionTransaction;->subscriptionGroupId:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "SubscriptionTransaction(transactionId="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", productId="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchaseDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", willRenew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRevoked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInGracePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInBillingRetryPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expirationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriptionGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
