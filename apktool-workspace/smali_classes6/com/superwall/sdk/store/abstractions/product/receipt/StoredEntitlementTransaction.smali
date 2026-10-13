.class public final Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;
.super Ljava/lang/Object;
.source "StoredEntitlementTransaction.kt"

# interfaces
.implements Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$$serializer;,
        Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008)\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 L2\u00020\u0001:\u0002LMBk\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0013B\u0089\u0001\u0008\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0012\u0010\u0018J\t\u00102\u001a\u00020\u0003H\u00c6\u0003J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u0006H\u00c6\u0003J\t\u00105\u001a\u00020\u0006H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u00107\u001a\u00020\nH\u00c6\u0003J\t\u00108\u001a\u00020\u000cH\u00c6\u0003J\t\u00109\u001a\u00020\nH\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010;\u001a\u00020\nH\u00c6\u0003J\t\u0010<\u001a\u00020\nH\u00c6\u0003J\t\u0010=\u001a\u00020\nH\u00c6\u0003J\u0085\u0001\u0010>\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\n2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\nH\u00c6\u0001J\u0013\u0010?\u001a\u00020\n2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u00d6\u0003J\t\u0010B\u001a\u00020\u0015H\u00d6\u0001J\t\u0010C\u001a\u00020\u0003H\u00d6\u0001J%\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\u00002\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020JH\u0001\u00a2\u0006\u0002\u0008KR\u001c\u0010\u0002\u001a\u00020\u00038\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0004\u001a\u00020\u00038\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001d\u0010\u001a\u001a\u0004\u0008\u001e\u0010\u001cR\u001c\u0010\u0005\u001a\u00020\u00068\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001f\u0010\u001a\u001a\u0004\u0008 \u0010!R\u001c\u0010\u0007\u001a\u00020\u00068\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\"\u0010\u001a\u001a\u0004\u0008#\u0010!R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008$\u0010\u001a\u001a\u0004\u0008%\u0010!R\u001c\u0010\t\u001a\u00020\n8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008&\u0010\u001a\u001a\u0004\u0008\t\u0010\'R\u001c\u0010\u000b\u001a\u00020\u000c8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008(\u0010\u001a\u001a\u0004\u0008)\u0010*R\u001c\u0010\r\u001a\u00020\n8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008+\u0010\u001a\u001a\u0004\u0008,\u0010\'R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008-\u0010\u001a\u001a\u0004\u0008.\u0010!R\u001c\u0010\u000f\u001a\u00020\n8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008/\u0010\u001a\u001a\u0004\u0008\u000f\u0010\'R\u001c\u0010\u0010\u001a\u00020\n8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00080\u0010\u001a\u001a\u0004\u0008\u0010\u0010\'R\u001c\u0010\u0011\u001a\u00020\n8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00081\u0010\u001a\u001a\u0004\u0008\u0011\u0010\'\u00a8\u0006N"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;",
        "productId",
        "",
        "transactionId",
        "purchaseDate",
        "Ljava/util/Date;",
        "originalPurchaseDate",
        "expirationDate",
        "isRevoked",
        "",
        "productType",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;",
        "willRenew",
        "renewedAt",
        "isInGracePeriod",
        "isInBillingRetryPeriod",
        "isActive",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;ZLjava/util/Date;ZZZ)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;ZLjava/util/Date;ZZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getProductId$annotations",
        "()V",
        "getProductId",
        "()Ljava/lang/String;",
        "getTransactionId$annotations",
        "getTransactionId",
        "getPurchaseDate$annotations",
        "getPurchaseDate",
        "()Ljava/util/Date;",
        "getOriginalPurchaseDate$annotations",
        "getOriginalPurchaseDate",
        "getExpirationDate$annotations",
        "getExpirationDate",
        "isRevoked$annotations",
        "()Z",
        "getProductType$annotations",
        "getProductType",
        "()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;",
        "getWillRenew$annotations",
        "getWillRenew",
        "getRenewedAt$annotations",
        "getRenewedAt",
        "isInGracePeriod$annotations",
        "isInBillingRetryPeriod$annotations",
        "isActive$annotations",
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
        "",
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

