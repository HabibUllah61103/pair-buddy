.class public final Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;
.super Ljava/lang/Object;
.source "NonSubscriptionTransaction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$$serializer;,
        Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 52\u00020\u0001:\u000256B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rBS\u0008\u0010\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u000c\u0010\u0012J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0006H\u00c6\u0003J\t\u0010%\u001a\u00020\u0008H\u00c6\u0003J\t\u0010&\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\'\u001a\u00020\u000bH\u00c6\u0003JE\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010)\u001a\u00020\u00082\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020\u000fH\u00d6\u0001J\t\u0010,\u001a\u00020\u0003H\u00d6\u0001J%\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0001\u00a2\u0006\u0002\u00084R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0017\u0010\u0014\u001a\u0004\u0008\u0018\u0010\u0016R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0014\u001a\u0004\u0008\u0007\u0010\u001dR\u001c\u0010\t\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001e\u0010\u0014\u001a\u0004\u0008\t\u0010\u001dR\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001f\u0010\u0014\u001a\u0004\u0008 \u0010!\u00a8\u00067"
    }
    d2 = {
        "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;",
        "",
        "transactionId",
        "",
        "productId",
        "purchaseDate",
        "Ljava/util/Date;",
        "isConsumable",
        "",
        "isRevoked",
        "store",
        "Lcom/superwall/sdk/models/product/Store;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getTransactionId$annotations",
        "()V",
        "getTransactionId",
        "()Ljava/lang/String;",
        "getProductId$annotations",
        "getProductId",
        "getPurchaseDate$annotations",
        "getPurchaseDate",
        "()Ljava/util/Date;",
        "isConsumable$annotations",
        "()Z",
        "isRevoked$annotations",
        "getStore$annotations",
        "getStore",
        "()Lcom/superwall/sdk/models/product/Store;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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

.field public static final Companion:Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$Companion;


# instance fields
.field private final isConsumable:Z

.field private final isRevoked:Z

.field private final productId:Ljava/lang/String;

.field private final purchaseDate:Ljava/util/Date;

.field private final store:Lcom/superwall/sdk/models/product/Store;

.field private final transactionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->Companion:Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$Companion;

    const/4 v0, 0x6

    .line 34
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

    sget-object v1, Lcom/superwall/sdk/models/product/Store;->Companion:Lcom/superwall/sdk/models/product/Store$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/Store$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p8, :cond_0

    .line 12
    sget-object p8, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$$serializer;->INSTANCE:Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$$serializer;

    invoke-virtual {p8}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->transactionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->productId:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    iput-boolean p5, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isConsumable:Z

    iput-boolean p6, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isRevoked:Z

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_1

    .line 32
    sget-object p1, Lcom/superwall/sdk/models/product/Store;->PLAY_STORE:Lcom/superwall/sdk/models/product/Store;

    .line 12
    iput-object p1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    return-void

    :cond_1
    iput-object p7, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;)V
    .locals 1

    const-string v0, "transactionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "store"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->transactionId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->productId:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    .line 25
    iput-boolean p4, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isConsumable:Z

    .line 28
    iput-boolean p5, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isRevoked:Z

    .line 31
    iput-object p6, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 32
    sget-object p6, Lcom/superwall/sdk/models/product/Store;->PLAY_STORE:Lcom/superwall/sdk/models/product/Store;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 12
    sget-object v0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;ILjava/lang/Object;)Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->transactionId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->productId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-boolean p4, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isConsumable:Z

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-boolean p5, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isRevoked:Z

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    :cond_5
    move p7, p5

    move-object p8, p6

    move-object p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;)Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;

    move-result-object p0

    return-object p0
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

.method public static synthetic getTransactionId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "transactionId"
    .end annotation

    return-void
.end method

.method public static synthetic isConsumable$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "isConsumable"
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

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 12
    sget-object v0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->transactionId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->productId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isConsumable:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isRevoked:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    .line 32
    sget-object v3, Lcom/superwall/sdk/models/product/Store;->PLAY_STORE:Lcom/superwall/sdk/models/product/Store;

    if-eq v2, v3, :cond_1

    .line 12
    :goto_0
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isConsumable:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isRevoked:Z

    return v0
.end method

.method public final component6()Lcom/superwall/sdk/models/product/Store;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;)Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;
    .locals 8

    const-string v0, "transactionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "store"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;

    iget-object v1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->transactionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->transactionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->productId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isConsumable:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isConsumable:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isRevoked:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isRevoked:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    iget-object p1, p1, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseDate()Ljava/util/Date;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getStore()Lcom/superwall/sdk/models/product/Store;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    return-object v0
.end method

.method public final getTransactionId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->productId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isConsumable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isRevoked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/Store;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isConsumable()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isConsumable:Z

    return v0
.end method

.method public final isRevoked()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isRevoked:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->transactionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->productId:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->purchaseDate:Ljava/util/Date;

    iget-boolean v3, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isConsumable:Z

    iget-boolean v4, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->isRevoked:Z

    iget-object v5, p0, Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;->store:Lcom/superwall/sdk/models/product/Store;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "NonSubscriptionTransaction(transactionId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", productId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchaseDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isConsumable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRevoked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
