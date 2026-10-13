.class public final Lcom/superwall/sdk/models/internal/RedemptionInfo;
.super Ljava/lang/Object;
.source "WebRedemption.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/internal/RedemptionInfo$$serializer;,
        Lcom/superwall/sdk/models/internal/RedemptionInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 32\u00020\u0001:\u000223B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cBI\u0008\u0010\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u000b\u0010\u0011J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000f\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0003J9\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0001J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020\u000eH\u00d6\u0001J\t\u0010(\u001a\u00020)H\u00d6\u0001J%\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0001\u00a2\u0006\u0002\u00081R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0013\u001a\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u0013\u001a\u0004\u0008\u001a\u0010\u001bR\"\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0013\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u00064"
    }
    d2 = {
        "Lcom/superwall/sdk/models/internal/RedemptionInfo;",
        "",
        "ownership",
        "Lcom/superwall/sdk/models/internal/RedemptionOwnership;",
        "purchaserInfo",
        "Lcom/superwall/sdk/models/internal/PurchaserInfo;",
        "paywallInfo",
        "Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;",
        "entitlements",
        "",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "<init>",
        "(Lcom/superwall/sdk/models/internal/RedemptionOwnership;Lcom/superwall/sdk/models/internal/PurchaserInfo;Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;Ljava/util/List;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/superwall/sdk/models/internal/RedemptionOwnership;Lcom/superwall/sdk/models/internal/PurchaserInfo;Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getOwnership$annotations",
        "()V",
        "getOwnership",
        "()Lcom/superwall/sdk/models/internal/RedemptionOwnership;",
        "getPurchaserInfo$annotations",
        "getPurchaserInfo",
        "()Lcom/superwall/sdk/models/internal/PurchaserInfo;",
        "getPaywallInfo$annotations",
        "getPaywallInfo",
        "()Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;",
        "getEntitlements$annotations",
        "getEntitlements",
        "()Ljava/util/List;",
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

.field public static final Companion:Lcom/superwall/sdk/models/internal/RedemptionInfo$Companion;


# instance fields
.field private final entitlements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;"
        }
    .end annotation
.end field

.field private final ownership:Lcom/superwall/sdk/models/internal/RedemptionOwnership;

.field private final paywallInfo:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

.field private final purchaserInfo:Lcom/superwall/sdk/models/internal/PurchaserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/internal/RedemptionInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/internal/RedemptionInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->Companion:Lcom/superwall/sdk/models/internal/RedemptionInfo$Companion;

    const/4 v0, 0x4

    .line 144
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lcom/superwall/sdk/models/internal/RedemptionOwnership;->Companion:Lcom/superwall/sdk/models/internal/RedemptionOwnership$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/internal/RedemptionOwnership$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/superwall/sdk/models/entitlements/Entitlement$$serializer;->INSTANCE:Lcom/superwall/sdk/models/entitlements/Entitlement$$serializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/superwall/sdk/models/internal/RedemptionOwnership;Lcom/superwall/sdk/models/internal/PurchaserInfo;Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0xb

    const/16 v0, 0xb

    if-eq v0, p6, :cond_0

    .line 144
    sget-object p6, Lcom/superwall/sdk/models/internal/RedemptionInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/internal/RedemptionInfo$$serializer;

    invoke-virtual {p6}, Lcom/superwall/sdk/models/internal/RedemptionInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->ownership:Lcom/superwall/sdk/models/internal/RedemptionOwnership;

    iput-object p3, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->purchaserInfo:Lcom/superwall/sdk/models/internal/PurchaserInfo;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->paywallInfo:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

    goto :goto_0

    :cond_1
    iput-object p4, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->paywallInfo:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

    :goto_0
    iput-object p5, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->entitlements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/models/internal/RedemptionOwnership;Lcom/superwall/sdk/models/internal/PurchaserInfo;Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/internal/RedemptionOwnership;",
            "Lcom/superwall/sdk/models/internal/PurchaserInfo;",
            "Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ownership"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaserInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entitlements"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->ownership:Lcom/superwall/sdk/models/internal/RedemptionOwnership;

    .line 150
    iput-object p2, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->purchaserInfo:Lcom/superwall/sdk/models/internal/PurchaserInfo;

    .line 155
    iput-object p3, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->paywallInfo:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

    .line 161
    iput-object p4, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->entitlements:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/models/internal/RedemptionOwnership;Lcom/superwall/sdk/models/internal/PurchaserInfo;Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 145
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/internal/RedemptionInfo;-><init>(Lcom/superwall/sdk/models/internal/RedemptionOwnership;Lcom/superwall/sdk/models/internal/PurchaserInfo;Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 144
    sget-object v0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/internal/RedemptionInfo;Lcom/superwall/sdk/models/internal/RedemptionOwnership;Lcom/superwall/sdk/models/internal/PurchaserInfo;Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;Ljava/util/List;ILjava/lang/Object;)Lcom/superwall/sdk/models/internal/RedemptionInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->ownership:Lcom/superwall/sdk/models/internal/RedemptionOwnership;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->purchaserInfo:Lcom/superwall/sdk/models/internal/PurchaserInfo;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->paywallInfo:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->entitlements:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/internal/RedemptionInfo;->copy(Lcom/superwall/sdk/models/internal/RedemptionOwnership;Lcom/superwall/sdk/models/internal/PurchaserInfo;Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;Ljava/util/List;)Lcom/superwall/sdk/models/internal/RedemptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getEntitlements$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "entitlements"
    .end annotation

    return-void