.field public static final Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;


# instance fields
.field private final expirationDate:Ljava/util/Date;

.field private final isActive:Z

.field private final isInBillingRetryPeriod:Z

.field private final isInGracePeriod:Z

.field private final isRevoked:Z

.field private final originalPurchaseDate:Ljava/util/Date;

.field private final productId:Ljava/lang/String;

.field private final productType:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

.field private final purchaseDate:Ljava/util/Date;

.field private final renewedAt:Ljava/util/Date;

.field private final transactionId:Ljava/lang/String;

.field private final willRenew:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;

    const/16 v0, 0xc

    .line 44
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

    invoke-static {}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->values()[Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    const-string v3, "com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransactionType"

    invoke-static {v3, v2}, Lkotlinx/serialization/internal/EnumsKt;->createSimpleEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;ZLjava/util/Date;ZZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit16 p14, p1, 0xfff

    const/16 v0, 0xfff

    if-eq v0, p14, :cond_0

    .line 13
    sget-object p14, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$$serializer;->INSTANCE:Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$$serializer;

    invoke-virtual {p14}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p14

    invoke-static {p1, v0, p14}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productId:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->transactionId:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->purchaseDate:Ljava/util/Date;

    iput-object p5, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->originalPurchaseDate:Ljava/util/Date;

    iput-object p6, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->expirationDate:Ljava/util/Date;

    iput-boolean p7, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isRevoked:Z

    iput-object p8, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productType:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    iput-boolean p9, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->willRenew:Z

    iput-object p10, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->renewedAt:Ljava/util/Date;

    iput-boolean p11, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInGracePeriod:Z

    iput-boolean p12, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInBillingRetryPeriod:Z

    iput-boolean p13, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isActive:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;ZLjava/util/Date;ZZZ)V
    .locals 1

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalPurchaseDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productType"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->transactionId:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->purchaseDate:Ljava/util/Date;

    .line 22
    iput-object p4, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->originalPurchaseDate:Ljava/util/Date;

    .line 25
    iput-object p5, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->expirationDate:Ljava/util/Date;

    .line 28
    iput-boolean p6, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isRevoked:Z

    .line 30
    iput-object p7, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productType:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    .line 32
    iput-boolean p8, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->willRenew:Z

    .line 34
    iput-object p9, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->renewedAt:Ljava/util/Date;

    .line 37
    iput-boolean p10, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInGracePeriod:Z

    .line 39
    iput-boolean p11, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInBillingRetryPeriod:Z

    .line 41
    iput-boolean p12, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isActive:Z

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 13
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;ZLjava/util/Date;ZZZILjava/lang/Object;)Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->transactionId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->purchaseDate:Ljava/util/Date;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->originalPurchaseDate:Ljava/util/Date;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-object p5, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->expirationDate:Ljava/util/Date;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-boolean p6, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isRevoked:Z

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget-object p7, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productType:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-boolean p8, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->willRenew:Z

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-object p9, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->renewedAt:Ljava/util/Date;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    iget-boolean p10, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInGracePeriod:Z

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    iget-boolean p11, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInBillingRetryPeriod:Z

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    iget-boolean p12, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isActive:Z

    :cond_b
    move p13, p11

    move p14, p12

    move-object p11, p9

    move p12, p10

    move-object p9, p7

    move p10, p8

    move-object p7, p5

    move p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;ZLjava/util/Date;ZZZ)Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getExpirationDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "expiration_date"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/storage/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getOriginalPurchaseDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "original_purchase_date"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/storage/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getProductId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "product_id"
    .end annotation

    return-void
.end method

.method public static synthetic getProductType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "product_type"
    .end annotation

    return-void
.end method

.method public static synthetic getPurchaseDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "purchase_date"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/storage/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getRenewedAt$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "renewed_at"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/storage/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getTransactionId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "transaction_id"
    .end annotation

    return-void
.end method

