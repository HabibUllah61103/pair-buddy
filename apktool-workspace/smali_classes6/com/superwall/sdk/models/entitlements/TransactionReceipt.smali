.class public final Lcom/superwall/sdk/models/entitlements/TransactionReceipt;
.super Ljava/lang/Object;
.source "RedeemRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/entitlements/TransactionReceipt$$serializer;,
        Lcom/superwall/sdk/models/entitlements/TransactionReceipt$Companion;,
        Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 12\u00020\u0001:\u0003/01B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tBM\u0008\u0010\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0008\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0007H\u00c6\u0003J3\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010%\u001a\u00020\u000bH\u00d6\u0001J\t\u0010&\u001a\u00020\u0003H\u00d6\u0001J%\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0001\u00a2\u0006\u0002\u0008.R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u0011\u001a\u0004\u0008\u0015\u0010\u0013R\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0013R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0018\u0010\u0011\u001a\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u000c\u001a\u00020\u00038\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001b\u0010\u0011\u001a\u0004\u0008\u001c\u0010\u0013\u00a8\u00062"
    }
    d2 = {
        "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;",
        "",
        "purchaseToken",
        "",
        "orderId",
        "productId",
        "productType",
        "Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;)V",
        "seen0",
        "",
        "type",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getPurchaseToken$annotations",
        "()V",
        "getPurchaseToken",
        "()Ljava/lang/String;",
        "getOrderId$annotations",
        "getOrderId",
        "getProductId$annotations",
        "getProductId",
        "getProductType$annotations",
        "getProductType",
        "()Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;",
        "getType$annotations",
        "getType",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
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
        "ProductType",
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

.field public static final Companion:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$Companion;


# instance fields
.field private final orderId:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final productType:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;

.field private final purchaseToken:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/entitlements/TransactionReceipt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->Companion:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$Companion;

    const/4 v0, 0x5

    .line 33
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v2, Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;->Companion:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p1, 0xd

    const/16 v0, 0xd

    if-eq v0, p7, :cond_0

    .line 33
    sget-object p7, Lcom/superwall/sdk/models/entitlements/TransactionReceipt$$serializer;->INSTANCE:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$$serializer;

    invoke-virtual {p7}, Lcom/superwall/sdk/models/entitlements/TransactionReceipt$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->purchaseToken:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->orderId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->orderId:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productId:Ljava/lang/String;

    iput-object p5, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productType:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_2

    .line 54
    const-string p1, "Android"

    .line 33
    iput-object p1, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->type:Ljava/lang/String;

    return-void

    :cond_2
    iput-object p6, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;)V
    .locals 1

    const-string v0, "purchaseToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->purchaseToken:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->orderId:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productId:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productType:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;

    .line 54
    const-string p1, "Android"

    iput-object p1, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->type:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 33
    sget-object v0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/entitlements/TransactionReceipt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;ILjava/lang/Object;)Lcom/superwall/sdk/models/entitlements/TransactionReceipt;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->purchaseToken:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->orderId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productId:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productType:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;)Lcom/superwall/sdk/models/entitlements/TransactionReceipt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getOrderId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "orderId"
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

.method public static synthetic getProductType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "productType"
    .end annotation

    return-void
.end method

.method public static synthetic getPurchaseToken$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "jwsRepresentation"
    .end annotation

    return-void
.end method

.method public static synthetic getType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "type"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/entitlements/TransactionReceipt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 33
    sget-object v0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->purchaseToken:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->orderId:Ljava/lang/String;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->orderId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productType:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->type:Ljava/lang/String;

    .line 54
    const-string v2, "Android"

    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    iget-object p0, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->type:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productType:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;)Lcom/superwall/sdk/models/entitlements/TransactionReceipt;
    .locals 1

    const-string v0, "purchaseToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->purchaseToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->purchaseToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->orderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->orderId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productType:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;

    iget-object p1, p1, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productType:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductType()Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productType:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;

    return-object v0
.end method

.method public final getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->orderId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productType:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->purchaseToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->orderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productId:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/models/entitlements/TransactionReceipt;->productType:Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TransactionReceipt(purchaseToken="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", orderId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