.end method

.method public static synthetic getOwnership$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "ownership"
    .end annotation

    return-void
.end method

.method public static synthetic getPaywallInfo$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "paywallInfo"
    .end annotation

    return-void
.end method

.method public static synthetic getPurchaserInfo$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "purchaserInfo"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/internal/RedemptionInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 144
    sget-object v0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->ownership:Lcom/superwall/sdk/models/internal/RedemptionOwnership;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/superwall/sdk/models/internal/PurchaserInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/internal/PurchaserInfo$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->purchaserInfo:Lcom/superwall/sdk/models/internal/PurchaserInfo;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->paywallInfo:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo$$serializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->paywallInfo:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->entitlements:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/models/internal/RedemptionOwnership;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->ownership:Lcom/superwall/sdk/models/internal/RedemptionOwnership;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/models/internal/PurchaserInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->purchaserInfo:Lcom/superwall/sdk/models/internal/PurchaserInfo;

    return-object v0
.end method

.method public final component3()Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->paywallInfo:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->entitlements:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/models/internal/RedemptionOwnership;Lcom/superwall/sdk/models/internal/PurchaserInfo;Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;Ljava/util/List;)Lcom/superwall/sdk/models/internal/RedemptionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/internal/RedemptionOwnership;",
            "Lcom/superwall/sdk/models/internal/PurchaserInfo;",
            "Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;)",
            "Lcom/superwall/sdk/models/internal/RedemptionInfo;"
        }
    .end annotation

    const-string v0, "ownership"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaserInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entitlements"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/internal/RedemptionInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/internal/RedemptionInfo;-><init>(Lcom/superwall/sdk/models/internal/RedemptionOwnership;Lcom/superwall/sdk/models/internal/PurchaserInfo;Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/internal/RedemptionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/internal/RedemptionInfo;

    iget-object v1, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->ownership:Lcom/superwall/sdk/models/internal/RedemptionOwnership;

    iget-object v3, p1, Lcom/superwall/sdk/models/internal/RedemptionInfo;->ownership:Lcom/superwall/sdk/models/internal/RedemptionOwnership;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->purchaserInfo:Lcom/superwall/sdk/models/internal/PurchaserInfo;

    iget-object v3, p1, Lcom/superwall/sdk/models/internal/RedemptionInfo;->purchaserInfo:Lcom/superwall/sdk/models/internal/PurchaserInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->paywallInfo:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

    iget-object v3, p1, Lcom/superwall/sdk/models/internal/RedemptionInfo;->paywallInfo:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->entitlements:Ljava/util/List;

    iget-object p1, p1, Lcom/superwall/sdk/models/internal/RedemptionInfo;->entitlements:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEntitlements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->entitlements:Ljava/util/List;

    return-object v0
.end method

.method public final getOwnership()Lcom/superwall/sdk/models/internal/RedemptionOwnership;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->ownership:Lcom/superwall/sdk/models/internal/RedemptionOwnership;

    return-object v0
.end method

.method public final getPaywallInfo()Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->paywallInfo:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

    return-object v0
.end method

.method public final getPurchaserInfo()Lcom/superwall/sdk/models/internal/PurchaserInfo;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->purchaserInfo:Lcom/superwall/sdk/models/internal/PurchaserInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->ownership:Lcom/superwall/sdk/models/internal/RedemptionOwnership;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/RedemptionOwnership;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->purchaserInfo:Lcom/superwall/sdk/models/internal/PurchaserInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/internal/PurchaserInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->paywallInfo:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->entitlements:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->ownership:Lcom/superwall/sdk/models/internal/RedemptionOwnership;

    iget-object v1, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->purchaserInfo:Lcom/superwall/sdk/models/internal/PurchaserInfo;

    iget-object v2, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->paywallInfo:Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;

    iget-object v3, p0, Lcom/superwall/sdk/models/internal/RedemptionInfo;->entitlements:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RedemptionInfo(ownership="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", purchaserInfo="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paywallInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entitlements="

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