.method public static synthetic getWillRenew$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "will_renew"
    .end annotation

    return-void
.end method

.method public static synthetic isActive$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "is_active"
    .end annotation

    return-void
.end method

.method public static synthetic isInBillingRetryPeriod$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "is_in_billing_retry_period"
    .end annotation

    return-void
.end method

.method public static synthetic isInGracePeriod$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "is_in_grace_period"
    .end annotation

    return-void
.end method

.method public static synthetic isRevoked$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "is_revoked"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 13
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lcom/superwall/sdk/storage/DateSerializer;->INSTANCE:Lcom/superwall/sdk/storage/DateSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->getPurchaseDate()Ljava/util/Date;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/superwall/sdk/storage/DateSerializer;->INSTANCE:Lcom/superwall/sdk/storage/DateSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->getOriginalPurchaseDate()Ljava/util/Date;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/superwall/sdk/storage/DateSerializer;->INSTANCE:Lcom/superwall/sdk/storage/DateSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isRevoked()Z

    move-result v2

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v1, 0x6

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v2

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->getWillRenew()Z

    move-result v1

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    sget-object v0, Lcom/superwall/sdk/storage/DateSerializer;->INSTANCE:Lcom/superwall/sdk/storage/DateSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->getRenewedAt()Ljava/util/Date;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInGracePeriod()Z

    move-result v1

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInBillingRetryPeriod()Z

    move-result v1

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isActive()Z

    move-result p0

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInGracePeriod:Z

    return v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInBillingRetryPeriod:Z

    return v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isActive:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->purchaseDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component4()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->originalPurchaseDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component5()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->expirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isRevoked:Z

    return v0
.end method

.method public final component7()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productType:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    return-object v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->willRenew:Z

    return v0
.end method

.method public final component9()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->renewedAt:Ljava/util/Date;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;ZLjava/util/Date;ZZZ)Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;
    .locals 14

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionId"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseDate"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalPurchaseDate"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;

    move-object v2, p1

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;ZLjava/util/Date;ZZZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->transactionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->transactionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->purchaseDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->purchaseDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->originalPurchaseDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->originalPurchaseDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->expirationDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->expirationDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isRevoked:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isRevoked:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productType:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productType:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->willRenew:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->willRenew:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->renewedAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->renewedAt:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInGracePeriod:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInGracePeriod:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInBillingRetryPeriod:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInBillingRetryPeriod:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isActive:Z

    iget-boolean p1, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isActive:Z

    if-eq v1, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->expirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getOriginalPurchaseDate()Ljava/util/Date;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->originalPurchaseDate:Ljava/util/Date;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productType:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    return-object v0
.end method

.method public getPurchaseDate()Ljava/util/Date;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->purchaseDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRenewedAt()Ljava/util/Date;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->renewedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getWillRenew()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->willRenew:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->originalPurchaseDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->expirationDate:Ljava/util/Date;

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

    iget-boolean v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isRevoked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productType:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->willRenew:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->renewedAt:Ljava/util/Date;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInGracePeriod:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInBillingRetryPeriod:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isActive:Z

    return v0
.end method

.method public isInBillingRetryPeriod()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInBillingRetryPeriod:Z

    return v0
.end method

.method public isInGracePeriod()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInGracePeriod:Z

    return v0
.end method

.method public isRevoked()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isRevoked:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productId:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->transactionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->purchaseDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->originalPurchaseDate:Ljava/util/Date;

    iget-object v4, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->expirationDate:Ljava/util/Date;

    iget-boolean v5, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isRevoked:Z

    iget-object v6, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->productType:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    iget-boolean v7, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->willRenew:Z

    iget-object v8, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->renewedAt:Ljava/util/Date;

    iget-boolean v9, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInGracePeriod:Z

    iget-boolean v10, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isInBillingRetryPeriod:Z

    iget-boolean v11, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isActive:Z

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "StoredEntitlementTransaction(productId="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", transactionId="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchaseDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalPurchaseDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expirationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRevoked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", willRenew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", renewedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInGracePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInBillingRetryPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
