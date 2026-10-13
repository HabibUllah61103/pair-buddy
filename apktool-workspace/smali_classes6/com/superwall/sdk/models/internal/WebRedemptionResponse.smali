.class public final Lcom/superwall/sdk/models/internal/WebRedemptionResponse;
.super Ljava/lang/Object;
.source "WebRedemption.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/internal/WebRedemptionResponse$$serializer;,
        Lcom/superwall/sdk/models/internal/WebRedemptionResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebRedemption.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebRedemption.kt\ncom/superwall/sdk/models/internal/WebRedemptionResponse\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n1557#2:319\n1628#2,3:320\n*S KotlinDebug\n*F\n+ 1 WebRedemption.kt\ncom/superwall/sdk/models/internal/WebRedemptionResponse\n*L\n36#1:319\n36#1:320,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 ,2\u00020\u0001:\u0002+,B1\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003\u00a2\u0006\u0004\u0008\t\u0010\nB5\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\t\u0010\u000fJ\u000f\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000f\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003H\u00c6\u0003J5\u0010\u001c\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003H\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010 \u001a\u00020\u000cH\u00d6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001J%\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0001\u00a2\u0006\u0002\u0008*R\"\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u0011\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0017\u0010\u0011\u001a\u0004\u0008\u0018\u0010\u0013\u00a8\u0006-"
    }
    d2 = {
        "Lcom/superwall/sdk/models/internal/WebRedemptionResponse;",
        "",
        "codes",
        "",
        "Lcom/superwall/sdk/models/internal/RedemptionResult;",
        "customerInfo",
        "Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "allCodes",
        "Lcom/superwall/sdk/models/entitlements/Redeemable;",
        "<init>",
        "(Ljava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Ljava/util/List;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getCodes$annotations",
        "()V",
        "getCodes",
        "()Ljava/util/List;",
        "getCustomerInfo$annotations",
        "getCustomerInfo",
        "()Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "getAllCodes$annotations",
        "getAllCodes",
        "component1",
        "component2",
        "component3",
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

.field public static final Companion:Lcom/superwall/sdk/models/internal/WebRedemptionResponse$Companion;


# instance fields
.field private final allCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Redeemable;",
            ">;"
        }
    .end annotation
.end field

.field private final codes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/internal/RedemptionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->Companion:Lcom/superwall/sdk/models/internal/WebRedemptionResponse$Companion;

    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/internal/RedemptionResult;->Companion:Lcom/superwall/sdk/models/internal/RedemptionResult$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/models/internal/RedemptionResult$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    .line 29
    sget-object p4, Lcom/superwall/sdk/models/internal/WebRedemptionResponse$$serializer;->INSTANCE:Lcom/superwall/sdk/models/internal/WebRedemptionResponse$$serializer;

    invoke-virtual {p4}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->codes:Ljava/util/List;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    :goto_0
    check-cast p2, Ljava/lang/Iterable;

    .line 319
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 320
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 321
    check-cast p3, Lcom/superwall/sdk/models/internal/RedemptionResult;

    .line 36
    new-instance p4, Lcom/superwall/sdk/models/entitlements/Redeemable;

    invoke-virtual {p3}, Lcom/superwall/sdk/models/internal/RedemptionResult;->getCode()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p4, p3, v0}, Lcom/superwall/sdk/models/entitlements/Redeemable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 321
    invoke-interface {p1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->allCodes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/superwall/sdk/models/internal/RedemptionResult;",
            ">;",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Redeemable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "codes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allCodes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->codes:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    .line 35
    iput-object p3, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->allCodes:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 36
    move-object p3, p1

    check-cast p3, Ljava/lang/Iterable;

    .line 319
    new-instance p4, Ljava/util/ArrayList;

    const/16 p5, 0xa

    invoke-static {p3, p5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p5

    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p4, Ljava/util/Collection;

    .line 320
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    .line 321
    check-cast p5, Lcom/superwall/sdk/models/internal/RedemptionResult;

    .line 36
    new-instance v0, Lcom/superwall/sdk/models/entitlements/Redeemable;

    invoke-virtual {p5}, Lcom/superwall/sdk/models/internal/RedemptionResult;->getCode()Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p5, v1}, Lcom/superwall/sdk/models/entitlements/Redeemable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 321
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_1
    move-object p3, p4

    check-cast p3, Ljava/util/List;

    .line 30
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;-><init>(Ljava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 29
    sget-object v0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/internal/WebRedemptionResponse;Ljava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Ljava/util/List;ILjava/lang/Object;)Lcom/superwall/sdk/models/internal/WebRedemptionResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->codes:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->allCodes:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->copy(Ljava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Ljava/util/List;)Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAllCodes$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getCodes$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "codes"
    .end annotation

    return-void
.end method

.method public static synthetic getCustomerInfo$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "customerInfo"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/internal/WebRedemptionResponse;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 29
    sget-object v0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->codes:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/internal/RedemptionResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->codes:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Redeemable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->allCodes:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Ljava/util/List;)Lcom/superwall/sdk/models/internal/WebRedemptionResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/superwall/sdk/models/internal/RedemptionResult;",
            ">;",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Redeemable;",
            ">;)",
            "Lcom/superwall/sdk/models/internal/WebRedemptionResponse;"
        }
    .end annotation

    const-string v0, "codes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allCodes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;-><init>(Ljava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;

    iget-object v1, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->codes:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->codes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    iget-object v3, p1, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->allCodes:Ljava/util/List;

    iget-object p1, p1, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->allCodes:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAllCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/Redeemable;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->allCodes:Ljava/util/List;

    return-object v0
.end method

.method public final getCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/internal/RedemptionResult;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->codes:Ljava/util/List;

    return-object v0
.end method

.method public final getCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->codes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->allCodes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->codes:Ljava/util/List;

    iget-object v1, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    iget-object v2, p0, Lcom/superwall/sdk/models/internal/WebRedemptionResponse;->allCodes:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebRedemptionResponse(codes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", customerInfo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
